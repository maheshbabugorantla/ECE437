`ifndef HAZARD_UNIT_IF_VH
`define HAZARD_UNIT_IF_VH

`include "cpu_types_pkg.vh"

interface hazard_unit_if;
  // import types
  import cpu_types_pkg::*;
  logic freeze, flush, PCSel, bne, zero, dhit, regWEN_m;
  logic [1:0] jumpSel;
  word_t instr;
  regbits_t rs_d, rt_d, rw_m;

  // system ports
  modport hu (
    input PCSel, bne, zero, jumpSel, dhit,instr, rs_d, rt_d, rw_m, regWEN_m,
    output freeze, flush
  );
  // testbench program
  modport tb (
    output PCSel, bne, zero, jumpSel, dhit, instr, rs_d, rt_d, rw_m, regWEN_m,
    input freeze, flush
  );
endinterface

`endif
