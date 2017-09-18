/*
  Eric Villasenor
  evillase@gmail.com

  this block is the coherence protocol
  and artibtration for ram
*/

// interface include
`include "cache_control_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module memory_control (
  input CLK, nRST,
  cache_control_if.cc ccif
);
  // type import
  import cpu_types_pkg::*;

  // number of cpus for cc
  parameter CPUS = 2;

/*
  // Optimize the Logic into the Compound Statement
  always_comb
  begin
    casez(ccif.ramstate)
      FREE:
      begin
          ccif.iwait = 1'b1;
          ccif.dwait = 1'b1;
      end

      BUSY:
      begin
          ccif.iwait = 1'b1;
          ccif.dwait = 1'b1;
      end

      ACCESS: // Need to Change this
      begin
          // iwait should be pulled low only when there are no attempts read or write the data but read an instruction
          ccif.iwait = (ccif.dREN == 1'b0 && ccif.dWEN == 1'b0 && ccif.iREN == 1'b1) ? 1'b0 : 1'b1;
          // If Data needs to read / written to a memory location then the dwait should be de-asserted
          ccif.dwait = (ccif.dREN == 1'b1 || ccif.dWEN == 1'b1) ? 1'b0 : 1'b1;
      end

      ERROR:
      begin
          ccif.iwait = 1'b1;
          ccif.dwait = 1'b1;
      end

      default:
      begin
          ccif.iwait = 1'b1;
          ccif.dwait = 1'b1;
      end

    endcase
  end
*/

  // iwait should be pulled low only when there are no attempts read or write the data but read an instruction
  assign ccif.iwait = (ccif.ramstate == ACCESS) ? ((ccif.dREN == 1'b0 && ccif.dWEN == 1'b0 && ccif.iREN == 1'b1) ? 1'b0 : 1'b1) : 1'b1;

  // If Data needs to read / written to a memory location then the dwait should be de-asserted
  assign ccif.dwait = (ccif.ramstate == ACCESS) ? ((ccif.dREN == 1'b1 || ccif.dWEN == 1'b1) ? 1'b0 : 1'b1) : 1'b1;

  // Outputs to Cache Block
  assign ccif.iload = (ccif.iREN == 1'b1 && ccif.dREN == 1'b0 && ccif.dWEN == 1'b0) ? ccif.ramload : '0; // Check this for correction
  assign ccif.dload = ccif.ramload;

  // Outputs To Variable Latency RAM
  assign ccif.ramstore = ccif.dstore;
  assign ccif.ramaddr = (ccif.dWEN == 1'b1 || ccif.dREN == 1'b1) ? ccif.daddr : ccif.iaddr; // If the Data is Requested to be read or written then the 'daddr' is given. Else 'iaddr' is assigned

  // The below two instructions should be inverse of each other (Check with Test Bench if the conditions are met properly and also Check with TA)
  assign ccif.ramWEN = ccif.dWEN;
  assign ccif.ramREN = ((ccif.iREN == 1'b1 || ccif.dREN == 1'b1) && ccif.dWEN == 1'b0) ? 1 : 0;

endmodule