/*
  Eric Villasenor
  evillase@gmail.com

  register file test bench
*/

// mapped needs this
`include "../include/register_file_if.vh"

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module register_file_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // test vars
  int v1 = 1;
  int v2 = 4721;
  int v3 = 25119;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  register_file_if rfif ();
  // test program
  test PROG (CLK, nRST, rfif);

  // DUT
`ifndef MAPPED
  register_file DUT(CLK, nRST, rfif);
`else
  register_file DUT(
    .\my_rf.rdat2 (rfif.rdat2),
    .\my_rf.rdat1 (rfif.rdat1),
    .\my_rf.wdat (rfif.wdat),
    .\my_rf.rsel2 (rfif.rsel2),
    .\my_rf.rsel1 (rfif.rsel1),
    .\my_rf.wsel (rfif.wsel),
    .\my_rf.WEN (rfif.WEN),
    .\n_rst (nRST),
    .\clk (CLK)
  );
`endif

endmodule

program test(input logic clk, output logic nRst, register_file_if.tb tb_reg_file);
	
	integer test_case_num;
	
	initial
	begin	
		// Test 1
    @(posedge clk);
		 nRst = 1'b0;
    @(negedge clk);
		 tb_reg_file.WEN = 1'b0;
		 tb_reg_file.wsel = 5'b00010;
		 tb_reg_file.rsel1 = 5'b00010;
		 tb_reg_file.rsel2 = 5'b00011;
		 tb_reg_file.wdat = 32'b00010000000100000001000000010000;
		@(posedge clk);
    @(posedge clk);

    test_case_num = 1;
	
		if(tb_reg_file.rdat1 == 32'h0000 && tb_reg_file.rdat2 == 32'h0000)
		begin
			$display("Test Case #%0d Passed", test_case_num);	
		end
		else
		begin
			$display("Test Case #%0d Failed", test_case_num);
		end

    test_case_num += 1;

		// Test 2
    @(posedge clk);
    nRst = 1'b0;
    @(negedge clk)
    tb_reg_file.WEN = 1'b1;
    tb_reg_file.wsel = 5'b00010;
    tb_reg_file.rsel1 = 5'b00010;
    tb_reg_file.rsel2 = 5'b00011;
    tb_reg_file.wdat = 32'b00010000000100000001000000010000;
    @(posedge clk);
    @(posedge clk);

    if(tb_reg_file.rdat1 == 32'h0000 && tb_reg_file.rdat2 == 32'h0000)
    begin
      $display("Test Case #%0d Passed", test_case_num); 
    end
    else
    begin
      $display("Test Case #%0d Failed", test_case_num);
    end

    test_case_num += 1;

		// Test 3
    @(posedge clk);
    nRst = 1'b1;
    @(negedge clk)
    tb_reg_file.WEN = 1'b1;
    tb_reg_file.wsel = 5'b00010;
    tb_reg_file.rsel1 = 5'b00010;
    tb_reg_file.rsel2 = 5'b00011;
    tb_reg_file.wdat = 32'h10101010;
    @(posedge clk);
    @(posedge clk);

    if(tb_reg_file.rdat1 == 32'h10101010 && tb_reg_file.rdat2 == 32'h00000000)
    begin
      $display("Test Case #%0d Passed", test_case_num); 
    end
    else
    begin
      $display("Test Case #%0d Failed", test_case_num);
    end

    test_case_num += 1;

    // Test 4
    @(posedge clk);
    nRst = 1'b1;
    @(negedge clk)
    tb_reg_file.WEN = 1'b1;
    tb_reg_file.wsel = 5'b00010;
    tb_reg_file.rsel1 = 5'b00010;
    tb_reg_file.rsel2 = 5'b00010;
    tb_reg_file.wdat = 32'h10101010;
    @(posedge clk);
    @(posedge clk);

    if(tb_reg_file.rdat1 == 32'h10101010 && tb_reg_file.rdat2 == 32'h10101010)
    begin
      $display("Test Case #%0d Passed", test_case_num); 
    end
    else
    begin
      $display("Test Case #%0d Failed", test_case_num);
    end

    // Test 5
    @(posedge clk);
    nRst = 1'b1;
    @(negedge clk)
    tb_reg_file.WEN = 1'b1;
    tb_reg_file.wsel = 5'b00000;
    tb_reg_file.rsel1 = 5'b00000;
    tb_reg_file.rsel2 = 5'b00000;
    tb_reg_file.wdat = 32'h10101010;
    @(posedge clk);
    @(posedge clk);

    if(tb_reg_file.rdat1 == 32'h00000000 && tb_reg_file.rdat2 == 32'h00000000)
    begin
      $display("Test Case #%0d Passed", test_case_num); 
    end
    else
    begin
      $display("Test Case #%0d Failed", test_case_num);
    end

    $finish;
	end

endprogram