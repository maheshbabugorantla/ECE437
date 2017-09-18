/*
  Mahesh Babu Gorantla
  mgorantl@purdue.edu

  holds datapath request_unit interface signals
*/
`ifndef REQUEST_UNIT_IF_VH
`define REQUEST_UNIT_IF_VH

// types
`include "cpu_types_pkg.vh"

interface request_unit_if;

	// import types
	import cpu_types_pkg::*;

	// I/O Signals
	// Input Signals
	logic ihitIn, dhitIn, dREN, dWEN;

	// Output Signals
	logic dmemREN, dmemWEN, dhit, ihit;

	modport request_unit (
			input ihitIn,dhitIn, dREN, dWEN,
			output dmemREN, dmemWEN, dhit, ihit
		);

	modport tb (
			input dmemREN, dmemWEN, dhit, ihit,
			output dREN, dWEN, dhitIn, ihitIn
		);

endinterface

`endif