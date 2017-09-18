
/*
	Author: Mahesh Babu Gorantla
	Course: ECE 437, Fall 2017
	Description: Testbench to test the functionality of memory_control module
*/

// Include RAM and Cache Control Interfaces
`include "./include/cpu_ram_if.vh"
`include "./include/cache_control_if.vh"
`include "./include/system_if.vh"

// Include the CPU Package for memory types
`include "./include/cpu_types_pkg.vh"

import cpu_types_pkg::*;

// mapped timing needs this. 1ns is too fast
`timescale 1 ns / 1 ns

module memory_control_tb;

	parameter PERIOD = 10; // 10 ns of Clock Period

	logic CLK = 0, nRST;
	
	// Clock Generation Block
	always
	begin
		CLK = 0;
		#(PERIOD/2);		
		CLK = 1;
		#(PERIOD/2);
	end

	// Interface Instances
	cpu_ram_if cpu_ram ();

	// coherence interface
	caches_if  cif0();

    // cif1 will not be used, but ccif expects it as an input
    caches_if    cif1();

	cache_control_if    #(.CPUS(1))    cctrlif (cif0, cif1);

	system_if syif();

	// Connect the Outputs of the cache_control to ram block
	assign cpu_ram.memstore = cctrlif.ramstore;
	assign cpu_ram.memaddr = cctrlif.ramaddr;
	assign cpu_ram.memWEN = cctrlif.ramWEN;
	assign cpu_ram.memREN = cctrlif.ramREN;

	// Connect the outputs of ram block to the Cache Control
	assign cctrlif.ramstate = cpu_ram.ramstate;
	assign cctrlif.ramload = cpu_ram.ramload;

	// Test Program
	test PROG(CLK, nRST, cif0, syif);
	//test PROG(CLK, nRST, cif0);

	// DUTs for Memory Controller and RAM
	memory_control mctlr(CLK, nRST, cctrlif);
	ram ram_dut(CLK, nRST, cpu_ram);

	/*// MAPPED
	`ifndef MAPPED
	  cache_control_if DUT(cctrlif);
	`else
	  cache_control_if DUT(
	    .\ccif.dwait (cctrlif.dwait),
	    .\ccif.dload (cctrlif.dload),
	    .\ccif.iwait (cctrlif.iwait),
	    .\ccif.iload (cctrlif.iload),
	    .\ccif.dREN (cctrlif.dREN),
	    .\ccif.dWEN (cctrlif.dWEN),
	    .\ccif.daddr (cctrlif.daddr),
	    .\ccif.dstore (cctrlif.dstore),
	    .\ccif.iREN (cctrlif.iREN),
	    .\ccif.iaddr (cctrlif.iaddr)
	  );
	`endif

	`ifndef MAPPED
	  ram DUT1(cpu_ram);
	`else
	  ram DUT1(
	    .\ramif.ramaddr (cpu_ram.ramaddr),
	    .\ramif.ramstore (cpu_ram.ramstore),
	    .\ramif.ramload (cpu_ram.ramload),
	    .\ramif.ramstate (cpu_ram.ramstate),
	    .\ramif.ramREN (cpu_ram.ramREN),
	    .\ramif.ramWEN (cpu_ram.ramWEN)
	  );
	`endif */

  assign syif.load = cpu_ram.ramload;

  // who has ram control
  assign cpu_ram.ramWEN = (syif.tbCTRL) ? syif.WEN : cpu_ram.memWEN;
  assign cpu_ram.ramREN = (syif.tbCTRL) ? syif.REN : cpu_ram.memREN;
  assign cpu_ram.ramaddr = (syif.tbCTRL) ? syif.addr : cpu_ram.memaddr;
  assign cpu_ram.ramstore = (syif.tbCTRL) ? syif.store : cpu_ram.memstore;

endmodule

program test(
	input logic CLK,
	output logic nRST,
	caches_if cif0,
	system_if syif
);
	
	parameter WAIT = 10; // 10ns wait

	integer memdump_ptr;

	initial
	begin

		syif.tbCTRL = 0;

		// Reset Block
		#(WAIT);
		nRST = 0; // Active Low Reset
		#(WAIT);
		#(WAIT/2);
		nRST = 1;
		cif0.iaddr = '0;
		cif0.daddr = '0;
		cif0.iREN = '0;
		cif0.dREN = '0;
		cif0.dWEN = '0;
		#(WAIT);

		// Write data to 10 locations starting from 0x0010
		$display("Write data to 5 consecutive locations starting from 0x0010");

		for(int i = 0; i < 5; i++)
		begin
			cif0.daddr = i << 2 + 16'h0001;
			cif0.dWEN = 1'b1;
			cif0.dREN = 1'b0;
			cif0.iREN = 1'b0;
			cif0.dstore = i + 16'h0080;
			#(WAIT); // For the data to be stored
			#(WAIT);
		end

		// Write the contents to the memdump file
		$display("Start to dump the memory contents");
		memdump_ptr = $fopen("memdump_out_1.txt", "w");

		// Write code to display the 0x00000001 contents

		for(int i = 0; i < 20; i++)
		begin

			cif0.iaddr = i << 2;
	    	cif0.dWEN = 1'b0;
	    	cif0.dREN = 1'b0;
		    cif0.iREN = 1'b1;
	    	#(WAIT);
			$fdisplay(memdump_ptr,"Address: 0x%h, Data: 0x%h", i << 2, cif0.dload);
		end

		$fclose(memdump_ptr); // Need to close the File Ptr to save the contents


		// Checking for the Memory Arbitration => This block should evaluate

		// Storing Data which will be read as instruction later
		for(int i=0; i < 10; i++)
		begin
			cif0.daddr = i + 16'h0004;
			cif0.dWEN = 1'b1;
			cif0.dREN = 1'b0;
			cif0.iREN = 1'b0;
			cif0.dstore = i + 16'h00A0; // Instruction Being Stored
			#(WAIT);
			#(WAIT);
		end

/*		// Write the contents to the memdump file
		$display("Start to dump the memory contents");
		memdump_ptr = $fopen("memdump_out_3.txt", "w");

		// Write code to display the 0x00000001 contents
		for(int i = 0; i < 20; i++)
		begin
			cif0.iaddr = i;
			cif0.dWEN = 1'b0;
			cif0.dREN = 1'b0;
		    cif0.iREN = 1'b1;
			#(WAIT);
			$fdisplay(memdump_ptr,"Address: 0x%h, Data: 0x%h", i, cif0.dload);
		end */

		// INSTRUCTION FETCH 
		for(int i=0; i < 10; i++)
		begin
			cif0.iaddr = i << 2 + 16'h0004;
			cif0.dWEN = 1'b0;
			cif0.dREN = 1'b0;
			cif0.iREN = 1'b1;
			// cif0.dstore = i + 16'h00A0; // Instruction Being Stored
			#(WAIT);
			#(WAIT);
		end

		// Write the contents to the memdump file
		$display("Start to dump the memory contents");
		memdump_ptr = $fopen("memdump_out_2.txt", "w");

		// Write code to display the 0x00000001 contents
		for(int i = 0; i < 30; i++)
		begin
			cif0.iaddr = i;
			cif0.dWEN = 1'b0;
			cif0.dREN = 1'b0;
		    cif0.iREN = 1'b1;
			#(WAIT);
			$fdisplay(memdump_ptr,"Address: 0x%h, Data: 0x%h", i, cif0.iload);
		end
		$fclose(memdump_ptr); // Need to close the File Ptr to save the contents

		dump_memory();

	end

	task automatic dump_memory();
    string filename = "memcpu.hex";
    int memfd;

    syif.tbCTRL = 1;
    syif.addr = 0;
    syif.WEN = 0;
    syif.REN = 0;

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

      syif.addr = i << 2;
      syif.REN = 1;
      repeat (4) @(posedge CLK);
      if (syif.load === 0)
        continue;
      values = {8'h04,16'(i),8'h00,syif.load};
      foreach (values[j])
        chksum += values[j];
      chksum = 16'h100 - chksum;
      ihex = $sformatf(":04%h00%h%h",16'(i),syif.load,8'(chksum));
      $fdisplay(memfd,"%s",ihex.toupper());
    end //for
    if (memfd)
    begin
      syif.tbCTRL = 0;
      syif.REN = 0;
      $fdisplay(memfd,":00000001FF");
      $fclose(memfd);
      $display("Finished memory dump.");
    end
  endtask

endprogram