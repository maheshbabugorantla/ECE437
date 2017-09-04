/*
	Author: Mahesh Babu Gorantla, mgorantl@purdue.edu
	mg Account: mg226
	module: alu_if
	Description: This is used to define the interface for the ALU (Arithmetic Logic Unit) for Lab-1
*/

`ifndef ALU_IF_VH
`define ALU_IF_VH

// Import all types
`include "cpu_types_pkg.vh"

interface alu_if;

	import cpu_types_pkg::*;
	
	// Import types
	word_t portA, portB, outputPort;
	logic negative, overflow, zero;
	aluop_t aluOp;

	// ALU Ports
	modport alu (
		input portA, portB, aluOp,
		output negative, overflow, zero, outputPort
	);
	
	// ALU tb
	modport tb (
		output portA, portB, aluOp,
		input negative, overflow, zero, outputPort
	);

endinterface

`endif
