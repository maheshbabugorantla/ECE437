/*
	Author: Mahesh Babu Gorantla
	Email: mgorantl@purdue.edu
	Description: TestBench for the Control Unit of the Single Cycle Processor
*/

`include "./include/control_unit_if.vh"
`include "./include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

`timescale 1ns / 1ns

module control_unit_tb;

	logic CLK = 0, nRST;

	parameter PERIOD = 10; // Clock Period 10ns

	// Clock Generation Block
	always #(PERIOD / 2) CLK++;

	// Control Unit Interface
	control_unit_if cu_dut();

	// Test Program
	test PROG(CLK, cu_dut);

	// Mapped
	`ifndef MAPPED
		control_unit DUT(cu_dut);
	`else
		control_unit DUT (
			.\cuif.dhit(cu_dut.dhit),
			.\cuif.imemLoad(cu_dut.imemLoad),
			.\cuif.dREN(cu_dut.dREN),
			.\cuif.wREN(cu_dut.wREN),
			.\cuif.JmpSel(cu_dut.JmpSel),
			.\cuif.RegWrite(cu_dut.RegWrite),
			.\cuif.Branch(cu_dut.Branch),
			.\cuif.MemtoReg(cu_dut.MemtoReg),
			.\cuif.aluSrc(cu_dut.aluSrc),
			.\cuif.RegDst(cu_dut.RegDst),
			.\cuif.aluOp(cu_dut.aluOp),
			.\cuif.shamt(cu_dut.shamt),
			.\cuif.regD(cu_dut.regD),
			.\cuif.regS(cu_dut.regS),
			.\cuif.regT(cu_dut.regT),
			.\cuif.halt(cu_dut.halt)
		);
	`endif

endmodule

program test(input logic clk, control_unit_if.tb cu_tb);

	initial
	begin

		integer test_case_num;

		logic [31:0] tempReg;

		test_case_num = 1;

		@(posedge clk);

		cu_tb.imemLoad = 32'h00400840;

		#1;

		// Check for SLL
		if(cu_tb.aluOp == ALU_SLL)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_SLL, 
						 32'h00400840, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
						 cu_tb.regS, cu_tb.regT, test_case_num);

		test_case_num += 1;

		cu_tb.imemLoad = 32'h00400842;

		#1;

		// Check for SRL
		if(cu_tb.aluOp == ALU_SRL)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_SRL, 
						 32'h00400842, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
						 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for JR
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00A00008;

		#1;

		if(cu_tb.aluOp == 4'b1111)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, 4'b1111, 
						 32'h00A00008, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
						 cu_tb.regS, cu_tb.regT, test_case_num);


		// Check for ADD
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430820;

		#1;

		if(cu_tb.aluOp == ALU_ADD)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

