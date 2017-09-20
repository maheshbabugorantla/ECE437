`ifndef REQUEST_UNIT_IF_VH
`define REQUEST_UNIT_IF_VH

`include "cpu_types_pkg.vh"

interface request_unit_if;

	import cpu_types_pkg::*;
	
	logic dhit, ihit;
	logic dREN, dWEN;
	logic dmemREN, dmemWEN;
	logic pc_en;

modport tb (input dmemREN, dmemWEN, pc_en,
	output dhit, ihit, dREN, dWEN);


modport ru (input dhit, ihit, dREN, dWEN,
	output dmemREN, dmemWEN, pc_en);

endinterface
`endif
