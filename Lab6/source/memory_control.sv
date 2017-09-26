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
  parameter CPUS = 1;

  //ram
  always_comb begin

	ccif.ramstore = ccif.dstore;
	ccif.ramWEN = ccif.dWEN;
	if (ccif.dWEN == 1'b1 || ccif.dREN == 1'b1) begin
		ccif.ramaddr = ccif.daddr;
	end
	else begin
		ccif.ramaddr = ccif.iaddr;
	end
	
	if ((ccif.iREN == 1'b1 || ccif.dREN == 1'b1) && ccif.dWEN == 1'b0) begin
		ccif.ramREN = 1'b1;
	end
	else begin
		ccif.ramREN = 1'b0;	
	end		
	
  end


  //i-d
  always_comb begin

	ccif.dload = ccif.ramload;
	if (ccif.iREN == 1'b1) begin
		ccif.iload = ccif.ramload;
	end
	else begin
		ccif.iload = 0;
	end

	if (ccif.dWEN == 1'b0 && ccif.iREN == 1'b1 && ccif.dREN == 1'b0 && ccif.ramstate == ACCESS) begin
		ccif.iwait = 0;
	end
	else begin
		ccif.iwait = 1;
	end
		
	if ((ccif.dREN == 1'b1 || ccif.dWEN == 1'b1) && ccif.ramstate == ACCESS) begin
		ccif.dwait = 0;
	end
	else begin
		ccif.dwait = 0;
	end
  end

endmodule

