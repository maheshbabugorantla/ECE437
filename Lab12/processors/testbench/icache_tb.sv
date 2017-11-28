`include "caches_if.vh"
`include "datapath_cache_if.vh"
`include "cpu_types_pkg.vh"

`timescale 1 ns / 1 ns

module icache_tb;

  parameter PERIOD = 10;
  logic CLK = 0, nRST;

  always #(PERIOD/2) CLK++;

  // interface delcaration
  caches_if cif ();
  datapath_cache_if dcif ();
  // test program setup
  test PROG ();

  icache DUT(CLK, nRST, cif, dcif);

endmodule

program test;

import cpu_types_pkg::*;

initial begin

  int testNum;

  icache_tb.nRST = 1;
  icache_tb.dcif.imemaddr = '0;
  icache_tb.dcif.halt = 0;
  icache_tb.dcif.imemREN = 1;
  icache_tb.dcif.dmemREN = 0;
  icache_tb.dcif.dmemWEN = 0;
  icache_tb.dcif.datomic = 0;
  icache_tb.dcif.dmemstore = 0;
  icache_tb.dcif.dmemaddr = 0;
  icache_tb.dcif.imemaddr = 0;
  icache_tb.cif.dwait = 0;
  icache_tb.cif.dload = 0;
  icache_tb.cif.ccwait = 0;
  icache_tb.cif.ccinv = 0;
  icache_tb.cif.ccsnoopaddr = 0;
  icache_tb.cif.iwait = 1;
  icache_tb.cif.iload = 0;

  icache_tb.nRST = 0;
  #(5);
  icache_tb.nRST = 1;

  //Write to index 1 of icache

  icache_tb.dcif.imemaddr = {26'b11111111111111111111111111 ,6'b000100};
  #(5);
  icache_tb.cif.iload = 32'hABCDEFAB;
  icache_tb.cif.iwait = 0;
  #(15);
  icache_tb.cif.iwait = 1;

  //Write to index 2 of icache

  icache_tb.dcif.imemaddr = {26'b11111111111111111111111111 ,6'b001000};
  #(5);
  icache_tb.cif.iload = 32'h12345678;
  icache_tb.cif.iwait = 0;
  #(15);
  icache_tb.cif.iwait = 1;

  //Write to index 3 of icache

  icache_tb.dcif.imemaddr = {26'b11111111111111111111111111 ,6'b001100};
  icache_tb.cif.iload = 32'h10101010;
  icache_tb.cif.iwait = 0;
  icache_tb.dcif.imemREN = 1;
  #(10);

  //tag match, fetch value from reg 1
  
  icache_tb.dcif.imemaddr = {26'b11111111111111111111111111 ,6'b000100};
  icache_tb.cif.iload = 32'h00000000;
  icache_tb.cif.iwait = 1;
  icache_tb.dcif.imemREN = 1;
  #(5);
  testNum = 1;
  if (dcif.ihit == 1 && cif.iREN == 0 && cif.iaddr == 0 && dcif.imemload == 32'hABCDEFAB) begin
	$display("Testcase %1d passed.", testNum);
  end
  else begin
	$display("Testcase %1d passed.", testNum);
  end
  #(5)

  //tag mismatch, fetch value from reg 2
 
  icache_tb.dcif.imemaddr = {26'b11111111111111111111111110 ,6'b001000};
  icache_tb.cif.iload = 32'hDEADBEEF;
  icache_tb.cif.iwait = 0;
  icache_tb.dcif.imemREN = 1;
  #(5);
   testNum = 2;
  if (dcif.ihit == 1 && cif.iREN == 1 && cif.iaddr == {26'b11111111111111111111111110 ,6'b001000} && dcif.imemload == 32'hDEADBEEF) begin
	$display("Testcase %1d passed.", testNum);
  end
  else begin
	$display("Testcase %1d passed.", testNum);
  end
  #(5)

  //no tag match, imemREN = 0
  
  icache_tb.dcif.imemaddr = {26'b11111111111111111111111111 ,6'b000100};
  icache_tb.cif.iload = 32'h00000000;
  icache_tb.cif.iwait = 1;
  icache_tb.dcif.imemREN = 0;
  #(5);
  testNum = 3;  
  if (dcif.ihit == 0 && cif.iREN == 0 && cif.iaddr == 0 && dcif.imemload == 0) begin
	$display("Testcase %1d passed.", testNum);
  end
  else begin
	$display("Testcase %1d passed.", testNum);
  end
  #(5)
  #(30);
end  





endprogram
