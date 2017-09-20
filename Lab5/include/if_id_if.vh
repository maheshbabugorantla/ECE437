`ifndef IF_ID_IF_VH
`define IF_ID_IF_VH

`include "cpu_types_pkg.vh"

interface if_id_if;

  import cpu_types_pkg::*;

  word_t instr_i, instr_o, next_pc_i, next_pc_o;
  logic ihit, freeze, flush;

  modport if_id (
	input instr_i, next_pc_i, freeze, flush, ihit,
	output instr_o, next_pc_o
  );

  modport tb (
	output instr_i, next_pc_i, freeze, flush, ihit,
	input instr_o, next_pc_o
  );    


endinterface

`endif
