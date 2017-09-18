/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437, Fall 2017
	Description: Testbench for the ALU and Register File Top Level TestBench
*/

`include "../include/reg_alu_top_level_if.vh"
`include "../include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

`timescale 1 ns / 1 ns;

module reg_alu_top_level_tb;

	logic CLK = 0, nRST;

	parameter PERIOD = 10; // Clock Period 10 ns

	// Clock Generation Block
	always #(PERIOD / 2) CLK++;

	// Register ALU TopLevel Test Bench
	reg_alu_top_level_if ra_dut();	

	// Test Program
	test PROG(CLK, nRST, ra_dut);

	// Mapped
	`ifndef MAPPED
		reg_alu_top_level DUT(CLK, nRST, ra_dut);
	`else
		reg_alu_top_level DUT(
			.CLK(CLK),
			.nRST(nRST),
			.\ra_if.ihit(ra_dut.ihit),
			.\ra_if.dhit(ra_dut.dhit),
			.\ra_if.RegWrite(ra_dut.RegWrite),
			.\ra_if.regDst(ra_dut.regDst),
			.\ra_if.MemtoReg(ra_dut.MemtoReg),
			.\ra_if.aluSrc(ra_dut.aluSrc),
			.\ra_if.shamt(ra_dut.shamt),
			.\ra_if.regT(ra_dut.regT),
			.\ra_if.regS(ra_dut.regS),
			.\ra_if.regD(ra_dut.regD),
			.\ra_if.imemLoad(ra_dut.imemLoad),
			.\ra_if.dmemLoad(ra_dut.dmemLoad),
			.\ra_if.aluOp(ra_dut.aluOp),
			.\ra_if.imemaddr(ra_dut.imemaddr),
			.\ra_if.zero(ra_dut.zero),
			.\ra_if.overflow(ra_dut.overflow),
			.\ra_if.negative(ra_dut.negative),
			.\ra_if.dmemAddr(ra_dut.dmemAddr),
			.\ra_if.dmemStore(ra_dut.dmemStore),
			.\ra_if.rdat1(ra_dut.rdat1)
		);
	`endif

endmodule

program test(input logic clk, output logic nRST, reg_alu_top_level_if.tb ra_tb);

	integer test_case_num;

	initial
	begin
		test_case_num = 1;

		@(posedge clk);

		nRST = 1'b0; // Resetting all the modifiable locations [1-31] to 32'h00000000

		ra_tb.regS = 32'h00000001;
		ra_tb.regT = 32'h00000002;

		@(posedge clk);

		if(ra_tb.rdat1 == 32'h00000000 && ra_tb.dmemStore == 32'h00000000)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

	end

endprogram