/*		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.Branch == 1'b0 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b00 && cu_tb.MemtoReg == 2'b00 && cu_tb.RegDst == 2'b01 
			&& cu_tb.shamt == cu_tb.imemLoad[10:6] && cu_tb.regD == cu_tb.imemLoad[15:11] && cu_tb.regS == cu_tb.imemLoad[25:21]
			&& cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d Failed", test_case_num);
		end
*/
		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_ADD,
						 32'h00430820, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
						 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for ADDU
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430821;

		#1;

		if(cu_tb.aluOp == ALU_ADD)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_ADD,
				 32'h00430821, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
				 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for SUB
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430822;

		#1;

		if(cu_tb.aluOp == ALU_SUB)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_SUB,
		 32'h00430822, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
		 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for AND
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430824;

		#1;

		if(cu_tb.aluOp == ALU_AND)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_AND,
		 32'h00430822, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
		 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for NOR
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430827;

		#1;

		if(cu_tb.aluOp == ALU_NOR)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_NOR,
		 32'h00430827, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
		 cu_tb.regS, cu_tb.regT, test_case_num);

		// Check for XOR
		test_case_num += 1;

		cu_tb.imemLoad = 32'h00430826;

		#1;

		if(cu_tb.aluOp == ALU_XOR)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		check_ctrl_flags_rtype(cu_tb.dREN, cu_tb.dWEN, cu_tb.RegWrite, cu_tb.Branch, cu_tb.halt, ALU_XOR,
		 32'h00430826, cu_tb.JmpSel, cu_tb.aluSrc, cu_tb.MemtoReg, cu_tb.RegDst, cu_tb.shamt, cu_tb.regD,
		 cu_tb.regS, cu_tb.regT, test_case_num);

		/** J - Type Instructions */
		test_case_num += 1;

		cu_tb.imemLoad = 32'h08000001;

		#1;

		// J :- PC <= JumpAddr
		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b0 && cu_tb.halt == 1'b0 && cu_tb.JmpSel == 2'b01 )
		begin
			$display("TestCase 'J' instruction Passed");
		end
		else
		begin
			$display("TestCase 'J' instruction Failed");
		end

		// JAL :- R[31] <= npc, 
		test_case_num += 1;

		cu_tb.imemLoad = 32'h0C000001;

		#1;		

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b01 && cu_tb.MemtoReg == 2'b11 && cu_tb.RegDst == 2'b10)
		begin
			$display("TestCase 'JAL' instruction Passed");
		end
		else
		begin
			$display("TestCase 'JAL' instruction Failed");
		end

		/** I - Type Instructions */

		// BEQ (Branch If Equal to)
		test_case_num += 1;

		cu_tb.imemLoad = 32'h10210000;

		#1;

		if(cu_tb.aluOp == ALU_SUB)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b0 && cu_tb.Branch == 1'b1 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b00 && cu_tb.regS == cu_tb.imemLoad[25:21]
			&& cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase 'BEQ' instruction Passed");
		end
		else
		begin
			$display("TestCase 'BEQ' instruction Failed");
		end		

		// ADDI
		test_case_num += 1;

		cu_tb.imemLoad = 32'h2021000A;

		#1;

		if(cu_tb.aluOp == ALU_ADD)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.Branch == 1'b0 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b01 && cu_tb.MemtoReg == 2'b00 && cu_tb.RegDst == 2'b00 
			&& cu_tb.regS == cu_tb.imemLoad[25:21] && cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d 'ADDI' Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d 'ADDI' Failed", test_case_num);
		end

		// SLTI
		test_case_num += 1;

		cu_tb.imemLoad = 32'h2821000A;

		#1;

		if(cu_tb.aluOp == ALU_SLT)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.Branch == 1'b0 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b01 && cu_tb.MemtoReg == 2'b00 && cu_tb.RegDst == 2'b00
			&& cu_tb.regS == cu_tb.imemLoad[25:21] && cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d 'SLTI' Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d 'SLTI' Failed", test_case_num);
		end


		// ANDI or ORI or XORI (In all these cases only the OpCode Changes)
		test_case_num += 1;

		cu_tb.imemLoad = 32'h3021000A;

		#1;

		if(cu_tb.aluOp == ALU_AND)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.Branch == 1'b0 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b01 && cu_tb.MemtoReg == 2'b00 && cu_tb.RegDst == 2'b00
			&& cu_tb.regS == cu_tb.imemLoad[25:21] && cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d 'ANDI' Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d 'ANDI' Failed", test_case_num);
		end

		// LUI
		test_case_num += 1;

		cu_tb.imemLoad = 32'h3C01000A;

		#1;

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.halt == 1'b0
			&& cu_tb.Branch == 1'b0 && cu_tb.JmpSel == 2'b00 && cu_tb.MemtoReg == 2'b10 && cu_tb.RegDst == 2'b00
			&& cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d 'LUI' Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d 'LUI' Failed", test_case_num);
		end

		// LW
		test_case_num += 1;

		cu_tb.imemLoad = 32'h8C41000A;

		#1;

		if(cu_tb.aluOp == ALU_ADD)
		begin
			$display("TestCase #%0d OpCode Passed", test_case_num);
		end
		else
		begin
			$display("Opcode is %0b", cu_tb.aluOp);
			$display("TestCase #%0d OpCode Failed", test_case_num);
		end

		if(cu_tb.dREN == 1'b0 && cu_tb.dWEN == 1'b0 && cu_tb.RegWrite == 1'b1 && cu_tb.Branch == 1'b0 && cu_tb.halt == 1'b0
			&& cu_tb.JmpSel == 2'b00 && cu_tb.aluSrc == 2'b01 && cu_tb.MemtoReg == 2'b01 && cu_tb.RegDst == 2'b00
			&& cu_tb.regS == cu_tb.imemLoad[25:21] && cu_tb.regT == cu_tb.imemLoad[20:16])
		begin
			$display("TestCase #%0d 'LW' Passed", test_case_num);
		end
		else
		begin
			$display("TestCase #%0d 'LW' Failed", test_case_num);
		end		

		// SW (Still need to write, a bit confused)

		// $finish;
	end

	task check_ctrl_flags_rtype(
		input logic dREN,
		input logic dWEN,
		input logic RegWrite,
		input logic Branch,
		input logic halt,
		input logic [3:0] opCode,
		input logic [31:0] instruction,
		input logic [1:0] JmpSel,
		input logic [1:0] aluSrc,
		input logic [1:0] MemtoReg,
		input logic [1:0] RegDst,
		input logic [4:0] shamt,
		input logic [4:0] regD,
		input logic [4:0] regS,
		input logic [4:0] regT,
		integer test_case_num
	);

		#2;

		if(opCode == logic'(ALU_SLL) || opCode == logic'(ALU_SRL))
		begin
			if(dREN == 1'b0 && dWEN == 1'b0 && RegWrite == 1'b1 && Branch == 1'b0 && halt == 1'b0 
				&& JmpSel == 2'b00 && aluSrc == 2'b10 && MemtoReg == 2'b00 && RegDst == 2'b01 
				&& shamt == instruction[10:6] && regD == instruction[15:11] && regS == instruction[25:21]
				&& regT == instruction[20:16])
			begin
				$display("TestCase #%0d Passed", test_case_num);
			end
			else
			begin
				$display("TestCase #%0d Failed", test_case_num);
			end
		end

		else if(opCode == 4'b1111)
		begin
			if(dREN == 1'b0 && dWEN == 1'b0 && RegWrite == 1'b0 && Branch == 1'b0 && halt == 1'b0 
				&& JmpSel == 2'b10 && aluSrc == 2'b00 && MemtoReg == 2'b00 && RegDst == 2'b01 
				&& shamt == instruction[10:6] && regD == instruction[15:11] && regS == instruction[25:21]
				&& regT == instruction[20:16])
			begin
				$display("TestCase #%0d Passed", test_case_num);
			end
			else
			begin
				$display("TestCase #%0d Failed", test_case_num);
			end
		end

		else // ADD, ADDU, SUB, SUBU, AND, OR, NOR, XOR
		begin
			if(dREN == 1'b0 && dWEN == 1'b0 && RegWrite == 1'b1 && Branch == 1'b0 && halt == 1'b0 
				&& JmpSel == 2'b00 && aluSrc == 2'b00 && MemtoReg == 2'b00 && RegDst == 2'b01 
				&& shamt == instruction[10:6] && regD == instruction[15:11] && regS == instruction[25:21]
				&& regT == instruction[20:16])
			begin
				$display("TestCase #%0d Passed", test_case_num);
			end
			else
			begin
				$display("TestCase #%0d Failed", test_case_num);
			end
		end


	endtask

endprogram