`ifndef ID_EX_IF_VH
`define ID_EX_IF_VH

`include "cpu_types_pkg.vh"

interface id_ex_if;

  import cpu_types_pkg::*;

  //in
  word_t rdat1_i, rdat2_i, next_pc_i, shamt_i;
  aluop_t aluop_i;
  logic [1:0] ALUSel_i, RegDest_i, jumpSel_i;
  logic PCSel_i, memToReg_i, regWEN_i;
  logic [15:0] imm_i;
  word_t instr_i, instr_o;
  logic ihit, flush;
  logic jal_i, dREN_i, dWEN_i, imemREN_i, lui_i, bne_i, halt_i;
  logic [4:0] rd_i, rt_i, rs_i;
  logic freeze;

  //out
  logic [1:0] ALUSel_o, RegDest_o, jumpSel_o;
  logic PCSel_o, memToReg_o, regWEN_o;
  logic [15:0] imm_o;
  logic [25:0] imm_26_i, imm_26_o;
  logic jal_o, dREN_o, dWEN_o, imemREN_o, lui_o, bne_o, halt_o;
  logic [4:0] rd_o, rt_o, rs_o;
  word_t rdat1_o, rdat2_o, next_pc_o, shamt_o;
  aluop_t aluop_o;

  modport id_ex (
    input jumpSel_i, jal_i, dREN_i, dWEN_i, imemREN_i, lui_i, 
          bne_i, shamt_i, rd_i, rt_i, rs_i,  imm_i, halt_i, imm_26_i, 
	  instr_i, freeze,
	  ihit, flush, rdat1_i, rdat2_i, next_pc_i, aluop_i, 
          ALUSel_i, PCSel_i, memToReg_i, regWEN_i, RegDest_i, 
          
    
    output  
            PCSel_o, memToReg_o, regWEN_o, RegDest_o, jumpSel_o,
            jal_o, dREN_o, dWEN_o, imemREN_o, lui_o, bne_o, 
	    rdat1_o, rdat2_o, next_pc_o, aluop_o, ALUSel_o,
            shamt_o, rd_o, rt_o, rs_o, imm_o, halt_o, imm_26_o, instr_o
  );

  modport tb (
    output  ihit, flush, rdat1_i, rdat2_i, next_pc_i, aluop_i, ALUSel_i, 
            rd_i, rt_i, rs_i, imm_i, halt_i, imm_26_i, instr_i, freeze,
	    jal_i, dREN_i, dWEN_i, imemREN_i, lui_i, bne_i, shamt_i, 
            PCSel_i, memToReg_i, regWEN_i, RegDest_i, jumpSel_i,
    
    input   
            PCSel_o, memToReg_o, regWEN_o, RegDest_o, jumpSel_o,
            jal_o, dREN_o, dWEN_o, imemREN_o, lui_o, bne_o, 
	    rdat1_o, rdat2_o, next_pc_o, aluop_o, ALUSel_o,
            shamt_o, rd_o, rt_o, rs_o, imm_o, halt_o, imm_26_o, instr_o
  );  


endinterface

`endif
