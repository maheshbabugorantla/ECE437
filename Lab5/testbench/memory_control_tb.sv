/* memory_control_tb Zane Johnson */

// interface include
`include "cache_control_if.vh"
`include "cpu_ram_if.vh"
`include "caches_if.vh"
// memory types
`include "cpu_types_pkg.vh"

// type import
import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb;

  parameter PERIOD = 10;

  logic CLK = 0, nRST;

  // clock
  always #(PERIOD/2) CLK++;

  // interface
  cpu_ram_if ramif();
  caches_if cif();
  cache_control_if #(.CPUS(1)) ccif(cif, cif);
 
assign ramif.ramaddr = ccif.ramaddr;
assign ramif.ramstore = ccif.ramstore;
assign ramif.ramWEN = ccif.ramWEN;
assign ramif.ramREN = ccif.ramREN;
assign ccif.ramload = ramif.ramload;
assign ccif.ramstate = ramif.ramstate;
  
 test PROG(CLK, nRST, cif);

  // DUT
`ifndef MAPPED
  ram ram_DUT(CLK,nRST, ramif);
  memory_control mem_DUT(CLK, nRST, ccif);
`endif

endmodule

program test(input logic CLK, output logic nRST, caches_if cif);

  parameter PERIOD = 10;	
  initial begin

	nRST = 1'b1;
	@(posedge CLK);	

	cif.daddr = '0;
	cif.dstore = '0;
	cif.iaddr = '0;
	cif.dREN = 0;
	cif.iREN = 0;
	cif.dWEN = 0;

	#(PERIOD);
	#(PERIOD);
	
	cif.daddr = '0;
	cif.dstore = '0;
	cif.iaddr = '0;
	cif.dREN = 0;
	cif.iREN = 1;
	cif.dWEN = 0;

	//fetch instruction
	for (int incr = 0; incr < 4; incr++) begin
		cif.iaddr = cif.iaddr + 4;
		#(PERIOD);
	end

	#(PERIOD);
	#(PERIOD);
	
	cif.daddr = '0;
	cif.dstore = 32'habcdefab;
	cif.iaddr = '0;
	cif.dREN = 0;
	cif.iREN = 0;
	cif.dWEN = 1;

	//write data
	for (int incr = 0; incr < 4; incr++) begin
		#(PERIOD);
		#(PERIOD);
		cif.dstore = cif.dstore + 1;
		cif.daddr = cif.daddr + 4;
	end

	cif.daddr = 32'h000000F0;
	cif.dREN = 1;
	cif.iREN = 0;
	cif.dWEN = 0;

	//read data
	for (int incr = 0; incr < 4; incr++) begin
		#(PERIOD);
		cif.daddr = cif.daddr << 2;
	end
	
	dump_memory();
  end


task automatic dump_memory();
    string filename = "memcpu.hex";
    int memfd;

    cif.daddr = 0;
    cif.dWEN = 0;
    cif.dREN = 0;

    memfd = $fopen(filename,"w");
    if (memfd)
      $display("Starting memory dump.");
    else
      begin $display("Failed to open %s.",filename); $finish; end

    for (int unsigned i = 0; memfd && i < 16384; i++)
    begin
      int chksum = 0;
      bit [7:0][7:0] values;
      string ihex;

      cif.daddr = i << 2;
      cif.dREN = 1;
      repeat (4) @(posedge CLK);
      if (cif.dload === 0)
        continue;
      values = {8'h04,16'(i),8'h00,cif.dload};
      foreach (values[j])
        chksum += values[j];
      chksum = 16'h100 - chksum;
      ihex = $sformatf(":04%h00%h%h",16'(i),cif.dload,8'(chksum));
      $fdisplay(memfd,"%s",ihex.toupper());
    end //for
    if (memfd)
    begin
      cif.dREN = 0;
      $fdisplay(memfd,":00000001FF");
      $fclose(memfd);
      $display("Finished memory dump.");
    end
  endtask


endprogram

