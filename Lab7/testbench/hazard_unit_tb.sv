`include "cpu_types_pkg.vh"
`include "hazard_unit_if.vh"

`timescale 1 ns / 1 ns

module hazard_unit_tb;

parameter PERIOD = 10;

hazard_unit_if huif();

test PROG();
`ifndef MAPPED

	hazard_unit DUT(huif);

`else 
	hazard_unit DUT(
		.\huif.PCSel(huif.PCSel),
		.\huif.bne(huif.bne),
		.\huif.zero(huif.zero),
		.\huif.JumpSel(huif.JumpSel),
		.\huif.dhit(huif.dhit),
		.\huif.instr(huif.instr),
		.\huif.freeze(huif.freeze),
		.\huif.flush(huif.flush));
`endif
		
endmodule

program test;

	parameter PERIOD = 10;
	import cpu_types_pkg::*;
	
	int test_case_cnt = 1;

	initial begin
		//no branch or jump
		hazard_unit_tb.huif.JumpSel = 0;
		hazard_unit_tb.huif.instr = 0;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 0 && hazard_unit_tb.huif.flush == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)	

		//jumpSel 1
		hazard_unit_tb.huif.JumpSel = 1;
		hazard_unit_tb.huif.instr = 0;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.flush == 1) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		if (hazard_unit_tb.huif.freeze == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;


		#(PERIOD / 2)

		//jumpSel 2
		hazard_unit_tb.huif.JumpSel = 2;
		hazard_unit_tb.huif.instr = 0;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.flush == 1) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		if (hazard_unit_tb.huif.freeze == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)

		//beq
		hazard_unit_tb.huif.JumpSel = 3;
		hazard_unit_tb.huif.instr = 0;
		hazard_unit_tb.huif.PCSel = 1;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 1;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 0 && hazard_unit_tb.huif.flush == 1) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)

		//bne
		hazard_unit_tb.huif.JumpSel = 3;
		hazard_unit_tb.huif.instr = 0;
		hazard_unit_tb.huif.PCSel = 1;
		hazard_unit_tb.huif.bne = 1;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 0 && hazard_unit_tb.huif.flush == 1) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)

		//SW
		hazard_unit_tb.huif.JumpSel = 0;
		hazard_unit_tb.huif.instr[31:26] = SW;
		hazard_unit_tb.huif.regWEN = 1;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 0;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 1 && hazard_unit_tb.huif.flush == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)

		//LW
		hazard_unit_tb.huif.JumpSel = 0;
		hazard_unit_tb.huif.instr[31:26] = LW;
		hazard_unit_tb.huif.regWEN = 1;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 0;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 1 && hazard_unit_tb.huif.flush == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;

		#(PERIOD / 2)

		//dhit with LW
		hazard_unit_tb.huif.JumpSel = 0;
		hazard_unit_tb.huif.instr[31:26] = LW;
		hazard_unit_tb.huif.PCSel = 0;
		hazard_unit_tb.huif.bne = 0;
		hazard_unit_tb.huif.zero = 0;
		hazard_unit_tb.huif.dhit = 1;

		#(PERIOD / 2)

		if (hazard_unit_tb.huif.freeze == 0 && hazard_unit_tb.huif.flush == 0) begin
			$display("Test case %1d passed.", test_case_cnt);
		end 
		else begin
			$display("Test case %1d failed.", test_case_cnt);
		end
		
		test_case_cnt = test_case_cnt + 1;
	end
endprogram
