`include "cpu_types_pkg.vh"
`include "forward_unit_if.vh"

module forward_unit 
import cpu_types_pkg::*; 
(
  forward_unit_if.fu fuif

);

//rt
always_comb begin
	if (fuif.regWENwb == 1 && fuif.rt == fuif.rwWB) begin
		  fuif.rdat2_ow = 1;
		  fuif.rtReplace = fuif.wb_data;
	end
	else begin
	  	fuif.rdat2_ow = 0;
	  	fuif.rtReplace = 0;
	end

	if (fuif.regWENmem == 1 && fuif.rt == fuif.rwMEM) begin
		  fuif.rdat2_ow = 1;
		  fuif.rtReplace = fuif.mem_data;
	end
	else begin
	  	fuif.rdat2_ow = 0;
	  	fuif.rtReplace = 0;
	end
end

//rs
always_comb begin

	if (fuif.regWENwb == 1 && fuif.rs == fuif.rwWB) begin
		  fuif.rdat1_ow = 1;
		  fuif.rsReplace = fuif.wb_data;
	end
	else begin
	  	fuif.rdat1_ow = 0;
	  	fuif.rsReplace = 0;
	end

	if (fuif.regWENmem == 1 && fuif.rs == fuif.rwMEM) begin
		  fuif.rdat1_ow = 1;
		  fuif.rsReplace = fuif.mem_data;
	end
	else begin
	  	fuif.rdat1_ow = 0;
	  	fuif.rsReplace = 0;
	end
end

endmodule
