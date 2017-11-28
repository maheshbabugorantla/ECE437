`ifndef FORWARD_UNIT_IF_VH
`define FORWARD_UNIT_IF_VH

// types
`include "cpu_types_pkg.vh"

interface forward_unit_if;
  // import types
  import cpu_types_pkg::*;

  word_t mem_data, wb_data, rsReplace, rtReplace;
  regbits_t rs, rt, rwMEM, rwWB; 
  logic rdat1_ow, rdat2_ow, regWENmem, regWENwb;


  modport fu (
    input rs, rt, mem_data, wb_data, regWENmem, regWENwb, rwMEM, rwWB,
    output rsReplace, rtReplace, rdat1_ow, rdat2_ow
  );

  modport tb (
    output rs, rt, mem_data, wb_data, regWENmem, regWENwb, rwMEM, rwWB,
    input rsReplace, rtReplace, rdat1_ow, rdat2_ow
  );
endinterface

`endif
