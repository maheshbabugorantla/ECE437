
/*
	Author: Mahesh Babu Gorantla, mgorantl@purdue.edu
	mg Account: mg226 
	Description: TestBench for ALU Module alu.sv
*/

// mapped needs this
`include "../include/cpu_types_pkg.vh"
`include "../include/alu_if.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module alu_tb;

	parameter PERIOD = 10; // 10 ns of Clock Period

	logic CLK = 0, nRST;
	
	// Clock Generation Block
	always
	begin
		CLK = 0;
		#(PERIOD/2);		
		CLK = 1;
		#(PERIOD/2);
	end
	
	// ALU Interface
	alu_if alu_dut ();

	// Test Program
	test PROG(CLK, alu_dut);

	 // DUT
	`ifndef MAPPED
	  alu DUT(alu_dut);
	`else
	  alu DUT(
	    .\my_alu.portA (alu_dut.portA),
	    .\my_alu.portB (alu_dut.portB),
	    .\my_alu.outputPort (alu_dut.outputPort),
	    .\my_alu.aluOp (alu_dut.aluOp),
	    .\my_alu.zero (alu_dut.zero),
	    .\my_alu.negative (alu_dut.negative),
	    .\my_alu.overflow (alu_dut.overflow),
	  );
	`endif

endmodule

program test(input logic clk, alu_if.tb alu_tb);

	integer test_case_num;

	initial
	begin

		// ALU_SLL

		test_case_num = 1;
		alu_tb.portA = 32'h10101010;
		alu_tb.portB = 32'h00000002;
		alu_tb.aluOp = ALU_SLL;

		@(posedge clk);
		@(negedge clk);

		$display("Output Port %h",alu_tb.outputPort);

		@(negedge clk);
		@(posedge clk);

		// ALU_SRL

		test_case_num += 1;

		alu_tb.portA = 32'h10101010;
		alu_tb.portB = 32'h00000002;
		alu_tb.aluOp = ALU_SRL;

		@(posedge clk);
		@(negedge clk);

		$display("Output Port %h",alu_tb.outputPort);

		@(negedge clk);
		@(posedge clk);

		// ALU_ADD

		test_case_num += 1;

		alu_tb.portA = 32'h10101010;
		alu_tb.portB = 32'h10101010;
		alu_tb.aluOp = ALU_ADD;

		@(posedge clk);
		@(negedge clk);

		$display("Output Port %h",alu_tb.outputPort);

		@(negedge clk);
		@(posedge clk);

		// ALU_SUB
		test_case_num += 1;

		alu_tb.portA = 32'h10101010;
		alu_tb.portB = 32'h10101010;
		alu_tb.aluOp = ALU_SUB;

		@(posedge clk);
		@(negedge clk);

		$display("Output Port %h",alu_tb.outputPort);

		@(negedge clk);
		@(posedge clk);

		// ALU_AND

		// ALU_OR
	
		// ALU_XOR
	

		// ALU_NOR
	

		// ALU_SLT
	

		// ALU_SLTU
		$finish;
	end

endprogram
