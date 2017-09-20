`ifndef EX_MEM_IF_VH
`define EX_MEM_IF_VH

`include "cpu_types_pkg.vh"

interface ex_mem_if;

  import cpu_types_pkg::*;

  //in
  logic ihit, dhit;
  word_t rdat2_i, next_pc_i;
  logic memToReg_i, regWEN_i;
  logic [1:0] RegDest_i;
  logic jal_i, dREN_i, dWEN_i, imemREN_i, lui_i;
  logic [4:0] rd_i, rt_i;
  logic [15:0] imm_i;
  logic halt_i;
  word_t out_i, instr_i, instr_o;
  logic freeze;

  //out
  word_t rdat2_o, next_pc_o;
  logic memToReg_o, regWEN_o;
  logic [1:0] RegDest_o;
  logic jal_o, dREN_o, dWEN_o, imemREN_o, lui_o;
  logic [4:0] rd_o, rt_o;
  logic [15:0] imm_o;
  logic halt_o;
  word_t out_o;

  modport ex_mem (
    input  ihit, dhit, rdat2_i, next_pc_i, 
           jal_i, dREN_i, dWEN_i, imemREN_i, lui_i, 
           rd_i, rt_i, imm_i, halt_i, out_i, instr_i, freeze,
           memToReg_i, regWEN_i, RegDest_i, 

    output rdat2_o, next_pc_o,  
           jal_o, dREN_o, dWEN_o, imemREN_o, lui_o, 
           rd_o, rt_o, imm_o, halt_o, out_o,  instr_o,
           memToReg_o, regWEN_o, RegDest_o
  );

  modport tb (
    output ihit, dhit, rdat2_i, next_pc_i, 
           jal_i, dREN_i, dWEN_i, imemREN_i, lui_i, 
           rd_i, rt_i, imm_i, halt_i, out_i, instr_i,freeze,
           memToReg_i, regWEN_i, RegDest_i, 
    
    input  rdat2_o, next_pc_o, 
           rd_o, rt_o, imm_o, halt_o, out_o, instr_o,
           memToReg_o, regWEN_o, RegDest_o, 
           jal_o, dREN_o, dWEN_o, imemREN_o, lui_o
  );  


endinterface

`endif
