// mapped needs this
`include "control_unit_if.vh"
`include "cpu_types_pkg.vh"



// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module control_unit_tb;
import cpu_types_pkg::*;
  parameter PERIOD = 10;

  logic CLK = 0, nRST = 1;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  control_unit_if cuif ();

  // test program
  test PROG (CLK, nRST, cuif);
//`ifndef MAPPED
  control_unit DUT (cuif);
/*`else
  control_unit DUT(
    .\cuif.op (cuif.op),
    .\cuif.funct (cuif.funct),
    .\cuif.zero (cuif.zero),
    .\cuif.dhit (cuif.dhit),
    .\cuif.ihit (cuif.ihit),
    .\cuif.PCSel (cuif.PCSel),
    .\cuif.ALUSel (cuif.ALUSel),
    .\cuif.DataSel (cuif.DataSel),
    .\cuif.memREN (cuif.memREN),
    .\cuif.memWEN (cuif.memWEN),
    .\cuif.regWEN (cuif.regWEN),
    .\cuif.ALUOP (cuif.ALUOP),
    .\cuif.RegDest (cuif.RegDest),
    .\cuif.halt (cuif.halt),
    .\cuif.branch (cuif.branch)
  );
`endif*/


endmodule

program test (input logic CLK, output logic nRST, control_unit_if.tb cuif);
	int test_case_cnt = 0;
	import cpu_types_pkg::*;
initial begin
	cuif.op = opcode_t'(6'b000000);
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;
	cuif.ihit = 1'b0;
	cuif.dhit = 1'b0;
		
	@(posedge CLK);
	
	test_case_cnt = test_case_cnt + 1;

	cuif.op = J;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;
	
	cuif.op = BEQ;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b1;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = BNE;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = ADDI;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = ANDI;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = ORI;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = ORI;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = HALT;
	cuif.funct = funct_t'(5'b00000);
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = RTYPE;
	cuif.funct = SLL;
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = RTYPE;
	cuif.funct = SUB;
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = RTYPE;
	cuif.funct = AND;
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = RTYPE;
	cuif.funct = SLT;
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;

	cuif.op = RTYPE;
	cuif.funct = JR;
	cuif.zero = 1'b0;

	@(posedge CLK);
		
	test_case_cnt = test_case_cnt + 1;


end	

endprogram

