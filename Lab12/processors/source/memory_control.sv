/*
  Eric Villasenor
  evillase@gmail.com

  this block is the coherence protocol
  and artibtration for ram
*/
// interface include
`include "cache_control_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module memory_control (
  input CLK, nRST,
  cache_control_if.cc ccif
);

// type import
import cpu_types_pkg::*;

// number of cpus for cc
parameter CPUS = 2;

logic [CPUS-1:0] next_wait;
logic [CPUS-1:0] next_inv;
word_t [CPUS-1:0] next_snoopaddr;
logic snoopy;
logic next_snoopy;
logic snooper; //tells controller to snoop into snoopy...snooper is index of data being used
logic next_snooper;

logic sw;


typedef enum logic[3:0] {
	IDLE, IFETCH, ARB, WB1, WB2, SNOOP, RD1, RD2, MEM1, MEM2
} state_t;

state_t state;
state_t next_state;

//Next state
always_comb begin
	next_snoopy = snoopy;
	next_snooper = snooper;
	next_state = state;
	if (state == IDLE) begin
		if (ccif.dWEN[0] == 1) begin
			next_state = WB1;
		end
		else if (ccif.dWEN[1] == 1) begin
			next_state = WB1;
		end
		else if (ccif.cctrans[0] == 1) begin
			next_state = ARB;
		end
		else if (ccif.cctrans[1] == 1) begin
			next_state = ARB;
		end
		else if (ccif.iREN[0] == 1) begin
			next_state = IFETCH;
		end
		else if (ccif.iREN[1] == 1) begin
			next_state = IFETCH;
		end
	end
	else if (state == IFETCH) begin
		if (ccif.ramstate == ACCESS) begin
			if (ccif.cctrans == 0) begin
				next_state = IDLE;
			end
			else begin
				next_state = ARB;
			end
		end
		if (ccif.dWEN[0] == 1) begin
			next_state = WB1;
		end
		else if (ccif.dWEN[1] == 1) begin
			next_state = WB1;
		end
	end 
	else if (state == ARB) begin
		if (ccif.dREN[0] == 1) begin
			next_state = SNOOP;
			if (ccif.dREN[0] == 1) begin
				next_snoopy = 1;
				next_snooper = 0;
			end
			else if (ccif.dREN[1] == 1) begin
				next_snoopy = 0;
				next_snooper = 1;
			end
		end
		else if (ccif.dREN[1] == 1) begin
			next_state = SNOOP;
			if (ccif.dREN[0] == 1) begin
				next_snoopy = 1;
				next_snooper = 0;
			end
			else if (ccif.dREN[1] == 1) begin
				next_snoopy = 0;
				next_snooper = 1;
			end
		end
		else begin
			next_state = IDLE;
		end
	end 
	else if (state == WB1) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = WB2;
		end
	end 
	else if (state == WB2) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = IDLE;
		end
	end 
	else if (state == SNOOP) begin
		//check dirty
		if (ccif.cctrans[snoopy] == 0) begin
			next_state = RD1;
		end
		else begin
			next_state = MEM1;
		end
	end 
	else if (state == RD1) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = RD2;
		end
	end 
	else if (state == RD2) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = IDLE;
		end
	end 
	else if (state == MEM1) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = MEM2;
		end
	end 
	else if (state == MEM2) begin
		if (ccif.ramstate == ACCESS) begin
			next_state = IDLE;
		end
	end 
	else begin	
		next_snoopy = snoopy;
		next_snooper = snooper;
		next_state = state;
	end
end

//Output 
always_comb begin
	ccif.ramaddr = 0;	
	ccif.ramstore = 0;
	ccif.ramWEN = 0;
	ccif.ramREN = 0;
	ccif.iwait = 2'b11;
	ccif.dwait = 2'b11;
	ccif.iload = 2'b00;
	ccif.dload = 2'b00;
	ccif.ccsnoopaddr = '0;
	ccif.ccwait = 2'b00;
	ccif.ccinv = {ccif.ccwrite[0], ccif.ccwrite[1]};
	sw = 0;

	if (state == IFETCH) begin
		if (ccif.iREN[0] == 1) begin
			sw = 0;	
		end
		else if (ccif.iREN[1] == 1) begin
			sw = 1;	
		end
		if (ccif.iREN[0] == 1 || ccif.iREN[1] == 1) begin
			ccif.ramaddr = ccif.iaddr[sw];
			ccif.ramREN = ccif.iREN[sw];
			ccif.iload[sw] = ccif.ramload;
			if (ccif.ramstate == ACCESS) begin
				ccif.iwait[sw] = 0;
			end
			else begin
				ccif.iwait[sw] = 1;
			end
		end
	end 
	else if (state == ARB) begin
		ccif.ccsnoopaddr[next_snoopy] = ccif.daddr[snooper];
		ccif.ccwait[next_snoopy] = 1;
	end 
	else if (state == WB1) begin
		if (ccif.dWEN[0] == 1) begin
			sw = 0;
		end
		else if (ccif.dWEN[1] == 1) begin
			sw = 1;
		end
		if (ccif.dWEN[0] == 1 || ccif.dWEN[1] == 1) begin
			ccif.ramaddr = ccif.daddr[sw];
			ccif.ramWEN = ccif.dWEN[sw];
			ccif.ramstore = ccif.dstore[sw];	
 			ccif.ccwait[1 - sw] = sw;
			if (ccif.ramstate == ACCESS) begin
				ccif.dwait[sw] = 0;
			end
			else begin
				ccif.dwait[sw] = 1;
			end
		end
	end 
	else if (state == WB2) begin
		if (ccif.dWEN[0] == 1) begin
			sw = 0;
		end
		else if (ccif.dWEN[1] == 1) begin
			sw = 1;
		end
		if (ccif.dWEN[0] == 1 || ccif.dWEN[1] == 1) begin
			ccif.ramaddr = ccif.daddr[sw];
			ccif.ramWEN = ccif.dWEN[sw];
			ccif.ramstore = ccif.dstore[sw];	
 			ccif.ccwait[1 - sw] = sw;
			if (ccif.ramstate == ACCESS) begin
				ccif.dwait[sw] = 0;
			end
			else begin
				ccif.dwait[sw] = 1;
			end
		end
	end 
	else if (state == SNOOP) begin
		ccif.ccsnoopaddr[snoopy] = ccif.daddr[snooper];
		ccif.ccwait[snoopy] = 1;
	end 
	else if (state == RD1) begin
		ccif.ramaddr = ccif.daddr[snooper];
		ccif.ramREN = ccif.dREN[snooper];
		ccif.dload[snooper] = ccif.ramload;
		ccif.ccwait[snoopy] = 1;
		if (ccif.ramstate == ACCESS) begin
			ccif.dwait[snooper] = 0;
		end
		else begin
			ccif.dwait[snooper] = 1;
		end
	end 
	else if (state == RD2) begin
		ccif.ramaddr = ccif.daddr[snooper];
		ccif.ramREN = ccif.dREN[snooper];
		ccif.dload[snooper] = ccif.ramload;
		ccif.ccwait[snoopy] = 1;
		if (ccif.ramstate == ACCESS) begin
			ccif.dwait[snooper] = 0;
		end
		else begin
			ccif.dwait[snooper] = 1;
		end
	end 
	else if (state == MEM1) begin
		ccif.ramaddr = ccif.daddr[snoopy];
		ccif.ramstore = ccif.dstore[snoopy];
		ccif.ramWEN = 1;
		ccif.dload[snooper] = ccif.dstore[snoopy];
		ccif.ccsnoopaddr[snoopy] = ccif.daddr[snooper];
		ccif.ccwait[snoopy] = 1;
		if (ccif.ramstate == ACCESS) begin
			ccif.dwait[snooper] = 0;
			ccif.dwait[snoopy] = 0;
		end
		else begin
			ccif.dwait[snooper] = 1;
			ccif.dwait[snoopy] = 1;
		end
	end 
	else if (state == MEM2) begin
		ccif.ramaddr = ccif.daddr[snoopy];
		ccif.ramstore = ccif.dstore[snoopy];
		ccif.ramWEN = 1;
		ccif.dload[snooper] = ccif.dstore[snoopy];
		ccif.ccsnoopaddr[snoopy] = ccif.daddr[snooper];
		ccif.ccwait[snoopy] = 1;
		if (ccif.ramstate == ACCESS) begin
			ccif.dwait[snooper] = 0;
			ccif.dwait[snoopy] = 0;
		end
		else begin
			ccif.dwait[snooper] = 1;
			ccif.dwait[snoopy] = 1;
		end
	end 
	else begin
		ccif.ramaddr = 0;	
		ccif.ramstore = 0;
		ccif.ramWEN = 0;
		ccif.ramREN = 0;
		ccif.iwait = 2'b11;
		ccif.dwait = 2'b11;
		ccif.iload = 2'b00;
		ccif.dload = 2'b00;
		ccif.ccsnoopaddr = '0;
		ccif.ccwait = 2'b00;
		ccif.ccinv = {ccif.ccwrite[0], ccif.ccwrite[1]};
		sw = 0;	
	end
end
	

always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 0) begin
		snoopy <= 1;
		snooper <= 0;
	end
	else begin
		snoopy <= next_snoopy;
		snooper <= next_snooper;
	end
end

always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 0) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

endmodule
