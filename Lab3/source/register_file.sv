/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437
	mg Account: mg226
	Description: This is used to define the register file for the Lab-1
*/

`include "cpu_types_pkg.vh"
`include "register_file_if.vh"

import cpu_types_pkg::*;

module register_file
(
	input wire clk,
	input wire n_rst,
	register_file_if.rf my_rf
);

	word_t registerArray [31:0]; // This is a 32-bit wide Register Array

	always_ff @(posedge clk, negedge n_rst)
	begin: FLIP_FLOP
		if(n_rst == 1'b0)
		begin
			registerArray <= '{default:0};
		end
		else if(my_rf.WEN == 1'b1 && my_rf.wsel != 0)
		begin
			registerArray[my_rf.wsel] <= my_rf.wdat;
		end
	end

	assign my_rf.rdat1 = registerArray[my_rf.rsel1];
	assign my_rf.rdat2 = registerArray[my_rf.rsel2];

endmodule
