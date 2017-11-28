/*
  Eric Villasenor
  evillase@gmail.com

  datapath contains register file, control, hazard,
  muxes, and glue logic for processor
*/

// data path interface
`include "datapath_cache_if.vh"

//other interfaces
`include "alu_file_if.vh"
`include "control_unit_if.vh"
`include "register_file_if.vh"
`include "if_id_if.vh"
`include "id_ex_if.vh"
`include "ex_mem_if.vh"
`include "mem_wb_if.vh"
`include "hazard_unit_if.vh"
`include "forward_unit_if.vh"
// alu_file op, mips op, and instruction type
`include "cpu_types_pkg.vh"

module datapath (
  input logic CLK, 
  input logic nRST,
  datapath_cache_if.dp dpif
);
  // import types
  import cpu_types_pkg::*;

  word_t jumpAddr;
  word_t branchAddr;
  word_t pc, new_pc, nextpc;
  logic [13:0] signExt;
  word_t rdat1, rdat2;

  alu_file_if aluif();
  register_file_if rfif();
  control_unit_if cuif();
  if_id_if ifid_if();
  id_ex_if idex_if();
  ex_mem_if exmem_if();
  mem_wb_if memwb_if();
  hazard_unit_if huif();
  forward_unit_if fuif();
  // pc init
  parameter PC_INIT = 0;

  alu_file ALU (aluif);
  register_file RF (CLK, nRST, rfif);
  control_unit CU (cuif);
  if_id IFID (CLK, nRST, ifid_if);
  id_ex IDEX (CLK, nRST, idex_if);
  ex_mem EXMEM (CLK, nRST, exmem_if);
  mem_wb MEMWB (CLK, nRST, memwb_if);
  hazard_unit HU (huif);
  forward_unit FU (fuif);
  //data path
  assign dpif.dmemstore = exmem_if.rdat2_o;
  assign dpif.dmemaddr = exmem_if.out_o;
  assign dpif.imemREN = 1;
  assign dpif.imemaddr = pc;
  assign dpif.dmemREN = exmem_if.dREN_o;
  assign dpif.dmemWEN = exmem_if.dWEN_o;
  //instruction set
  assign cuif.instr = ifid_if.instr_o;
  logic nextHalt;
  //halt and pc flip flop
  always_ff @(posedge CLK, negedge nRST) begin
	if (nRST == 1'b0) begin
		dpif.halt <= 0;
		pc <= PC_INIT;
	end
	else begin
		dpif.halt <= nextHalt;
		if (dpif.ihit == 1'b1 && huif.freeze == 1'b0) begin
			pc <= new_pc;
		end
 	end
  end

  always_comb begin
	if (memwb_if.halt_i == 1) begin
		nextHalt = 1;
	end
	else begin
		nextHalt = dpif.halt;
	end
  end
	
  //pc
  always_comb begin

       	nextpc = pc + 4; 
   
	if (idex_if.jumpSel_o == 2'b00) begin
		new_pc = nextpc;
	end
	else if (idex_if.jumpSel_o == 2'b01) begin
		new_pc = jumpAddr;
	end
	else if (idex_if.jumpSel_o == 2'b10) begin
		new_pc = idex_if.rdat1_o;
	end
	else begin
		new_pc = branchAddr;
	end
  end

  //rdat
  always_comb begin
	if (fuif.rdat1_ow== 1'b1) begin
		rdat1 = fuif.rsReplace;
	end
	else begin
		rdat1 = idex_if.rdat1_o;
	end
	if (fuif.rdat2_ow == 1'b1) begin
		rdat2 = fuif.rtReplace;
	end
	else begin
		rdat2 = idex_if.rdat2_o;
	end
  end

  //alu_file
  always_comb begin

	aluif.port_a = rdat1;
	aluif.aluop = idex_if.aluop_o;

	if (idex_if.ALUSel_o == 2'b00) begin
		aluif.port_b = rdat2;
	end
	else if (idex_if.ALUSel_o == 2'b01) begin
		aluif.port_b = idex_if.shamt_o;
	end
	else if (idex_if.ALUSel_o == 2'b10 && idex_if.imm_o[15] == 1'b1) begin
		aluif.port_b = {16'hffff, idex_if.imm_o};
	end
	else begin
		aluif.port_b = {16'h0000, idex_if.imm_o};
	end
  end

  //register file

  always_comb begin

	rfif.rsel1 = cuif.rs;
	rfif.rsel2 = cuif.rt;
	rfif.WEN = memwb_if.regWEN_o;

	if (memwb_if.lui_o == 1'b1) begin
		rfif.wdat = {memwb_if.imm_o, 16'b0};
	end
	else if (memwb_if.jal_o == 1'b1) begin
		rfif.wdat = memwb_if.next_pc_o;
	end
	else if (memwb_if.memToReg_o == 1'b1) begin
		rfif.wdat = memwb_if.dmemload_o;
	end
	else begin
		rfif.wdat = memwb_if.out_o;
	end

	if (memwb_if.RegDest_o == 2'b00) begin
		rfif.wsel = memwb_if.rd_o;
	end
	else if (memwb_if.RegDest_o == 2'b01) begin
		rfif.wsel = memwb_if.rt_o;
	end
	else begin
		rfif.wsel = 5'b11111;
	end

  end

  //jumpAddr and zeroExt
  //signExt and branchAddr
  always_comb begin

	jumpAddr = {idex_if.next_pc_o[31:28], idex_if.imm_26_o, 2'b00};
	
	if (idex_if.imm_o[15] == 1) begin
		signExt = 14'b11111111111111;
	end 
	else begin
		signExt = 14'b00000000000000;
	end

	if (huif.flush == 1'b1) begin
		branchAddr = (idex_if.next_pc_o + {signExt, idex_if.imm_o, 2'b00});
	end
	else begin		
		branchAddr = nextpc;
	end
  end

  //if_id
  always_comb begin
	ifid_if.instr_i = dpif.imemload;
	ifid_if.next_pc_i = nextpc;
	ifid_if.ihit = dpif.ihit;
	ifid_if.flush = huif.flush;
	ifid_if.freeze = huif.freeze;
  end
  //id_ex
  always_comb begin
	idex_if.rdat1_i = rfif.rdat1;
	idex_if.rdat2_i = rfif.rdat2;
	idex_if.next_pc_i = ifid_if.next_pc_o;
	idex_if.aluop_i = cuif.aluop;
	idex_if.shamt_i = cuif.shamt;
	idex_if.ihit = dpif.ihit;
	idex_if.flush = huif.flush;
	idex_if.freeze = huif.freeze;
	idex_if.ALUSel_i = cuif.ALUSel;
	idex_if.RegDest_i = cuif.RegDest;
	idex_if.jumpSel_i = cuif.JumpSel;
	idex_if.PCSel_i = cuif.PCSel;
	idex_if.memToReg_i = cuif.memtoReg;
	idex_if.lui_i = cuif.lui;
	idex_if.bne_i = cuif.bne;
	idex_if.halt_i = cuif.halt;
	idex_if.rd_i = cuif.rd;
	idex_if.rt_i = cuif.rt;
	idex_if.rs_i = cuif.rs;
	idex_if.imm_i = cuif.imm;
	idex_if.imm_26_i = cuif.imm_26;
	idex_if.regWEN_i = cuif.regWEN;
	idex_if.jal_i = cuif.jal;
	idex_if.dREN_i = cuif.dREN;
	idex_if.dWEN_i = cuif.dWEN;
	idex_if.imemREN_i = cuif.imemREN;
	idex_if.instr_i = ifid_if.instr_o;
  end

  //ex_mem
  always_comb begin
	exmem_if.ihit = dpif.ihit;
	exmem_if.dhit = dpif.dhit;
	exmem_if.rdat2_i = rdat2;	
	exmem_if.lui_i = idex_if.lui_o;
	exmem_if.rd_i = idex_if.rd_o;
	exmem_if.rt_i = idex_if.rt_o;
	exmem_if.imm_i = idex_if.imm_o;
	exmem_if.halt_i = idex_if.halt_o;
	exmem_if.out_i = aluif.out;
	exmem_if.next_pc_i = idex_if.next_pc_o;
	exmem_if.memToReg_i = idex_if.memToReg_o;
	exmem_if.regWEN_i = idex_if.regWEN_o;
	exmem_if.RegDest_i = idex_if.RegDest_o;
	exmem_if.jal_i = idex_if.jal_o;
	exmem_if.dREN_i = idex_if.dREN_o;
	exmem_if.dWEN_i = idex_if.dWEN_o;
	exmem_if.imemREN_i = idex_if.imemREN_o;
	exmem_if.instr_i = idex_if.instr_o;
  end

  //mem_wb
  always_comb begin
	memwb_if.ihit = dpif.ihit;
	memwb_if.dhit = dpif.dhit;
	memwb_if.next_pc_i = exmem_if.next_pc_o;
	memwb_if.memToReg_i = exmem_if.memToReg_o;
	memwb_if.regWEN_i = exmem_if.regWEN_o;
	memwb_if.RegDest_i = exmem_if.RegDest_o;
	memwb_if.jal_i = exmem_if.jal_o;
	memwb_if.imemREN_i = exmem_if.imemREN_o;
	memwb_if.lui_i = exmem_if.lui_o;
	memwb_if.rd_i = exmem_if.rd_o;
	memwb_if.rt_i = exmem_if.rt_o;
	memwb_if.imm_i = exmem_if.imm_o;
	memwb_if.halt_i = exmem_if.halt_o;
	memwb_if.out_i = exmem_if.out_o;
	memwb_if.dmemload_i = dpif.dmemload;
	memwb_if.instr_i = exmem_if.instr_o;

  end

//hazard

always_comb begin
	huif.PCSel = idex_if.PCSel_o;
	huif.bne = idex_if.bne_o;
	huif.zero = aluif.zero;
	huif.dhit = dpif.dhit;
	huif.instr = idex_if.instr_o;	
	huif.JumpSel = idex_if.jumpSel_o;
	huif.rs = cuif.rs;
	huif.rt = cuif.rt;
	huif.regWEN = exmem_if.regWEN_o;
	huif.rw = fuif.rwMEM;
end

//forward 
always_comb begin
	fuif.rs = idex_if.rs_o;
	fuif.rt = idex_if.rt_o;
	fuif.regWENmem = exmem_if.regWEN_o;
	fuif.regWENwb = memwb_if.regWEN_o;
	fuif.wb_data = rfif.wdat;

	if(memwb_if.lui_i == 1'b1) begin
		fuif.mem_data = {memwb_if.imm_i, 16'b0};
	end
 	else if(memwb_if.jal_i == 1'b1) begin
		fuif.mem_data = memwb_if.next_pc_i;
	end
	else if(memwb_if.memToReg_i == 1'b1) begin
		fuif.mem_data = memwb_if.dmemload_i;
	end
	else begin
		fuif.mem_data = memwb_if.out_i;
	end

	if(memwb_if.RegDest_o == 1) begin
		fuif.rwWB = memwb_if.rt_o;
	end	
	else if (memwb_if.RegDest_o == 0) begin
		fuif.rwWB = memwb_if.rd_o;
	end
	else begin
		fuif.rwWB = 5'b11111;
	end

	if (memwb_if.RegDest_i == 1) begin
		fuif.rwMEM = memwb_if.rt_i;
	end
	else if (memwb_if.RegDest_i == 0) begin
		fuif.rwMEM = memwb_if.rd_i;
	end
	else begin
		fuif.rwMEM = 5'b11111;
	end


end

//datomic

always_comb begin
	if (exmem_if.instr_o[31:26] == LL) begin
		dpif.datomic = 1;
	end
	else if (exmem_if.instr_o[31:26] == SC) begin
		dpif.datomic = 1;
	end
	else begin
		dpif.datomic = 0;
	end
end

endmodule 
