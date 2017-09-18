
/*
	Author: Mahesh Babu Gorantla
	Email: mgorantl@purdue.edu
	Lab 4 Single Cycle Datapath
	Logic for the Request Unit Module
*/

// Include the Request Unit Interface
`include "request_unit_if.vh"

// Types
`include "cpu_types_pkg.vh"

module request_unit (
	input CLK, nRST,
	request_unit_if.request_unit ruif
);

	import cpu_types_pkg::*;

	always_ff@(posedge CLK, negedge nRST)
	begin
		if(nRST == 1'b0)
		begin
			ruif.dmemREN <= 1'b0;
			ruif.dmemWEN <= 1'b0;
			ruif.dhit <= 1'b0;
			ruif.ihit <= 1'b0;
		end
		else
		begin
			if (ruif.dhitIn == 1'b1)
			begin
				ruif.dmemWEN <= 1'b0;
				ruif.dmemREN <= 1'b0;
				ruif.dhit <= ruif.dhitIn;
				ruif.ihit <= ruif.ihitIn;
			end
			else if(ruif.ihitIn == 1'b1)
			begin
				ruif.dmemWEN <= ruif.dWEN;
				ruif.dmemREN <= ruif.dREN;
				ruif.dhit <= ruif.dhitIn;
				ruif.ihit <= ruif.ihitIn;
			end
		end
	end

endmodule