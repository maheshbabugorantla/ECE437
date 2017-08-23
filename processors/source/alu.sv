/*
	Author: Mahesh Babu Gorantla, mgorantl@purdue.edu
	mg Account: mg226
	module: alu
	Description: This source code is used to design the alu for Lab-1 => This is a purely Combinational Block
*/

`include "../include/cpu_types_pkg.vh"
`include "../include/alu_if.vh"

import cpu_types_pkg::*;

module alu
(
	alu_if.alu my_alu
);

	always_comb
	begin: OPERATION

		my_alu.outputPort = 32'h00000000;

		case(my_alu.aluOp)
			ALU_SLL: // Shift Left Logical
			begin
				$display("Inside ALU_SLL");
				my_alu.outputPort = my_alu.portA << my_alu.portB;
			end

			ALU_SRL: // Shift Right Logical
			begin
				$display("Inside ALU_SRL");
				my_alu.outputPort = my_alu.portA >> my_alu.portB;
			end

			ALU_ADD: // Addition
			begin
				$display("Inside ALU_ADD");
				my_alu.outputPort = my_alu.portA + my_alu.portB;			
			end

			ALU_SUB: // Subraction
			begin
				$display("Inside ALU_SUB");
				my_alu.outputPort = my_alu.portA - my_alu.portB;
			end

			ALU_AND: // BitWise AND
			begin
				$display("Inside ALU_AND");
				my_alu.outputPort = my_alu.portA & my_alu.portB;
			end

			ALU_OR: // BitWise OR
			begin
				$display("Inside ALU_OR");
				my_alu.outputPort = my_alu.portA | my_alu.portB;
			end

			ALU_XOR: // BitWise XOR
			begin
				$display("Inside ALU_XOR");
				my_alu.outputPort = my_alu.portA ^ my_alu.portB;
			end

			ALU_NOR: // BitWise NOR
			begin
				$display("Inside ALU_NOR");
				my_alu.outputPort = my_alu.portA ~^ my_alu.portB;
			end

			ALU_SLT: // Set on Less Than Signed
			begin
				$display("Inside ALU_SLT");
				my_alu.outputPort = ($signed(my_alu.portA) < $signed(my_alu.portB));
			end

			ALU_SLTU: // Set on Less Than Unsigned
			begin
				$display("Inside ALU_SLTU");
				my_alu.outputPort = (my_alu.portA < my_alu.portB);
			end

			default
			begin
				my_alu.outputPort = 32'h00000000;
			end

		endcase

/*			if(my_alu.aluOp == ALU_SLL) // Shift Left Logical
			begin
				$display("Inside ALU_SLL");
				my_alu.outputPort = my_alu.portA << my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_SRL) // Shift Right Logical
			begin
				$display("Inside ALU_SRL");
				my_alu.outputPort = my_alu.portA >> my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_ADD) // Addition
			begin
				$display("Inside ALU_ADD");
				my_alu.outputPort = my_alu.portA + my_alu.portB;			
			end

			else if(my_alu.aluOp == ALU_SUB) // Subraction
			begin
				$display("Inside ALU_SUB");
				my_alu.outputPort = my_alu.portA - my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_AND) // BitWise AND
			begin
				$display("Inside ALU_AND");
				my_alu.outputPort = my_alu.portA & my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_OR) // BitWise OR
			begin
				$display("Inside ALU_OR");
				my_alu.outputPort = my_alu.portA | my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_XOR) // BitWise XOR
			begin
				$display("Inside ALU_XOR");
				my_alu.outputPort = my_alu.portA ^ my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_NOR) // BitWise NOR
			begin
				$display("Inside ALU_NOR");
				my_alu.outputPort = my_alu.portA ~^ my_alu.portB;
			end

			else if(my_alu.aluOp == ALU_SLT) // Set on Less Than Signed
			begin
				$display("Inside ALU_SLT");
				my_alu.outputPort = ($signed(my_alu.portA) < $signed(my_alu.portB));
			end

			else if(my_alu.aluOp == ALU_SLTU) // Set on Less Than Unsigned
			begin
				$display("Inside ALU_SLTU");
				my_alu.outputPort = (my_alu.portA < my_alu.portB);
			end */

	end

	// Combinational Block to determine the Flags => Overflow, Zero, Negative
	always_comb
	begin: FLAGS
		
		my_alu.overflow = 1'b0;
		my_alu.negative = 1'b0;
		my_alu.zero = 1'b0;		

		// Negative Flag		
		if(my_alu.outputPort[31] == 1'b1)
		begin
			my_alu.negative = 1'b1;
		end
		else
		begin
			my_alu.negative = 1'b0;
		end

		// Zero Flag
		if(my_alu.outputPort == 0)
		begin
			my_alu.zero = 1'b1;
		end
		else
		begin
			my_alu.zero = 1'b0;
		end

		// Overflow Flag
		if(my_alu.outputPort == ALU_ADD || my_alu.outputPort == ALU_SUB)
		begin
			my_alu.overflow = my_alu.portA[31] != my_alu.portB[31] ? 1'b0 : my_alu.portB[31] == my_alu.outputPort[31] ? 1'b0 : 1'b1;
		end
		else
		begin
			my_alu.overflow = 1'b0;
		end

	end	

endmodule
