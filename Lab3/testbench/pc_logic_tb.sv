/*
	Author: Mahesh Babu Gorantla
	Class: ECE 437, Fall 2017
	Description: TestBench to test the correct functionality of the PC Logic
*/

`include "../include/pc_logic_if.vh"
`include "../include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

`timescale 1ns / 1ns

module pc_logic_tb;
	
	logic CLK = 0, nRST;

	parameter PERIOD = 10; // Clock Period 10ns

	// Clock Generation Logic
	always #(PERIOD / 2) CLK++;

	// PC Logic Interface
	pc_logic_if pc_dut();

	// Test Program
	test PROG(CLK, nRST, pc_dut);

	// Mapped
	`ifndef MAPPED
		pc_logic DUT(CLK, nRST, pc_dut);
	`else
		pc_logic DUT (
				.CLK(CLK),
				.nRST(nRST),
				.\pcif.ihit(pc_dut.ihit),
				.\pcif.zero(pc_dut.zero),
				.\pcif.halt(pc_dut.halt),
				.\pcif.Branch(pc_dut.Branch),
				.\pcif.JmpSel(pc_dut.JmpSel),
				.\pcif.imemLoad(pc_dut.imemLoad),
				.\pcif.rdat1(pc_dut.rdat1),
				.\pcif.imemaddr(pc_dut.imemaddr),
				.\pcif.nextPC(pc_dut.nextPC),
			);
	`endif

endmodule

program test(input logic clk, output logic nRST, pc_logic_if.tb pc_tb);

	integer test_case_num;

	initial
	begin

		test_case_num = 1;

		// Resetting the Program Counter
		nRST = 1'b0;

		pc_tb.ihit = 1'b1;

		// Checking the PC Counter imemAddr
		@(posedge clk)

		if(pc_tb.imemaddr == 32'h00000000)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		test_case_num += 1;

		nRST = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		pc_tb.Branch = 1'b0;
		pc_tb.zero = 1'b0;
		pc_tb.JmpSel = 2'b00;
		pc_tb.halt = 1'b0;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h00000004)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		// Testing the Flags for BNEQ
		test_case_num += 1;

		pc_tb.Branch = 1'b1;
		pc_tb.zero = 1'b0;
		pc_tb.JmpSel = 2'b00;
		pc_tb.halt = 1'b0;
		pc_tb.imemLoad = 32'h10210000;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h00000008)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end				

		// Testing the Flags for BEQ
		test_case_num += 1;

		pc_tb.Branch = 1'b1;
		pc_tb.zero = 1'b1;
		pc_tb.JmpSel = 2'b00;
		pc_tb.halt = 1'b0;
		pc_tb.imemLoad = 32'h10210004;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h0000001c)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		// Flags for the JR
		test_case_num += 1;

		pc_tb.Branch = 1'b0;
		pc_tb.zero = 1'b1;
		pc_tb.JmpSel = 2'b10;
		pc_tb.halt = 1'b0;
		pc_tb.imemLoad = 32'h10210004;
		pc_tb.rdat1 = 32'h10101010;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h10101010)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		// Flags for the J (Jump Address)
		test_case_num += 1;

		pc_tb.Branch = 1'b0;
		pc_tb.zero = 1'b1;
		pc_tb.JmpSel = 2'b01;
		pc_tb.halt = 1'b0;
		pc_tb.imemLoad = 32'h10210004;
		pc_tb.rdat1 = 32'h10101010;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h10840010)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		// Check for Halt
		test_case_num += 1;

		pc_tb.Branch = 1'b0;
		pc_tb.zero = 1'b1;
		pc_tb.JmpSel = 2'b01;
		pc_tb.halt = 1'b1;
		pc_tb.imemLoad = 32'h10210004;
		pc_tb.rdat1 = 32'h10101010;
		pc_tb.ihit = 1'b1;

		@(posedge clk) // Wait for 1 clock cycle for changes to take place

		if(pc_tb.imemaddr == 32'h10840010)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end		

	end

endprogram