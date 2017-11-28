/* memory_control_tb Zane Johnson */ 

// interface include
`include "cache_control_if.vh"
`include "cpu_ram_if.vh"

// memory types
`include "cpu_types_pkg.vh"

// type import
import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  caches_if cif0();
  caches_if cif1();
  cache_control_if #(.CPUS(2)) ccif(cif0, cif1);  
  cpu_ram_if ramif();
 test PROG(CLK, nRST, ccif);

  // DUT
`ifndef MAPPED
  memory_control DUT(CLK, nRST, ccif);
`endif

endmodule

program test(input logic CLK, output logic nRST, cache_control_if.cc ccif);

  parameter PERIOD = 10;
  initial begin

	nRST = 1'b1;
	@(posedge CLK);	
	nRST = 1'b0;

	cif0.iaddr = 0;
	cif0.daddr = 0;
	cif0.dWEN = 0;
	cif0.dREN = 0;
	cif0.iREN = 0;
	cif0.dstore = 0;
	cif0.ccwrite = 0;
	cif0.cctrans = 0;
	cif1.iaddr = 0;
	cif1.daddr = 0;
	cif1.dWEN = 0;
	cif1.dREN = 0;
	cif1.iREN = 0;
	cif1.dstore = 0;
	cif1.ccwrite = 0;
	cif1.cctrans = 0;

	@(posedge CLK);
	nRST = 1'b1;

	cif0.dWEN = 0;


	//Memory (RAM and Cache)
		
	$display("Memory (RAM and Cache)");
	#(PERIOD);
	cif0.cctrans = 1;
	#(PERIOD);
	//ARB
	cif0.dREN = 1;
	cif0.daddr = 1; 
	#(PERIOD);
	//SNOOP
	cif1.ccwrite = 1;
	cif1.cctrans = 1;
	#(PERIOD);
	//MEM1
	cif0.dREN = 0;
	cif0.cctrans = 0;
	cif1.ccwrite = 0;
	cif1.cctrans = 0;
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//MEM2
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//IDLE
	#(PERIOD);
	
	nRST = 1'b0;
	@(posedge CLK);
	nRST = 1'b1;

	//Instruction Fetch

	$display("Instruction Fetch");
	#(PERIOD);
	cif0.iREN = 1;
	#(PERIOD);
	//IFetch
	cif0.iREN = 0;
	ccif.ramstate = ACCESS;
	cif0.cctrans = 0;
	#(PERIOD);
	//IDLE
	#(PERIOD);

	nRST = 1'b0;
	@(posedge CLK);
	nRST = 1'b1;

	//Read

	$display("Read");
	#(PERIOD);
	cif0.cctrans = 1;
	#(PERIOD);
	//ARB
	cif0.dREN = 1;
	cif0.daddr = 1; 
	#(PERIOD);
	//SNOOP
	cif1.ccwrite = 1;
	cif1.cctrans = 0;
	#(PERIOD);
	//RD1
	cif0.dREN = 0;
	cif0.cctrans = 0;
	cif1.ccwrite = 0;
	cif1.cctrans = 0;
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//RD2
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//IDLE
	#(PERIOD);
	
	nRST = 1'b0;
	@(posedge CLK);
	nRST = 1'b1;

	//Memory
	$display("Memory (RAM and Cache)");
	#(PERIOD);
	cif1.cctrans = 1;
	#(PERIOD);
	//ARB
	cif1.dREN = 1;
	cif1.daddr = 1; 
	#(PERIOD);
	//SNOOP
	cif0.ccwrite = 1;
	cif0.cctrans = 1;
	#(PERIOD);
	//MEM1
	cif1.dREN = 0;
	cif1.cctrans = 0;
	cif0.ccwrite = 0;
	cif0.cctrans = 0;
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//MEM2
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//IDLE
	#(PERIOD);
	
	nRST = 1'b0;
	@(posedge CLK);
	nRST = 1'b1;

	//Read
	$display("Read");
	#(PERIOD);
	cif1.cctrans = 1;
	#(PERIOD);
	//ARB
	cif1.dREN = 1;
	cif1.daddr = 1; 
	#(PERIOD);
	//SNOOP
	cif0.ccwrite = 1;
	cif0.cctrans = 0;
	#(PERIOD);
	//RD1
	cif1.dREN = 0;
	cif1.cctrans = 0;
	cif0.ccwrite = 0;
	cif0.cctrans = 0;
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//RD2
	ccif.ramstate = ACCESS;
	#(PERIOD);
	//IDLE
	#(PERIOD);
	
  end
endprogram
