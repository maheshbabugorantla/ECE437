/*
  Eric Villasenor
  evillase@gmail.com

  register file test bench
*/

// mapped needs this
`include "register_file_if.vh"

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
  register_file_if myif ();
  // test program
  test PROG (CLK, nRST, myif);
  // DUT
`ifndef MAPPED
  register_file DUT(CLK, nRST, myif);
`else
  register_file DUT(
    .\myif.rdat2 (myif.rdat2),
    .\myif.rdat1 (myif.rdat1),
    .\myif.wdat (myif.wdat),
    .\myif.rsel2 (myif.rsel2),
    .\myif.rsel1 (myif.rsel1),
    .\myif.wsel (myif.wsel),
    .\myif.WEN (myif.WEN),
    .\nRST (nRST),
    .\CLK (CLK)
  );
`endif

endmodule

program test (input logic CLK, output logic nRST, register_file_if.tb myif);
	int test_case_cnt = 1;	
	// test vars
	int v1 = 1;
	int v2 = 4721;
	int v3 = 25119;
initial begin
	nRST = 1;
	@(posedge CLK);
	nRST = 0;
	@(posedge CLK);
	nRST = 1;
	myif.wdat = v1;
	myif.wsel = 2;
	myif.WEN = 1;
	@(posedge CLK);
	myif.WEN = 0;
	myif.rsel1 = 3;
	myif.rsel2 = 2;
	@(posedge CLK);
	@(negedge CLK);
	if (myif.rdat1 != v1) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	if (myif.rdat2 == v1) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	myif.wdat = v1;
	myif.wsel = 0;
	myif.WEN = 1;
	@(posedge CLK);
	myif.WEN = 0;
	myif.rsel1 = 0;
	myif.rsel2 = 0;
	@(posedge CLK);
	@(negedge CLK);
	if (myif.rdat1 == 0) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	if (myif.rdat2 == 0) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	myif.wdat = v2;
	myif.wsel = 6;
	myif.WEN = 1;
	@(posedge CLK);
	myif.WEN = 0;
	myif.rsel1 = 6;
	myif.rsel2 = 1;
	@(posedge CLK);
	@(negedge CLK);
	if (myif.rdat1 == v2) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	if (myif.rdat2 != v2) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	myif.wdat = v3;
	myif.wsel = 31;
	myif.WEN = 1;
	@(posedge CLK);
	myif.WEN = 0;
	myif.rsel1 = 6;
	myif.rsel2 = 31;
	@(posedge CLK);
	@(negedge CLK);
	if (myif.rdat1 == v2) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	if (myif.rdat2 == v3) begin
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end

	test_case_cnt = test_case_cnt + 1;

	@(posedge CLK);
	nRST = 0;
	@(negedge CLK);

	if (myif.rdat2 == 0 && myif.rdat1 == 0) begin 
		$display("Test Case %1d Passed at %0t", test_case_cnt, $time);
	end
	else begin
		$display("Test Case %1d Failed at %0t", test_case_cnt, $time);	 
	end
	


end	

endprogram
