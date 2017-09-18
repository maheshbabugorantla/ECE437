/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437, Fall 2017
	Description: The Interface for ALU and Register File Top-Level Module
*/

`ifndef REG_ALU_TOP_LEVEL_IF_VH
`define REG_ALU_TOP_LEVEL_IF_VH

// Types
`include "cpu_types_pkg.vh"

interface reg_alu_top_level_if;

	// Import Types
	import cpu_types_pkg::*;

	// INPUT
	// extOp is Not Required to be an input to the ALU, will set extOp based on imemLoad

	// Input
	logic ihit, dhit, RegWrite;
	logic [1:0] regDst;
	logic [1:0] MemtoReg;
	logic [1:0] aluSrc;
	logic [4:0] shamt; // Zero Extend it when using in a MUX
	logic [4:0] regT;
	logic [4:0] regS;
	logic [4:0] regD;
	word_t imemLoad;
	word_t dmemLoad;
	aluop_t aluOp;
	word_t imemaddr;

	// Output
	logic zero, overflow, negative;
	word_t dmemAddr, dmemStore, rdat1;

	modport reg_alu_top_level(
			input ihit, dhit, RegWrite, regDst, MemtoReg, aluSrc, shamt, regT, regS, regD, imemLoad, dmemLoad, aluOp, imemaddr,
			output zero, overflow, negative, dmemAddr, dmemStore, rdat1
		);

	modport tb(
			input zero, overflow, negative, dmemAddr, dmemStore, rdat1,
			output ihit, dhit, RegWrite, regDst, MemtoReg, aluSrc, shamt, regT, regS, regD, imemLoad, dmemLoad, aluOp, imemaddr
		);

endinterface

`endif