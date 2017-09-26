/* request_unit.sv Zane Johnson 

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

*/

`include "request_unit_if.vh"
`include "cpu_types_pkg.vh"

module request_unit 
import cpu_types_pkg::*; 
(
	input logic CLK, nRST,
	request_unit_if.reqUnit ruif
);

	import cpu_types_pkg::*;

	always_ff @(posedge CLK, negedge nRST ) begin 
		if(~nRST) begin
			 ruif.clkREN <= 0;
			 ruif.clkWEN <= 0;
		end else if (ruif.dhit) begin
			 ruif.clkREN <= 0;
			 ruif.clkWEN <= 0;
		end else if (ruif.ihit) begin
			 ruif.clkREN <= ruif.dREN;
			 ruif.clkWEN <= ruif.dWEN;
		end
	end

assign ruif.pcEna = ruif.ihit;
endmodule

