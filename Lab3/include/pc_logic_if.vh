/*
	Mahesh Babu Gorantla
	mgorantl@purdue.edu

	Holds the Program Counter Logic Interface Signals
*/

`ifndef PC_LOGIC_IF_VH
`define PC_LOGIC_IF_VH

// Types
`include "cpu_types_pkg.vh"

interface pc_logic_if;

	// Import types
	import cpu_types_pkg::*;

	// Input
	logic ihit, zero, Branch, halt;
	logic [1:0] JmpSel;
	word_t imemLoad;
	word_t rdat1; // When JmpSel == 2'b10 for JR Instruction

	// Output
	word_t imemaddr;
	logic [31:0] nextPC; // Doubtful

	modport pc_logic(
			input ihit, zero, halt, Branch, JmpSel, imemLoad, rdat1,
			output imemaddr, nextPC
		);
	
	modport tb(
			input imemaddr, nextPC,
			output ihit, zero, halt, Branch, JmpSel, imemLoad, rdat1
		);

endinterface

`endif