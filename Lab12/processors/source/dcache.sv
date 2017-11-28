`include "datapath_cache_if.vh"
`include "caches_if.vh"

module dcache (
	input logic CLK, nRST,
	datapath_cache_if.dcache dcif,
	caches_if.dcache cif
);


import cpu_types_pkg::*;

typedef struct packed {
	//right_d
	logic [25:0] tag_r;
	word_t data1_r, data2_r;
	logic dirty_r, valid_r;
	//left
	logic [25:0] tag_l;
	word_t data1_l, data2_l;
	logic dirty_l, valid_l;
} dcache_t;

logic [25:0] tag_l, tag_r;
word_t data1_l, data2_l, data1_r, data2_r;
logic dirty_l, valid_l, dirty_r, valid_r;


logic [25:0] snoop_tag_l, snoop_tag_r;
word_t snoop_data1_l, snoop_data2_l, snoop_data1_r, snoop_data2_r;
logic snoop_dirty_l, snoop_valid_l, snoop_dirty_r, snoop_valid_r;

typedef enum logic[3:0] {
	IDLE, WB1, WB2, RD1, RD2, FLUSH1, FLUSH2, DIRTY, CNT, HALT, CHECK, SNOOP1, SNOOP2, INV
} state_t;

dcache_t ht_d[7:0];
integer i, j;

logic miss;
logic avail[7:0], next_avail[7:0];
logic [4:0] row, row_next;
word_t hit_count, hit_count_next;

state_t state, next_state;

//input seperation
logic offset;
logic [25:0] tag;
logic [2:0] index;
logic [2:0] row_t;

assign row_t = row[2:0] - 1;

assign offset = dcif.dmemaddr[2];
assign index = dcif.dmemaddr[5:3];
assign tag = dcif.dmemaddr[31:6];
logic [25:0] snoop_tag;
logic [2:0] snoop_index;
logic snoop_offset;
logic snoop_hit_l, snoop_hit_r,snoop_dirty;
logic next_snoop_hit_l, next_snoop_hit_r;

assign snoop_tag = cif.ccsnoopaddr[31:6];
assign snoop_index = cif.ccsnoopaddr[5:3];
assign snoop_offset = cif.ccsnoopaddr[2];

word_t linkreg, next_linkreg;
logic linkreg_valid, next_linkreg_valid;

