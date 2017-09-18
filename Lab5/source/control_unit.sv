
/*
	Author: Mahesh Babu Gorantla
	Email: mgorantl@purdue.edu
	Lab 4 Single Cycle Datapath
	Logic for the Control Unit Module
*/

// Control Unit Interface
`include "../include/control_unit_if.vh"

// Types
`include "../include/cpu_types_pkg.vh"

module control_unit (
	control_unit_if.control_unit cuif
);

	import cpu_types_pkg::*;

	always_comb
	begin

		cuif.dREN = 1'b0;
		cuif.dWEN = 1'b0;
		cuif.JmpSel = 2'b00; // PC <= nPC
		cuif.RegWrite = 1'b0; // To write the data to the wdat
		cuif.Branch = 1'b0;
		cuif.MemtoReg = 2'b00; // To Select the dmemLoad
		cuif.aluSrc = 2'b00; // Select SignExt ExtOp (SignExtImm)
		cuif.RegDst = 2'b00; // R[rt]
		cuif.aluOp = ALU_ADD; // None
		cuif.shamt = 32'b00000;
		cuif.regD = 32'h00000000;
		cuif.regT = 32'h00000000;
		cuif.regS = 32'h00000000;
		cuif.halt = 1'b0;

		// R Type Instruction
		if(opcode_t'(cuif.imemLoad[31:26]) == RTYPE)
		begin

			case (funct_t'(cuif.imemLoad[5:0]))

				SLL:
				begin
					// $display("Inside SLL");
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b10; // Select shamt
					cuif.RegDst = 2'b01; // Select $rd
					cuif.aluOp = ALU_SLL; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				SRL:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b10; // Select shamt
					cuif.RegDst = 2'b01; // Select $rd
					cuif.aluOp = ALU_SRL; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				JR:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b10; // Assign the Value of $rs to PC
					cuif.RegWrite = 1'b0; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01;
					cuif.aluOp = aluop_t'(4'b1111); // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				ADD:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_ADD; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				ADDU:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_ADD; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				SUB:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00; // PC + 4
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_SUB; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				SUBU:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00; // PC + 4
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_SUB; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				AND:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00; // PC + 4
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_AND; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				OR:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_OR; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;				
				end

				XOR:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_XOR; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;				
				end

				NOR:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00; // PC + 4
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // $rd
					cuif.aluOp = ALU_NOR; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				SLT:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // R[rd]
					cuif.aluOp = ALU_SLT; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				SLTU:
				begin
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 2'b00;
					cuif.RegWrite = 1'b1; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_SLTU; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end

				default: // Rethink this condition
				begin
					$display("Inside DEFAULT");
					$display("%h", cuif.imemLoad);
					cuif.dREN = 1'b0;
					cuif.dWEN = 1'b0;
					cuif.JmpSel = 1'b0;
					cuif.RegWrite = 1'b0; // To write the data to the wdat
					cuif.Branch = 1'b0;
					cuif.MemtoReg = 2'b00; // To Select the output from the ALU
					cuif.aluSrc = 2'b00; // Select rdat2
					cuif.RegDst = 2'b01; // 
					cuif.aluOp = ALU_SRL; // Might have to type cast
					cuif.shamt = cuif.imemLoad[10:6];
					cuif.regD = cuif.imemLoad[15:11];
					cuif.regT = cuif.imemLoad[20:16];
					cuif.regS = cuif.imemLoad[25:21];
					cuif.halt = 1'b0;
				end
			endcase // R-Type
		end // if

		// J
		else if(opcode_t'(cuif.imemLoad[31:26]) == J)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b01;
				cuif.RegWrite = 1'b0; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b00; // Select rdat2
				cuif.RegDst = 2'b01; // 
				cuif.aluOp = aluop_t'(4'b1111); // Might have to type cast
				cuif.shamt = 5'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = 32'h00000000;
				cuif.regS = 32'h00000000;
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == JAL)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b01; // PC <= JumpAddr
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b11; // To Select the output from the ALU
				cuif.aluSrc = 2'b00; // Select rdat2
				cuif.RegDst = 2'b10; // R[31] 
				cuif.aluOp = aluop_t'(4'b1111); // None
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = 32'h00000000;
				cuif.regS = 32'h00000000;
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == BEQ)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= JumpAddr
				cuif.RegWrite = 1'b0; // To write the data to the wdat
				cuif.Branch = 1'b1;
				cuif.MemtoReg = 2'b11; // Don't Care
				cuif.aluSrc = 2'b00; // Select rdat2
				cuif.RegDst = 2'b01; // Don't Care
				cuif.aluOp = ALU_SUB; // $rs - $rt
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000; // Don't Care
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == BNE)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= JumpAddr
				cuif.RegWrite = 1'b0; // To write the data to the wdat
				cuif.Branch = 1'b1;
				cuif.MemtoReg = 2'b11; // To Select the output from the ALU
				cuif.aluSrc = 2'b00; // Select rdat2
				cuif.RegDst = 2'b01; // R[31] 
				cuif.aluOp = ALU_SUB; // $rs - $rt
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == ADDI)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select SignExtImmediate ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_ADD; // $rs - $rt
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == ADDIU)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select SignExtImmediate ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_ADD; // $rs - $rt
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == SLTI)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select SignExtImmediate ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_SLT; // $rs < SignExtImmediate
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == SLTIU)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select SignExtImmediate ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_SLTU; // $rs < SignExtImmediate
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == ANDI)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select ZeroExt ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_AND; // $rs & ZeroExtImmediate
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == ORI)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select ZeroExt ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_OR; // $rs OR ZeroExtImmediate
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;			
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == XORI)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b00; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // Select ZeroExt ExtOp
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_XOR; // $rs XOR ZeroExtImmediate
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == LUI) // Doubtful Check how to extend the immediate field
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b10; // To Select the output from the ALU
				cuif.aluSrc = 2'b01; // {Imm, 16'b0} Send this value to 2'b10 MemtoReg MUX
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = aluop_t'(4'b1111); // None
				cuif.shamt = 32'b00000; // Don't Care
				cuif.regD = 32'h00000000; // Don't Care
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21]; // Don't Care
				cuif.halt = 1'b0;
		end

		else if(opcode_t'(cuif.imemLoad[31:26]) == LW) // When the dhit == 1'b1, Doubtful
		begin
				cuif.dREN = 1'b1;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = cuif.dhit; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b01; // To Select the dmemLoad
				cuif.aluSrc = 2'b01; // Select SignExt ExtOp (SignExtImm)
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_ADD; // None
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		// Rethink this
		else if(opcode_t'(cuif.imemLoad[31:26]) == SW) // Need to check if ihit or dhit is required
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b1;
				cuif.JmpSel = 2'b00; // PC <= PC + 4
				cuif.RegWrite = 1'b0; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b01; // To Select the dmemLoad
				cuif.aluSrc = 2'b01; // Select SignExt ExtOp (SignExtImm)
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_ADD; // None
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b0;
		end

		// Take care in this one try to use the Datapath Cache Signal
		else if(opcode_t'(cuif.imemLoad[31:26]) == HALT)
		begin
				cuif.dREN = 1'b0;
				cuif.dWEN = 1'b0;
				cuif.JmpSel = 2'b00; // PC <= nPC
				cuif.RegWrite = 1'b1; // To write the data to the wdat
				cuif.Branch = 1'b0;
				cuif.MemtoReg = 2'b01; // To Select the dmemLoad
				cuif.aluSrc = 2'b01; // Select SignExt ExtOp (SignExtImm)
				cuif.RegDst = 2'b00; // R[rt]
				cuif.aluOp = ALU_ADD; // None
				cuif.shamt = 32'b00000;
				cuif.regD = 32'h00000000;
				cuif.regT = cuif.imemLoad[20:16];
				cuif.regS = cuif.imemLoad[25:21];
				cuif.halt = 1'b1;
		end

/*		else if(opcode_t'(cuif.imemLoad[31:26]) == LBU)
		begin

		end*/

/*		else if(opcode_t'(cuif.imemLoad[31:26]) == LHU)
		begin

		end*/

/*		else if(opcode_t'(cuif.imemLoad[31:26]) == SB)
		begin

		end*/

/*		else if(opcode_t'(cuif.imemLoad[31:26]) == SH)
		begin

		end*/


	end // always_comb


endmodule