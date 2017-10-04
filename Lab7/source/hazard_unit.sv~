`include "cpu_types_pkg.vh"
`include "hazard_unit_if.vh"

module hazard_unit
(
	hazard_unit_if.hu huif
);

always_comb begin
	//freeze logic

	huif.freeze = 0;
	huif.flush = 0;

	if (huif.dhit == 0) begin
		//SW
		if (huif.instr[31:26] == 6'b101011) begin
				if (huif.regWEN == 1'b1)begin
					if((huif.rt == huif.rw) || (huif.rs == huif.rw)) begin
						huif.freeze = 1'b1;
					end
				end
		end
		//LW	
		else if (huif.instr[31:26] == 6'b100011) begin
				if (huif.regWEN == 1'b1)begin
					if((huif.rt == huif.rw) || (huif.rs == huif.rw)) begin
						huif.freeze = 1'b1;
					end
				end
		end
	end

	//flush logic

		//if no branch
		if (huif.JumpSel > 2'b00 && huif.JumpSel != 2'b11) begin
			huif.flush = 1'b1;	
		end
		//if branch
		else if (huif.JumpSel > 2'b00 && huif.JumpSel == 2'b11) begin
			if (huif.bne == 1'b1) begin
				if (huif.zero == 1'b0) begin
					if (huif.PCSel == 1) begin
						huif.flush = 1'b1;
					end
				end
			end
			else begin
				if (huif.zero == 1'b1) begin
					if (huif.PCSel == 1) begin
						huif.flush = 1'b1;
					end				
				end
			end 
		end



end

endmodule
