`include "cpu_types_pkg.vh"
`include "id_ex_if.vh"

module id_ex
(
	input logic CLK,
	input logic nRST,
	id_ex_if.id_ex idex_if
);


import cpu_types_pkg::*;

always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 1'b0) begin	
		idex_if.ALUSel_o <= 0; 
		idex_if.PCSel_o <= 0; 
		idex_if.memToReg_o <= 0; 
		idex_if.regWEN_o <= 0; 
		idex_if.RegDest_o <= 0; 
		idex_if.jumpSel_o <= 0;		 
		idex_if.next_pc_o <= 0; 
		idex_if.aluop_o <= aluop_t'(4'b0000);  
    		idex_if.jal_o <= 0; 
    		idex_if.dREN_o <= 0; 
    		idex_if.dWEN_o <= 0; 
    		idex_if.imemREN_o <= 1; 
    		idex_if.lui_o <= 0; 
    		idex_if.bne_o <= 0; 
    		idex_if.imm_o <= 0; 
    		idex_if.halt_o <= 0;
    		idex_if.imm_26_o <= 0;
    		idex_if.instr_o <= 0;
    		idex_if.shamt_o <= 0; 
    		idex_if.rd_o <= 0; 
    		idex_if.rt_o <= 0; 
    		idex_if.rs_o <= 0;
		idex_if.rdat1_o <= 0;
		idex_if.rdat2_o <= 0; 
	end
	else begin
		if (idex_if.freeze == 1'b1 || (idex_if.flush == 1'b1 && idex_if.ihit == 1'b1)) begin
			idex_if.ALUSel_o <= 0; 
			idex_if.PCSel_o <= 0; 
			idex_if.memToReg_o <= 0; 
			idex_if.regWEN_o <= 0; 
			idex_if.RegDest_o <= 0; 
			idex_if.jumpSel_o <= 0;		 
			idex_if.next_pc_o <= 0; 
			idex_if.aluop_o <= aluop_t'(4'b0000); 
	    		idex_if.jal_o <= 0; 
	    		idex_if.dREN_o <= 0; 
	    		idex_if.dWEN_o <= 0; 
	    		idex_if.imemREN_o <= 1; 
	    		idex_if.lui_o <= 0; 
	    		idex_if.bne_o <= 0; 
	    		idex_if.imm_o <= 0; 
	    		idex_if.halt_o <= 0;
	    		idex_if.imm_26_o <= 0;
	    		idex_if.instr_o <= 0;
	    		idex_if.shamt_o <= 0; 
	    		idex_if.rd_o <= 0; 
	    		idex_if.rt_o <= 0; 
	    		idex_if.rs_o <= 0;
			idex_if.rdat1_o <= 0;
			idex_if.rdat2_o <= 0; 		
		end
		else if (idex_if.ihit == 1'b1) begin
			idex_if.ALUSel_o <= idex_if.ALUSel_i; 
			idex_if.PCSel_o <= idex_if.PCSel_i; 
			idex_if.memToReg_o <= idex_if.memToReg_i; 
			idex_if.regWEN_o <= idex_if.regWEN_i; 
			idex_if.RegDest_o <= idex_if.RegDest_i; 
			idex_if.jumpSel_o <= idex_if.jumpSel_i;		 
			idex_if.next_pc_o <= idex_if.next_pc_i; 
			idex_if.aluop_o <= idex_if.aluop_i; 
	    		idex_if.jal_o <= idex_if.jal_i; 
	    		idex_if.dREN_o <= idex_if.dREN_i; 
	    		idex_if.dWEN_o <= idex_if.dWEN_i; 
	    		idex_if.imemREN_o <= idex_if.imemREN_i; 
	    		idex_if.lui_o <= idex_if.lui_i; 
	    		idex_if.bne_o <= idex_if.bne_i; 
	    		idex_if.imm_o <= idex_if.imm_i; 
	    		idex_if.halt_o <= idex_if.halt_i;
	    		idex_if.imm_26_o <= idex_if.imm_26_i;
	    		idex_if.instr_o <= idex_if.instr_i;
	    		idex_if.shamt_o <= idex_if.shamt_i; 
	    		idex_if.rd_o <= idex_if.rd_i; 
	    		idex_if.rt_o <= idex_if.rt_i; 
	    		idex_if.rs_o <= idex_if.rs_i;
			idex_if.rdat1_o <= idex_if.rdat1_i;
			idex_if.rdat2_o <= idex_if.rdat2_i; 			
		end
	end

end

endmodule
