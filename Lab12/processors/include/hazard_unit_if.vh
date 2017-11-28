`ifndef HAZARD_UNIT_IF_VH
`define HAZARD_UNIT_IF_VH

`include "cpu_types_pkg.vh"

interface hazard_unit_if;
  // import types
  import cpu_types_pkg::*;
  logic [1:0] JumpSel;
  word_t instr;
  logic freeze, flush, PCSel, bne, zero, dhit, regWEN;
  regbits_t rs, rt, rw;

  // system ports
  modport hu (
    input PCSel, bne, zero, JumpSel, regWEN, dhit,instr, rs, rt, rw,
    output freeze, flush
  );
  // testbench program
  modport tb (
    output PCSel, bne, zero, JumpSel, regWEN, dhit, instr, rs, rt, rw, 
    input freeze, flush
  );
endinterface

`endif
