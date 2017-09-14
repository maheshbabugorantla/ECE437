/*
	Author: Mahesh Babu Gorantla
	Class: ECE 437, Fall 2017
	Description: TestBench to test the Request Unit Functionalities	
*/

`include "./include/request_unit_if.vh"
`include "./include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

`timescale 1ns / 1ns

module request_unit_tb;

	parameter PERIOD = 10; // Clock Period in ns

	logic CLK = 0, nRST;

	// Clock Generation Block
	always #(PERIOD / 2) CLK++;

	// Request Unit Interface
	request_unit_if ru_dut();

	// Test Program	
	test PROG(CLK, nRST, ru_dut);

	// DUT
	`ifndef MAPPED
		request_unit DUT(CLK, nRST, ru_dut);
	`else
		request_unit DUT(
			.CLK(CLK),
			.nRST(nRST),
			.\ruif.ihitIn(ru_dut.ihitIn),
			.\ruif.dhitIn(ru_dut.dhitIn),
			.\ruif.dREN(ru_dut.dREN),
			.\ruif.dWEN(ru_dut.dWEN),
			.\ruif.dmemREN(ru_dut.dmemREN),
			.\ruif.dmemWEN(ru_dut.dmemWEN),
			.\ruif.ihit(ru_dut.ihit),
			.\ruif.dhit(ru_dut.dhit)
		);
	`endif

endmodule

program test(input logic clk, output logic nRST, request_unit_if.tb ru_tb);

	integer test_case_num;

	initial
	begin

		test_case_num = 1;

		@(posedge clk);
		@(posedge clk);

		// Checking for Reset
		nRST = 1'b0;

		@(posedge clk);

		ru_tb.dWEN = 1'b1;
		ru_tb.dREN = 1'b1;
		ru_tb.dhitIn = 1'b1;
		ru_tb.ihitIn = 1'b1;

		if(ru_tb.dmemWEN == 1'b0 && ru_tb.dmemREN == 1'b0 && ru_tb.ihit == 1'b0 && ru_tb.dhit == 1'b0)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		test_case_num += 1;

		nRST = 1'b1;

		@(posedge clk);
		@(posedge clk);

		// Checking when dhit = 1'b1

		ru_tb.dWEN = 1'b1;
		ru_tb.dREN = 1'b1;
		ru_tb.dhitIn = 1'b1;
		ru_tb.ihitIn = 1'b1;

		if(ru_tb.dmemWEN == 1'b0 && ru_tb.dmemREN == 1'b0 && ru_tb.ihit == 1'b1 && ru_tb.dhit == 1'b1)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		@(posedge clk);
		@(posedge clk);

		// Checking when ihit = 1'b1

		test_case_num += 1;

		ru_tb.dWEN = 1'b1;
		ru_tb.dREN = 1'b1;
		ru_tb.dhitIn = 1'b0;
		ru_tb.ihitIn = 1'b1;

		@(posedge clk);

		if(ru_tb.dmemWEN == 1'b1 && ru_tb.dmemREN == 1'b1 && ru_tb.ihit == 1'b1 && ru_tb.dhit == 1'b0)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		test_case_num += 1;

		@(posedge clk);
		@(posedge clk);

		// Checking when ihit = 1'b1
		ru_tb.dWEN = 1'b1;
		ru_tb.dREN = 1'b0;
		ru_tb.dhitIn = 1'b0;
		ru_tb.ihitIn = 1'b1;

		@(posedge clk);

		if(ru_tb.dmemWEN == 1'b1 && ru_tb.dmemREN == 1'b0 && ru_tb.ihit == 1'b1 && ru_tb.dhit == 1'b0)
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end

		$finish;

	end

endprogram