`include "alu_file_if.vh"

`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

module alu_file_fpga(
	input logic CLOCK_50,
	input logic [3:0] KEY,
	input logic [17:0] SW,
  	output logic [17:0] LEDR,
	output logic [6:0] HEX0,
	output logic [6:0] HEX1,
	output logic [6:0] HEX2,
	output logic [6:0] HEX3,
	output logic [6:0] HEX4,
	output logic [6:0] HEX5,
	output logic [6:0] HEX6,
	output logic [6:0] HEX7
);

	alu_file_if myif();
	
	word_t regi_;

	assign myif.port_a = {{16{SW[16]}}, SW[15:0]};
	assign myif.port_b = regi_;
	assign myif.aluop = aluop_t'(~KEY[3:0]);
	assign LEDR[13] = myif.overflow;
	assign LEDR[12] = myif.negative;
	assign LEDR[11] = myif.zero;

	alu_file ALU (myif);

	always_ff @(posedge SW[17]) begin	
		regi_ = {{16{SW[16]}}, SW[15:0]};
	end

	always_comb begin	
		casez(myif.out[3:0])
			4'h0: HEX0 = 7'b1000000;
			4'h1: HEX0 = 7'b1111001;
			4'h2: HEX0 = 7'b0100100;
			4'h3: HEX0 = 7'b0110000;
			4'h4: HEX0 = 7'b0011001;
			4'h5: HEX0 = 7'b0010010;
			4'h6: HEX0 = 7'b0000010;
			4'h7: HEX0 = 7'b1111000;
			4'h8: HEX0 = 7'b0000000;
			4'h9: HEX0 = 7'b0010000;
			4'ha: HEX0 = 7'b0001000;
			4'hb: HEX0 = 7'b0000011;
			4'hc: HEX0 = 7'b0100111;
			4'hd: HEX0 = 7'b0100001;
			4'he: HEX0 = 7'b0000110;
			4'hf: HEX0 = 7'b0001110;
		endcase

		casez(myif.out[7:4])
			4'h0: HEX1 = 7'b1000000;
			4'h1: HEX1 = 7'b1111001;
			4'h2: HEX1 = 7'b0100100;
			4'h3: HEX1 = 7'b0110000;
			4'h4: HEX1 = 7'b0011001;
			4'h5: HEX1 = 7'b0010010;
			4'h6: HEX1 = 7'b0000010;
			4'h7: HEX1 = 7'b1111000;
			4'h8: HEX1 = 7'b0000000;
			4'h9: HEX1 = 7'b0010000;
			4'ha: HEX1 = 7'b0001000;
			4'hb: HEX1 = 7'b0000011;
			4'hc: HEX1 = 7'b0100111;
			4'hd: HEX1 = 7'b0100001;
			4'he: HEX1 = 7'b0000110;
			4'hf: HEX1 = 7'b0001110;
		endcase

		casez(myif.out[11:8])
			4'h0: HEX2 = 7'b1000000;
			4'h1: HEX2 = 7'b1111001;
			4'h2: HEX2 = 7'b0100100;
			4'h3: HEX2 = 7'b0110000;
			4'h4: HEX2 = 7'b0011001;
			4'h5: HEX2 = 7'b0010010;
			4'h6: HEX2 = 7'b0000010;
			4'h7: HEX2 = 7'b1111000;
			4'h8: HEX2 = 7'b0000000;
			4'h9: HEX2 = 7'b0010000;
			4'ha: HEX2 = 7'b0001000;
			4'hb: HEX2 = 7'b0000011;
			4'hc: HEX2 = 7'b0100111;
			4'hd: HEX2 = 7'b0100001;
			4'he: HEX2 = 7'b0000110;
			4'hf: HEX2 = 7'b0001110;
		endcase

		casez(myif.out[15:12])
			4'h0: HEX3 = 7'b1000000;
			4'h1: HEX3 = 7'b1111001;
			4'h2: HEX3 = 7'b0100100;
			4'h3: HEX3 = 7'b0110000;
			4'h4: HEX3 = 7'b0011001;
			4'h5: HEX3 = 7'b0010010;
			4'h6: HEX3 = 7'b0000010;
			4'h7: HEX3 = 7'b1111000;
			4'h8: HEX3 = 7'b0000000;
			4'h9: HEX3 = 7'b0010000;
			4'ha: HEX3 = 7'b0001000;
			4'hb: HEX3 = 7'b0000011;
			4'hc: HEX3 = 7'b0100111;
			4'hd: HEX3 = 7'b0100001;
			4'he: HEX3 = 7'b0000110;
			4'hf: HEX3 = 7'b0001110;
		endcase

		casez(myif.out[19:16])
			4'h0: HEX4 = 7'b1000000;
			4'h1: HEX4 = 7'b1111001;
			4'h2: HEX4 = 7'b0100100;
			4'h3: HEX4 = 7'b0110000;
			4'h4: HEX4 = 7'b0011001;
			4'h5: HEX4 = 7'b0010010;
			4'h6: HEX4 = 7'b0000010;
			4'h7: HEX4 = 7'b1111000;
			4'h8: HEX4 = 7'b0000000;
			4'h9: HEX4 = 7'b0010000;
			4'ha: HEX4 = 7'b0001000;
			4'hb: HEX4 = 7'b0000011;
			4'hc: HEX4 = 7'b0100111;
			4'hd: HEX4 = 7'b0100001;
			4'he: HEX4 = 7'b0000110;
			4'hf: HEX4 = 7'b0001110;
		endcase

		casez(myif.out[23:20])
			4'h0: HEX5 = 7'b1000000;
			4'h1: HEX5 = 7'b1111001;
			4'h2: HEX5 = 7'b0100100;
			4'h3: HEX5 = 7'b0110000;
			4'h4: HEX5 = 7'b0011001;
			4'h5: HEX5 = 7'b0010010;
			4'h6: HEX5 = 7'b0000010;
			4'h7: HEX5 = 7'b1111000;
			4'h8: HEX5 = 7'b0000000;
			4'h9: HEX5 = 7'b0010000;
			4'ha: HEX5 = 7'b0001000;
			4'hb: HEX5 = 7'b0000011;
			4'hc: HEX5 = 7'b0100111;
			4'hd: HEX5 = 7'b0100001;
			4'he: HEX5 = 7'b0000110;
			4'hf: HEX5 = 7'b0001110;
		endcase

		casez(myif.out[27:24])
			4'h0: HEX6 = 7'b1000000;
			4'h1: HEX6 = 7'b1111001;
			4'h2: HEX6 = 7'b0100100;
			4'h3: HEX6 = 7'b0110000;
			4'h4: HEX6 = 7'b0011001;
			4'h5: HEX6 = 7'b0010010;
			4'h6: HEX6 = 7'b0000010;
			4'h7: HEX6 = 7'b1111000;
			4'h8: HEX6 = 7'b0000000;
			4'h9: HEX6 = 7'b0010000;
			4'ha: HEX6 = 7'b0001000;
			4'hb: HEX6 = 7'b0000011;
			4'hc: HEX6 = 7'b0100111;
			4'hd: HEX6 = 7'b0100001;
			4'he: HEX6 = 7'b0000110;
			4'hf: HEX6 = 7'b0001110;
		endcase

		casez(myif.out[31:28])
			4'h0: HEX7 = 7'b1000000;
			4'h1: HEX7 = 7'b1111001;
			4'h2: HEX7 = 7'b0100100;
			4'h3: HEX7 = 7'b0110000;
			4'h4: HEX7 = 7'b0011001;
			4'h5: HEX7 = 7'b0010010;
			4'h6: HEX7 = 7'b0000010;
			4'h7: HEX7 = 7'b1111000;
			4'h8: HEX7 = 7'b0000000;
			4'h9: HEX7 = 7'b0010000;
			4'ha: HEX7 = 7'b0001000;
			4'hb: HEX7 = 7'b0000011;
			4'hc: HEX7 = 7'b0100111;
			4'hd: HEX7 = 7'b0100001;
			4'he: HEX7 = 7'b0000110;
			4'hf: HEX7 = 7'b0001110;
		endcase
	end
endmodule
