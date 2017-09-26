/* Zane Johnson register_file.sv */

`include "register_file_if.vh"
`include "cpu_types_pkg.vh"

import cpu_types_pkg::*;

module register_file(
	input logic CLK,
	input logic nRST, 
	register_file_if.rf myif
);

word_t [31:0] Reg;

always_ff @(negedge CLK, negedge nRST) begin 
	if (nRST == 1'b0) begin
		Reg <= '0;			
	end
	else begin
		if(myif.WEN == 1'b1 && myif.wsel != 5'b00000) begin
			Reg[myif.wsel] <= myif.wdat;
		end
	end
end

always_comb begin
	myif.rdat1 = Reg[myif.rsel1];
	myif.rdat2 = Reg[myif.rsel2];
end

endmodule

