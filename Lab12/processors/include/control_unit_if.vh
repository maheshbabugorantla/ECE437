`ifndef CONTROL_UNIT_IF_VH
`define CONTROL_UNIT_IF_VH

// typedefs
`include "cpu_types_pkg.vh"

interface control_unit_if;
  // import types
  import cpu_types_pkg::*;
	
        logic [1:0] JumpSel,ALUSel,RegDest;
	logic dREN, dWEN, halt, zero, branch, jal, imemREN, lui, bne, PCSel, memtoReg, regWEN;	
	aluop_t aluop;
	word_t instr, shamt;
	regbits_t rs, rt, rd;
	logic [25:0] imm_26;
	logic [15:0] imm;
	

modport cu (
	input instr, 
	output ALUSel, RegDest, JumpSel, aluop, rs, rt, rd, imm, shamt, PCSel, memtoReg, halt, dWEN, dREN, imemREN, lui,jal, bne, regWEN, imm_26	
);

modport tb ( 
	input ALUSel, RegDest, JumpSel, aluop, rs, rt, rd, imm, shamt, PCSel, memtoReg, halt, dWEN, dREN, imemREN, lui,jal, bne, regWEN, imm_26,	
	output instr
);

endinterface
`endif

