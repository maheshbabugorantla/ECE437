`ifndef PROGRAM_COUNTER_IF_VH
`define PROGRAM_COUNTER_IF_VH

`include "cpu_types_pkg.vh"

interface program_counter_if;

	import cpu_types_pkg::*;
	
	logic pc_en;
	word_t nextpc;
	word_t new_pc;
	word_t pc;

modport tb (input pc_en, new_pc,
		output pc, nextpc);


modport prog_c (output pc, nextpc,
	input pc_en, new_pc);

endinterface
`endif
