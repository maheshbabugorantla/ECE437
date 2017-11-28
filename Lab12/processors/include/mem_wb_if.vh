`ifndef MEM_WB_IF_VH
`define MEM_WB_IF_VH

`include "cpu_types_pkg.vh"

interface mem_wb_if;

  import cpu_types_pkg::*;



  logic ihit, dhit;
  word_t next_pc_i;
  logic memToReg_i, regWEN_i;
  logic [1:0] RegDest_i;
  logic jal_i, imemREN_i, lui_i;
  logic [4:0] rd_i, rt_i;
  logic [15:0] imm_i;
  logic halt_i;
  word_t out_i, dmemload_i;
  word_t instr_i, instr_o;

  word_t next_pc_o;
  logic memToReg_o, regWEN_o;
  logic [1:0] RegDest_o;
  logic jal_o,  imemREN_o, lui_o;
  logic [4:0] rd_o, rt_o;
  logic [15:0] imm_o;
  logic halt_o, dhit_o;
  word_t out_o, dmemload_o;

  modport mem_wb (
    input  ihit, dhit, next_pc_i, jal_i, lui_i, memToReg_i, dmemload_i, imm_i, out_i,
            imemREN_i, halt_i, rd_i, rt_i, RegDest_i, regWEN_i, instr_i,
   
    output next_pc_o, jal_o, lui_o, memToReg_o, dmemload_o, imm_o, out_o,instr_o,
            imemREN_o, halt_o, rd_o, rt_o, RegDest_o, regWEN_o, dhit_o
  );

  modport tb (
    output  ihit, dhit, next_pc_i, jal_i, lui_i, memToReg_i, dmemload_i, imm_i, out_i,
            imemREN_i, halt_i, rd_i, rt_i, RegDest_i, regWEN_i, instr_i,
   
    input next_pc_o, jal_o, lui_o, memToReg_o, dmemload_o, imm_o, out_o,instr_o,
            imemREN_o, halt_o, rd_o, rt_o, RegDest_o, regWEN_o, dhit_o
  );

endinterface

`endif
