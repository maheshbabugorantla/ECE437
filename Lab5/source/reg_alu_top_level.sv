/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437, Fall 2017
	Description: Top Level Module for ALU and Register File
*/

`include "reg_alu_top_level_if.vh"
`include "alu_if.vh"
`include "register_file_if.vh"
`include "cpu_types_pkg.vh"

// ../include/

module reg_alu_top_level (
	input logic CLK,
	input logic nRST,
	reg_alu_top_level_if.reg_alu_top_level ra_if
);

	import cpu_types_pkg::*;

	// Interfaces for ALU and Register File
	alu_if alu_if();
	register_file_if rf_if();

	alu alu_dut(alu_if);
	register_file rf_dut(CLK, nRST, rf_if);

	// Temporary Registers
	regbits_t tempWSel;
	word_t tempWdat, tempPortB;
	logic  extOp;

	/* Determine the extOp value to perform sign or zero extend of imm code */
	always_comb
	begin: EXT_OP

		case (opcode_t'(ra_if.imemLoad[31:26]))
			
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
	begin: wsel_mux

		case(ra_if.regDst) // wsel mux

			2'b00:
			begin
				tempWSel = regbits_t'(ra_if.regT);
			end

			2'b01:
			begin
				tempWSel = regbits_t'(ra_if.regD);
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
	begin: portB_mux

		case(ra_if.aluSrc) // aluSrc mux

			2'b00:
			begin
				tempPortB = rf_if.rdat2;
			end

			2'b01: // ExtOp (0 - ZeroExt, 1 - SignExt)
			begin
				if(extOp == 1'b1)
				begin
					tempPortB = {{16{ra_if.imemLoad[15]}}, ra_if.imemLoad}; // Sign Extend
				end
				else if(extOp == 1'b0)
				begin
					tempPortB = {{16{1'b0}}, ra_if.imemLoad}; // Zero Extend
				end
			end

			2'b10: // shamt
			begin
				tempPortB = word_t'({{27{1'b0}}, ra_if.shamt}); // Zero Extending the shamt(5bits size) to 32 bits
			end

			default:
			begin
				tempPortB = word_t'(32'h00000000); // Because Write Operations to 00000 location is avoided
			end
		endcase
	end

	// Mux for wdat
	always_comb
	begin: wdat_mux

		case(ra_if.MemtoReg) // wdat mux

			2'b00:
			begin
				tempWdat = alu_if.outputPort;
			end

			2'b01:
			begin
				tempWdat = ra_if.dmemLoad;
			end

			2'b10: // LUI
			begin
				tempWdat = word_t'({ra_if.imemLoad[15:0], 16'h0000});
			end

			2'b11: // JAL
			begin
				tempWdat = ra_if.imemaddr + 32'h00000004;
			end

			default:
			begin
				tempWdat = word_t'(32'h00000000); // Because Write Operations to 00000 location is avoided
			end
		endcase
	end

	// Register File Inputs
	assign rf_if.rsel1 = regbits_t'(ra_if.regS);
	assign rf_if.rsel2 = regbits_t'(ra_if.regT);
	assign rf_if.WEN = (ra_if.ihit || ra_if.dhit) && ra_if.RegWrite;
	assign rf_if.wsel = tempWSel;
	assign rf_if.wdat = tempWdat;

	// Register File Outputs
	assign ra_if.rdat1 = rf_if.rdat1;
	assign ra_if.dmemstore = rf_if.rdat2; // Output

	// ALU Inputs
	assign alu_if.portB = tempPortB;
	assign alu_if.portA = rf_if.rdat1;
	assign alu_if.aluOp = ra_if.aluOp;
	
	// ALU Outputs
	assign ra_if.zero = alu_if.zero;
	assign ra_if.negative = alu_if.negative;
	assign ra_if.overflow = alu_if.overflow;
	assign ra_if.dmemAddr = alu_if.outputPort;

endmodule