//Next State
always_comb begin
	cif.ccwrite = dcif.dmemWEN;
	next_state = state;
	row_next = row;
	cif.cctrans = 0;
		if (state == IDLE) begin
			if (dcif.halt == 1) begin
				next_state = DIRTY;
			end
			else if (cif.ccwait == 1) begin
				next_state = CHECK;
			end
			else if (miss == 1) begin
				if (avail[index] == 1) begin
					if (ht_d[index].dirty_r == 1) begin
						cif.cctrans = 0;
						next_state = WB1;
					end 
					else begin
						cif.cctrans = 1;
						next_state = RD1;
					end
				end else begin
					if (ht_d[index].dirty_l == 1) begin
						cif.cctrans = 0;
						next_state = WB1;
					end 
					else begin
						cif.cctrans = 1;
						next_state = RD1;
					end
				end
			end
		end
		else if (state == WB1) begin
			if (cif.dwait == 0) begin
				next_state = WB2;
			end
		end
		else if (state == WB2) begin
			if (cif.dwait == 0) begin
				next_state = RD1;
			end
		end
		else if (state == RD1) begin
			if (cif.ccwait == 1) begin
				cif.cctrans = 0;
			end
			else begin
				cif.cctrans = 1;
			end
			if (cif.dwait == 0) begin
				next_state = RD2;
			end
			if (cif.ccwait == 1) begin
				next_state = CHECK;
			end
		end
		else if (state == RD2) begin
			if (cif.dwait == 0) begin
				next_state = IDLE;
			end
		end
		else if (state == DIRTY) begin
			if (row < 8) begin
				if(ht_d[row[2:0]].dirty_l == 1 && ht_d[row[2:0]].valid_l == 1) begin
					next_state = FLUSH1;
				end
			end else begin
				if(ht_d[row[2:0]].dirty_r == 1 && ht_d[row[2:0]].valid_r == 1) begin
					next_state = FLUSH1;
				end
			end
			row_next = row + 1;
		 	if(row == 5'b10000) begin
		 		next_state = HALT;
			end
		end
		else if (state == FLUSH1) begin
			if (cif.dwait == 0) begin
				next_state = FLUSH2;
			end
		end
		else if (state == FLUSH2) begin
			if (cif.dwait == 0) begin
				next_state = DIRTY;
			end
		end
		else if (state == CHECK) begin
			if(cif.ccwait == 1) begin
				if (snoop_dirty == 1) begin
					next_state = SNOOP1;
					cif.cctrans = 1;
				end
				else begin 
					next_state = CHECK;
					cif.cctrans = 0;
				end
				if (next_snoop_hit_l == 0 && next_snoop_hit_r == 0) begin
					next_state = CHECK;
				end
			end else begin
				next_state = IDLE;
			end
		end
		else if (state == SNOOP1) begin
			if (cif.dwait == 0) begin
				next_state = SNOOP2;
			end
		end
		else if (state == SNOOP2) begin
			if (cif.dwait == 0) begin
				next_state = INV;
			end
		end
		else if (state == INV) begin
			next_state = IDLE;
		end
end

//Output Logic
always_comb begin
	miss = 0;
	dcif.dhit = 0;
	dcif.dmemload = 0;
	cif.dREN = 0;
	cif.dWEN = 0;
	cif.daddr = 0;
	cif.dstore = 0;
	dcif.flushed = 0;

	for(j = 0; j < 8; j++) begin
		next_avail[j] = avail[j];
	end

	data1_l = ht_d[index].data1_l; 
	data2_l = ht_d[index].data2_l;
	data1_r = ht_d[index].data1_r;
	data2_r = ht_d[index].data2_r;
	dirty_l = ht_d[index].dirty_l;
	dirty_r = ht_d[index].dirty_r;
	valid_l = ht_d[index].valid_l; 
	valid_r = ht_d[index].valid_r;
	tag_l = ht_d[index].tag_l;
	tag_r = ht_d[index].tag_r;

	snoop_data1_l = ht_d[snoop_index].data1_l; 
	snoop_data2_l = ht_d[snoop_index].data2_l;
	snoop_data1_r = ht_d[snoop_index].data1_r;
	snoop_data2_r = ht_d[snoop_index].data2_r;
	snoop_dirty_l = ht_d[snoop_index].dirty_l;
	snoop_dirty_r = ht_d[snoop_index].dirty_r;
	snoop_valid_l = ht_d[snoop_index].valid_l; 
	snoop_valid_r = ht_d[snoop_index].valid_r;
	snoop_tag_l = ht_d[snoop_index].tag_l;
	snoop_tag_r = ht_d[snoop_index].tag_r;

	next_snoop_hit_l = snoop_hit_l;
	next_snoop_hit_r = snoop_hit_r;
	snoop_dirty = 0;

	//Start on LL SC
	next_linkreg_valid = linkreg_valid;
	next_linkreg = linkreg;

	hit_count_next = hit_count;
		if (state == HALT) begin
			dcif.flushed = 1;
		end
		else begin
			dcif.flushed = 0;
		end

		if (state == IDLE) begin
			if (dcif.halt == 1) begin
				hit_count_next = hit_count;
			end
			else if (dcif.dmemREN == 1) begin
				if (dcif.datomic == 1) begin
					next_linkreg = dcif.dmemaddr;
					next_linkreg_valid = 1;
				end
				if ((tag == ht_d[index].tag_l) && ht_d[index].valid_l == 1) begin
					next_avail[index] = 1;
					dcif.dhit = 1;
					if (offset == 1) begin
						dcif.dmemload = ht_d[index].data2_l;
					end
					else begin
						dcif.dmemload = ht_d[index].data1_l;
					end					
					hit_count_next = hit_count + 1;
				end 
				else if ((tag == ht_d[index].tag_r) && ht_d[index].valid_r == 1) begin
					next_avail[index] = 0;
					dcif.dhit = 1;
					if (offset == 1) begin
						dcif.dmemload = ht_d[index].data2_r;
					end
					else begin
						dcif.dmemload = ht_d[index].data1_r;
					end	
					hit_count_next = hit_count + 1;
				end 
				else begin
					miss = 1;
					hit_count_next = hit_count - 1;
					if(next_avail[index] == 0) begin
						dirty_l = 0; 
						valid_l = 1;
					end 
					else begin
						dirty_r = 0; 
						valid_r = 1;
					end
					
				end
			end 
			else if (dcif.dmemWEN == 1) begin
				if (dcif.datomic == 1) begin
					if ((dcif.dmemaddr == linkreg) && linkreg_valid == 1) begin
						dcif.dmemload = 1;
					end 
					else begin
						dcif.dmemload = 0;
					end
					if(dcif.dmemaddr == linkreg && linkreg_valid == 1) begin
						if ((tag == ht_d[index].tag_l)) begin
							if (ht_d[index].dirty_l == 0 && ht_d[index].valid_l == 1) begin
								dirty_l = 1;
								next_avail[index] = 0; 
								miss = 1; 
							end else begin
								dcif.dhit = 1;
								dirty_l = 1;
								next_avail[index] = 1;
							 	hit_count_next = hit_count + 1;
								next_linkreg_valid = 0;
								next_linkreg = 0;
								if (offset == 1) begin
									data2_l = dcif.dmemstore;
								end
								else begin
									data1_l = dcif.dmemstore;
								end
							end
						end else if ((tag == ht_d[index].tag_r)) begin
							if (ht_d[index].dirty_r == 0 && ht_d[index].valid_r == 1) begin
								dirty_r = 1;
								next_avail[index] = 1;
								miss = 1;
							end else begin
								dcif.dhit = 1;
								dirty_r = 1;
								next_avail[index] = 0;
								hit_count_next = hit_count + 1;
								next_linkreg_valid = 0;
								next_linkreg = 0;
								if (offset == 1) begin
									data2_r = dcif.dmemstore;
								end
								else begin
									data1_r = dcif.dmemstore;
								end
							end
						end 
						else begin
							miss = 1;
							hit_count_next = hit_count - 1;
							if(next_avail[index] == 1) begin
								dirty_r = 0; 
								valid_r = 1;
							end 
							else begin
								dirty_l = 0; 
								valid_l = 1;
							end
						end
					end 
					else begin
						dcif.dhit = 1;
					end
				end 
				else begin 
					//NOT DONE
					if (dcif.dmemaddr == linkreg) begin
						next_linkreg_valid = 0;
						next_linkreg = 0;
					end
					if ((tag == ht_d[index].tag_l)) begin
						if (!ht_d[index].dirty_l && ht_d[index].valid_l == 1) begin 
							next_avail[index] = 0;
							miss = 1;
							dirty_l = 1;
						end else begin
							next_avail[index] = 1;
							hit_count_next = hit_count + 1;
							dcif.dhit = 1;
							dirty_l = 1;
							if (offset == 1) begin
								data2_l = dcif.dmemstore;
							end
							else begin
								data1_l = dcif.dmemstore;
							end
						end
					end else if ((tag == ht_d[index].tag_r)) begin
						if (!ht_d[index].dirty_r && ht_d[index].valid_r == 1) begin
							next_avail[index] = 1;
							miss = 1;
							dirty_r = 1;
						end else begin
							next_avail[index] = 0;
							hit_count_next = hit_count + 1;
							dcif.dhit = 1;
							dirty_r = 1;
							if (offset == 1) begin
								data2_r = dcif.dmemstore;
							end
							else begin
								data1_r = dcif.dmemstore;
							end
						end
					end else begin
						miss = 1;
						hit_count_next = hit_count - 1;
						if(next_avail[index] == 1) begin
							dirty_r = 0; 
							valid_r = 1;
						end 
						else begin
							dirty_l = 0; 
							valid_l = 1;
						end
					end
				end
			end
		end
		else if (state == WB1) begin
			if(avail[index] == 1) begin
				cif.daddr = {ht_d[index].tag_r, index, 3'b000};
				cif.dstore = ht_d[index].data1_r;
				cif.dWEN = 1;
			end else begin
				cif.daddr = {ht_d[index].tag_l, index, 3'b000};
				cif.dstore = ht_d[index].data1_l;
				cif.dWEN = 1;
			end
		end
		else if (state == WB2) begin
			if(avail[index] == 1) begin
				cif.daddr = {ht_d[index].tag_r, index, 3'b100};
				cif.dstore = ht_d[index].data2_r;
				cif.dWEN = 1;
			end else begin
				cif.daddr = {ht_d[index].tag_l, index, 3'b100};
				cif.dstore = ht_d[index].data2_l;
				cif.dWEN = 1;
			end
		end
		else if (state == RD1) begin
			if (avail[index] == 1) begin
				data1_r = cif.dload;
				cif.daddr = {tag, index, 3'b000};
				cif.dREN = 1;
			end else begin
				data1_l = cif.dload;
				cif.daddr = {tag, index, 3'b000};
				cif.dREN = 1;
			end
		end
		else if (state == RD2) begin
			if (avail[index] == 1) begin
				data2_r = cif.dload;
				tag_r = tag;
				cif.daddr = {tag, index, 3'b100};
				cif.dREN = 1;
			end else begin
				data2_l = cif.dload;
				tag_l = tag;
				cif.daddr = {tag, index, 3'b100};	
				cif.dREN = 1;
			end
		end
		else if (state == FLUSH1) begin
			if(row - 1 < 8) begin
				cif.dstore = ht_d[row_t].data1_l;
				cif.daddr = {ht_d[row_t].tag_l, row_t, 3'b000};
				cif.dWEN = 1;
			end else begin
				cif.dstore = ht_d[row_t].data1_r;
				cif.daddr = {ht_d[row_t].tag_r, row_t, 3'b000};
				cif.dWEN = 1;
			end
		end
		else if (state == FLUSH2) begin
			if(row - 1 < 8) begin
				cif.dstore = ht_d[row_t].data2_l;
				cif.daddr = {ht_d[row_t].tag_l, row_t, 3'b100};
				cif.dWEN = 1;
			end else begin
				cif.dstore = ht_d[row_t].data2_r;
				cif.daddr = {ht_d[row_t].tag_r, row_t, 3'b100};
				cif.dWEN = 1;
			end
		end
		else if (state == CHECK) begin
			if(snoop_tag == ht_d[snoop_index].tag_l) begin
				next_snoop_hit_l = 1;
				snoop_dirty = ht_d[snoop_index].dirty_l;
			end
			else begin
				next_snoop_hit_l = 0;
			end
			if(snoop_tag == ht_d[snoop_index].tag_r) begin
				next_snoop_hit_r = 1;
				snoop_dirty = ht_d[snoop_index].dirty_r;
			end
			else begin
				next_snoop_hit_r = 0;
			end

			if(cif.ccinv == 1 && snoop_dirty == 0) begin
				if(snoop_tag == ht_d[snoop_index].tag_r) begin
					snoop_tag_r = 0;
					snoop_data1_r = 0;
					snoop_data2_r = 0;
					snoop_valid_r = 0;
					snoop_dirty_r = 0;
				end
				if(snoop_tag == ht_d[snoop_index].tag_l) begin
					snoop_tag_l = 0;
					snoop_data1_l = 0;
					snoop_data2_l = 0;
					snoop_valid_l = 0;
					snoop_dirty_l = 0;
				end
			end
		end
		else if (state == INV) begin
			if(cif.ccinv == 1) begin
				if(snoop_hit_r == 1) begin
					snoop_tag_r = 0;
					snoop_data1_r = 0;
					snoop_data2_r = 0;
					snoop_valid_r = 0;
					snoop_dirty_r = 0;
				end
				if(snoop_hit_l == 1) begin
					snoop_tag_l = 0;
					snoop_data1_l = 0;
					snoop_data2_l = 0;
					snoop_valid_l = 0;
					snoop_dirty_l = 0;
				end
			end
			

		end
		else if (state == SNOOP1) begin
			if(snoop_hit_l == 1) begin
				snoop_dirty_l = 0;
				cif.daddr = {ht_d[snoop_index].tag_l, snoop_index, 3'b000};
				cif.dstore = ht_d[snoop_index].data1_l;
			end else if(snoop_hit_r == 1) begin
				snoop_dirty_r = 0;
				cif.daddr = {ht_d[snoop_index].tag_r, snoop_index, 3'b000};
				cif.dstore = ht_d[snoop_index].data1_l;
			end
		end
		else if (state == SNOOP2) begin
			if(snoop_hit_l == 1) begin
				snoop_dirty_l = 0;
				cif.daddr = {ht_d[snoop_index].tag_l, snoop_index, 3'b100};
				cif.dstore = ht_d[snoop_index].data2_l;
			end else if(snoop_hit_r == 1) begin
				snoop_dirty_r = 0;
				cif.daddr = {ht_d[snoop_index].tag_r, snoop_index, 3'b100};
				cif.dstore = ht_d[snoop_index].data2_r;
			end
		end
		else begin
			miss = 0;
			dcif.dhit = 0;
			dcif.dmemload = 0;
			cif.dREN = 0;
			cif.dWEN = 0;
			cif.daddr = 0;
			cif.dstore = 0;
		end
end

always_ff @(posedge CLK, negedge nRST) begin
	if(nRST == 0) begin
		 state <= IDLE;
		 row <= 0;
		 hit_count <= 0;

		 snoop_hit_l <= 0;
		 snoop_hit_r <= 0;
		 linkreg <= 0;
		 linkreg_valid <= 0;
		 for (i = 0; i < 8; i++) begin
			avail[i] <= 0;
		 	ht_d[i].tag_l <= 0;
		 	ht_d[i].tag_r <= 0;
		 	ht_d[i].data1_l <= 0;
		 	ht_d[i].data1_r <= 0;
		 	ht_d[i].data2_l <= 0;
		 	ht_d[i].data2_r <= 0;
		 	ht_d[i].dirty_l <= 0;
		 	ht_d[i].dirty_r <= 0;
		 	ht_d[i].valid_l <= 0;
		 	ht_d[i].valid_r <= 0;
		 end
	end else begin
		ht_d[index].data1_l <= data1_l;
		ht_d[index].data2_l <= data2_l;
		ht_d[index].data1_r <= data1_r;
		ht_d[index].data2_r <= data2_r;
		ht_d[index].dirty_l <= dirty_l;
		ht_d[index].dirty_r <= dirty_r;
		ht_d[index].tag_l <= tag_l;
		ht_d[index].tag_r <= tag_r;
		ht_d[index].valid_l <= valid_l;
		ht_d[index].valid_r <= valid_r;
	        state <= next_state;
		for (i = 0; i < 8; i++) begin
			avail[i] <= next_avail[i];
		end
		row <= row_next;
		hit_count <= hit_count_next;
		 snoop_hit_l <= next_snoop_hit_l;
		 snoop_hit_r <= next_snoop_hit_r;
		 linkreg <= next_linkreg;
		 linkreg_valid <= next_linkreg_valid;

		if(state == CHECK) begin
			ht_d[snoop_index].data1_l <= snoop_data1_l;
			ht_d[snoop_index].data2_l <= snoop_data2_l;
			ht_d[snoop_index].data1_r <= snoop_data1_r;
			ht_d[snoop_index].data2_r <= snoop_data2_r;
			ht_d[snoop_index].dirty_l <= snoop_dirty_l;
			ht_d[snoop_index].dirty_r <= snoop_dirty_r;
			ht_d[snoop_index].tag_l <= snoop_tag_l;
			ht_d[snoop_index].valid_l <= snoop_valid_l;
			ht_d[snoop_index].tag_r <= snoop_tag_r;
			ht_d[snoop_index].valid_r <= snoop_valid_r;
		end
		else if(state == SNOOP1) begin
			ht_d[snoop_index].data1_l <= snoop_data1_l;
			ht_d[snoop_index].data2_l <= snoop_data2_l;
			ht_d[snoop_index].data1_r <= snoop_data1_r;
			ht_d[snoop_index].data2_r <= snoop_data2_r;
			ht_d[snoop_index].dirty_l <= snoop_dirty_l;
			ht_d[snoop_index].dirty_r <= snoop_dirty_r;
			ht_d[snoop_index].tag_l <= snoop_tag_l;
			ht_d[snoop_index].valid_l <= snoop_valid_l;
			ht_d[snoop_index].tag_r <= snoop_tag_r;
			ht_d[snoop_index].valid_r <= snoop_valid_r;
		end
		else if(state == SNOOP2) begin
			ht_d[snoop_index].data1_l <= snoop_data1_l;
			ht_d[snoop_index].data2_l <= snoop_data2_l;
			ht_d[snoop_index].data1_r <= snoop_data1_r;
			ht_d[snoop_index].data2_r <= snoop_data2_r;
			ht_d[snoop_index].dirty_l <= snoop_dirty_l;
			ht_d[snoop_index].dirty_r <= snoop_dirty_r;
			ht_d[snoop_index].tag_l <= snoop_tag_l;
			ht_d[snoop_index].valid_l <= snoop_valid_l;
			ht_d[snoop_index].tag_r <= snoop_tag_r;
			ht_d[snoop_index].valid_r <= snoop_valid_r;
		end
	end
end

endmodule
