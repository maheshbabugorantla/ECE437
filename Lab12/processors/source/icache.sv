`include "datapath_cache_if.vh"
`include "caches_if.vh"
import cpu_types_pkg::*;

module icache (
	input logic CLK, nRST,
	datapath_cache_if dcif,
	caches_if.icache cif
);



typedef struct packed {	
	word_t data;
	logic valid;
	logic [25:0] tag;

} icache_t;

logic miss;

integer i;
icache_t ht_i [15:0];

//datapath
always_comb begin
	if(dcif.halt == 1) begin
		miss = 0;
		dcif.ihit = 0;
		dcif.imemload = 0;
	end else if(dcif.imemREN == 1 && dcif.dmemWEN == 0 && dcif.dmemREN == 0) begin
		if(ht_i[dcif.imemaddr[5:2]].valid == 1 && (dcif.imemaddr[31:6] == ht_i[dcif.imemaddr[5:2]].tag)) begin
			miss = 0;
			dcif.ihit = 1;
			dcif.imemload = ht_i[dcif.imemaddr[5:2]].data;
		end else begin
			miss = 1;
			dcif.ihit = (cif.iwait == 0);
			dcif.imemload = cif.iload;
		end
	end else begin
		miss = 0;
		dcif.ihit = 0;
		dcif.imemload = 0;
	end
end

//RAM
always_comb begin
	//if miss
	if (miss == 1) begin
		cif.iaddr = dcif.imemaddr;
		cif.iREN = dcif.imemREN;
	end
	else begin
		cif.iaddr = 0;
		cif.iREN = 0;
	end
end


always_ff @(posedge CLK, negedge nRST) begin
	if(nRST == 0) begin
		for (i = 0; i < 16; i++) begin
			 ht_i[i].data <= 0;
			 ht_i[i].valid <= 0;
			 ht_i[i].tag <= 0;
		end
	end else begin
		if(cif.iwait == 0) begin
			 ht_i[dcif.imemaddr[5:2]].data <= cif.iload;
			 ht_i[dcif.imemaddr[5:2]].valid <= 1;
			 ht_i[dcif.imemaddr[5:2]].tag <= dcif.imemaddr[31:6];
		end
	end
end


endmodule

