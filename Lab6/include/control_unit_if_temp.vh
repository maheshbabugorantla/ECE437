`ifndef CONTROL_UNIT_IF_VH
`define CONTROL_UNIT_IF_VH

`include "cpu_types_pkg.vh"

interface control_unit_if;

	import cpu_types_pkg::*;
	
	funct_t funct;
	logic [1:0] ALUSel, PCSel, DataSel, RegDest;
	opcode_t op;
	logic zero, branch, memREN, memWEN, regWEN, halt;
	logic dhit, ihit;
	aluop_t ALUOP;

modport cu (input op, funct, zero, dhit, ihit,
	output ALUSel, PCSel, DataSel, RegDest, memREN, memWEN, regWEN, halt, branch, ALUOP);

modport tb (input ALUSel, PCSel, DataSel, RegDest, memREN, memWEN, regWEN, halt, branch, ALUOP,
		output op, funct, zero, dhit, ihit);

endinterface
`endif


// mapped needs this
`include "control_unit_if.vh"
`include "cpu_types_pkg.vh"



// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module control_unit_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  control_unit_if cuif();

  // test program
  test PROG (CLK, nRST, cuif);
`ifndef MAPPED
  control_unit DUT (CLK, nRST, cuif);
`endif

endmodule

program test (input logic CLK, output logic nRST, control_unit_if.tb cuif);
	int test_case_cnt = 0;
	import cpu_types_pkg::*;
initial begin
	cuif.op = opcode_t'(6'b000000);
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;
		
	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = opcode_t'(6'b000010);
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;
	
end	

endprogram

