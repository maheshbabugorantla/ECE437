/*
  Eric Villasenor
  evillase@gmail.com

  datapath contains register file, control, hazard,
  muxes, and glue logic for processor
*/

// data path interface
`include "datapath_cache_if.vh"
`include "request_unit_if.vh"
`include "control_unit_if.vh"
`include "pc_logic_if.vh"
`include "reg_alu_top_level_if.vh"
`include "alu_if.vh"
`include "register_file_if.vh"

// alu op, mips op, and instruction type
`include "cpu_types_pkg.vh"

module datapath (
  input logic CLK, nRST,
  datapath_cache_if.dp dpif
);
  // import types
  import cpu_types_pkg::*;

  // pc init
  parameter PC_INIT = 0;

  // Interfaces for Request Unit, Control Unit, PC Logic & (ALU_Register_File Top-Level)
  request_unit_if ru_if();
  control_unit_if cu_if();
  pc_logic_if pc_if();
  // reg_alu_top_level_if ra_if();
  alu_if alu_if();
  register_file_if rf_if();

  // DUTs
  request_unit ru_dut(CLK, nRST, ru_if);
  control_unit cu_dut(cu_if);
  pc_logic pc_dut(CLK, nRST, pc_if);
  // reg_alu_top_level ra_dut(CLK, nRST, ra_if);
  alu alu_dut(alu_if);
  register_file rf_dut(CLK, nRST, rf_if);

  // Temporary Registers
  regbits_t tempWSel;
  word_t tempWdat, tempPortB;
  logic  extOp;

  logic nextHalt;

  always_ff@(posedge CLK, negedge nRST)
  begin
      if(nRST == 1'b0)
      begin
          dpif.halt <= 1'b0;
      end
      else
      begin
          dpif.halt <= nextHalt;
      end
  end

  // Check for the change in halt signal status
  always_comb
  begin
      if(cu_if.halt == 1'b1)
      begin
          nextHalt = 1'b1;
      end
      else
      begin
          nextHalt = dpif.halt;
      end
  end  

  /* Determine the extOp value to perform sign or zero extend of imm code */
  always_comb
  begin: EXT_OP

    extOp = 1'b0;

    case (opcode_t'(dpif.imemload[31:26]))
      
      ADDI:
      begin
        extOp = 1'b1; // SignExtImm
      end

      ADDIU:
      begin
        extOp = 1'b1; // SignExtImm
      end

      SLTI:
      begin
        extOp = 1'b1; // SignExtImm
      end

      SLTIU:
      begin
        extOp = 1'b1; // SignExtImm
      end

      ANDI:
      begin
        extOp = 1'b0; // ZeroExtImm
      end

      ORI:
      begin
        extOp = 1'b0; // ZeroExtImm
      end

      XORI:
      begin
        extOp = 1'b0; // ZeroExtImm
      end

      SW:
      begin
        extOp = 1'b1; // SignExtImm
      end

      LW:
      begin
        extOp = 1'b1; // SignExtImm
      end

      default:
      begin     
        extOp = 1'b0;
      end
    endcase
  end


  always_comb
  begin //: wsel_mux

    tempWSel = regbits_t'(5'b00000); // Because Write Operations to 00000 location is avoided

    case(cu_if.RegDst) // wsel mux

      2'b00:
      begin
        tempWSel = regbits_t'(cu_if.regT);
      end

      2'b01:
      begin
        tempWSel = regbits_t'(cu_if.regD);
      end

      2'b10:
      begin
        tempWSel = regbits_t'(5'b11111); // for JAL
      end

      default:
      begin
        tempWSel = regbits_t'(5'b00000); // Because Write Operations to 00000 location is avoided
      end
    endcase
  end

  always_comb
  begin //: portB_mux

    tempPortB = word_t'(32'h00000000); // Because Write Operations to 00000 location is avoided

    case(cu_if.aluSrc) // aluSrc mux

      2'b00:
      begin
        tempPortB = rf_if.rdat2;
      end

      2'b01: // ExtOp (0 - ZeroExt, 1 - SignExt)
      begin
        if(extOp == 1'b1)
        begin
          tempPortB = {{16{dpif.imemload[15]}}, dpif.imemload[15:0]}; // Sign Extend
        end
        else if(extOp == 1'b0)
        begin
          tempPortB = {{16{1'b0}}, dpif.imemload[15:0]}; // Zero Extend
        end
      end

      2'b10: // shamt
      begin
        tempPortB = word_t'({{27{1'b0}}, cu_if.shamt}); // Zero Extending the shamt(5bits size) to 32 bits
      end

      default:
      begin
        tempPortB = word_t'(32'h00000000); // Because Write Operations to 00000 location is avoided
      end
    endcase
  end

  // Mux for wdat
  always_comb
  begin//: wdat_mux

    case(cu_if.MemtoReg) // wdat mux

      2'b00:
      begin
        tempWdat = alu_if.outputPort;
      end

      2'b01:
      begin
        tempWdat = dpif.dmemload;
      end

      2'b10: // LUI
      begin
        tempWdat = word_t'({dpif.imemload[15:0], 16'h0000});
      end

      2'b11: // JAL
      begin
        tempWdat = pc_if.imemaddr + 32'h00000004;
      end

      default:
      begin
        tempWdat = word_t'(32'h00000000); // Because Write Operations to 00000 location is avoided
      end
    endcase
  end

  // Register File Inputs
  assign rf_if.rsel1 = regbits_t'(cu_if.regS);
  assign rf_if.rsel2 = regbits_t'(cu_if.regT);
  assign rf_if.WEN   = (dpif.ihit || dpif.dhit) && cu_if.RegWrite; // (ru_if.ihit || ru_if.dhit) && cu_if.RegWrite;
  assign rf_if.wsel  = tempWSel;
  assign rf_if.wdat  = tempWdat;

  // Register File Outputs
  assign pc_if.rdat1 = rf_if.rdat1;
  assign dpif.dmemstore = rf_if.rdat2; // Output

  // ALU Inputs
  assign alu_if.portB = tempPortB;
  assign alu_if.portA = rf_if.rdat1;
  assign alu_if.aluOp = cu_if.aluOp;

  // ALU Outputs
  assign pc_if.zero = alu_if.zero;
  //assign ra_if.negative = alu_if.negative;
  //assign ra_if.overflow = alu_if.overflow;
  // assign dpif.dmemaddr = alu_if.outputPort;

  // Signals b/w Request Unit from Control Unit
  assign ru_if.dREN = cu_if.dREN;
  assign ru_if.dWEN = cu_if.dWEN;
  assign cu_if.imemLoad = dpif.imemload;
  assign cu_if.dhit = dpif.dhit;
  assign pc_if.ihit = dpif.ihit;
  assign pc_if.dhit = dpif.dhit;

  // PC Logic
  assign pc_if.Branch = cu_if.Branch;
  assign pc_if.JmpSel = cu_if.JmpSel;
  assign pc_if.imemLoad = dpif.imemload;

  /*ihitIn and dhitIn of REQUEST UNIT will receive the signal from cache*/
  assign ru_if.ihitIn = dpif.ihit;
  assign ru_if.dhitIn = dpif.dhit;

  // Inputs to Control Unit
  assign pc_if.halt = dpif.halt;
  assign dpif.imemREN = 1'b1; // Doubtful
  assign dpif.imemaddr = pc_if.imemaddr;
  assign dpif.dmemREN = ru_if.dmemREN; // Comes from the Request Unit
  assign dpif.dmemWEN = ru_if.dmemWEN; // Comes from the Request Unit
  // assign dpif.dmemstore = rf_if.rdat2; // Comes from the ALU Register Top-Level Module
  assign dpif.dmemaddr = alu_if.outputPort; // Comes from the ALU Register Top-Level Module
endmodule
