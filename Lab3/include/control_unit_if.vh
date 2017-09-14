/*
	Mahesh Babu Gorantla
	mgorantl@purdue.edu

	This the Control unit for the Datapath Module
*/

`ifndef CONTROL_UNIT_IF_VH
`define CONTROL_UNIT_IF_VH

// Include types
`include "cpu_types_pkg.vh"

interface control_unit_if;

	// Import types
	import cpu_types_pkg::*;

	// Input Signals
	logic dhit;
	word_t imemLoad;

	// Output Signals	
	logic dREN, dWEN, RegWrite, Branch, halt;
	logic [1:0] JmpSel;
	logic [1:0] MemtoReg;
	logic [1:0] aluSrc;
	logic [1:0] RegDst;
	logic [4:0] shamt;
	logic [4:0] regD;
	logic [4:0] regT;
	logic [4:0] regS;
	aluop_t aluOp; // ALU Op Codes

	modport control_unit (
			input dhit, imemLoad,
			output dREN, dWEN, JmpSel, RegWrite, Branch, MemtoReg, aluSrc, RegDst, aluOp, shamt, regD, regS, regT, halt
		);

	modport tb(
			input dREN, dWEN, JmpSel, RegWrite, Branch, MemtoReg, aluSrc, RegDst, aluOp, shamt, regD, regS, regT, halt,
			output dhit, imemLoad
		);

endinterface


`endif