/*
  Adaptation from 

  Eric Villasenor
  evillase@gmail.com

  alu file interface


*/
`ifndef ALU_FILE_IF_VH
`define ALU_FILE_IF_VH

// all types
`include "cpu_types_pkg.vh"

interface alu_file_if;
  // import types
  import cpu_types_pkg::*;

  logic negative, overflow, zero;
  word_t port_a, port_b, out;
  aluop_t aluop;

  // alu file ports
  modport rf (
    input   aluop, port_a, port_b,
    output  negative, overflow, zero, out
  );
  // alu file tb
  modport tb (
    input   aluop, port_a, port_b,
    output  negative, overflow, zero, out
  );
endinterface

`endif //REGISTER_FILE_IF_VH
