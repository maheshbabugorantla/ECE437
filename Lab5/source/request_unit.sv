/* request_unit.sv Zane Johnson */

`include "cpu_types_pkg.vh"
`include "request_unit_if.vh"

module request_unit (
	input logic CLK,
	input logic nRST,
	request_unit_if.ru ruif
);

assign ruif.pc_en = ruif.ihit;

import cpu_types_pkg::*;
always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 1'b0) begin
		ruif.dmemREN <= 1'b0;
		ruif.dmemWEN <= 1'b0;
	end
	else begin
		if (ruif.ihit == 1'b1) begin
			ruif.dmemREN <= ruif.dREN;
			ruif.dmemWEN <= ruif.dWEN;
		end
		else if (ruif.dhit == 1'b1) begin	
			ruif.dmemREN <= 1'b0;
			ruif.dmemWEN <= 1'b0;
		end
	end	
end
endmodule
