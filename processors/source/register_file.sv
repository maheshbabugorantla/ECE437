/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437
	mg Account: mg226
	Description: This is used to define the register file for the Lab-1
*/

`include "../include/cpu_types_pkg.vh"
`include "../include/register_file_if.vh"

import cpu_types_pkg::*;

module register_file
(
	input wire clk,
	input wire n_rst,
	register_file_if.rf my_rf
/*	input wire [4:0] wsel,
	input wire wen,
	input wire [4:0] rsel_1,
	input wire [4:0] rsel_2,
	output reg [31:0] rdat_1,
	output reg [31:0] rdat_2 */
);

	word_t [31:0] registerArray; // This is a 32-bit wide Register Array
	
	always_ff @(posedge clk, negedge n_rst)
	begin
		if(n_rst == 1'b0)
		begin
			registerArray = `0;
		end
		else
		begin
			
		end
	end
	
endmodule
