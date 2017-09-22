`include "cpu_types_pkg.vh"
`include "ex_mem_if.vh"

module ex_mem
(
	input logic CLK,
	input logic nRST,
	ex_mem_if.ex_mem exmem_if
);


import cpu_types_pkg::*;

always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 1'b0) begin	 
                exmem_if.dREN_o <= 0;
                exmem_if.dWEN_o <= 0;
                exmem_if.regWEN_o <= 0; 	
                exmem_if.memToReg_o <= 0; 
                exmem_if.RegDest_o <= 0; 
		exmem_if.rdat2_o <= 0; 
		exmem_if.next_pc_o <= 0; 
                exmem_if.imm_o <= 0; 
                exmem_if.halt_o <= 0; 
                exmem_if.out_o <= 0; 
                exmem_if.instr_o <= 0;
                exmem_if.jal_o <= 0; 
                exmem_if.lui_o <= 0; 
                exmem_if.rd_o <= 0; 
                exmem_if.rt_o <= 0;	
                exmem_if.imemREN_o <= 1; 
	end
	else begin
		if (exmem_if.dhit == 1'b1) begin	 
		        exmem_if.dREN_o <= 0;
		        exmem_if.dWEN_o <= 0;
		        exmem_if.regWEN_o <= 0; 	
		        exmem_if.memToReg_o <= 0; 
		        exmem_if.RegDest_o <= 0; 
			exmem_if.rdat2_o <= 0; 
			exmem_if.next_pc_o <= 0; 
		        exmem_if.imm_o <= 0; 
		        exmem_if.halt_o <= 0; 
		        exmem_if.out_o <= 0; 
		        exmem_if.instr_o <= 0;
		        exmem_if.jal_o <= 0; 
		        exmem_if.lui_o <= 0; 
		        exmem_if.rd_o <= 0; 
		        exmem_if.rt_o <= 0;	
		        exmem_if.imemREN_o <= 1; 
					
		end
		else if (exmem_if.ihit == 1'b1) begin	 
		        exmem_if.dREN_o <= exmem_if.dREN_i;
		        exmem_if.dWEN_o <= exmem_if.dWEN_i ;
		        exmem_if.regWEN_o <= exmem_if.regWEN_i; 	
		        exmem_if.memToReg_o <= exmem_if.memToReg_i; 
		        exmem_if.RegDest_o <= exmem_if.RegDest_i; 
			exmem_if.rdat2_o <= exmem_if.rdat2_i; 
			exmem_if.next_pc_o <= exmem_if.next_pc_i; 
		        exmem_if.imm_o <= exmem_if.imm_i; 
		        exmem_if.halt_o <= exmem_if.halt_i; 
		        exmem_if.out_o <= exmem_if.out_i; 
		        exmem_if.instr_o <= exmem_if.instr_i;
		        exmem_if.jal_o <= exmem_if.jal_i; 
		        exmem_if.lui_o <= exmem_if.lui_i; 
		        exmem_if.rd_o <= exmem_if.rd_i; 
		        exmem_if.rt_o <= exmem_if.rt_i;	
		        exmem_if.imemREN_o <= exmem_if.imemREN_i; 
					
		end
	end
	

end

endmodule
