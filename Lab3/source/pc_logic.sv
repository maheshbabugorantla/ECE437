/*
	Author: Mahesh Babu Gorantl
	Course: ECE 437, Fall 2017
	Description: PC Counter Logic Module
*/

`include "../include/pc_logic_if.vh"
`include "../include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

module pc_logic (
	input CLK, nRST,
	pc_logic_if.pc_logic pcif
);

	logic [31:0] pcNext;
	logic [31:0] jmpReg; // Intermediate Register
	logic [31:0] haltReg; // Intermediate Register
	logic [31:0] tempReg; // Temporary Register
	logic [31:0] tempaddr; // Temporary ImemAddress

	always_ff@(posedge CLK, negedge nRST)
	begin
		if(nRST == 1'b0)
		begin
			pcif.imemaddr <= word_t'(32'h00000000);
		end
		else if(pcif.ihit == 1'b1 && pcif.dhit == 1'b0)
		begin
			pcif.imemaddr <= word_t'(pcNext);
		end
	end

	always_comb
	begin

		tempReg = pcif.imemaddr + 32'h00000004;

		// jmpReg condition
		if(pcif.Branch == 1'b0 && pcif.zero == 1'b1) // Any Other Instruction
		begin
			jmpReg = tempReg; // PC + 4
		end
		else if(pcif.Branch == 1'b1 && pcif.zero == 1'b1)
		begin
			if(opcode_t'(pcif.imemLoad[31:26]) == BEQ)
			begin
				jmpReg = tempReg + {{14{pcif.imemLoad[15]}}, pcif.imemLoad[15:0], 2'b00}; // SignExt(PC + 4) << 2
			end
			else
			begin // BNE
				jmpReg = tempReg; // PC + 4
			end
		end
		else if(pcif.Branch == 1'b1 && pcif.zero == 1'b0)
		begin
			if(opcode_t'(pcif.imemLoad[31:26]) == BNE)
			begin
				jmpReg = tempReg + {{14{pcif.imemLoad[15]}}, pcif.imemLoad[15:0], 2'b00}; // SignExt(PC + 4) << 2
			end
			else
			begin // BEQ
				jmpReg = tempReg; // PC + 4
			end
		end
		else
		begin
			jmpReg = tempReg; // + {{14{pcif.imemLoad[15]}}, pcif.imemLoad[15:0], 2'b00}; // SignExt(PC + 4) << 2
		end


		// haltReg condition
		if(pcif.JmpSel == 2'b00)
		begin
			haltReg = jmpReg;
		end
		else if(pcif.JmpSel == 2'b01)
		begin
			haltReg = {tempReg[31:28], pcif.imemLoad[25:0], 2'b00}; // Jump Address
		end
		else if(pcif.JmpSel == 2'b10)
		begin
			haltReg = pcif.rdat1;
		end
		else
		begin
			haltReg = jmpReg;
		end

		// imemaddr
		if(pcif.halt == 1'b0)
		begin
			pcNext = haltReg;
		end
		else
		begin
			pcNext = pcif.imemaddr; // Latching the PC Counter Value
		end
	end

	assign pcif.nextPC = pcNext;

endmodule