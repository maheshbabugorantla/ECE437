// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II 64-Bit"
// VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

// DATE "08/23/2017 18:25:08"

// 
// Device: Altera EP4CE115F29C8 Package FBGA780
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module alu (
	\my_alu.outputPort ,
	\my_alu.zero ,
	\my_alu.overflow ,
	\my_alu.negative ,
	\my_alu.aluOp ,
	\my_alu.portB ,
	\my_alu.portA );
output 	[31:0] \my_alu.outputPort ;
output 	\my_alu.zero ;
output 	\my_alu.overflow ;
output 	\my_alu.negative ;
input 	[3:0] \my_alu.aluOp ;
input 	[31:0] \my_alu.portB ;
input 	[31:0] \my_alu.portA ;

// Design Ports Information
// my_alu.outputPort[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[1]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[2]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[3]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[4]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[5]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[7]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[8]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[11]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[12]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[13]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[15]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[16]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[18]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[19]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[20]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[21]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[22]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[23]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[24]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[25]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[26]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[27]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[28]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[29]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[30]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.outputPort[31]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.zero	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.overflow	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.negative	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.aluOp[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.aluOp[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.aluOp[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.aluOp[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[31]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[31]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[30]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[30]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[29]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[29]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[28]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[28]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[27]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[27]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[26]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[25]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[25]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[24]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[24]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[23]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[22]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[22]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[21]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[21]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[20]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[20]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[19]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[19]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[18]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[18]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[17]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[17]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[16]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[16]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[15]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[15]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[14]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[14]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[13]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[12]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[11]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[10]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[10]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[9]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[9]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[7]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[6]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[5]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[4]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[4]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[2]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portA[1]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// my_alu.portB[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire \LessThan0~1_cout ;
wire \LessThan0~3_cout ;
wire \LessThan0~5_cout ;
wire \LessThan0~7_cout ;
wire \LessThan0~9_cout ;
wire \LessThan0~11_cout ;
wire \LessThan0~13_cout ;
wire \LessThan0~15_cout ;
wire \LessThan0~17_cout ;
wire \LessThan0~19_cout ;
wire \LessThan0~21_cout ;
wire \LessThan0~23_cout ;
wire \LessThan0~25_cout ;
wire \LessThan0~27_cout ;
wire \LessThan0~29_cout ;
wire \LessThan0~31_cout ;
wire \LessThan0~33_cout ;
wire \LessThan0~35_cout ;
wire \LessThan0~37_cout ;
wire \LessThan0~39_cout ;
wire \LessThan0~41_cout ;
wire \LessThan0~43_cout ;
wire \LessThan0~45_cout ;
wire \LessThan0~47_cout ;
wire \LessThan0~49_cout ;
wire \LessThan0~51_cout ;
wire \LessThan0~53_cout ;
wire \LessThan0~55_cout ;
wire \LessThan0~57_cout ;
wire \LessThan0~59_cout ;
wire \LessThan0~61_cout ;
wire \LessThan0~62_combout ;
wire \Add1~0_combout ;
wire \Add0~4_combout ;
wire \Add1~4_combout ;
wire \Add0~8_combout ;
wire \Add0~10_combout ;
wire \Add0~12_combout ;
wire \Add1~14_combout ;
wire \Add0~16_combout ;
wire \Add1~16_combout ;
wire \Add1~18_combout ;
wire \Add1~20_combout ;
wire \Add0~22_combout ;
wire \Add1~22_combout ;
wire \Add1~24_combout ;
wire \Add1~26_combout ;
wire \Add0~28_combout ;
wire \Add0~32_combout ;
wire \Add1~32_combout ;
wire \Add0~34_combout ;
wire \Add0~36_combout ;
wire \Add1~36_combout ;
wire \Add0~38_combout ;
wire \Add1~38_combout ;
wire \Add0~40_combout ;
wire \Add1~40_combout ;
wire \Add1~44_combout ;
wire \Add1~48_combout ;
wire \Add1~50_combout ;
wire \Add0~56_combout ;
wire \Add1~56_combout ;
wire \Add0~58_combout ;
wire \Add1~58_combout ;
wire \Add1~60_combout ;
wire \Selector31~14_combout ;
wire \ShiftRight0~3_combout ;
wire \ShiftRight0~5_combout ;
wire \ShiftRight0~14_combout ;
wire \ShiftRight0~15_combout ;
wire \ShiftRight0~16_combout ;
wire \ShiftRight0~20_combout ;
wire \ShiftRight0~23_combout ;
wire \ShiftRight0~27_combout ;
wire \ShiftRight0~28_combout ;
wire \Selector31~17_combout ;
wire \ShiftLeft0~2_combout ;
wire \ShiftLeft0~5_combout ;
wire \Selector30~4_combout ;
wire \ShiftRight0~50_combout ;
wire \ShiftRight0~52_combout ;
wire \ShiftRight0~54_combout ;
wire \Selector29~1_combout ;
wire \ShiftRight0~59_combout ;
wire \Selector29~2_combout ;
wire \Selector29~6_combout ;
wire \ShiftRight0~61_combout ;
wire \ShiftRight0~65_combout ;
wire \Selector21~2_combout ;
wire \ShiftLeft0~14_combout ;
wire \Selector28~4_combout ;
wire \ShiftRight0~73_combout ;
wire \ShiftRight0~80_combout ;
wire \ShiftLeft0~22_combout ;
wire \Selector25~3_combout ;
wire \Selector25~4_combout ;
wire \ShiftLeft0~27_combout ;
wire \Selector24~6_combout ;
wire \Selector23~4_combout ;
wire \Selector23~5_combout ;
wire \Selector23~6_combout ;
wire \Selector23~7_combout ;
wire \Selector23~8_combout ;
wire \Selector22~6_combout ;
wire \Selector21~4_combout ;
wire \ShiftLeft0~39_combout ;
wire \ShiftLeft0~40_combout ;
wire \Selector21~6_combout ;
wire \Selector20~4_combout ;
wire \Selector20~5_combout ;
wire \Selector20~6_combout ;
wire \Selector20~7_combout ;
wire \Selector19~6_combout ;
wire \ShiftLeft0~46_combout ;
wire \Selector18~2_combout ;
wire \Selector18~5_combout ;
wire \ShiftLeft0~50_combout ;
wire \Selector17~1_combout ;
wire \Selector17~2_combout ;
wire \Selector16~5_combout ;
wire \Selector15~5_combout ;
wire \Selector15~6_combout ;
wire \Selector15~7_combout ;
wire \Selector9~5_combout ;
wire \Selector13~4_combout ;
wire \Selector13~7_combout ;
wire \ShiftLeft0~64_combout ;
wire \ShiftLeft0~65_combout ;
wire \Selector12~1_combout ;
wire \Selector12~2_combout ;
wire \Selector12~3_combout ;
wire \Selector12~4_combout ;
wire \ShiftLeft0~68_combout ;
wire \Selector11~5_combout ;
wire \Selector11~6_combout ;
wire \Selector11~7_combout ;
wire \Selector11~8_combout ;
wire \ShiftLeft0~73_combout ;
wire \Selector10~3_combout ;
wire \Selector10~4_combout ;
wire \Selector9~6_combout ;
wire \ShiftLeft0~78_combout ;
wire \ShiftLeft0~79_combout ;
wire \Selector0~6_combout ;
wire \Selector8~3_combout ;
wire \ShiftLeft0~80_combout ;
wire \ShiftLeft0~81_combout ;
wire \Selector7~4_combout ;
wire \Selector7~5_combout ;
wire \ShiftLeft0~82_combout ;
wire \ShiftLeft0~83_combout ;
wire \Selector6~3_combout ;
wire \ShiftLeft0~84_combout ;
wire \ShiftLeft0~86_combout ;
wire \Selector5~3_combout ;
wire \Selector5~4_combout ;
wire \ShiftLeft0~87_combout ;
wire \ShiftLeft0~88_combout ;
wire \ShiftLeft0~89_combout ;
wire \Selector4~3_combout ;
wire \Selector4~4_combout ;
wire \Selector3~6_combout ;
wire \Selector2~7_combout ;
wire \Selector1~4_combout ;
wire \Selector0~8_combout ;
wire \Selector0~9_combout ;
wire \Equal10~8_combout ;
wire \Equal10~9_combout ;
wire \Selector15~13_combout ;
wire \Selector0~3_combout ;
wire \my_alu.aluOp[3]~input_o ;
wire \my_alu.aluOp[2]~input_o ;
wire \Selector31~10_combout ;
wire \my_alu.aluOp[0]~input_o ;
wire \my_alu.portA[31]~input_o ;
wire \my_alu.portA[30]~input_o ;
wire \my_alu.portA[29]~input_o ;
wire \my_alu.portA[28]~input_o ;
wire \my_alu.portB[27]~input_o ;
wire \my_alu.portB[26]~input_o ;
wire \my_alu.portA[25]~input_o ;
wire \my_alu.portB[24]~input_o ;
wire \my_alu.portA[23]~input_o ;
wire \my_alu.portA[22]~input_o ;
wire \my_alu.portA[21]~input_o ;
wire \my_alu.portB[20]~input_o ;
wire \my_alu.portB[19]~input_o ;
wire \my_alu.portA[18]~input_o ;
wire \my_alu.portA[17]~input_o ;
wire \my_alu.portB[16]~input_o ;
wire \my_alu.portB[15]~input_o ;
wire \my_alu.portB[14]~input_o ;
wire \my_alu.portA[13]~input_o ;
wire \my_alu.portB[12]~input_o ;
wire \my_alu.portB[11]~input_o ;
wire \my_alu.portA[10]~input_o ;
wire \my_alu.portA[9]~input_o ;
wire \my_alu.portA[8]~input_o ;
wire \my_alu.portA[7]~input_o ;
wire \my_alu.portB[6]~input_o ;
wire \my_alu.portA[5]~input_o ;
wire \my_alu.portB[4]~input_o ;
wire \my_alu.portB[3]~input_o ;
wire \my_alu.portA[2]~input_o ;
wire \my_alu.portA[1]~input_o ;
wire \my_alu.portA[0]~input_o ;
wire \LessThan1~1_cout ;
wire \LessThan1~3_cout ;
wire \LessThan1~5_cout ;
wire \LessThan1~7_cout ;
wire \LessThan1~9_cout ;
wire \LessThan1~11_cout ;
wire \LessThan1~13_cout ;
wire \LessThan1~15_cout ;
wire \LessThan1~17_cout ;
wire \LessThan1~19_cout ;
wire \LessThan1~21_cout ;
wire \LessThan1~23_cout ;
wire \LessThan1~25_cout ;
wire \LessThan1~27_cout ;
wire \LessThan1~29_cout ;
wire \LessThan1~31_cout ;
wire \LessThan1~33_cout ;
wire \LessThan1~35_cout ;
wire \LessThan1~37_cout ;
wire \LessThan1~39_cout ;
wire \LessThan1~41_cout ;
wire \LessThan1~43_cout ;
wire \LessThan1~45_cout ;
wire \LessThan1~47_cout ;
wire \LessThan1~49_cout ;
wire \LessThan1~51_cout ;
wire \LessThan1~53_cout ;
wire \LessThan1~55_cout ;
wire \LessThan1~57_cout ;
wire \LessThan1~59_cout ;
wire \LessThan1~61_cout ;
wire \LessThan1~62_combout ;
wire \Selector31~11_combout ;
wire \my_alu.aluOp[1]~input_o ;
wire \Selector31~15_combout ;
wire \my_alu.portB[0]~input_o ;
wire \Selector31~16_combout ;
wire \my_alu.portB[1]~input_o ;
wire \ShiftLeft0~9_combout ;
wire \Selector31~13_combout ;
wire \Selector31~20_combout ;
wire \Selector31~22_combout ;
wire \my_alu.portB[25]~input_o ;
wire \my_alu.portB[28]~input_o ;
wire \ShiftLeft0~6_combout ;
wire \my_alu.portB[30]~input_o ;
wire \my_alu.portB[31]~input_o ;
wire \my_alu.portB[29]~input_o ;
wire \ShiftLeft0~7_combout ;
wire \my_alu.portB[9]~input_o ;
wire \ShiftLeft0~1_combout ;
wire \my_alu.portB[17]~input_o ;
wire \ShiftLeft0~3_combout ;
wire \my_alu.portB[8]~input_o ;
wire \my_alu.portB[5]~input_o ;
wire \my_alu.portB[7]~input_o ;
wire \ShiftLeft0~0_combout ;
wire \ShiftLeft0~4_combout ;
wire \ShiftLeft0~8_combout ;
wire \Selector31~18_combout ;
wire \Selector31~23_combout ;
wire \Add0~0_combout ;
wire \Selector31~33_combout ;
wire \Selector31~24_combout ;
wire \Selector31~19_combout ;
wire \Selector30~2_combout ;
wire \Add0~1 ;
wire \Add0~2_combout ;
wire \Add1~1 ;
wire \Add1~2_combout ;
wire \Selector31~8_combout ;
wire \Selector30~3_combout ;
wire \Selector30~5_combout ;
wire \Selector31~21_combout ;
wire \Selector30~0_combout ;
wire \ShiftLeft0~10_combout ;
wire \Selector30~1_combout ;
wire \my_alu.portB[2]~input_o ;
wire \ShiftRight0~39_combout ;
wire \ShiftRight0~41_combout ;
wire \ShiftRight0~43_combout ;
wire \ShiftRight0~42_combout ;
wire \ShiftRight0~44_combout ;
wire \ShiftRight0~45_combout ;
wire \ShiftRight0~29_combout ;
wire \ShiftRight0~30_combout ;
wire \my_alu.portA[26]~input_o ;
wire \ShiftRight0~31_combout ;
wire \ShiftRight0~32_combout ;
wire \ShiftRight0~33_combout ;
wire \ShiftRight0~38_combout ;
wire \ShiftRight0~51_combout ;
wire \Selector30~6_combout ;
wire \Selector9~2_combout ;
wire \Selector29~3_combout ;
wire \Selector29~4_combout ;
wire \ShiftRight0~62_combout ;
wire \ShiftRight0~1_combout ;
wire \ShiftRight0~63_combout ;
wire \ShiftRight0~68_combout ;
wire \Selector15~2_combout ;
wire \Selector29~10_combout ;
wire \Selector31~31_combout ;
wire \Selector29~7_combout ;
wire \Selector31~25_combout ;
wire \Selector29~5_combout ;
wire \Selector29~8_combout ;
wire \Selector31~28_combout ;
wire \Selector23~3_combout ;
wire \ShiftLeft0~12_combout ;
wire \ShiftLeft0~13_combout ;
wire \Selector29~9_combout ;
wire \Selector29~11_combout ;
wire \ShiftRight0~74_combout ;
wire \ShiftRight0~75_combout ;
wire \ShiftRight0~76_combout ;
wire \ShiftRight0~79_combout ;
wire \Selector31~27_combout ;
wire \my_alu.portA[3]~input_o ;
wire \Add0~3 ;
wire \Add0~5 ;
wire \Add0~6_combout ;
wire \Add1~3 ;
wire \Add1~5 ;
wire \Add1~6_combout ;
wire \Selector28~3_combout ;
wire \Selector28~2_combout ;
wire \ShiftLeft0~15_combout ;
wire \Selector28~10_combout ;
wire \Selector28~5_combout ;
wire \my_alu.portA[15]~input_o ;
wire \ShiftRight0~56_combout ;
wire \ShiftRight0~11_combout ;
wire \ShiftRight0~70_combout ;
wire \ShiftRight0~72_combout ;
wire \ShiftRight0~53_combout ;
wire \ShiftRight0~69_combout ;
wire \ShiftRight0~55_combout ;
wire \my_alu.portA[4]~input_o ;
wire \ShiftRight0~40_combout ;
wire \Selector28~6_combout ;
wire \Selector28~7_combout ;
wire \Selector28~8_combout ;
wire \Selector28~9_combout ;
wire \Add1~7 ;
wire \Add1~8_combout ;
wire \Selector31~12_combout ;
wire \Selector27~1_combout ;
wire \Selector27~2_combout ;
wire \my_alu.portA[11]~input_o ;
wire \ShiftRight0~24_combout ;
wire \ShiftRight0~25_combout ;
wire \ShiftRight0~26_combout ;
wire \ShiftRight0~17_combout ;
wire \ShiftRight0~18_combout ;
wire \ShiftRight0~19_combout ;
wire \Selector24~2_combout ;
wire \Selector27~3_combout ;
wire \Selector24~1_combout ;
wire \ShiftRight0~7_combout ;
wire \my_alu.portA[20]~input_o ;
wire \ShiftRight0~8_combout ;
wire \ShiftRight0~9_combout ;
wire \ShiftRight0~81_combout ;
wire \ShiftRight0~82_combout ;
wire \Selector27~4_combout ;
wire \ShiftLeft0~16_combout ;
wire \ShiftLeft0~18_combout ;
wire \ShiftLeft0~17_combout ;
wire \ShiftLeft0~19_combout ;
wire \ShiftLeft0~20_combout ;
wire \Selector27~5_combout ;
wire \Selector27~0_combout ;
wire \Selector27~6_combout ;
wire \ShiftLeft0~23_combout ;
wire \my_alu.portA[12]~input_o ;
wire \ShiftRight0~48_combout ;
wire \ShiftRight0~49_combout ;
wire \ShiftRight0~34_combout ;
wire \ShiftRight0~35_combout ;
wire \ShiftRight0~84_combout ;
wire \ShiftRight0~85_combout ;
wire \ShiftRight0~21_combout ;
wire \my_alu.portA[16]~input_o ;
wire \my_alu.portA[14]~input_o ;
wire \ShiftRight0~46_combout ;
wire \ShiftRight0~47_combout ;
wire \my_alu.portA[19]~input_o ;
wire \ShiftRight0~10_combout ;
wire \ShiftRight0~36_combout ;
wire \ShiftRight0~37_combout ;
wire \ShiftRight0~83_combout ;
wire \Selector26~3_combout ;
wire \Selector26~4_combout ;
wire \Selector26~5_combout ;
wire \Selector26~2_combout ;
wire \Selector26~0_combout ;
wire \Add1~9 ;
wire \Add1~10_combout ;
wire \Selector26~1_combout ;
wire \Selector26~6_combout ;
wire \Add1~11 ;
wire \Add1~12_combout ;
wire \Selector25~1_combout ;
wire \Selector31~9_combout ;
wire \my_alu.portA[6]~input_o ;
wire \Selector25~2_combout ;
wire \ShiftLeft0~24_combout ;
wire \ShiftLeft0~21_combout ;
wire \ShiftLeft0~25_combout ;
wire \ShiftLeft0~26_combout ;
wire \Selector24~0_combout ;
wire \Selector25~5_combout ;
wire \Selector25~0_combout ;
wire \Selector25~6_combout ;
wire \Selector24~5_combout ;
wire \Add0~7 ;
wire \Add0~9 ;
wire \Add0~11 ;
wire \Add0~13 ;
wire \Add0~14_combout ;
wire \Selector24~4_combout ;
wire \Selector24~3_combout ;
wire \ShiftRight0~58_combout ;
wire \ShiftRight0~22_combout ;
wire \ShiftRight0~71_combout ;
wire \ShiftRight0~64_combout ;
wire \ShiftRight0~4_combout ;
wire \ShiftRight0~77_combout ;
wire \ShiftRight0~90_combout ;
wire \ShiftRight0~91_combout ;
wire \Selector24~7_combout ;
wire \Selector24~8_combout ;
wire \Selector24~9_combout ;
wire \ShiftRight0~12_combout ;
wire \Selector23~2_combout ;
wire \Selector23~9_combout ;
wire \Selector23~10_combout ;
wire \ShiftLeft0~30_combout ;
wire \ShiftLeft0~31_combout ;
wire \ShiftLeft0~32_combout ;
wire \ShiftLeft0~33_combout ;
wire \Selector23~14_combout ;
wire \ShiftRight0~0_combout ;
wire \ShiftRight0~2_combout ;
wire \ShiftRight0~6_combout ;
wire \Selector23~11_combout ;
wire \Selector23~12_combout ;
wire \Selector22~10_combout ;
wire \Selector22~2_combout ;
wire \Add0~15 ;
wire \Add0~17 ;
wire \Add0~18_combout ;
wire \Selector31~26_combout ;
wire \Selector22~5_combout ;
wire \Selector22~4_combout ;
wire \Selector22~3_combout ;
wire \Selector22~7_combout ;
wire \Selector22~8_combout ;
wire \Selector22~9_combout ;
wire \Selector19~2_combout ;
wire \Selector21~3_combout ;
wire \ShiftRight0~57_combout ;
wire \ShiftRight0~60_combout ;
wire \ShiftLeft0~41_combout ;
wire \Add0~19 ;
wire \Add0~20_combout ;
wire \Selector21~5_combout ;
wire \Selector21~7_combout ;
wire \Selector21~8_combout ;
wire \ShiftRight0~67_combout ;
wire \Selector21~10_combout ;
wire \Selector21~9_combout ;
wire \ShiftRight0~66_combout ;
wire \ShiftRight0~78_combout ;
wire \Selector20~2_combout ;
wire \Selector20~3_combout ;
wire \Selector20~8_combout ;
wire \ShiftLeft0~28_combout ;
wire \ShiftLeft0~44_combout ;
wire \ShiftLeft0~45_combout ;
wire \Selector20~10_combout ;
wire \Selector20~9_combout ;
wire \Selector19~10_combout ;
wire \Selector19~3_combout ;
wire \Selector31~30_combout ;
wire \Selector19~4_combout ;
wire \Add0~21 ;
wire \Add0~23 ;
wire \Add0~24_combout ;
wire \Selector19~5_combout ;
wire \Selector19~7_combout ;
wire \Selector19~8_combout ;
wire \ShiftLeft0~42_combout ;
wire \ShiftLeft0~47_combout ;
wire \Selector11~2_combout ;
wire \ShiftLeft0~48_combout ;
wire \Selector19~9_combout ;
wire \my_alu.portB[13]~input_o ;
wire \Add0~25 ;
wire \Add0~26_combout ;
wire \Selector18~4_combout ;
wire \Selector18~3_combout ;
wire \Selector18~6_combout ;
wire \Selector18~7_combout ;
wire \ShiftLeft0~34_combout ;
wire \ShiftLeft0~35_combout ;
wire \Selector10~2_combout ;
wire \ShiftLeft0~51_combout ;
wire \Selector18~9_combout ;
wire \Selector18~8_combout ;
wire \ShiftLeft0~52_combout ;
wire \ShiftLeft0~49_combout ;
wire \ShiftLeft0~53_combout ;
wire \Selector9~3_combout ;
wire \ShiftLeft0~54_combout ;
wire \ShiftRight0~86_combout ;
wire \Selector17~4_combout ;
wire \my_alu.portB[10]~input_o ;
wire \Add1~13 ;
wire \Add1~15 ;
wire \Add1~17 ;
wire \Add1~19 ;
wire \Add1~21 ;
wire \Add1~23 ;
wire \Add1~25 ;
wire \Add1~27 ;
wire \Add1~28_combout ;
wire \Selector17~3_combout ;
wire \Selector17~5_combout ;
wire \Selector17~6_combout ;
wire \ShiftLeft0~11_combout ;
wire \Selector17~0_combout ;
wire \Selector17~7_combout ;
wire \ShiftLeft0~56_combout ;
wire \ShiftLeft0~38_combout ;
wire \ShiftLeft0~43_combout ;
wire \Selector8~2_combout ;
wire \ShiftLeft0~29_combout ;
wire \ShiftLeft0~57_combout ;
wire \ShiftRight0~89_combout ;
wire \Selector16~2_combout ;
wire \Selector16~3_combout ;
wire \Add0~27 ;
wire \Add0~29 ;
wire \Add0~30_combout ;
wire \Add1~29 ;
wire \Add1~30_combout ;
wire \Selector16~4_combout ;
wire \Selector16~6_combout ;
wire \Selector16~0_combout ;
wire \Selector16~1_combout ;
wire \Selector16~7_combout ;
wire \Selector15~11_combout ;
wire \ShiftLeft0~55_combout ;
wire \ShiftLeft0~58_combout ;
wire \ShiftLeft0~59_combout ;
wire \ShiftLeft0~60_combout ;
wire \ShiftRight0~13_combout ;
wire \Selector31~29_combout ;
wire \Selector15~9_combout ;
wire \Selector31~32_combout ;
wire \Selector15~8_combout ;
wire \Selector15~10_combout ;
wire \Selector23~13_combout ;
wire \Selector15~3_combout ;
wire \Selector9~4_combout ;
wire \Selector15~4_combout ;
wire \Selector15~12_combout ;
wire \Selector14~9_combout ;
wire \ShiftLeft0~61_combout ;
wire \ShiftLeft0~62_combout ;
wire \ShiftLeft0~63_combout ;
wire \Selector14~3_combout ;
wire \Selector14~5_combout ;
wire \Add1~31 ;
wire \Add1~33 ;
wire \Add1~34_combout ;
wire \Selector14~4_combout ;
wire \Selector14~6_combout ;
wire \Selector14~2_combout ;
wire \Selector14~7_combout ;
wire \Selector14~8_combout ;
wire \ShiftLeft0~66_combout ;
wire \Selector13~10_combout ;
wire \Selector13~2_combout ;
wire \my_alu.portB[18]~input_o ;
wire \Selector13~3_combout ;
wire \Selector13~5_combout ;
wire \Selector13~6_combout ;
wire \Selector13~8_combout ;
wire \Selector13~9_combout ;
wire \Selector12~0_combout ;
wire \ShiftLeft0~69_combout ;
wire \Selector12~5_combout ;
wire \Selector12~6_combout ;
wire \Selector12~7_combout ;
wire \ShiftLeft0~67_combout ;
wire \ShiftLeft0~70_combout ;
wire \ShiftLeft0~71_combout ;
wire \ShiftLeft0~72_combout ;
wire \Selector11~4_combout ;
wire \Selector11~9_combout ;
wire \Selector11~11_combout ;
wire \Selector11~3_combout ;
wire \Selector11~10_combout ;
wire \Add0~31 ;
wire \Add0~33 ;
wire \Add0~35 ;
wire \Add0~37 ;
wire \Add0~39 ;
wire \Add0~41 ;
wire \Add0~42_combout ;
wire \my_alu.portB[21]~input_o ;
wire \Add1~35 ;
wire \Add1~37 ;
wire \Add1~39 ;
wire \Add1~41 ;
wire \Add1~42_combout ;
wire \Selector10~5_combout ;
wire \Selector10~6_combout ;
wire \Selector10~7_combout ;
wire \Selector10~8_combout ;
wire \Selector10~10_combout ;
wire \Selector10~9_combout ;
wire \my_alu.portB[22]~input_o ;
wire \Selector9~9_combout ;
wire \Add0~43 ;
wire \Add0~44_combout ;
wire \Selector9~8_combout ;
wire \Selector9~7_combout ;
wire \Selector9~10_combout ;
wire \Selector9~11_combout ;
wire \ShiftRight0~87_combout ;
wire \ShiftRight0~88_combout ;
wire \Selector9~13_combout ;
wire \Selector9~12_combout ;
wire \my_alu.portB[23]~input_o ;
wire \Selector8~6_combout ;
wire \Selector8~4_combout ;
wire \Add0~45 ;
wire \Add0~46_combout ;
wire \Add1~43 ;
wire \Add1~45 ;
wire \Add1~46_combout ;
wire \Selector8~5_combout ;
wire \Selector8~7_combout ;
wire \Selector8~8_combout ;
wire \Selector8~10_combout ;
wire \Selector8~9_combout ;
wire \my_alu.portA[24]~input_o ;
wire \Selector7~2_combout ;
wire \Add0~47 ;
wire \Add0~48_combout ;
wire \Selector7~1_combout ;
wire \Selector7~0_combout ;
wire \Selector7~3_combout ;
wire \Selector7~6_combout ;
wire \Selector7~7_combout ;
wire \Selector7~8_combout ;
wire \Selector6~0_combout ;
wire \Selector6~2_combout ;
wire \ShiftLeft0~36_combout ;
wire \ShiftLeft0~37_combout ;
wire \ShiftLeft0~74_combout ;
wire \Selector6~4_combout ;
wire \Selector6~5_combout ;
wire \Add0~49 ;
wire \Add0~50_combout ;
wire \Selector6~1_combout ;
wire \Selector6~6_combout ;
wire \Selector5~5_combout ;
wire \Selector5~2_combout ;
wire \Add0~51 ;
wire \Add0~52_combout ;
wire \Add1~47 ;
wire \Add1~49 ;
wire \Add1~51 ;
wire \Add1~52_combout ;
wire \Selector5~1_combout ;
wire \Selector5~0_combout ;
wire \Selector5~6_combout ;
wire \my_alu.portA[27]~input_o ;
wire \Add0~53 ;
wire \Add0~54_combout ;
wire \Add1~53 ;
wire \Add1~54_combout ;
wire \Selector4~1_combout ;
wire \Selector4~2_combout ;
wire \Selector4~5_combout ;
wire \Selector4~0_combout ;
wire \Selector4~6_combout ;
wire \Selector3~7_combout ;
wire \Selector3~10_combout ;
wire \Selector3~5_combout ;
wire \Selector3~8_combout ;
wire \Selector2~2_combout ;
wire \Selector29~0_combout ;
wire \ShiftLeft0~90_combout ;
wire \Selector3~2_combout ;
wire \ShiftLeft0~85_combout ;
wire \Selector3~3_combout ;
wire \Selector3~4_combout ;
wire \Selector3~9_combout ;
wire \ShiftLeft0~91_combout ;
wire \Selector2~3_combout ;
wire \ShiftLeft0~75_combout ;
wire \Selector2~4_combout ;
wire \Selector2~5_combout ;
wire \Selector2~6_combout ;
wire \Selector2~11_combout ;
wire \Selector2~8_combout ;
wire \Selector2~9_combout ;
wire \Selector2~10_combout ;
wire \Selector1~0_combout ;
wire \Selector1~6_combout ;
wire \Selector1~7_combout ;
wire \Selector1~8_combout ;
wire \ShiftLeft0~76_combout ;
wire \ShiftLeft0~77_combout ;
wire \Selector1~1_combout ;
wire \Selector1~2_combout ;
wire \Add0~55 ;
wire \Add0~57 ;
wire \Add0~59 ;
wire \Add0~60_combout ;
wire \Selector1~3_combout ;
wire \Selector1~5_combout ;
wire \Selector1~9_combout ;
wire \Selector1~10_combout ;
wire \Selector0~11_combout ;
wire \Selector0~12_combout ;
wire \Selector0~13_combout ;
wire \Selector0~15_combout ;
wire \Add0~61 ;
wire \Add0~62_combout ;
wire \Add1~55 ;
wire \Add1~57 ;
wire \Add1~59 ;
wire \Add1~61 ;
wire \Add1~62_combout ;
wire \Selector0~7_combout ;
wire \Selector0~10_combout ;
wire \Selector0~14_combout ;
wire \Equal10~1_combout ;
wire \Equal10~0_combout ;
wire \Equal10~2_combout ;
wire \Equal10~5_combout ;
wire \Equal10~6_combout ;
wire \Equal10~7_combout ;
wire \Equal10~10_combout ;
wire \Equal10~4_combout ;
wire \Equal10~3_combout ;
wire \Equal10~11_combout ;
wire \overflow~0_combout ;
wire \overflow~1_combout ;


// Location: LCCOMB_X96_Y34_N0
cycloneive_lcell_comb \LessThan0~1 (
// Equation(s):
// \LessThan0~1_cout  = CARRY((!\my_alu.portA[0]~input_o  & \my_alu.portB[0]~input_o ))

	.dataa(\my_alu.portA[0]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\LessThan0~1_cout ));
// synopsys translate_off
defparam \LessThan0~1 .lut_mask = 16'h0044;
defparam \LessThan0~1 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N2
cycloneive_lcell_comb \LessThan0~3 (
// Equation(s):
// \LessThan0~3_cout  = CARRY((\my_alu.portB[1]~input_o  & (\my_alu.portA[1]~input_o  & !\LessThan0~1_cout )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[1]~input_o ) # (!\LessThan0~1_cout ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~1_cout ),
	.combout(),
	.cout(\LessThan0~3_cout ));
// synopsys translate_off
defparam \LessThan0~3 .lut_mask = 16'h004D;
defparam \LessThan0~3 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N4
cycloneive_lcell_comb \LessThan0~5 (
// Equation(s):
// \LessThan0~5_cout  = CARRY((\my_alu.portA[2]~input_o  & (\my_alu.portB[2]~input_o  & !\LessThan0~3_cout )) # (!\my_alu.portA[2]~input_o  & ((\my_alu.portB[2]~input_o ) # (!\LessThan0~3_cout ))))

	.dataa(\my_alu.portA[2]~input_o ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~3_cout ),
	.combout(),
	.cout(\LessThan0~5_cout ));
// synopsys translate_off
defparam \LessThan0~5 .lut_mask = 16'h004D;
defparam \LessThan0~5 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N6
cycloneive_lcell_comb \LessThan0~7 (
// Equation(s):
// \LessThan0~7_cout  = CARRY((\my_alu.portA[3]~input_o  & ((!\LessThan0~5_cout ) # (!\my_alu.portB[3]~input_o ))) # (!\my_alu.portA[3]~input_o  & (!\my_alu.portB[3]~input_o  & !\LessThan0~5_cout )))

	.dataa(\my_alu.portA[3]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~5_cout ),
	.combout(),
	.cout(\LessThan0~7_cout ));
// synopsys translate_off
defparam \LessThan0~7 .lut_mask = 16'h002B;
defparam \LessThan0~7 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N8
cycloneive_lcell_comb \LessThan0~9 (
// Equation(s):
// \LessThan0~9_cout  = CARRY((\my_alu.portB[4]~input_o  & ((!\LessThan0~7_cout ) # (!\my_alu.portA[4]~input_o ))) # (!\my_alu.portB[4]~input_o  & (!\my_alu.portA[4]~input_o  & !\LessThan0~7_cout )))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\my_alu.portA[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~7_cout ),
	.combout(),
	.cout(\LessThan0~9_cout ));
// synopsys translate_off
defparam \LessThan0~9 .lut_mask = 16'h002B;
defparam \LessThan0~9 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N10
cycloneive_lcell_comb \LessThan0~11 (
// Equation(s):
// \LessThan0~11_cout  = CARRY((\my_alu.portB[5]~input_o  & (\my_alu.portA[5]~input_o  & !\LessThan0~9_cout )) # (!\my_alu.portB[5]~input_o  & ((\my_alu.portA[5]~input_o ) # (!\LessThan0~9_cout ))))

	.dataa(\my_alu.portB[5]~input_o ),
	.datab(\my_alu.portA[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~9_cout ),
	.combout(),
	.cout(\LessThan0~11_cout ));
// synopsys translate_off
defparam \LessThan0~11 .lut_mask = 16'h004D;
defparam \LessThan0~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N12
cycloneive_lcell_comb \LessThan0~13 (
// Equation(s):
// \LessThan0~13_cout  = CARRY((\my_alu.portA[6]~input_o  & (\my_alu.portB[6]~input_o  & !\LessThan0~11_cout )) # (!\my_alu.portA[6]~input_o  & ((\my_alu.portB[6]~input_o ) # (!\LessThan0~11_cout ))))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~11_cout ),
	.combout(),
	.cout(\LessThan0~13_cout ));
// synopsys translate_off
defparam \LessThan0~13 .lut_mask = 16'h004D;
defparam \LessThan0~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N14
cycloneive_lcell_comb \LessThan0~15 (
// Equation(s):
// \LessThan0~15_cout  = CARRY((\my_alu.portA[7]~input_o  & ((!\LessThan0~13_cout ) # (!\my_alu.portB[7]~input_o ))) # (!\my_alu.portA[7]~input_o  & (!\my_alu.portB[7]~input_o  & !\LessThan0~13_cout )))

	.dataa(\my_alu.portA[7]~input_o ),
	.datab(\my_alu.portB[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~13_cout ),
	.combout(),
	.cout(\LessThan0~15_cout ));
// synopsys translate_off
defparam \LessThan0~15 .lut_mask = 16'h002B;
defparam \LessThan0~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N16
cycloneive_lcell_comb \LessThan0~17 (
// Equation(s):
// \LessThan0~17_cout  = CARRY((\my_alu.portB[8]~input_o  & ((!\LessThan0~15_cout ) # (!\my_alu.portA[8]~input_o ))) # (!\my_alu.portB[8]~input_o  & (!\my_alu.portA[8]~input_o  & !\LessThan0~15_cout )))

	.dataa(\my_alu.portB[8]~input_o ),
	.datab(\my_alu.portA[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~15_cout ),
	.combout(),
	.cout(\LessThan0~17_cout ));
// synopsys translate_off
defparam \LessThan0~17 .lut_mask = 16'h002B;
defparam \LessThan0~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N18
cycloneive_lcell_comb \LessThan0~19 (
// Equation(s):
// \LessThan0~19_cout  = CARRY((\my_alu.portB[9]~input_o  & (\my_alu.portA[9]~input_o  & !\LessThan0~17_cout )) # (!\my_alu.portB[9]~input_o  & ((\my_alu.portA[9]~input_o ) # (!\LessThan0~17_cout ))))

	.dataa(\my_alu.portB[9]~input_o ),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~17_cout ),
	.combout(),
	.cout(\LessThan0~19_cout ));
// synopsys translate_off
defparam \LessThan0~19 .lut_mask = 16'h004D;
defparam \LessThan0~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N20
cycloneive_lcell_comb \LessThan0~21 (
// Equation(s):
// \LessThan0~21_cout  = CARRY((\my_alu.portB[10]~input_o  & ((!\LessThan0~19_cout ) # (!\my_alu.portA[10]~input_o ))) # (!\my_alu.portB[10]~input_o  & (!\my_alu.portA[10]~input_o  & !\LessThan0~19_cout )))

	.dataa(\my_alu.portB[10]~input_o ),
	.datab(\my_alu.portA[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~19_cout ),
	.combout(),
	.cout(\LessThan0~21_cout ));
// synopsys translate_off
defparam \LessThan0~21 .lut_mask = 16'h002B;
defparam \LessThan0~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N22
cycloneive_lcell_comb \LessThan0~23 (
// Equation(s):
// \LessThan0~23_cout  = CARRY((\my_alu.portB[11]~input_o  & (\my_alu.portA[11]~input_o  & !\LessThan0~21_cout )) # (!\my_alu.portB[11]~input_o  & ((\my_alu.portA[11]~input_o ) # (!\LessThan0~21_cout ))))

	.dataa(\my_alu.portB[11]~input_o ),
	.datab(\my_alu.portA[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~21_cout ),
	.combout(),
	.cout(\LessThan0~23_cout ));
// synopsys translate_off
defparam \LessThan0~23 .lut_mask = 16'h004D;
defparam \LessThan0~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N24
cycloneive_lcell_comb \LessThan0~25 (
// Equation(s):
// \LessThan0~25_cout  = CARRY((\my_alu.portB[12]~input_o  & ((!\LessThan0~23_cout ) # (!\my_alu.portA[12]~input_o ))) # (!\my_alu.portB[12]~input_o  & (!\my_alu.portA[12]~input_o  & !\LessThan0~23_cout )))

	.dataa(\my_alu.portB[12]~input_o ),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~23_cout ),
	.combout(),
	.cout(\LessThan0~25_cout ));
// synopsys translate_off
defparam \LessThan0~25 .lut_mask = 16'h002B;
defparam \LessThan0~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N26
cycloneive_lcell_comb \LessThan0~27 (
// Equation(s):
// \LessThan0~27_cout  = CARRY((\my_alu.portB[13]~input_o  & (\my_alu.portA[13]~input_o  & !\LessThan0~25_cout )) # (!\my_alu.portB[13]~input_o  & ((\my_alu.portA[13]~input_o ) # (!\LessThan0~25_cout ))))

	.dataa(\my_alu.portB[13]~input_o ),
	.datab(\my_alu.portA[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~25_cout ),
	.combout(),
	.cout(\LessThan0~27_cout ));
// synopsys translate_off
defparam \LessThan0~27 .lut_mask = 16'h004D;
defparam \LessThan0~27 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N28
cycloneive_lcell_comb \LessThan0~29 (
// Equation(s):
// \LessThan0~29_cout  = CARRY((\my_alu.portA[14]~input_o  & (\my_alu.portB[14]~input_o  & !\LessThan0~27_cout )) # (!\my_alu.portA[14]~input_o  & ((\my_alu.portB[14]~input_o ) # (!\LessThan0~27_cout ))))

	.dataa(\my_alu.portA[14]~input_o ),
	.datab(\my_alu.portB[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~27_cout ),
	.combout(),
	.cout(\LessThan0~29_cout ));
// synopsys translate_off
defparam \LessThan0~29 .lut_mask = 16'h004D;
defparam \LessThan0~29 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y34_N30
cycloneive_lcell_comb \LessThan0~31 (
// Equation(s):
// \LessThan0~31_cout  = CARRY((\my_alu.portA[15]~input_o  & ((!\LessThan0~29_cout ) # (!\my_alu.portB[15]~input_o ))) # (!\my_alu.portA[15]~input_o  & (!\my_alu.portB[15]~input_o  & !\LessThan0~29_cout )))

	.dataa(\my_alu.portA[15]~input_o ),
	.datab(\my_alu.portB[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~29_cout ),
	.combout(),
	.cout(\LessThan0~31_cout ));
// synopsys translate_off
defparam \LessThan0~31 .lut_mask = 16'h002B;
defparam \LessThan0~31 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N0
cycloneive_lcell_comb \LessThan0~33 (
// Equation(s):
// \LessThan0~33_cout  = CARRY((\my_alu.portA[16]~input_o  & (\my_alu.portB[16]~input_o  & !\LessThan0~31_cout )) # (!\my_alu.portA[16]~input_o  & ((\my_alu.portB[16]~input_o ) # (!\LessThan0~31_cout ))))

	.dataa(\my_alu.portA[16]~input_o ),
	.datab(\my_alu.portB[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~31_cout ),
	.combout(),
	.cout(\LessThan0~33_cout ));
// synopsys translate_off
defparam \LessThan0~33 .lut_mask = 16'h004D;
defparam \LessThan0~33 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N2
cycloneive_lcell_comb \LessThan0~35 (
// Equation(s):
// \LessThan0~35_cout  = CARRY((\my_alu.portB[17]~input_o  & (\my_alu.portA[17]~input_o  & !\LessThan0~33_cout )) # (!\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o ) # (!\LessThan0~33_cout ))))

	.dataa(\my_alu.portB[17]~input_o ),
	.datab(\my_alu.portA[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~33_cout ),
	.combout(),
	.cout(\LessThan0~35_cout ));
// synopsys translate_off
defparam \LessThan0~35 .lut_mask = 16'h004D;
defparam \LessThan0~35 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N4
cycloneive_lcell_comb \LessThan0~37 (
// Equation(s):
// \LessThan0~37_cout  = CARRY((\my_alu.portB[18]~input_o  & ((!\LessThan0~35_cout ) # (!\my_alu.portA[18]~input_o ))) # (!\my_alu.portB[18]~input_o  & (!\my_alu.portA[18]~input_o  & !\LessThan0~35_cout )))

	.dataa(\my_alu.portB[18]~input_o ),
	.datab(\my_alu.portA[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~35_cout ),
	.combout(),
	.cout(\LessThan0~37_cout ));
// synopsys translate_off
defparam \LessThan0~37 .lut_mask = 16'h002B;
defparam \LessThan0~37 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N6
cycloneive_lcell_comb \LessThan0~39 (
// Equation(s):
// \LessThan0~39_cout  = CARRY((\my_alu.portA[19]~input_o  & ((!\LessThan0~37_cout ) # (!\my_alu.portB[19]~input_o ))) # (!\my_alu.portA[19]~input_o  & (!\my_alu.portB[19]~input_o  & !\LessThan0~37_cout )))

	.dataa(\my_alu.portA[19]~input_o ),
	.datab(\my_alu.portB[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~37_cout ),
	.combout(),
	.cout(\LessThan0~39_cout ));
// synopsys translate_off
defparam \LessThan0~39 .lut_mask = 16'h002B;
defparam \LessThan0~39 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N8
cycloneive_lcell_comb \LessThan0~41 (
// Equation(s):
// \LessThan0~41_cout  = CARRY((\my_alu.portB[20]~input_o  & ((!\LessThan0~39_cout ) # (!\my_alu.portA[20]~input_o ))) # (!\my_alu.portB[20]~input_o  & (!\my_alu.portA[20]~input_o  & !\LessThan0~39_cout )))

	.dataa(\my_alu.portB[20]~input_o ),
	.datab(\my_alu.portA[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~39_cout ),
	.combout(),
	.cout(\LessThan0~41_cout ));
// synopsys translate_off
defparam \LessThan0~41 .lut_mask = 16'h002B;
defparam \LessThan0~41 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N10
cycloneive_lcell_comb \LessThan0~43 (
// Equation(s):
// \LessThan0~43_cout  = CARRY((\my_alu.portB[21]~input_o  & (\my_alu.portA[21]~input_o  & !\LessThan0~41_cout )) # (!\my_alu.portB[21]~input_o  & ((\my_alu.portA[21]~input_o ) # (!\LessThan0~41_cout ))))

	.dataa(\my_alu.portB[21]~input_o ),
	.datab(\my_alu.portA[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~41_cout ),
	.combout(),
	.cout(\LessThan0~43_cout ));
// synopsys translate_off
defparam \LessThan0~43 .lut_mask = 16'h004D;
defparam \LessThan0~43 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N12
cycloneive_lcell_comb \LessThan0~45 (
// Equation(s):
// \LessThan0~45_cout  = CARRY((\my_alu.portB[22]~input_o  & ((!\LessThan0~43_cout ) # (!\my_alu.portA[22]~input_o ))) # (!\my_alu.portB[22]~input_o  & (!\my_alu.portA[22]~input_o  & !\LessThan0~43_cout )))

	.dataa(\my_alu.portB[22]~input_o ),
	.datab(\my_alu.portA[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~43_cout ),
	.combout(),
	.cout(\LessThan0~45_cout ));
// synopsys translate_off
defparam \LessThan0~45 .lut_mask = 16'h002B;
defparam \LessThan0~45 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N14
cycloneive_lcell_comb \LessThan0~47 (
// Equation(s):
// \LessThan0~47_cout  = CARRY((\my_alu.portB[23]~input_o  & (\my_alu.portA[23]~input_o  & !\LessThan0~45_cout )) # (!\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o ) # (!\LessThan0~45_cout ))))

	.dataa(\my_alu.portB[23]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~45_cout ),
	.combout(),
	.cout(\LessThan0~47_cout ));
// synopsys translate_off
defparam \LessThan0~47 .lut_mask = 16'h004D;
defparam \LessThan0~47 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N16
cycloneive_lcell_comb \LessThan0~49 (
// Equation(s):
// \LessThan0~49_cout  = CARRY((\my_alu.portA[24]~input_o  & (\my_alu.portB[24]~input_o  & !\LessThan0~47_cout )) # (!\my_alu.portA[24]~input_o  & ((\my_alu.portB[24]~input_o ) # (!\LessThan0~47_cout ))))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(\my_alu.portB[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~47_cout ),
	.combout(),
	.cout(\LessThan0~49_cout ));
// synopsys translate_off
defparam \LessThan0~49 .lut_mask = 16'h004D;
defparam \LessThan0~49 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N18
cycloneive_lcell_comb \LessThan0~51 (
// Equation(s):
// \LessThan0~51_cout  = CARRY((\my_alu.portB[25]~input_o  & (\my_alu.portA[25]~input_o  & !\LessThan0~49_cout )) # (!\my_alu.portB[25]~input_o  & ((\my_alu.portA[25]~input_o ) # (!\LessThan0~49_cout ))))

	.dataa(\my_alu.portB[25]~input_o ),
	.datab(\my_alu.portA[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~49_cout ),
	.combout(),
	.cout(\LessThan0~51_cout ));
// synopsys translate_off
defparam \LessThan0~51 .lut_mask = 16'h004D;
defparam \LessThan0~51 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N20
cycloneive_lcell_comb \LessThan0~53 (
// Equation(s):
// \LessThan0~53_cout  = CARRY((\my_alu.portB[26]~input_o  & ((!\LessThan0~51_cout ) # (!\my_alu.portA[26]~input_o ))) # (!\my_alu.portB[26]~input_o  & (!\my_alu.portA[26]~input_o  & !\LessThan0~51_cout )))

	.dataa(\my_alu.portB[26]~input_o ),
	.datab(\my_alu.portA[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~51_cout ),
	.combout(),
	.cout(\LessThan0~53_cout ));
// synopsys translate_off
defparam \LessThan0~53 .lut_mask = 16'h002B;
defparam \LessThan0~53 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N22
cycloneive_lcell_comb \LessThan0~55 (
// Equation(s):
// \LessThan0~55_cout  = CARRY((\my_alu.portA[27]~input_o  & ((!\LessThan0~53_cout ) # (!\my_alu.portB[27]~input_o ))) # (!\my_alu.portA[27]~input_o  & (!\my_alu.portB[27]~input_o  & !\LessThan0~53_cout )))

	.dataa(\my_alu.portA[27]~input_o ),
	.datab(\my_alu.portB[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~53_cout ),
	.combout(),
	.cout(\LessThan0~55_cout ));
// synopsys translate_off
defparam \LessThan0~55 .lut_mask = 16'h002B;
defparam \LessThan0~55 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N24
cycloneive_lcell_comb \LessThan0~57 (
// Equation(s):
// \LessThan0~57_cout  = CARRY((\my_alu.portB[28]~input_o  & ((!\LessThan0~55_cout ) # (!\my_alu.portA[28]~input_o ))) # (!\my_alu.portB[28]~input_o  & (!\my_alu.portA[28]~input_o  & !\LessThan0~55_cout )))

	.dataa(\my_alu.portB[28]~input_o ),
	.datab(\my_alu.portA[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~55_cout ),
	.combout(),
	.cout(\LessThan0~57_cout ));
// synopsys translate_off
defparam \LessThan0~57 .lut_mask = 16'h002B;
defparam \LessThan0~57 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N26
cycloneive_lcell_comb \LessThan0~59 (
// Equation(s):
// \LessThan0~59_cout  = CARRY((\my_alu.portB[29]~input_o  & (\my_alu.portA[29]~input_o  & !\LessThan0~57_cout )) # (!\my_alu.portB[29]~input_o  & ((\my_alu.portA[29]~input_o ) # (!\LessThan0~57_cout ))))

	.dataa(\my_alu.portB[29]~input_o ),
	.datab(\my_alu.portA[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~57_cout ),
	.combout(),
	.cout(\LessThan0~59_cout ));
// synopsys translate_off
defparam \LessThan0~59 .lut_mask = 16'h004D;
defparam \LessThan0~59 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N28
cycloneive_lcell_comb \LessThan0~61 (
// Equation(s):
// \LessThan0~61_cout  = CARRY((\my_alu.portA[30]~input_o  & (\my_alu.portB[30]~input_o  & !\LessThan0~59_cout )) # (!\my_alu.portA[30]~input_o  & ((\my_alu.portB[30]~input_o ) # (!\LessThan0~59_cout ))))

	.dataa(\my_alu.portA[30]~input_o ),
	.datab(\my_alu.portB[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan0~59_cout ),
	.combout(),
	.cout(\LessThan0~61_cout ));
// synopsys translate_off
defparam \LessThan0~61 .lut_mask = 16'h004D;
defparam \LessThan0~61 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X96_Y33_N30
cycloneive_lcell_comb \LessThan0~62 (
// Equation(s):
// \LessThan0~62_combout  = (\my_alu.portB[31]~input_o  & (\my_alu.portA[31]~input_o  & \LessThan0~61_cout )) # (!\my_alu.portB[31]~input_o  & ((\my_alu.portA[31]~input_o ) # (\LessThan0~61_cout )))

	.dataa(\my_alu.portB[31]~input_o ),
	.datab(\my_alu.portA[31]~input_o ),
	.datac(gnd),
	.datad(gnd),
	.cin(\LessThan0~61_cout ),
	.combout(\LessThan0~62_combout ),
	.cout());
// synopsys translate_off
defparam \LessThan0~62 .lut_mask = 16'hD4D4;
defparam \LessThan0~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N0
cycloneive_lcell_comb \Add1~0 (
// Equation(s):
// \Add1~0_combout  = (\my_alu.portA[0]~input_o  & ((GND) # (!\my_alu.portB[0]~input_o ))) # (!\my_alu.portA[0]~input_o  & (\my_alu.portB[0]~input_o  $ (GND)))
// \Add1~1  = CARRY((\my_alu.portA[0]~input_o ) # (!\my_alu.portB[0]~input_o ))

	.dataa(\my_alu.portA[0]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add1~0_combout ),
	.cout(\Add1~1 ));
// synopsys translate_off
defparam \Add1~0 .lut_mask = 16'h66BB;
defparam \Add1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N4
cycloneive_lcell_comb \Add0~4 (
// Equation(s):
// \Add0~4_combout  = ((\my_alu.portB[2]~input_o  $ (\my_alu.portA[2]~input_o  $ (!\Add0~3 )))) # (GND)
// \Add0~5  = CARRY((\my_alu.portB[2]~input_o  & ((\my_alu.portA[2]~input_o ) # (!\Add0~3 ))) # (!\my_alu.portB[2]~input_o  & (\my_alu.portA[2]~input_o  & !\Add0~3 )))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portA[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~3 ),
	.combout(\Add0~4_combout ),
	.cout(\Add0~5 ));
// synopsys translate_off
defparam \Add0~4 .lut_mask = 16'h698E;
defparam \Add0~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N4
cycloneive_lcell_comb \Add1~4 (
// Equation(s):
// \Add1~4_combout  = ((\my_alu.portB[2]~input_o  $ (\my_alu.portA[2]~input_o  $ (\Add1~3 )))) # (GND)
// \Add1~5  = CARRY((\my_alu.portB[2]~input_o  & (\my_alu.portA[2]~input_o  & !\Add1~3 )) # (!\my_alu.portB[2]~input_o  & ((\my_alu.portA[2]~input_o ) # (!\Add1~3 ))))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portA[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~3 ),
	.combout(\Add1~4_combout ),
	.cout(\Add1~5 ));
// synopsys translate_off
defparam \Add1~4 .lut_mask = 16'h964D;
defparam \Add1~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N8
cycloneive_lcell_comb \Add0~8 (
// Equation(s):
// \Add0~8_combout  = ((\my_alu.portB[4]~input_o  $ (\my_alu.portA[4]~input_o  $ (!\Add0~7 )))) # (GND)
// \Add0~9  = CARRY((\my_alu.portB[4]~input_o  & ((\my_alu.portA[4]~input_o ) # (!\Add0~7 ))) # (!\my_alu.portB[4]~input_o  & (\my_alu.portA[4]~input_o  & !\Add0~7 )))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\my_alu.portA[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~7 ),
	.combout(\Add0~8_combout ),
	.cout(\Add0~9 ));
// synopsys translate_off
defparam \Add0~8 .lut_mask = 16'h698E;
defparam \Add0~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N10
cycloneive_lcell_comb \Add0~10 (
// Equation(s):
// \Add0~10_combout  = (\my_alu.portA[5]~input_o  & ((\my_alu.portB[5]~input_o  & (\Add0~9  & VCC)) # (!\my_alu.portB[5]~input_o  & (!\Add0~9 )))) # (!\my_alu.portA[5]~input_o  & ((\my_alu.portB[5]~input_o  & (!\Add0~9 )) # (!\my_alu.portB[5]~input_o  & 
// ((\Add0~9 ) # (GND)))))
// \Add0~11  = CARRY((\my_alu.portA[5]~input_o  & (!\my_alu.portB[5]~input_o  & !\Add0~9 )) # (!\my_alu.portA[5]~input_o  & ((!\Add0~9 ) # (!\my_alu.portB[5]~input_o ))))

	.dataa(\my_alu.portA[5]~input_o ),
	.datab(\my_alu.portB[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~9 ),
	.combout(\Add0~10_combout ),
	.cout(\Add0~11 ));
// synopsys translate_off
defparam \Add0~10 .lut_mask = 16'h9617;
defparam \Add0~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N12
cycloneive_lcell_comb \Add0~12 (
// Equation(s):
// \Add0~12_combout  = ((\my_alu.portB[6]~input_o  $ (\my_alu.portA[6]~input_o  $ (!\Add0~11 )))) # (GND)
// \Add0~13  = CARRY((\my_alu.portB[6]~input_o  & ((\my_alu.portA[6]~input_o ) # (!\Add0~11 ))) # (!\my_alu.portB[6]~input_o  & (\my_alu.portA[6]~input_o  & !\Add0~11 )))

	.dataa(\my_alu.portB[6]~input_o ),
	.datab(\my_alu.portA[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~11 ),
	.combout(\Add0~12_combout ),
	.cout(\Add0~13 ));
// synopsys translate_off
defparam \Add0~12 .lut_mask = 16'h698E;
defparam \Add0~12 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N14
cycloneive_lcell_comb \Add1~14 (
// Equation(s):
// \Add1~14_combout  = (\my_alu.portB[7]~input_o  & ((\my_alu.portA[7]~input_o  & (!\Add1~13 )) # (!\my_alu.portA[7]~input_o  & ((\Add1~13 ) # (GND))))) # (!\my_alu.portB[7]~input_o  & ((\my_alu.portA[7]~input_o  & (\Add1~13  & VCC)) # 
// (!\my_alu.portA[7]~input_o  & (!\Add1~13 ))))
// \Add1~15  = CARRY((\my_alu.portB[7]~input_o  & ((!\Add1~13 ) # (!\my_alu.portA[7]~input_o ))) # (!\my_alu.portB[7]~input_o  & (!\my_alu.portA[7]~input_o  & !\Add1~13 )))

	.dataa(\my_alu.portB[7]~input_o ),
	.datab(\my_alu.portA[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~13 ),
	.combout(\Add1~14_combout ),
	.cout(\Add1~15 ));
// synopsys translate_off
defparam \Add1~14 .lut_mask = 16'h692B;
defparam \Add1~14 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N16
cycloneive_lcell_comb \Add0~16 (
// Equation(s):
// \Add0~16_combout  = ((\my_alu.portB[8]~input_o  $ (\my_alu.portA[8]~input_o  $ (!\Add0~15 )))) # (GND)
// \Add0~17  = CARRY((\my_alu.portB[8]~input_o  & ((\my_alu.portA[8]~input_o ) # (!\Add0~15 ))) # (!\my_alu.portB[8]~input_o  & (\my_alu.portA[8]~input_o  & !\Add0~15 )))

	.dataa(\my_alu.portB[8]~input_o ),
	.datab(\my_alu.portA[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~15 ),
	.combout(\Add0~16_combout ),
	.cout(\Add0~17 ));
// synopsys translate_off
defparam \Add0~16 .lut_mask = 16'h698E;
defparam \Add0~16 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N16
cycloneive_lcell_comb \Add1~16 (
// Equation(s):
// \Add1~16_combout  = ((\my_alu.portA[8]~input_o  $ (\my_alu.portB[8]~input_o  $ (\Add1~15 )))) # (GND)
// \Add1~17  = CARRY((\my_alu.portA[8]~input_o  & ((!\Add1~15 ) # (!\my_alu.portB[8]~input_o ))) # (!\my_alu.portA[8]~input_o  & (!\my_alu.portB[8]~input_o  & !\Add1~15 )))

	.dataa(\my_alu.portA[8]~input_o ),
	.datab(\my_alu.portB[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~15 ),
	.combout(\Add1~16_combout ),
	.cout(\Add1~17 ));
// synopsys translate_off
defparam \Add1~16 .lut_mask = 16'h962B;
defparam \Add1~16 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N18
cycloneive_lcell_comb \Add1~18 (
// Equation(s):
// \Add1~18_combout  = (\my_alu.portB[9]~input_o  & ((\my_alu.portA[9]~input_o  & (!\Add1~17 )) # (!\my_alu.portA[9]~input_o  & ((\Add1~17 ) # (GND))))) # (!\my_alu.portB[9]~input_o  & ((\my_alu.portA[9]~input_o  & (\Add1~17  & VCC)) # 
// (!\my_alu.portA[9]~input_o  & (!\Add1~17 ))))
// \Add1~19  = CARRY((\my_alu.portB[9]~input_o  & ((!\Add1~17 ) # (!\my_alu.portA[9]~input_o ))) # (!\my_alu.portB[9]~input_o  & (!\my_alu.portA[9]~input_o  & !\Add1~17 )))

	.dataa(\my_alu.portB[9]~input_o ),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~17 ),
	.combout(\Add1~18_combout ),
	.cout(\Add1~19 ));
// synopsys translate_off
defparam \Add1~18 .lut_mask = 16'h692B;
defparam \Add1~18 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N20
cycloneive_lcell_comb \Add1~20 (
// Equation(s):
// \Add1~20_combout  = ((\my_alu.portA[10]~input_o  $ (\my_alu.portB[10]~input_o  $ (\Add1~19 )))) # (GND)
// \Add1~21  = CARRY((\my_alu.portA[10]~input_o  & ((!\Add1~19 ) # (!\my_alu.portB[10]~input_o ))) # (!\my_alu.portA[10]~input_o  & (!\my_alu.portB[10]~input_o  & !\Add1~19 )))

	.dataa(\my_alu.portA[10]~input_o ),
	.datab(\my_alu.portB[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~19 ),
	.combout(\Add1~20_combout ),
	.cout(\Add1~21 ));
// synopsys translate_off
defparam \Add1~20 .lut_mask = 16'h962B;
defparam \Add1~20 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N22
cycloneive_lcell_comb \Add0~22 (
// Equation(s):
// \Add0~22_combout  = (\my_alu.portB[11]~input_o  & ((\my_alu.portA[11]~input_o  & (\Add0~21  & VCC)) # (!\my_alu.portA[11]~input_o  & (!\Add0~21 )))) # (!\my_alu.portB[11]~input_o  & ((\my_alu.portA[11]~input_o  & (!\Add0~21 )) # 
// (!\my_alu.portA[11]~input_o  & ((\Add0~21 ) # (GND)))))
// \Add0~23  = CARRY((\my_alu.portB[11]~input_o  & (!\my_alu.portA[11]~input_o  & !\Add0~21 )) # (!\my_alu.portB[11]~input_o  & ((!\Add0~21 ) # (!\my_alu.portA[11]~input_o ))))

	.dataa(\my_alu.portB[11]~input_o ),
	.datab(\my_alu.portA[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~21 ),
	.combout(\Add0~22_combout ),
	.cout(\Add0~23 ));
// synopsys translate_off
defparam \Add0~22 .lut_mask = 16'h9617;
defparam \Add0~22 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N22
cycloneive_lcell_comb \Add1~22 (
// Equation(s):
// \Add1~22_combout  = (\my_alu.portB[11]~input_o  & ((\my_alu.portA[11]~input_o  & (!\Add1~21 )) # (!\my_alu.portA[11]~input_o  & ((\Add1~21 ) # (GND))))) # (!\my_alu.portB[11]~input_o  & ((\my_alu.portA[11]~input_o  & (\Add1~21  & VCC)) # 
// (!\my_alu.portA[11]~input_o  & (!\Add1~21 ))))
// \Add1~23  = CARRY((\my_alu.portB[11]~input_o  & ((!\Add1~21 ) # (!\my_alu.portA[11]~input_o ))) # (!\my_alu.portB[11]~input_o  & (!\my_alu.portA[11]~input_o  & !\Add1~21 )))

	.dataa(\my_alu.portB[11]~input_o ),
	.datab(\my_alu.portA[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~21 ),
	.combout(\Add1~22_combout ),
	.cout(\Add1~23 ));
// synopsys translate_off
defparam \Add1~22 .lut_mask = 16'h692B;
defparam \Add1~22 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N24
cycloneive_lcell_comb \Add1~24 (
// Equation(s):
// \Add1~24_combout  = ((\my_alu.portA[12]~input_o  $ (\my_alu.portB[12]~input_o  $ (\Add1~23 )))) # (GND)
// \Add1~25  = CARRY((\my_alu.portA[12]~input_o  & ((!\Add1~23 ) # (!\my_alu.portB[12]~input_o ))) # (!\my_alu.portA[12]~input_o  & (!\my_alu.portB[12]~input_o  & !\Add1~23 )))

	.dataa(\my_alu.portA[12]~input_o ),
	.datab(\my_alu.portB[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~23 ),
	.combout(\Add1~24_combout ),
	.cout(\Add1~25 ));
// synopsys translate_off
defparam \Add1~24 .lut_mask = 16'h962B;
defparam \Add1~24 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N26
cycloneive_lcell_comb \Add1~26 (
// Equation(s):
// \Add1~26_combout  = (\my_alu.portB[13]~input_o  & ((\my_alu.portA[13]~input_o  & (!\Add1~25 )) # (!\my_alu.portA[13]~input_o  & ((\Add1~25 ) # (GND))))) # (!\my_alu.portB[13]~input_o  & ((\my_alu.portA[13]~input_o  & (\Add1~25  & VCC)) # 
// (!\my_alu.portA[13]~input_o  & (!\Add1~25 ))))
// \Add1~27  = CARRY((\my_alu.portB[13]~input_o  & ((!\Add1~25 ) # (!\my_alu.portA[13]~input_o ))) # (!\my_alu.portB[13]~input_o  & (!\my_alu.portA[13]~input_o  & !\Add1~25 )))

	.dataa(\my_alu.portB[13]~input_o ),
	.datab(\my_alu.portA[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~25 ),
	.combout(\Add1~26_combout ),
	.cout(\Add1~27 ));
// synopsys translate_off
defparam \Add1~26 .lut_mask = 16'h692B;
defparam \Add1~26 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N28
cycloneive_lcell_comb \Add0~28 (
// Equation(s):
// \Add0~28_combout  = ((\my_alu.portB[14]~input_o  $ (\my_alu.portA[14]~input_o  $ (!\Add0~27 )))) # (GND)
// \Add0~29  = CARRY((\my_alu.portB[14]~input_o  & ((\my_alu.portA[14]~input_o ) # (!\Add0~27 ))) # (!\my_alu.portB[14]~input_o  & (\my_alu.portA[14]~input_o  & !\Add0~27 )))

	.dataa(\my_alu.portB[14]~input_o ),
	.datab(\my_alu.portA[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~27 ),
	.combout(\Add0~28_combout ),
	.cout(\Add0~29 ));
// synopsys translate_off
defparam \Add0~28 .lut_mask = 16'h698E;
defparam \Add0~28 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N0
cycloneive_lcell_comb \Add0~32 (
// Equation(s):
// \Add0~32_combout  = ((\my_alu.portB[16]~input_o  $ (\my_alu.portA[16]~input_o  $ (!\Add0~31 )))) # (GND)
// \Add0~33  = CARRY((\my_alu.portB[16]~input_o  & ((\my_alu.portA[16]~input_o ) # (!\Add0~31 ))) # (!\my_alu.portB[16]~input_o  & (\my_alu.portA[16]~input_o  & !\Add0~31 )))

	.dataa(\my_alu.portB[16]~input_o ),
	.datab(\my_alu.portA[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~31 ),
	.combout(\Add0~32_combout ),
	.cout(\Add0~33 ));
// synopsys translate_off
defparam \Add0~32 .lut_mask = 16'h698E;
defparam \Add0~32 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N0
cycloneive_lcell_comb \Add1~32 (
// Equation(s):
// \Add1~32_combout  = ((\my_alu.portB[16]~input_o  $ (\my_alu.portA[16]~input_o  $ (\Add1~31 )))) # (GND)
// \Add1~33  = CARRY((\my_alu.portB[16]~input_o  & (\my_alu.portA[16]~input_o  & !\Add1~31 )) # (!\my_alu.portB[16]~input_o  & ((\my_alu.portA[16]~input_o ) # (!\Add1~31 ))))

	.dataa(\my_alu.portB[16]~input_o ),
	.datab(\my_alu.portA[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~31 ),
	.combout(\Add1~32_combout ),
	.cout(\Add1~33 ));
// synopsys translate_off
defparam \Add1~32 .lut_mask = 16'h964D;
defparam \Add1~32 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N2
cycloneive_lcell_comb \Add0~34 (
// Equation(s):
// \Add0~34_combout  = (\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o  & (\Add0~33  & VCC)) # (!\my_alu.portA[17]~input_o  & (!\Add0~33 )))) # (!\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o  & (!\Add0~33 )) # 
// (!\my_alu.portA[17]~input_o  & ((\Add0~33 ) # (GND)))))
// \Add0~35  = CARRY((\my_alu.portB[17]~input_o  & (!\my_alu.portA[17]~input_o  & !\Add0~33 )) # (!\my_alu.portB[17]~input_o  & ((!\Add0~33 ) # (!\my_alu.portA[17]~input_o ))))

	.dataa(\my_alu.portB[17]~input_o ),
	.datab(\my_alu.portA[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~33 ),
	.combout(\Add0~34_combout ),
	.cout(\Add0~35 ));
// synopsys translate_off
defparam \Add0~34 .lut_mask = 16'h9617;
defparam \Add0~34 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N4
cycloneive_lcell_comb \Add0~36 (
// Equation(s):
// \Add0~36_combout  = ((\my_alu.portB[18]~input_o  $ (\my_alu.portA[18]~input_o  $ (!\Add0~35 )))) # (GND)
// \Add0~37  = CARRY((\my_alu.portB[18]~input_o  & ((\my_alu.portA[18]~input_o ) # (!\Add0~35 ))) # (!\my_alu.portB[18]~input_o  & (\my_alu.portA[18]~input_o  & !\Add0~35 )))

	.dataa(\my_alu.portB[18]~input_o ),
	.datab(\my_alu.portA[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~35 ),
	.combout(\Add0~36_combout ),
	.cout(\Add0~37 ));
// synopsys translate_off
defparam \Add0~36 .lut_mask = 16'h698E;
defparam \Add0~36 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N4
cycloneive_lcell_comb \Add1~36 (
// Equation(s):
// \Add1~36_combout  = ((\my_alu.portA[18]~input_o  $ (\my_alu.portB[18]~input_o  $ (\Add1~35 )))) # (GND)
// \Add1~37  = CARRY((\my_alu.portA[18]~input_o  & ((!\Add1~35 ) # (!\my_alu.portB[18]~input_o ))) # (!\my_alu.portA[18]~input_o  & (!\my_alu.portB[18]~input_o  & !\Add1~35 )))

	.dataa(\my_alu.portA[18]~input_o ),
	.datab(\my_alu.portB[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~35 ),
	.combout(\Add1~36_combout ),
	.cout(\Add1~37 ));
// synopsys translate_off
defparam \Add1~36 .lut_mask = 16'h962B;
defparam \Add1~36 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N6
cycloneive_lcell_comb \Add0~38 (
// Equation(s):
// \Add0~38_combout  = (\my_alu.portA[19]~input_o  & ((\my_alu.portB[19]~input_o  & (\Add0~37  & VCC)) # (!\my_alu.portB[19]~input_o  & (!\Add0~37 )))) # (!\my_alu.portA[19]~input_o  & ((\my_alu.portB[19]~input_o  & (!\Add0~37 )) # 
// (!\my_alu.portB[19]~input_o  & ((\Add0~37 ) # (GND)))))
// \Add0~39  = CARRY((\my_alu.portA[19]~input_o  & (!\my_alu.portB[19]~input_o  & !\Add0~37 )) # (!\my_alu.portA[19]~input_o  & ((!\Add0~37 ) # (!\my_alu.portB[19]~input_o ))))

	.dataa(\my_alu.portA[19]~input_o ),
	.datab(\my_alu.portB[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~37 ),
	.combout(\Add0~38_combout ),
	.cout(\Add0~39 ));
// synopsys translate_off
defparam \Add0~38 .lut_mask = 16'h9617;
defparam \Add0~38 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N6
cycloneive_lcell_comb \Add1~38 (
// Equation(s):
// \Add1~38_combout  = (\my_alu.portA[19]~input_o  & ((\my_alu.portB[19]~input_o  & (!\Add1~37 )) # (!\my_alu.portB[19]~input_o  & (\Add1~37  & VCC)))) # (!\my_alu.portA[19]~input_o  & ((\my_alu.portB[19]~input_o  & ((\Add1~37 ) # (GND))) # 
// (!\my_alu.portB[19]~input_o  & (!\Add1~37 ))))
// \Add1~39  = CARRY((\my_alu.portA[19]~input_o  & (\my_alu.portB[19]~input_o  & !\Add1~37 )) # (!\my_alu.portA[19]~input_o  & ((\my_alu.portB[19]~input_o ) # (!\Add1~37 ))))

	.dataa(\my_alu.portA[19]~input_o ),
	.datab(\my_alu.portB[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~37 ),
	.combout(\Add1~38_combout ),
	.cout(\Add1~39 ));
// synopsys translate_off
defparam \Add1~38 .lut_mask = 16'h694D;
defparam \Add1~38 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N8
cycloneive_lcell_comb \Add0~40 (
// Equation(s):
// \Add0~40_combout  = ((\my_alu.portA[20]~input_o  $ (\my_alu.portB[20]~input_o  $ (!\Add0~39 )))) # (GND)
// \Add0~41  = CARRY((\my_alu.portA[20]~input_o  & ((\my_alu.portB[20]~input_o ) # (!\Add0~39 ))) # (!\my_alu.portA[20]~input_o  & (\my_alu.portB[20]~input_o  & !\Add0~39 )))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~39 ),
	.combout(\Add0~40_combout ),
	.cout(\Add0~41 ));
// synopsys translate_off
defparam \Add0~40 .lut_mask = 16'h698E;
defparam \Add0~40 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N8
cycloneive_lcell_comb \Add1~40 (
// Equation(s):
// \Add1~40_combout  = ((\my_alu.portA[20]~input_o  $ (\my_alu.portB[20]~input_o  $ (\Add1~39 )))) # (GND)
// \Add1~41  = CARRY((\my_alu.portA[20]~input_o  & ((!\Add1~39 ) # (!\my_alu.portB[20]~input_o ))) # (!\my_alu.portA[20]~input_o  & (!\my_alu.portB[20]~input_o  & !\Add1~39 )))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~39 ),
	.combout(\Add1~40_combout ),
	.cout(\Add1~41 ));
// synopsys translate_off
defparam \Add1~40 .lut_mask = 16'h962B;
defparam \Add1~40 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N12
cycloneive_lcell_comb \Add1~44 (
// Equation(s):
// \Add1~44_combout  = ((\my_alu.portA[22]~input_o  $ (\my_alu.portB[22]~input_o  $ (\Add1~43 )))) # (GND)
// \Add1~45  = CARRY((\my_alu.portA[22]~input_o  & ((!\Add1~43 ) # (!\my_alu.portB[22]~input_o ))) # (!\my_alu.portA[22]~input_o  & (!\my_alu.portB[22]~input_o  & !\Add1~43 )))

	.dataa(\my_alu.portA[22]~input_o ),
	.datab(\my_alu.portB[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~43 ),
	.combout(\Add1~44_combout ),
	.cout(\Add1~45 ));
// synopsys translate_off
defparam \Add1~44 .lut_mask = 16'h962B;
defparam \Add1~44 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N16
cycloneive_lcell_comb \Add1~48 (
// Equation(s):
// \Add1~48_combout  = ((\my_alu.portB[24]~input_o  $ (\my_alu.portA[24]~input_o  $ (\Add1~47 )))) # (GND)
// \Add1~49  = CARRY((\my_alu.portB[24]~input_o  & (\my_alu.portA[24]~input_o  & !\Add1~47 )) # (!\my_alu.portB[24]~input_o  & ((\my_alu.portA[24]~input_o ) # (!\Add1~47 ))))

	.dataa(\my_alu.portB[24]~input_o ),
	.datab(\my_alu.portA[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~47 ),
	.combout(\Add1~48_combout ),
	.cout(\Add1~49 ));
// synopsys translate_off
defparam \Add1~48 .lut_mask = 16'h964D;
defparam \Add1~48 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N18
cycloneive_lcell_comb \Add1~50 (
// Equation(s):
// \Add1~50_combout  = (\my_alu.portB[25]~input_o  & ((\my_alu.portA[25]~input_o  & (!\Add1~49 )) # (!\my_alu.portA[25]~input_o  & ((\Add1~49 ) # (GND))))) # (!\my_alu.portB[25]~input_o  & ((\my_alu.portA[25]~input_o  & (\Add1~49  & VCC)) # 
// (!\my_alu.portA[25]~input_o  & (!\Add1~49 ))))
// \Add1~51  = CARRY((\my_alu.portB[25]~input_o  & ((!\Add1~49 ) # (!\my_alu.portA[25]~input_o ))) # (!\my_alu.portB[25]~input_o  & (!\my_alu.portA[25]~input_o  & !\Add1~49 )))

	.dataa(\my_alu.portB[25]~input_o ),
	.datab(\my_alu.portA[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~49 ),
	.combout(\Add1~50_combout ),
	.cout(\Add1~51 ));
// synopsys translate_off
defparam \Add1~50 .lut_mask = 16'h692B;
defparam \Add1~50 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N24
cycloneive_lcell_comb \Add0~56 (
// Equation(s):
// \Add0~56_combout  = ((\my_alu.portA[28]~input_o  $ (\my_alu.portB[28]~input_o  $ (!\Add0~55 )))) # (GND)
// \Add0~57  = CARRY((\my_alu.portA[28]~input_o  & ((\my_alu.portB[28]~input_o ) # (!\Add0~55 ))) # (!\my_alu.portA[28]~input_o  & (\my_alu.portB[28]~input_o  & !\Add0~55 )))

	.dataa(\my_alu.portA[28]~input_o ),
	.datab(\my_alu.portB[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~55 ),
	.combout(\Add0~56_combout ),
	.cout(\Add0~57 ));
// synopsys translate_off
defparam \Add0~56 .lut_mask = 16'h698E;
defparam \Add0~56 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N24
cycloneive_lcell_comb \Add1~56 (
// Equation(s):
// \Add1~56_combout  = ((\my_alu.portB[28]~input_o  $ (\my_alu.portA[28]~input_o  $ (\Add1~55 )))) # (GND)
// \Add1~57  = CARRY((\my_alu.portB[28]~input_o  & (\my_alu.portA[28]~input_o  & !\Add1~55 )) # (!\my_alu.portB[28]~input_o  & ((\my_alu.portA[28]~input_o ) # (!\Add1~55 ))))

	.dataa(\my_alu.portB[28]~input_o ),
	.datab(\my_alu.portA[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~55 ),
	.combout(\Add1~56_combout ),
	.cout(\Add1~57 ));
// synopsys translate_off
defparam \Add1~56 .lut_mask = 16'h964D;
defparam \Add1~56 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N26
cycloneive_lcell_comb \Add0~58 (
// Equation(s):
// \Add0~58_combout  = (\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o  & (\Add0~57  & VCC)) # (!\my_alu.portB[29]~input_o  & (!\Add0~57 )))) # (!\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o  & (!\Add0~57 )) # 
// (!\my_alu.portB[29]~input_o  & ((\Add0~57 ) # (GND)))))
// \Add0~59  = CARRY((\my_alu.portA[29]~input_o  & (!\my_alu.portB[29]~input_o  & !\Add0~57 )) # (!\my_alu.portA[29]~input_o  & ((!\Add0~57 ) # (!\my_alu.portB[29]~input_o ))))

	.dataa(\my_alu.portA[29]~input_o ),
	.datab(\my_alu.portB[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~57 ),
	.combout(\Add0~58_combout ),
	.cout(\Add0~59 ));
// synopsys translate_off
defparam \Add0~58 .lut_mask = 16'h9617;
defparam \Add0~58 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N26
cycloneive_lcell_comb \Add1~58 (
// Equation(s):
// \Add1~58_combout  = (\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o  & (!\Add1~57 )) # (!\my_alu.portB[29]~input_o  & (\Add1~57  & VCC)))) # (!\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o  & ((\Add1~57 ) # (GND))) # 
// (!\my_alu.portB[29]~input_o  & (!\Add1~57 ))))
// \Add1~59  = CARRY((\my_alu.portA[29]~input_o  & (\my_alu.portB[29]~input_o  & !\Add1~57 )) # (!\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o ) # (!\Add1~57 ))))

	.dataa(\my_alu.portA[29]~input_o ),
	.datab(\my_alu.portB[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~57 ),
	.combout(\Add1~58_combout ),
	.cout(\Add1~59 ));
// synopsys translate_off
defparam \Add1~58 .lut_mask = 16'h694D;
defparam \Add1~58 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N28
cycloneive_lcell_comb \Add1~60 (
// Equation(s):
// \Add1~60_combout  = ((\my_alu.portA[30]~input_o  $ (\my_alu.portB[30]~input_o  $ (\Add1~59 )))) # (GND)
// \Add1~61  = CARRY((\my_alu.portA[30]~input_o  & ((!\Add1~59 ) # (!\my_alu.portB[30]~input_o ))) # (!\my_alu.portA[30]~input_o  & (!\my_alu.portB[30]~input_o  & !\Add1~59 )))

	.dataa(\my_alu.portA[30]~input_o ),
	.datab(\my_alu.portB[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~59 ),
	.combout(\Add1~60_combout ),
	.cout(\Add1~61 ));
// synopsys translate_off
defparam \Add1~60 .lut_mask = 16'h962B;
defparam \Add1~60 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N12
cycloneive_lcell_comb \Selector31~14 (
// Equation(s):
// \Selector31~14_combout  = (\Selector31~12_combout  & ((\Add1~0_combout ) # ((\my_alu.portB[0]~input_o  & \Selector31~13_combout )))) # (!\Selector31~12_combout  & (\my_alu.portB[0]~input_o  & ((\Selector31~13_combout ))))

	.dataa(\Selector31~12_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\Add1~0_combout ),
	.datad(\Selector31~13_combout ),
	.cin(gnd),
	.combout(\Selector31~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~14 .lut_mask = 16'hECA0;
defparam \Selector31~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N10
cycloneive_lcell_comb \ShiftRight0~3 (
// Equation(s):
// \ShiftRight0~3_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[27]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[25]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[25]~input_o ),
	.datac(\my_alu.portA[27]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~3_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~3 .lut_mask = 16'hF0CC;
defparam \ShiftRight0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N4
cycloneive_lcell_comb \ShiftRight0~5 (
// Equation(s):
// \ShiftRight0~5_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~3_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~4_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~4_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~3_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~5_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~5 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N16
cycloneive_lcell_comb \ShiftRight0~14 (
// Equation(s):
// \ShiftRight0~14_combout  = (!\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & (\my_alu.portA[1]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[0]~input_o )))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[1]~input_o ),
	.datad(\my_alu.portA[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~14_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~14 .lut_mask = 16'h5140;
defparam \ShiftRight0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N10
cycloneive_lcell_comb \ShiftRight0~15 (
// Equation(s):
// \ShiftRight0~15_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[3]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[2]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~15_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~15 .lut_mask = 16'hF3C0;
defparam \ShiftRight0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N20
cycloneive_lcell_comb \ShiftRight0~16 (
// Equation(s):
// \ShiftRight0~16_combout  = (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~14_combout ) # ((\ShiftRight0~15_combout  & \my_alu.portB[1]~input_o ))))

	.dataa(\ShiftRight0~15_combout ),
	.datab(\ShiftRight0~14_combout ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~16_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~16 .lut_mask = 16'h00EC;
defparam \ShiftRight0~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N12
cycloneive_lcell_comb \ShiftRight0~20 (
// Equation(s):
// \ShiftRight0~20_combout  = (!\my_alu.portB[3]~input_o  & ((\ShiftRight0~16_combout ) # ((\my_alu.portB[2]~input_o  & \ShiftRight0~19_combout ))))

	.dataa(\ShiftRight0~16_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~19_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~20_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~20 .lut_mask = 16'h3222;
defparam \ShiftRight0~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N18
cycloneive_lcell_comb \ShiftRight0~23 (
// Equation(s):
// \ShiftRight0~23_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~21_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~22_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~21_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~22_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~23_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~23 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N22
cycloneive_lcell_comb \ShiftRight0~27 (
// Equation(s):
// \ShiftRight0~27_combout  = (\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~23_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~26_combout ))))

	.dataa(\ShiftRight0~26_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~23_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~27_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~27 .lut_mask = 16'hC808;
defparam \ShiftRight0~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N26
cycloneive_lcell_comb \ShiftRight0~28 (
// Equation(s):
// \ShiftRight0~28_combout  = (\my_alu.portB[4]~input_o  & (((\ShiftRight0~13_combout )))) # (!\my_alu.portB[4]~input_o  & ((\ShiftRight0~20_combout ) # ((\ShiftRight0~27_combout ))))

	.dataa(\ShiftRight0~20_combout ),
	.datab(\ShiftRight0~13_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\ShiftRight0~27_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~28_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~28 .lut_mask = 16'hCFCA;
defparam \ShiftRight0~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N10
cycloneive_lcell_comb \Selector31~17 (
// Equation(s):
// \Selector31~17_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~17_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~17 .lut_mask = 16'h0010;
defparam \Selector31~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N12
cycloneive_lcell_comb \ShiftLeft0~2 (
// Equation(s):
// \ShiftLeft0~2_combout  = (\my_alu.portB[16]~input_o ) # ((\my_alu.portB[13]~input_o ) # ((\my_alu.portB[14]~input_o ) # (\my_alu.portB[15]~input_o )))

	.dataa(\my_alu.portB[16]~input_o ),
	.datab(\my_alu.portB[13]~input_o ),
	.datac(\my_alu.portB[14]~input_o ),
	.datad(\my_alu.portB[15]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~2_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~2 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N10
cycloneive_lcell_comb \ShiftLeft0~5 (
// Equation(s):
// \ShiftLeft0~5_combout  = (\my_alu.portB[24]~input_o ) # ((\my_alu.portB[22]~input_o ) # ((\my_alu.portB[23]~input_o ) # (\my_alu.portB[21]~input_o )))

	.dataa(\my_alu.portB[24]~input_o ),
	.datab(\my_alu.portB[22]~input_o ),
	.datac(\my_alu.portB[23]~input_o ),
	.datad(\my_alu.portB[21]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~5_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~5 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N14
cycloneive_lcell_comb \Selector30~4 (
// Equation(s):
// \Selector30~4_combout  = (\my_alu.portB[1]~input_o  & (\Selector31~9_combout  & ((!\my_alu.portA[1]~input_o )))) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[1]~input_o  & (\Selector31~9_combout )) # (!\my_alu.portA[1]~input_o  & 
// ((\Selector31~15_combout )))))

	.dataa(\Selector31~9_combout ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(\Selector31~15_combout ),
	.datad(\my_alu.portA[1]~input_o ),
	.cin(gnd),
	.combout(\Selector30~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~4 .lut_mask = 16'h22B8;
defparam \Selector30~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N2
cycloneive_lcell_comb \ShiftRight0~50 (
// Equation(s):
// \ShiftRight0~50_combout  = (\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~47_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~49_combout ))))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\ShiftRight0~49_combout ),
	.datad(\ShiftRight0~47_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~50_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~50 .lut_mask = 16'hC840;
defparam \ShiftRight0~50 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N20
cycloneive_lcell_comb \ShiftRight0~52 (
// Equation(s):
// \ShiftRight0~52_combout  = (!\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & ((\my_alu.portA[8]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[6]~input_o ))))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[8]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~52_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~52 .lut_mask = 16'h3022;
defparam \ShiftRight0~52 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N20
cycloneive_lcell_comb \ShiftRight0~54 (
// Equation(s):
// \ShiftRight0~54_combout  = (\ShiftRight0~52_combout ) # ((\ShiftRight0~53_combout  & \my_alu.portB[0]~input_o ))

	.dataa(\ShiftRight0~52_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~53_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~54_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~54 .lut_mask = 16'hFAAA;
defparam \ShiftRight0~54 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N30
cycloneive_lcell_comb \Selector29~1 (
// Equation(s):
// \Selector29~1_combout  = (\ShiftRight0~55_combout  & (((!\Selector29~0_combout  & \ShiftRight0~15_combout )))) # (!\ShiftRight0~55_combout  & ((\ShiftRight0~54_combout ) # ((\Selector29~0_combout ))))

	.dataa(\ShiftRight0~55_combout ),
	.datab(\ShiftRight0~54_combout ),
	.datac(\Selector29~0_combout ),
	.datad(\ShiftRight0~15_combout ),
	.cin(gnd),
	.combout(\Selector29~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~1 .lut_mask = 16'h5E54;
defparam \Selector29~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N2
cycloneive_lcell_comb \ShiftRight0~59 (
// Equation(s):
// \ShiftRight0~59_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~58_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~48_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~48_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~58_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~59_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~59 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~59 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N12
cycloneive_lcell_comb \Selector29~2 (
// Equation(s):
// \Selector29~2_combout  = (\Selector29~0_combout  & ((\Selector29~1_combout  & (\ShiftRight0~60_combout )) # (!\Selector29~1_combout  & ((\ShiftRight0~18_combout ))))) # (!\Selector29~0_combout  & (((\Selector29~1_combout ))))

	.dataa(\Selector29~0_combout ),
	.datab(\ShiftRight0~60_combout ),
	.datac(\Selector29~1_combout ),
	.datad(\ShiftRight0~18_combout ),
	.cin(gnd),
	.combout(\Selector29~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~2 .lut_mask = 16'hDAD0;
defparam \Selector29~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N26
cycloneive_lcell_comb \Selector29~6 (
// Equation(s):
// \Selector29~6_combout  = (\Add0~4_combout  & ((\Selector31~27_combout ) # ((\Add1~4_combout  & \Selector31~26_combout )))) # (!\Add0~4_combout  & (\Add1~4_combout  & (\Selector31~26_combout )))

	.dataa(\Add0~4_combout ),
	.datab(\Add1~4_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector29~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~6 .lut_mask = 16'hEAC0;
defparam \Selector29~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N22
cycloneive_lcell_comb \ShiftRight0~61 (
// Equation(s):
// \ShiftRight0~61_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[29]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[27]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portA[27]~input_o ),
	.datad(\my_alu.portA[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~61_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~61 .lut_mask = 16'hFA50;
defparam \ShiftRight0~61 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N18
cycloneive_lcell_comb \ShiftRight0~65 (
// Equation(s):
// \ShiftRight0~65_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~64_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~34_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~34_combout ),
	.datac(\ShiftRight0~64_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~65_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~65 .lut_mask = 16'hF0CC;
defparam \ShiftRight0~65 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N10
cycloneive_lcell_comb \Selector21~2 (
// Equation(s):
// \Selector21~2_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~65_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~67_combout )))

	.dataa(\ShiftRight0~65_combout ),
	.datab(\ShiftRight0~67_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector21~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~2 .lut_mask = 16'hAACC;
defparam \Selector21~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N2
cycloneive_lcell_comb \ShiftLeft0~14 (
// Equation(s):
// \ShiftLeft0~14_combout  = (!\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & ((\my_alu.portA[2]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[3]~input_o ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~14_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~14 .lut_mask = 16'h5410;
defparam \ShiftLeft0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N6
cycloneive_lcell_comb \Selector28~4 (
// Equation(s):
// \Selector28~4_combout  = (\my_alu.portA[3]~input_o  & (((\Selector31~31_combout  & !\my_alu.portB[3]~input_o )))) # (!\my_alu.portA[3]~input_o  & ((\my_alu.portB[3]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[3]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector28~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~4 .lut_mask = 16'h0CCA;
defparam \Selector28~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N26
cycloneive_lcell_comb \ShiftRight0~73 (
// Equation(s):
// \ShiftRight0~73_combout  = (!\my_alu.portB[1]~input_o  & (!\my_alu.portB[0]~input_o  & \my_alu.portA[31]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~73_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~73 .lut_mask = 16'h0500;
defparam \ShiftRight0~73 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N16
cycloneive_lcell_comb \ShiftRight0~80 (
// Equation(s):
// \ShiftRight0~80_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~12_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~23_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~12_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~23_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~80_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~80 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~80 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N4
cycloneive_lcell_comb \ShiftLeft0~22 (
// Equation(s):
// \ShiftLeft0~22_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~18_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~21_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~18_combout ),
	.datad(\ShiftLeft0~21_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~22_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~22 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N26
cycloneive_lcell_comb \Selector25~3 (
// Equation(s):
// \Selector25~3_combout  = (\Selector24~2_combout  & ((\ShiftRight0~59_combout ) # ((\Selector24~1_combout )))) # (!\Selector24~2_combout  & (((!\Selector24~1_combout  & \ShiftRight0~54_combout ))))

	.dataa(\ShiftRight0~59_combout ),
	.datab(\Selector24~2_combout ),
	.datac(\Selector24~1_combout ),
	.datad(\ShiftRight0~54_combout ),
	.cin(gnd),
	.combout(\Selector25~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~3 .lut_mask = 16'hCBC8;
defparam \Selector25~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N28
cycloneive_lcell_comb \Selector25~4 (
// Equation(s):
// \Selector25~4_combout  = (\Selector25~3_combout  & (((\ShiftRight0~88_combout ) # (!\Selector24~1_combout )))) # (!\Selector25~3_combout  & (\ShiftRight0~86_combout  & (\Selector24~1_combout )))

	.dataa(\Selector25~3_combout ),
	.datab(\ShiftRight0~86_combout ),
	.datac(\Selector24~1_combout ),
	.datad(\ShiftRight0~88_combout ),
	.cin(gnd),
	.combout(\Selector25~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~4 .lut_mask = 16'hEA4A;
defparam \Selector25~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N10
cycloneive_lcell_comb \ShiftLeft0~27 (
// Equation(s):
// \ShiftLeft0~27_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[5]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[7]~input_o )))

	.dataa(\my_alu.portA[5]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portA[7]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~27_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~27 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N6
cycloneive_lcell_comb \Selector24~6 (
// Equation(s):
// \Selector24~6_combout  = (\Selector24~1_combout  & (((\Selector24~2_combout ) # (\ShiftRight0~89_combout )))) # (!\Selector24~1_combout  & (\ShiftRight0~69_combout  & (!\Selector24~2_combout )))

	.dataa(\ShiftRight0~69_combout ),
	.datab(\Selector24~1_combout ),
	.datac(\Selector24~2_combout ),
	.datad(\ShiftRight0~89_combout ),
	.cin(gnd),
	.combout(\Selector24~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~6 .lut_mask = 16'hCEC2;
defparam \Selector24~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N6
cycloneive_lcell_comb \Selector23~4 (
// Equation(s):
// \Selector23~4_combout  = (\Selector21~3_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftRight0~23_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~26_combout )))))

	.dataa(\ShiftRight0~23_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\ShiftRight0~26_combout ),
	.datad(\Selector21~3_combout ),
	.cin(gnd),
	.combout(\Selector23~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~4 .lut_mask = 16'hB800;
defparam \Selector23~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N16
cycloneive_lcell_comb \Selector23~5 (
// Equation(s):
// \Selector23~5_combout  = (\Selector31~30_combout  & (((\my_alu.portB[8]~input_o ) # (\my_alu.portA[8]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[8]~input_o  & \my_alu.portA[8]~input_o )))

	.dataa(\Selector31~25_combout ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portB[8]~input_o ),
	.datad(\my_alu.portA[8]~input_o ),
	.cin(gnd),
	.combout(\Selector23~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~5 .lut_mask = 16'hECC0;
defparam \Selector23~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N0
cycloneive_lcell_comb \Selector23~6 (
// Equation(s):
// \Selector23~6_combout  = (\Add1~16_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~16_combout )))) # (!\Add1~16_combout  & (\Selector31~27_combout  & (\Add0~16_combout )))

	.dataa(\Add1~16_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Add0~16_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector23~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~6 .lut_mask = 16'hEAC0;
defparam \Selector23~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N26
cycloneive_lcell_comb \Selector23~7 (
// Equation(s):
// \Selector23~7_combout  = (\my_alu.portB[8]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portA[8]~input_o )))) # (!\my_alu.portB[8]~input_o  & ((\my_alu.portA[8]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portA[8]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\Selector31~31_combout ),
	.datab(\Selector31~32_combout ),
	.datac(\my_alu.portB[8]~input_o ),
	.datad(\my_alu.portA[8]~input_o ),
	.cin(gnd),
	.combout(\Selector23~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~7 .lut_mask = 16'h0AAC;
defparam \Selector23~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N2
cycloneive_lcell_comb \Selector23~8 (
// Equation(s):
// \Selector23~8_combout  = (\Selector23~4_combout ) # ((\Selector23~6_combout ) # ((\Selector23~7_combout ) # (\Selector23~5_combout )))

	.dataa(\Selector23~4_combout ),
	.datab(\Selector23~6_combout ),
	.datac(\Selector23~7_combout ),
	.datad(\Selector23~5_combout ),
	.cin(gnd),
	.combout(\Selector23~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~8 .lut_mask = 16'hFFFE;
defparam \Selector23~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N26
cycloneive_lcell_comb \Selector22~6 (
// Equation(s):
// \Selector22~6_combout  = (\my_alu.portA[9]~input_o  & (((!\my_alu.portB[9]~input_o  & \Selector31~31_combout )))) # (!\my_alu.portA[9]~input_o  & ((\my_alu.portB[9]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[9]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\my_alu.portA[9]~input_o ),
	.datab(\Selector31~32_combout ),
	.datac(\my_alu.portB[9]~input_o ),
	.datad(\Selector31~31_combout ),
	.cin(gnd),
	.combout(\Selector22~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~6 .lut_mask = 16'h5E04;
defparam \Selector22~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N10
cycloneive_lcell_comb \Selector21~4 (
// Equation(s):
// \Selector21~4_combout  = (\Selector31~30_combout  & (((\my_alu.portA[10]~input_o ) # (\my_alu.portB[10]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portA[10]~input_o  & \my_alu.portB[10]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portA[10]~input_o ),
	.datad(\my_alu.portB[10]~input_o ),
	.cin(gnd),
	.combout(\Selector21~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~4 .lut_mask = 16'hEAA0;
defparam \Selector21~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N30
cycloneive_lcell_comb \ShiftLeft0~39 (
// Equation(s):
// \ShiftLeft0~39_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~34_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~38_combout )))

	.dataa(\ShiftLeft0~34_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~38_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~39_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~39 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~39 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N30
cycloneive_lcell_comb \ShiftLeft0~40 (
// Equation(s):
// \ShiftLeft0~40_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & ((\ShiftLeft0~25_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~39_combout ))))

	.dataa(\ShiftLeft0~39_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~25_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~40_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~40 .lut_mask = 16'h3202;
defparam \ShiftLeft0~40 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N22
cycloneive_lcell_comb \Selector21~6 (
// Equation(s):
// \Selector21~6_combout  = (\my_alu.portA[10]~input_o  & (((\Selector31~31_combout  & !\my_alu.portB[10]~input_o )))) # (!\my_alu.portA[10]~input_o  & ((\my_alu.portB[10]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[10]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portA[10]~input_o ),
	.datad(\my_alu.portB[10]~input_o ),
	.cin(gnd),
	.combout(\Selector21~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~6 .lut_mask = 16'h0CCA;
defparam \Selector21~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N6
cycloneive_lcell_comb \Selector20~4 (
// Equation(s):
// \Selector20~4_combout  = (\Selector31~30_combout  & ((\my_alu.portA[11]~input_o ) # ((\my_alu.portB[11]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portA[11]~input_o  & (\my_alu.portB[11]~input_o  & \Selector31~25_combout )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portA[11]~input_o ),
	.datac(\my_alu.portB[11]~input_o ),
	.datad(\Selector31~25_combout ),
	.cin(gnd),
	.combout(\Selector20~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~4 .lut_mask = 16'hE8A8;
defparam \Selector20~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N8
cycloneive_lcell_comb \Selector20~5 (
// Equation(s):
// \Selector20~5_combout  = (\Add0~22_combout  & ((\Selector31~27_combout ) # ((\Add1~22_combout  & \Selector31~26_combout )))) # (!\Add0~22_combout  & (\Add1~22_combout  & ((\Selector31~26_combout ))))

	.dataa(\Add0~22_combout ),
	.datab(\Add1~22_combout ),
	.datac(\Selector31~27_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector20~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~5 .lut_mask = 16'hECA0;
defparam \Selector20~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N18
cycloneive_lcell_comb \Selector20~6 (
// Equation(s):
// \Selector20~6_combout  = (\my_alu.portA[11]~input_o  & (((!\my_alu.portB[11]~input_o  & \Selector31~31_combout )))) # (!\my_alu.portA[11]~input_o  & ((\my_alu.portB[11]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[11]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\my_alu.portA[11]~input_o ),
	.datac(\my_alu.portB[11]~input_o ),
	.datad(\Selector31~31_combout ),
	.cin(gnd),
	.combout(\Selector20~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~6 .lut_mask = 16'h3E02;
defparam \Selector20~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N20
cycloneive_lcell_comb \Selector20~7 (
// Equation(s):
// \Selector20~7_combout  = (\Selector20~6_combout ) # ((\Selector20~5_combout ) # (\Selector20~4_combout ))

	.dataa(gnd),
	.datab(\Selector20~6_combout ),
	.datac(\Selector20~5_combout ),
	.datad(\Selector20~4_combout ),
	.cin(gnd),
	.combout(\Selector20~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~7 .lut_mask = 16'hFFFC;
defparam \Selector20~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N6
cycloneive_lcell_comb \Selector19~6 (
// Equation(s):
// \Selector19~6_combout  = (\my_alu.portB[12]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[12]~input_o )))) # (!\my_alu.portB[12]~input_o  & ((\my_alu.portA[12]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[12]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[12]~input_o ),
	.datad(\my_alu.portA[12]~input_o ),
	.cin(gnd),
	.combout(\Selector19~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~6 .lut_mask = 16'h0CCA;
defparam \Selector19~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N8
cycloneive_lcell_comb \ShiftLeft0~46 (
// Equation(s):
// \ShiftLeft0~46_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[10]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[12]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[10]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~46_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~46 .lut_mask = 16'hFC0C;
defparam \ShiftLeft0~46 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N10
cycloneive_lcell_comb \Selector18~2 (
// Equation(s):
// \Selector18~2_combout  = (\Selector23~9_combout  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~32_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~35_combout ))))

	.dataa(\Selector23~9_combout ),
	.datab(\ShiftRight0~35_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~32_combout ),
	.cin(gnd),
	.combout(\Selector18~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~2 .lut_mask = 16'hA808;
defparam \Selector18~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N4
cycloneive_lcell_comb \Selector18~5 (
// Equation(s):
// \Selector18~5_combout  = (\my_alu.portB[13]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[13]~input_o )))) # (!\my_alu.portB[13]~input_o  & ((\my_alu.portA[13]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[13]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[13]~input_o ),
	.datad(\my_alu.portA[13]~input_o ),
	.cin(gnd),
	.combout(\Selector18~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~5 .lut_mask = 16'h0CCA;
defparam \Selector18~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N12
cycloneive_lcell_comb \ShiftLeft0~50 (
// Equation(s):
// \ShiftLeft0~50_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~46_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~49_combout ))

	.dataa(\ShiftLeft0~49_combout ),
	.datab(\ShiftLeft0~46_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~50_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~50 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~50 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N24
cycloneive_lcell_comb \Selector17~1 (
// Equation(s):
// \Selector17~1_combout  = (\Selector23~9_combout  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~62_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~65_combout ))))

	.dataa(\ShiftRight0~65_combout ),
	.datab(\Selector23~9_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~62_combout ),
	.cin(gnd),
	.combout(\Selector17~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~1 .lut_mask = 16'hC808;
defparam \Selector17~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N14
cycloneive_lcell_comb \Selector17~2 (
// Equation(s):
// \Selector17~2_combout  = (\Selector31~30_combout  & ((\my_alu.portB[14]~input_o ) # ((\my_alu.portA[14]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portB[14]~input_o  & (\Selector31~25_combout  & \my_alu.portA[14]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portB[14]~input_o ),
	.datac(\Selector31~25_combout ),
	.datad(\my_alu.portA[14]~input_o ),
	.cin(gnd),
	.combout(\Selector17~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~2 .lut_mask = 16'hEA88;
defparam \Selector17~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N10
cycloneive_lcell_comb \Selector16~5 (
// Equation(s):
// \Selector16~5_combout  = (\my_alu.portB[15]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portA[15]~input_o )))) # (!\my_alu.portB[15]~input_o  & ((\my_alu.portA[15]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portA[15]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\Selector31~31_combout ),
	.datab(\my_alu.portB[15]~input_o ),
	.datac(\Selector31~32_combout ),
	.datad(\my_alu.portA[15]~input_o ),
	.cin(gnd),
	.combout(\Selector16~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~5 .lut_mask = 16'h22B8;
defparam \Selector16~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N14
cycloneive_lcell_comb \Selector15~5 (
// Equation(s):
// \Selector15~5_combout  = (\Selector31~30_combout  & (((\my_alu.portB[16]~input_o ) # (\my_alu.portA[16]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[16]~input_o  & \my_alu.portA[16]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portB[16]~input_o ),
	.datad(\my_alu.portA[16]~input_o ),
	.cin(gnd),
	.combout(\Selector15~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~5 .lut_mask = 16'hEAA0;
defparam \Selector15~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N24
cycloneive_lcell_comb \Selector15~6 (
// Equation(s):
// \Selector15~6_combout  = (\Add0~32_combout  & ((\Selector31~27_combout ) # ((\Add1~32_combout  & \Selector31~26_combout )))) # (!\Add0~32_combout  & (\Add1~32_combout  & (\Selector31~26_combout )))

	.dataa(\Add0~32_combout ),
	.datab(\Add1~32_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector15~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~6 .lut_mask = 16'hEAC0;
defparam \Selector15~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N8
cycloneive_lcell_comb \Selector15~7 (
// Equation(s):
// \Selector15~7_combout  = (\Selector15~6_combout ) # (\Selector15~5_combout )

	.dataa(gnd),
	.datab(\Selector15~6_combout ),
	.datac(\Selector15~5_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector15~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~7 .lut_mask = 16'hFCFC;
defparam \Selector15~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N22
cycloneive_lcell_comb \Selector9~5 (
// Equation(s):
// \Selector9~5_combout  = (\my_alu.aluOp[0]~input_o ) # ((!\ShiftLeft0~8_combout  & ((\my_alu.portB[4]~input_o ) # (\my_alu.portB[3]~input_o ))))

	.dataa(\my_alu.aluOp[0]~input_o ),
	.datab(\my_alu.portB[4]~input_o ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftLeft0~8_combout ),
	.cin(gnd),
	.combout(\Selector9~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~5 .lut_mask = 16'hAAFE;
defparam \Selector9~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N20
cycloneive_lcell_comb \Selector13~4 (
// Equation(s):
// \Selector13~4_combout  = (\Add0~36_combout  & ((\Selector31~27_combout ) # ((\Selector31~26_combout  & \Add1~36_combout )))) # (!\Add0~36_combout  & (((\Selector31~26_combout  & \Add1~36_combout ))))

	.dataa(\Add0~36_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Add1~36_combout ),
	.cin(gnd),
	.combout(\Selector13~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~4 .lut_mask = 16'hF888;
defparam \Selector13~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N22
cycloneive_lcell_comb \Selector13~7 (
// Equation(s):
// \Selector13~7_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~25_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~39_combout ))

	.dataa(\ShiftLeft0~39_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~25_combout ),
	.cin(gnd),
	.combout(\Selector13~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~7 .lut_mask = 16'hFA0A;
defparam \Selector13~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N12
cycloneive_lcell_comb \ShiftLeft0~64 (
// Equation(s):
// \ShiftLeft0~64_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[16]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[18]~input_o )))

	.dataa(\my_alu.portA[16]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~64_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~64 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~64 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N28
cycloneive_lcell_comb \ShiftLeft0~65 (
// Equation(s):
// \ShiftLeft0~65_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~61_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~64_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~64_combout ),
	.datad(\ShiftLeft0~61_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~65_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~65 .lut_mask = 16'hFC30;
defparam \ShiftLeft0~65 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N0
cycloneive_lcell_comb \Selector12~1 (
// Equation(s):
// \Selector12~1_combout  = (\my_alu.portB[19]~input_o  & ((\Selector31~30_combout ) # ((\Selector31~25_combout  & \my_alu.portA[19]~input_o )))) # (!\my_alu.portB[19]~input_o  & (((\Selector31~30_combout  & \my_alu.portA[19]~input_o ))))

	.dataa(\my_alu.portB[19]~input_o ),
	.datab(\Selector31~25_combout ),
	.datac(\Selector31~30_combout ),
	.datad(\my_alu.portA[19]~input_o ),
	.cin(gnd),
	.combout(\Selector12~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~1 .lut_mask = 16'hF8A0;
defparam \Selector12~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N26
cycloneive_lcell_comb \Selector12~2 (
// Equation(s):
// \Selector12~2_combout  = (\Add1~38_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~38_combout )))) # (!\Add1~38_combout  & (\Selector31~27_combout  & (\Add0~38_combout )))

	.dataa(\Add1~38_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Add0~38_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector12~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~2 .lut_mask = 16'hEAC0;
defparam \Selector12~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N28
cycloneive_lcell_comb \Selector12~3 (
// Equation(s):
// \Selector12~3_combout  = (\my_alu.portB[19]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[19]~input_o )))) # (!\my_alu.portB[19]~input_o  & ((\my_alu.portA[19]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[19]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\my_alu.portB[19]~input_o ),
	.datab(\Selector31~32_combout ),
	.datac(\Selector31~31_combout ),
	.datad(\my_alu.portA[19]~input_o ),
	.cin(gnd),
	.combout(\Selector12~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~3 .lut_mask = 16'h50E4;
defparam \Selector12~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N6
cycloneive_lcell_comb \Selector12~4 (
// Equation(s):
// \Selector12~4_combout  = (\Selector12~1_combout ) # ((\Selector12~2_combout ) # (\Selector12~3_combout ))

	.dataa(gnd),
	.datab(\Selector12~1_combout ),
	.datac(\Selector12~2_combout ),
	.datad(\Selector12~3_combout ),
	.cin(gnd),
	.combout(\Selector12~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~4 .lut_mask = 16'hFFFC;
defparam \Selector12~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N16
cycloneive_lcell_comb \ShiftLeft0~68 (
// Equation(s):
// \ShiftLeft0~68_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~64_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~67_combout ))

	.dataa(\ShiftLeft0~67_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~64_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~68_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~68 .lut_mask = 16'hE2E2;
defparam \ShiftLeft0~68 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N16
cycloneive_lcell_comb \Selector11~5 (
// Equation(s):
// \Selector11~5_combout  = (\Selector31~30_combout  & (((\my_alu.portB[20]~input_o ) # (\my_alu.portA[20]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[20]~input_o  & \my_alu.portA[20]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portB[20]~input_o ),
	.datad(\my_alu.portA[20]~input_o ),
	.cin(gnd),
	.combout(\Selector11~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~5 .lut_mask = 16'hEAA0;
defparam \Selector11~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N30
cycloneive_lcell_comb \Selector11~6 (
// Equation(s):
// \Selector11~6_combout  = (\Add0~40_combout  & ((\Selector31~27_combout ) # ((\Add1~40_combout  & \Selector31~26_combout )))) # (!\Add0~40_combout  & (\Add1~40_combout  & (\Selector31~26_combout )))

	.dataa(\Add0~40_combout ),
	.datab(\Add1~40_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector11~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~6 .lut_mask = 16'hEAC0;
defparam \Selector11~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N18
cycloneive_lcell_comb \Selector11~7 (
// Equation(s):
// \Selector11~7_combout  = (\my_alu.portB[20]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[20]~input_o )))) # (!\my_alu.portB[20]~input_o  & ((\my_alu.portA[20]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[20]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[20]~input_o ),
	.datad(\my_alu.portA[20]~input_o ),
	.cin(gnd),
	.combout(\Selector11~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~7 .lut_mask = 16'h0CCA;
defparam \Selector11~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N20
cycloneive_lcell_comb \Selector11~8 (
// Equation(s):
// \Selector11~8_combout  = (\Selector11~6_combout ) # ((\Selector11~7_combout ) # (\Selector11~5_combout ))

	.dataa(\Selector11~6_combout ),
	.datab(\Selector11~7_combout ),
	.datac(gnd),
	.datad(\Selector11~5_combout ),
	.cin(gnd),
	.combout(\Selector11~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~8 .lut_mask = 16'hFFEE;
defparam \Selector11~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N12
cycloneive_lcell_comb \ShiftLeft0~73 (
// Equation(s):
// \ShiftLeft0~73_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[19]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[21]~input_o )))

	.dataa(\my_alu.portA[19]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[21]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~73_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~73 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~73 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N8
cycloneive_lcell_comb \Selector10~3 (
// Equation(s):
// \Selector10~3_combout  = (!\Selector9~5_combout  & (\Selector15~2_combout  & \ShiftLeft0~75_combout ))

	.dataa(\Selector9~5_combout ),
	.datab(gnd),
	.datac(\Selector15~2_combout ),
	.datad(\ShiftLeft0~75_combout ),
	.cin(gnd),
	.combout(\Selector10~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~3 .lut_mask = 16'h5000;
defparam \Selector10~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N26
cycloneive_lcell_comb \Selector10~4 (
// Equation(s):
// \Selector10~4_combout  = (\Selector31~30_combout  & ((\my_alu.portB[21]~input_o ) # ((\my_alu.portA[21]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portB[21]~input_o  & (\Selector31~25_combout  & \my_alu.portA[21]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portB[21]~input_o ),
	.datac(\Selector31~25_combout ),
	.datad(\my_alu.portA[21]~input_o ),
	.cin(gnd),
	.combout(\Selector10~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~4 .lut_mask = 16'hEA88;
defparam \Selector10~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N6
cycloneive_lcell_comb \Selector9~6 (
// Equation(s):
// \Selector9~6_combout  = (\Selector15~11_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~65_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~77_combout )))))

	.dataa(\ShiftLeft0~65_combout ),
	.datab(\Selector15~11_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~77_combout ),
	.cin(gnd),
	.combout(\Selector9~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~6 .lut_mask = 16'h8C80;
defparam \Selector9~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N22
cycloneive_lcell_comb \ShiftLeft0~78 (
// Equation(s):
// \ShiftLeft0~78_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[21]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[23]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[21]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~78_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~78 .lut_mask = 16'hEE44;
defparam \ShiftLeft0~78 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N30
cycloneive_lcell_comb \ShiftLeft0~79 (
// Equation(s):
// \ShiftLeft0~79_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~76_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~78_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~78_combout ),
	.datac(\ShiftLeft0~76_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~79_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~79 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~79 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N0
cycloneive_lcell_comb \Selector0~6 (
// Equation(s):
// \Selector0~6_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~68_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~79_combout )))

	.dataa(\ShiftLeft0~68_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~79_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~6 .lut_mask = 16'hAAF0;
defparam \Selector0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N26
cycloneive_lcell_comb \Selector8~3 (
// Equation(s):
// \Selector8~3_combout  = (\Selector0~6_combout  & (!\Selector9~5_combout  & \Selector15~2_combout ))

	.dataa(\Selector0~6_combout ),
	.datab(gnd),
	.datac(\Selector9~5_combout ),
	.datad(\Selector15~2_combout ),
	.cin(gnd),
	.combout(\Selector8~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~3 .lut_mask = 16'h0A00;
defparam \Selector8~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N24
cycloneive_lcell_comb \ShiftLeft0~80 (
// Equation(s):
// \ShiftLeft0~80_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[22]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[24]~input_o ))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(\my_alu.portA[22]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~80_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~80 .lut_mask = 16'hCCAA;
defparam \ShiftLeft0~80 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N26
cycloneive_lcell_comb \ShiftLeft0~81 (
// Equation(s):
// \ShiftLeft0~81_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~78_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~80_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~78_combout ),
	.datad(\ShiftLeft0~80_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~81_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~81 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~81 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N28
cycloneive_lcell_comb \Selector7~4 (
// Equation(s):
// \Selector7~4_combout  = (\Selector24~2_combout  & (((\ShiftLeft0~71_combout ) # (\Selector24~1_combout )))) # (!\Selector24~2_combout  & (\ShiftLeft0~81_combout  & ((!\Selector24~1_combout ))))

	.dataa(\ShiftLeft0~81_combout ),
	.datab(\ShiftLeft0~71_combout ),
	.datac(\Selector24~2_combout ),
	.datad(\Selector24~1_combout ),
	.cin(gnd),
	.combout(\Selector7~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~4 .lut_mask = 16'hF0CA;
defparam \Selector7~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N14
cycloneive_lcell_comb \Selector7~5 (
// Equation(s):
// \Selector7~5_combout  = (\Selector24~1_combout  & ((\Selector7~4_combout  & (\ShiftLeft0~33_combout )) # (!\Selector7~4_combout  & ((\ShiftLeft0~60_combout ))))) # (!\Selector24~1_combout  & (\Selector7~4_combout ))

	.dataa(\Selector24~1_combout ),
	.datab(\Selector7~4_combout ),
	.datac(\ShiftLeft0~33_combout ),
	.datad(\ShiftLeft0~60_combout ),
	.cin(gnd),
	.combout(\Selector7~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~5 .lut_mask = 16'hE6C4;
defparam \Selector7~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N20
cycloneive_lcell_comb \ShiftLeft0~82 (
// Equation(s):
// \ShiftLeft0~82_combout  = (!\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & ((\my_alu.portA[23]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[25]~input_o ))))

	.dataa(\my_alu.portA[25]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~82_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~82 .lut_mask = 16'h0C0A;
defparam \ShiftLeft0~82 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N6
cycloneive_lcell_comb \ShiftLeft0~83 (
// Equation(s):
// \ShiftLeft0~83_combout  = (\ShiftLeft0~82_combout ) # ((\ShiftLeft0~80_combout  & \my_alu.portB[0]~input_o ))

	.dataa(gnd),
	.datab(\ShiftLeft0~80_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftLeft0~82_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~83_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~83 .lut_mask = 16'hFFC0;
defparam \ShiftLeft0~83 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N26
cycloneive_lcell_comb \Selector6~3 (
// Equation(s):
// \Selector6~3_combout  = (\Selector24~1_combout  & (((\ShiftLeft0~63_combout ) # (\Selector24~2_combout )))) # (!\Selector24~1_combout  & (\ShiftLeft0~83_combout  & ((!\Selector24~2_combout ))))

	.dataa(\Selector24~1_combout ),
	.datab(\ShiftLeft0~83_combout ),
	.datac(\ShiftLeft0~63_combout ),
	.datad(\Selector24~2_combout ),
	.cin(gnd),
	.combout(\Selector6~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~3 .lut_mask = 16'hAAE4;
defparam \Selector6~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N0
cycloneive_lcell_comb \ShiftLeft0~84 (
// Equation(s):
// \ShiftLeft0~84_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & (\my_alu.portA[23]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[24]~input_o )))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[23]~input_o ),
	.datad(\my_alu.portA[24]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~84_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~84 .lut_mask = 16'hA280;
defparam \ShiftLeft0~84 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N12
cycloneive_lcell_comb \ShiftLeft0~86 (
// Equation(s):
// \ShiftLeft0~86_combout  = (\ShiftLeft0~84_combout ) # ((!\my_alu.portB[1]~input_o  & \ShiftLeft0~85_combout ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\ShiftLeft0~84_combout ),
	.datac(gnd),
	.datad(\ShiftLeft0~85_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~86_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~86 .lut_mask = 16'hDDCC;
defparam \ShiftLeft0~86 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N0
cycloneive_lcell_comb \Selector5~3 (
// Equation(s):
// \Selector5~3_combout  = (\Selector24~2_combout  & (((\Selector24~1_combout ) # (\ShiftLeft0~77_combout )))) # (!\Selector24~2_combout  & (\ShiftLeft0~86_combout  & (!\Selector24~1_combout )))

	.dataa(\ShiftLeft0~86_combout ),
	.datab(\Selector24~2_combout ),
	.datac(\Selector24~1_combout ),
	.datad(\ShiftLeft0~77_combout ),
	.cin(gnd),
	.combout(\Selector5~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~3 .lut_mask = 16'hCEC2;
defparam \Selector5~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N26
cycloneive_lcell_comb \Selector5~4 (
// Equation(s):
// \Selector5~4_combout  = (\Selector24~1_combout  & ((\Selector5~3_combout  & ((\ShiftLeft0~41_combout ))) # (!\Selector5~3_combout  & (\ShiftLeft0~66_combout )))) # (!\Selector24~1_combout  & (((\Selector5~3_combout ))))

	.dataa(\ShiftLeft0~66_combout ),
	.datab(\Selector24~1_combout ),
	.datac(\ShiftLeft0~41_combout ),
	.datad(\Selector5~3_combout ),
	.cin(gnd),
	.combout(\Selector5~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~4 .lut_mask = 16'hF388;
defparam \Selector5~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N14
cycloneive_lcell_comb \ShiftLeft0~87 (
// Equation(s):
// \ShiftLeft0~87_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & (\my_alu.portA[24]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[25]~input_o )))))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[25]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~87_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~87 .lut_mask = 16'hB800;
defparam \ShiftLeft0~87 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N10
cycloneive_lcell_comb \ShiftLeft0~88 (
// Equation(s):
// \ShiftLeft0~88_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[26]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[27]~input_o )))

	.dataa(\my_alu.portA[26]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[27]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~88_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~88 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~88 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N28
cycloneive_lcell_comb \ShiftLeft0~89 (
// Equation(s):
// \ShiftLeft0~89_combout  = (\ShiftLeft0~87_combout ) # ((!\my_alu.portB[1]~input_o  & \ShiftLeft0~88_combout ))

	.dataa(\ShiftLeft0~87_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\ShiftLeft0~88_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~89_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~89 .lut_mask = 16'hAFAA;
defparam \ShiftLeft0~89 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y38_N6
cycloneive_lcell_comb \Selector4~3 (
// Equation(s):
// \Selector4~3_combout  = (\Selector24~2_combout  & (((\Selector24~1_combout )))) # (!\Selector24~2_combout  & ((\Selector24~1_combout  & ((\ShiftLeft0~69_combout ))) # (!\Selector24~1_combout  & (\ShiftLeft0~89_combout ))))

	.dataa(\Selector24~2_combout ),
	.datab(\ShiftLeft0~89_combout ),
	.datac(\Selector24~1_combout ),
	.datad(\ShiftLeft0~69_combout ),
	.cin(gnd),
	.combout(\Selector4~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~3 .lut_mask = 16'hF4A4;
defparam \Selector4~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N4
cycloneive_lcell_comb \Selector4~4 (
// Equation(s):
// \Selector4~4_combout  = (\Selector4~3_combout  & (((\ShiftLeft0~45_combout ) # (!\Selector24~2_combout )))) # (!\Selector4~3_combout  & (\ShiftLeft0~79_combout  & (\Selector24~2_combout )))

	.dataa(\ShiftLeft0~79_combout ),
	.datab(\Selector4~3_combout ),
	.datac(\Selector24~2_combout ),
	.datad(\ShiftLeft0~45_combout ),
	.cin(gnd),
	.combout(\Selector4~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~4 .lut_mask = 16'hEC2C;
defparam \Selector4~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N22
cycloneive_lcell_comb \Selector3~6 (
// Equation(s):
// \Selector3~6_combout  = (\Add1~56_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~56_combout )))) # (!\Add1~56_combout  & (\Selector31~27_combout  & (\Add0~56_combout )))

	.dataa(\Add1~56_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Add0~56_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector3~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~6 .lut_mask = 16'hEAC0;
defparam \Selector3~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N2
cycloneive_lcell_comb \Selector2~7 (
// Equation(s):
// \Selector2~7_combout  = (\Add1~58_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~58_combout )))) # (!\Add1~58_combout  & (\Selector31~27_combout  & ((\Add0~58_combout ))))

	.dataa(\Add1~58_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Add0~58_combout ),
	.cin(gnd),
	.combout(\Selector2~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~7 .lut_mask = 16'hECA0;
defparam \Selector2~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N10
cycloneive_lcell_comb \Selector1~4 (
// Equation(s):
// \Selector1~4_combout  = (\my_alu.portA[30]~input_o  & (((!\my_alu.portB[30]~input_o  & \Selector31~31_combout )))) # (!\my_alu.portA[30]~input_o  & ((\my_alu.portB[30]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[30]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\my_alu.portA[30]~input_o ),
	.datac(\my_alu.portB[30]~input_o ),
	.datad(\Selector31~31_combout ),
	.cin(gnd),
	.combout(\Selector1~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~4 .lut_mask = 16'h3E02;
defparam \Selector1~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N28
cycloneive_lcell_comb \Selector0~8 (
// Equation(s):
// \Selector0~8_combout  = (\Selector1~6_combout  & (\ShiftLeft0~11_combout )) # (!\Selector1~6_combout  & ((\ShiftLeft0~11_combout  & (\ShiftLeft0~91_combout )) # (!\ShiftLeft0~11_combout  & ((\my_alu.portA[31]~input_o )))))

	.dataa(\Selector1~6_combout ),
	.datab(\ShiftLeft0~11_combout ),
	.datac(\ShiftLeft0~91_combout ),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(gnd),
	.combout(\Selector0~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~8 .lut_mask = 16'hD9C8;
defparam \Selector0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N30
cycloneive_lcell_comb \Selector0~9 (
// Equation(s):
// \Selector0~9_combout  = (\Selector1~6_combout  & ((\Selector0~8_combout  & (\ShiftLeft0~89_combout )) # (!\Selector0~8_combout  & ((\my_alu.portA[30]~input_o ))))) # (!\Selector1~6_combout  & (((\Selector0~8_combout ))))

	.dataa(\Selector1~6_combout ),
	.datab(\ShiftLeft0~89_combout ),
	.datac(\my_alu.portA[30]~input_o ),
	.datad(\Selector0~8_combout ),
	.cin(gnd),
	.combout(\Selector0~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~9 .lut_mask = 16'hDDA0;
defparam \Selector0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N6
cycloneive_lcell_comb \Equal10~8 (
// Equation(s):
// \Equal10~8_combout  = (!\Selector7~8_combout  & (!\Selector6~6_combout  & (!\Selector24~9_combout  & !\Selector25~6_combout )))

	.dataa(\Selector7~8_combout ),
	.datab(\Selector6~6_combout ),
	.datac(\Selector24~9_combout ),
	.datad(\Selector25~6_combout ),
	.cin(gnd),
	.combout(\Equal10~8_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~8 .lut_mask = 16'h0001;
defparam \Equal10~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N2
cycloneive_lcell_comb \Equal10~9 (
// Equation(s):
// \Equal10~9_combout  = (!\Selector28~9_combout  & (\Equal10~8_combout  & !\Selector3~9_combout ))

	.dataa(\Selector28~9_combout ),
	.datab(\Equal10~8_combout ),
	.datac(gnd),
	.datad(\Selector3~9_combout ),
	.cin(gnd),
	.combout(\Equal10~9_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~9 .lut_mask = 16'h0044;
defparam \Equal10~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N6
cycloneive_lcell_comb \Selector15~13 (
// Equation(s):
// \Selector15~13_combout  = (\Selector15~10_combout ) # ((!\Selector9~5_combout  & (\Selector15~2_combout  & \ShiftLeft0~60_combout )))

	.dataa(\Selector9~5_combout ),
	.datab(\Selector15~10_combout ),
	.datac(\Selector15~2_combout ),
	.datad(\ShiftLeft0~60_combout ),
	.cin(gnd),
	.combout(\Selector15~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~13 .lut_mask = 16'hDCCC;
defparam \Selector15~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N26
cycloneive_lcell_comb \Selector0~3 (
// Equation(s):
// \Selector0~3_combout  = (\my_alu.aluOp[0]~input_o  & ((\my_alu.portB[31]~input_o  & (!\my_alu.aluOp[1]~input_o )) # (!\my_alu.portB[31]~input_o  & (\my_alu.aluOp[1]~input_o  & !\my_alu.portA[31]~input_o )))) # (!\my_alu.aluOp[0]~input_o  & 
// (\my_alu.aluOp[1]~input_o  & (\my_alu.portB[31]~input_o  $ (\my_alu.portA[31]~input_o ))))

	.dataa(\my_alu.aluOp[0]~input_o ),
	.datab(\my_alu.portB[31]~input_o ),
	.datac(\my_alu.aluOp[1]~input_o ),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(gnd),
	.combout(\Selector0~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~3 .lut_mask = 16'h1868;
defparam \Selector0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOOBUF_X115_Y18_N2
cycloneive_io_obuf \my_alu.outputPort[0]~output (
	.i(\Selector31~24_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [0]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[0]~output .bus_hold = "false";
defparam \my_alu.outputPort[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y59_N23
cycloneive_io_obuf \my_alu.outputPort[1]~output (
	.i(\Selector30~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [1]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[1]~output .bus_hold = "false";
defparam \my_alu.outputPort[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y57_N16
cycloneive_io_obuf \my_alu.outputPort[2]~output (
	.i(\Selector29~11_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [2]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[2]~output .bus_hold = "false";
defparam \my_alu.outputPort[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y12_N2
cycloneive_io_obuf \my_alu.outputPort[3]~output (
	.i(\Selector28~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [3]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[3]~output .bus_hold = "false";
defparam \my_alu.outputPort[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y58_N23
cycloneive_io_obuf \my_alu.outputPort[4]~output (
	.i(\Selector27~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [4]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[4]~output .bus_hold = "false";
defparam \my_alu.outputPort[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y13_N9
cycloneive_io_obuf \my_alu.outputPort[5]~output (
	.i(\Selector26~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [5]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[5]~output .bus_hold = "false";
defparam \my_alu.outputPort[5]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y17_N2
cycloneive_io_obuf \my_alu.outputPort[6]~output (
	.i(\Selector25~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [6]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[6]~output .bus_hold = "false";
defparam \my_alu.outputPort[6]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X94_Y0_N9
cycloneive_io_obuf \my_alu.outputPort[7]~output (
	.i(\Selector24~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [7]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[7]~output .bus_hold = "false";
defparam \my_alu.outputPort[7]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y12_N9
cycloneive_io_obuf \my_alu.outputPort[8]~output (
	.i(\Selector23~12_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [8]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[8]~output .bus_hold = "false";
defparam \my_alu.outputPort[8]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y73_N16
cycloneive_io_obuf \my_alu.outputPort[9]~output (
	.i(\Selector22~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [9]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[9]~output .bus_hold = "false";
defparam \my_alu.outputPort[9]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y0_N23
cycloneive_io_obuf \my_alu.outputPort[10]~output (
	.i(\Selector21~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [10]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[10]~output .bus_hold = "false";
defparam \my_alu.outputPort[10]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y50_N2
cycloneive_io_obuf \my_alu.outputPort[11]~output (
	.i(\Selector20~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [11]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[11]~output .bus_hold = "false";
defparam \my_alu.outputPort[11]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y14_N2
cycloneive_io_obuf \my_alu.outputPort[12]~output (
	.i(\Selector19~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [12]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[12]~output .bus_hold = "false";
defparam \my_alu.outputPort[12]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y54_N16
cycloneive_io_obuf \my_alu.outputPort[13]~output (
	.i(\Selector18~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [13]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[13]~output .bus_hold = "false";
defparam \my_alu.outputPort[13]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y0_N16
cycloneive_io_obuf \my_alu.outputPort[14]~output (
	.i(\Selector17~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [14]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[14]~output .bus_hold = "false";
defparam \my_alu.outputPort[14]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X91_Y0_N16
cycloneive_io_obuf \my_alu.outputPort[15]~output (
	.i(\Selector16~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [15]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[15]~output .bus_hold = "false";
defparam \my_alu.outputPort[15]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y73_N9
cycloneive_io_obuf \my_alu.outputPort[16]~output (
	.i(\Selector15~12_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [16]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[16]~output .bus_hold = "false";
defparam \my_alu.outputPort[16]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y58_N16
cycloneive_io_obuf \my_alu.outputPort[17]~output (
	.i(\Selector14~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [17]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[17]~output .bus_hold = "false";
defparam \my_alu.outputPort[17]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y15_N2
cycloneive_io_obuf \my_alu.outputPort[18]~output (
	.i(\Selector13~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [18]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[18]~output .bus_hold = "false";
defparam \my_alu.outputPort[18]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y59_N16
cycloneive_io_obuf \my_alu.outputPort[19]~output (
	.i(\Selector12~7_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [19]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[19]~output .bus_hold = "false";
defparam \my_alu.outputPort[19]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X91_Y0_N23
cycloneive_io_obuf \my_alu.outputPort[20]~output (
	.i(\Selector11~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [20]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[20]~output .bus_hold = "false";
defparam \my_alu.outputPort[20]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y0_N2
cycloneive_io_obuf \my_alu.outputPort[21]~output (
	.i(\Selector10~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [21]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[21]~output .bus_hold = "false";
defparam \my_alu.outputPort[21]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y51_N9
cycloneive_io_obuf \my_alu.outputPort[22]~output (
	.i(\Selector9~12_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [22]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[22]~output .bus_hold = "false";
defparam \my_alu.outputPort[22]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y14_N9
cycloneive_io_obuf \my_alu.outputPort[23]~output (
	.i(\Selector8~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [23]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[23]~output .bus_hold = "false";
defparam \my_alu.outputPort[23]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y11_N2
cycloneive_io_obuf \my_alu.outputPort[24]~output (
	.i(\Selector7~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [24]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[24]~output .bus_hold = "false";
defparam \my_alu.outputPort[24]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y13_N2
cycloneive_io_obuf \my_alu.outputPort[25]~output (
	.i(\Selector6~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [25]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[25]~output .bus_hold = "false";
defparam \my_alu.outputPort[25]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y56_N23
cycloneive_io_obuf \my_alu.outputPort[26]~output (
	.i(\Selector5~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [26]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[26]~output .bus_hold = "false";
defparam \my_alu.outputPort[26]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y53_N16
cycloneive_io_obuf \my_alu.outputPort[27]~output (
	.i(\Selector4~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [27]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[27]~output .bus_hold = "false";
defparam \my_alu.outputPort[27]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y0_N9
cycloneive_io_obuf \my_alu.outputPort[28]~output (
	.i(\Selector3~9_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [28]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[28]~output .bus_hold = "false";
defparam \my_alu.outputPort[28]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y50_N9
cycloneive_io_obuf \my_alu.outputPort[29]~output (
	.i(\Selector2~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [29]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[29]~output .bus_hold = "false";
defparam \my_alu.outputPort[29]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X89_Y73_N23
cycloneive_io_obuf \my_alu.outputPort[30]~output (
	.i(\Selector1~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [30]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[30]~output .bus_hold = "false";
defparam \my_alu.outputPort[30]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y56_N16
cycloneive_io_obuf \my_alu.outputPort[31]~output (
	.i(\Selector0~14_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.outputPort [31]),
	.obar());
// synopsys translate_off
defparam \my_alu.outputPort[31]~output .bus_hold = "false";
defparam \my_alu.outputPort[31]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X91_Y73_N16
cycloneive_io_obuf \my_alu.zero~output (
	.i(\Equal10~11_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.zero ),
	.obar());
// synopsys translate_off
defparam \my_alu.zero~output .bus_hold = "false";
defparam \my_alu.zero~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y55_N23
cycloneive_io_obuf \my_alu.overflow~output (
	.i(\overflow~1_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.overflow ),
	.obar());
// synopsys translate_off
defparam \my_alu.overflow~output .bus_hold = "false";
defparam \my_alu.overflow~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X115_Y57_N23
cycloneive_io_obuf \my_alu.negative~output (
	.i(\Selector0~14_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\my_alu.negative ),
	.obar());
// synopsys translate_off
defparam \my_alu.negative~output .bus_hold = "false";
defparam \my_alu.negative~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X115_Y55_N15
cycloneive_io_ibuf \my_alu.aluOp[3]~input (
	.i(\my_alu.aluOp [3]),
	.ibar(gnd),
	.o(\my_alu.aluOp[3]~input_o ));
// synopsys translate_off
defparam \my_alu.aluOp[3]~input .bus_hold = "false";
defparam \my_alu.aluOp[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y51_N1
cycloneive_io_ibuf \my_alu.aluOp[2]~input (
	.i(\my_alu.aluOp [2]),
	.ibar(gnd),
	.o(\my_alu.aluOp[2]~input_o ));
// synopsys translate_off
defparam \my_alu.aluOp[2]~input .bus_hold = "false";
defparam \my_alu.aluOp[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N24
cycloneive_lcell_comb \Selector31~10 (
// Equation(s):
// \Selector31~10_combout  = (\my_alu.aluOp[1]~input_o  & (\my_alu.aluOp[3]~input_o  & !\my_alu.aluOp[2]~input_o ))

	.dataa(\my_alu.aluOp[1]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(gnd),
	.datad(\my_alu.aluOp[2]~input_o ),
	.cin(gnd),
	.combout(\Selector31~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~10 .lut_mask = 16'h0088;
defparam \Selector31~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y44_N1
cycloneive_io_ibuf \my_alu.aluOp[0]~input (
	.i(\my_alu.aluOp [0]),
	.ibar(gnd),
	.o(\my_alu.aluOp[0]~input_o ));
// synopsys translate_off
defparam \my_alu.aluOp[0]~input .bus_hold = "false";
defparam \my_alu.aluOp[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y33_N8
cycloneive_io_ibuf \my_alu.portA[31]~input (
	.i(\my_alu.portA [31]),
	.ibar(gnd),
	.o(\my_alu.portA[31]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[31]~input .bus_hold = "false";
defparam \my_alu.portA[31]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y36_N15
cycloneive_io_ibuf \my_alu.portA[30]~input (
	.i(\my_alu.portA [30]),
	.ibar(gnd),
	.o(\my_alu.portA[30]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[30]~input .bus_hold = "false";
defparam \my_alu.portA[30]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y43_N8
cycloneive_io_ibuf \my_alu.portA[29]~input (
	.i(\my_alu.portA [29]),
	.ibar(gnd),
	.o(\my_alu.portA[29]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[29]~input .bus_hold = "false";
defparam \my_alu.portA[29]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y45_N15
cycloneive_io_ibuf \my_alu.portA[28]~input (
	.i(\my_alu.portA [28]),
	.ibar(gnd),
	.o(\my_alu.portA[28]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[28]~input .bus_hold = "false";
defparam \my_alu.portA[28]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y47_N15
cycloneive_io_ibuf \my_alu.portB[27]~input (
	.i(\my_alu.portB [27]),
	.ibar(gnd),
	.o(\my_alu.portB[27]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[27]~input .bus_hold = "false";
defparam \my_alu.portB[27]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y41_N1
cycloneive_io_ibuf \my_alu.portB[26]~input (
	.i(\my_alu.portB [26]),
	.ibar(gnd),
	.o(\my_alu.portB[26]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[26]~input .bus_hold = "false";
defparam \my_alu.portB[26]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y21_N15
cycloneive_io_ibuf \my_alu.portA[25]~input (
	.i(\my_alu.portA [25]),
	.ibar(gnd),
	.o(\my_alu.portA[25]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[25]~input .bus_hold = "false";
defparam \my_alu.portA[25]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y23_N8
cycloneive_io_ibuf \my_alu.portB[24]~input (
	.i(\my_alu.portB [24]),
	.ibar(gnd),
	.o(\my_alu.portB[24]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[24]~input .bus_hold = "false";
defparam \my_alu.portB[24]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N22
cycloneive_io_ibuf \my_alu.portA[23]~input (
	.i(\my_alu.portA [23]),
	.ibar(gnd),
	.o(\my_alu.portA[23]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[23]~input .bus_hold = "false";
defparam \my_alu.portA[23]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y35_N22
cycloneive_io_ibuf \my_alu.portA[22]~input (
	.i(\my_alu.portA [22]),
	.ibar(gnd),
	.o(\my_alu.portA[22]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[22]~input .bus_hold = "false";
defparam \my_alu.portA[22]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y35_N15
cycloneive_io_ibuf \my_alu.portA[21]~input (
	.i(\my_alu.portA [21]),
	.ibar(gnd),
	.o(\my_alu.portA[21]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[21]~input .bus_hold = "false";
defparam \my_alu.portA[21]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X96_Y0_N8
cycloneive_io_ibuf \my_alu.portB[20]~input (
	.i(\my_alu.portB [20]),
	.ibar(gnd),
	.o(\my_alu.portB[20]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[20]~input .bus_hold = "false";
defparam \my_alu.portB[20]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y18_N8
cycloneive_io_ibuf \my_alu.portB[19]~input (
	.i(\my_alu.portB [19]),
	.ibar(gnd),
	.o(\my_alu.portB[19]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[19]~input .bus_hold = "false";
defparam \my_alu.portB[19]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y49_N8
cycloneive_io_ibuf \my_alu.portA[18]~input (
	.i(\my_alu.portA [18]),
	.ibar(gnd),
	.o(\my_alu.portA[18]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[18]~input .bus_hold = "false";
defparam \my_alu.portA[18]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y16_N8
cycloneive_io_ibuf \my_alu.portA[17]~input (
	.i(\my_alu.portA [17]),
	.ibar(gnd),
	.o(\my_alu.portA[17]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[17]~input .bus_hold = "false";
defparam \my_alu.portA[17]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y16_N1
cycloneive_io_ibuf \my_alu.portB[16]~input (
	.i(\my_alu.portB [16]),
	.ibar(gnd),
	.o(\my_alu.portB[16]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[16]~input .bus_hold = "false";
defparam \my_alu.portB[16]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y44_N8
cycloneive_io_ibuf \my_alu.portB[15]~input (
	.i(\my_alu.portB [15]),
	.ibar(gnd),
	.o(\my_alu.portB[15]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[15]~input .bus_hold = "false";
defparam \my_alu.portB[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y19_N8
cycloneive_io_ibuf \my_alu.portB[14]~input (
	.i(\my_alu.portB [14]),
	.ibar(gnd),
	.o(\my_alu.portB[14]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[14]~input .bus_hold = "false";
defparam \my_alu.portB[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y28_N8
cycloneive_io_ibuf \my_alu.portA[13]~input (
	.i(\my_alu.portA [13]),
	.ibar(gnd),
	.o(\my_alu.portA[13]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[13]~input .bus_hold = "false";
defparam \my_alu.portA[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y26_N15
cycloneive_io_ibuf \my_alu.portB[12]~input (
	.i(\my_alu.portB [12]),
	.ibar(gnd),
	.o(\my_alu.portB[12]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[12]~input .bus_hold = "false";
defparam \my_alu.portB[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y45_N22
cycloneive_io_ibuf \my_alu.portB[11]~input (
	.i(\my_alu.portB [11]),
	.ibar(gnd),
	.o(\my_alu.portB[11]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[11]~input .bus_hold = "false";
defparam \my_alu.portB[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y31_N8
cycloneive_io_ibuf \my_alu.portA[10]~input (
	.i(\my_alu.portA [10]),
	.ibar(gnd),
	.o(\my_alu.portA[10]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[10]~input .bus_hold = "false";
defparam \my_alu.portA[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y29_N8
cycloneive_io_ibuf \my_alu.portA[9]~input (
	.i(\my_alu.portA [9]),
	.ibar(gnd),
	.o(\my_alu.portA[9]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[9]~input .bus_hold = "false";
defparam \my_alu.portA[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y30_N8
cycloneive_io_ibuf \my_alu.portA[8]~input (
	.i(\my_alu.portA [8]),
	.ibar(gnd),
	.o(\my_alu.portA[8]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[8]~input .bus_hold = "false";
defparam \my_alu.portA[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y25_N22
cycloneive_io_ibuf \my_alu.portA[7]~input (
	.i(\my_alu.portA [7]),
	.ibar(gnd),
	.o(\my_alu.portA[7]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[7]~input .bus_hold = "false";
defparam \my_alu.portA[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y25_N15
cycloneive_io_ibuf \my_alu.portB[6]~input (
	.i(\my_alu.portB [6]),
	.ibar(gnd),
	.o(\my_alu.portB[6]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[6]~input .bus_hold = "false";
defparam \my_alu.portB[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y24_N1
cycloneive_io_ibuf \my_alu.portA[5]~input (
	.i(\my_alu.portA [5]),
	.ibar(gnd),
	.o(\my_alu.portA[5]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[5]~input .bus_hold = "false";
defparam \my_alu.portA[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y40_N1
cycloneive_io_ibuf \my_alu.portB[4]~input (
	.i(\my_alu.portB [4]),
	.ibar(gnd),
	.o(\my_alu.portB[4]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[4]~input .bus_hold = "false";
defparam \my_alu.portB[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y36_N8
cycloneive_io_ibuf \my_alu.portB[3]~input (
	.i(\my_alu.portB [3]),
	.ibar(gnd),
	.o(\my_alu.portB[3]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[3]~input .bus_hold = "false";
defparam \my_alu.portB[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y46_N1
cycloneive_io_ibuf \my_alu.portA[2]~input (
	.i(\my_alu.portA [2]),
	.ibar(gnd),
	.o(\my_alu.portA[2]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[2]~input .bus_hold = "false";
defparam \my_alu.portA[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y48_N8
cycloneive_io_ibuf \my_alu.portA[1]~input (
	.i(\my_alu.portA [1]),
	.ibar(gnd),
	.o(\my_alu.portA[1]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[1]~input .bus_hold = "false";
defparam \my_alu.portA[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X58_Y0_N8
cycloneive_io_ibuf \my_alu.portA[0]~input (
	.i(\my_alu.portA [0]),
	.ibar(gnd),
	.o(\my_alu.portA[0]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[0]~input .bus_hold = "false";
defparam \my_alu.portA[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N0
cycloneive_lcell_comb \LessThan1~1 (
// Equation(s):
// \LessThan1~1_cout  = CARRY((\my_alu.portB[0]~input_o  & !\my_alu.portA[0]~input_o ))

	.dataa(\my_alu.portB[0]~input_o ),
	.datab(\my_alu.portA[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\LessThan1~1_cout ));
// synopsys translate_off
defparam \LessThan1~1 .lut_mask = 16'h0022;
defparam \LessThan1~1 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N2
cycloneive_lcell_comb \LessThan1~3 (
// Equation(s):
// \LessThan1~3_cout  = CARRY((\my_alu.portB[1]~input_o  & (\my_alu.portA[1]~input_o  & !\LessThan1~1_cout )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[1]~input_o ) # (!\LessThan1~1_cout ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~1_cout ),
	.combout(),
	.cout(\LessThan1~3_cout ));
// synopsys translate_off
defparam \LessThan1~3 .lut_mask = 16'h004D;
defparam \LessThan1~3 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N4
cycloneive_lcell_comb \LessThan1~5 (
// Equation(s):
// \LessThan1~5_cout  = CARRY((\my_alu.portB[2]~input_o  & ((!\LessThan1~3_cout ) # (!\my_alu.portA[2]~input_o ))) # (!\my_alu.portB[2]~input_o  & (!\my_alu.portA[2]~input_o  & !\LessThan1~3_cout )))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portA[2]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~3_cout ),
	.combout(),
	.cout(\LessThan1~5_cout ));
// synopsys translate_off
defparam \LessThan1~5 .lut_mask = 16'h002B;
defparam \LessThan1~5 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N6
cycloneive_lcell_comb \LessThan1~7 (
// Equation(s):
// \LessThan1~7_cout  = CARRY((\my_alu.portA[3]~input_o  & ((!\LessThan1~5_cout ) # (!\my_alu.portB[3]~input_o ))) # (!\my_alu.portA[3]~input_o  & (!\my_alu.portB[3]~input_o  & !\LessThan1~5_cout )))

	.dataa(\my_alu.portA[3]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~5_cout ),
	.combout(),
	.cout(\LessThan1~7_cout ));
// synopsys translate_off
defparam \LessThan1~7 .lut_mask = 16'h002B;
defparam \LessThan1~7 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N8
cycloneive_lcell_comb \LessThan1~9 (
// Equation(s):
// \LessThan1~9_cout  = CARRY((\my_alu.portA[4]~input_o  & (\my_alu.portB[4]~input_o  & !\LessThan1~7_cout )) # (!\my_alu.portA[4]~input_o  & ((\my_alu.portB[4]~input_o ) # (!\LessThan1~7_cout ))))

	.dataa(\my_alu.portA[4]~input_o ),
	.datab(\my_alu.portB[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~7_cout ),
	.combout(),
	.cout(\LessThan1~9_cout ));
// synopsys translate_off
defparam \LessThan1~9 .lut_mask = 16'h004D;
defparam \LessThan1~9 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N10
cycloneive_lcell_comb \LessThan1~11 (
// Equation(s):
// \LessThan1~11_cout  = CARRY((\my_alu.portB[5]~input_o  & (\my_alu.portA[5]~input_o  & !\LessThan1~9_cout )) # (!\my_alu.portB[5]~input_o  & ((\my_alu.portA[5]~input_o ) # (!\LessThan1~9_cout ))))

	.dataa(\my_alu.portB[5]~input_o ),
	.datab(\my_alu.portA[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~9_cout ),
	.combout(),
	.cout(\LessThan1~11_cout ));
// synopsys translate_off
defparam \LessThan1~11 .lut_mask = 16'h004D;
defparam \LessThan1~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N12
cycloneive_lcell_comb \LessThan1~13 (
// Equation(s):
// \LessThan1~13_cout  = CARRY((\my_alu.portA[6]~input_o  & (\my_alu.portB[6]~input_o  & !\LessThan1~11_cout )) # (!\my_alu.portA[6]~input_o  & ((\my_alu.portB[6]~input_o ) # (!\LessThan1~11_cout ))))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~11_cout ),
	.combout(),
	.cout(\LessThan1~13_cout ));
// synopsys translate_off
defparam \LessThan1~13 .lut_mask = 16'h004D;
defparam \LessThan1~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N14
cycloneive_lcell_comb \LessThan1~15 (
// Equation(s):
// \LessThan1~15_cout  = CARRY((\my_alu.portB[7]~input_o  & (\my_alu.portA[7]~input_o  & !\LessThan1~13_cout )) # (!\my_alu.portB[7]~input_o  & ((\my_alu.portA[7]~input_o ) # (!\LessThan1~13_cout ))))

	.dataa(\my_alu.portB[7]~input_o ),
	.datab(\my_alu.portA[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~13_cout ),
	.combout(),
	.cout(\LessThan1~15_cout ));
// synopsys translate_off
defparam \LessThan1~15 .lut_mask = 16'h004D;
defparam \LessThan1~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N16
cycloneive_lcell_comb \LessThan1~17 (
// Equation(s):
// \LessThan1~17_cout  = CARRY((\my_alu.portB[8]~input_o  & ((!\LessThan1~15_cout ) # (!\my_alu.portA[8]~input_o ))) # (!\my_alu.portB[8]~input_o  & (!\my_alu.portA[8]~input_o  & !\LessThan1~15_cout )))

	.dataa(\my_alu.portB[8]~input_o ),
	.datab(\my_alu.portA[8]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~15_cout ),
	.combout(),
	.cout(\LessThan1~17_cout ));
// synopsys translate_off
defparam \LessThan1~17 .lut_mask = 16'h002B;
defparam \LessThan1~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N18
cycloneive_lcell_comb \LessThan1~19 (
// Equation(s):
// \LessThan1~19_cout  = CARRY((\my_alu.portB[9]~input_o  & (\my_alu.portA[9]~input_o  & !\LessThan1~17_cout )) # (!\my_alu.portB[9]~input_o  & ((\my_alu.portA[9]~input_o ) # (!\LessThan1~17_cout ))))

	.dataa(\my_alu.portB[9]~input_o ),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~17_cout ),
	.combout(),
	.cout(\LessThan1~19_cout ));
// synopsys translate_off
defparam \LessThan1~19 .lut_mask = 16'h004D;
defparam \LessThan1~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N20
cycloneive_lcell_comb \LessThan1~21 (
// Equation(s):
// \LessThan1~21_cout  = CARRY((\my_alu.portB[10]~input_o  & ((!\LessThan1~19_cout ) # (!\my_alu.portA[10]~input_o ))) # (!\my_alu.portB[10]~input_o  & (!\my_alu.portA[10]~input_o  & !\LessThan1~19_cout )))

	.dataa(\my_alu.portB[10]~input_o ),
	.datab(\my_alu.portA[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~19_cout ),
	.combout(),
	.cout(\LessThan1~21_cout ));
// synopsys translate_off
defparam \LessThan1~21 .lut_mask = 16'h002B;
defparam \LessThan1~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N22
cycloneive_lcell_comb \LessThan1~23 (
// Equation(s):
// \LessThan1~23_cout  = CARRY((\my_alu.portA[11]~input_o  & ((!\LessThan1~21_cout ) # (!\my_alu.portB[11]~input_o ))) # (!\my_alu.portA[11]~input_o  & (!\my_alu.portB[11]~input_o  & !\LessThan1~21_cout )))

	.dataa(\my_alu.portA[11]~input_o ),
	.datab(\my_alu.portB[11]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~21_cout ),
	.combout(),
	.cout(\LessThan1~23_cout ));
// synopsys translate_off
defparam \LessThan1~23 .lut_mask = 16'h002B;
defparam \LessThan1~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N24
cycloneive_lcell_comb \LessThan1~25 (
// Equation(s):
// \LessThan1~25_cout  = CARRY((\my_alu.portA[12]~input_o  & (\my_alu.portB[12]~input_o  & !\LessThan1~23_cout )) # (!\my_alu.portA[12]~input_o  & ((\my_alu.portB[12]~input_o ) # (!\LessThan1~23_cout ))))

	.dataa(\my_alu.portA[12]~input_o ),
	.datab(\my_alu.portB[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~23_cout ),
	.combout(),
	.cout(\LessThan1~25_cout ));
// synopsys translate_off
defparam \LessThan1~25 .lut_mask = 16'h004D;
defparam \LessThan1~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N26
cycloneive_lcell_comb \LessThan1~27 (
// Equation(s):
// \LessThan1~27_cout  = CARRY((\my_alu.portB[13]~input_o  & (\my_alu.portA[13]~input_o  & !\LessThan1~25_cout )) # (!\my_alu.portB[13]~input_o  & ((\my_alu.portA[13]~input_o ) # (!\LessThan1~25_cout ))))

	.dataa(\my_alu.portB[13]~input_o ),
	.datab(\my_alu.portA[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~25_cout ),
	.combout(),
	.cout(\LessThan1~27_cout ));
// synopsys translate_off
defparam \LessThan1~27 .lut_mask = 16'h004D;
defparam \LessThan1~27 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N28
cycloneive_lcell_comb \LessThan1~29 (
// Equation(s):
// \LessThan1~29_cout  = CARRY((\my_alu.portA[14]~input_o  & (\my_alu.portB[14]~input_o  & !\LessThan1~27_cout )) # (!\my_alu.portA[14]~input_o  & ((\my_alu.portB[14]~input_o ) # (!\LessThan1~27_cout ))))

	.dataa(\my_alu.portA[14]~input_o ),
	.datab(\my_alu.portB[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~27_cout ),
	.combout(),
	.cout(\LessThan1~29_cout ));
// synopsys translate_off
defparam \LessThan1~29 .lut_mask = 16'h004D;
defparam \LessThan1~29 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y34_N30
cycloneive_lcell_comb \LessThan1~31 (
// Equation(s):
// \LessThan1~31_cout  = CARRY((\my_alu.portA[15]~input_o  & ((!\LessThan1~29_cout ) # (!\my_alu.portB[15]~input_o ))) # (!\my_alu.portA[15]~input_o  & (!\my_alu.portB[15]~input_o  & !\LessThan1~29_cout )))

	.dataa(\my_alu.portA[15]~input_o ),
	.datab(\my_alu.portB[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~29_cout ),
	.combout(),
	.cout(\LessThan1~31_cout ));
// synopsys translate_off
defparam \LessThan1~31 .lut_mask = 16'h002B;
defparam \LessThan1~31 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N0
cycloneive_lcell_comb \LessThan1~33 (
// Equation(s):
// \LessThan1~33_cout  = CARRY((\my_alu.portA[16]~input_o  & (\my_alu.portB[16]~input_o  & !\LessThan1~31_cout )) # (!\my_alu.portA[16]~input_o  & ((\my_alu.portB[16]~input_o ) # (!\LessThan1~31_cout ))))

	.dataa(\my_alu.portA[16]~input_o ),
	.datab(\my_alu.portB[16]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~31_cout ),
	.combout(),
	.cout(\LessThan1~33_cout ));
// synopsys translate_off
defparam \LessThan1~33 .lut_mask = 16'h004D;
defparam \LessThan1~33 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N2
cycloneive_lcell_comb \LessThan1~35 (
// Equation(s):
// \LessThan1~35_cout  = CARRY((\my_alu.portB[17]~input_o  & (\my_alu.portA[17]~input_o  & !\LessThan1~33_cout )) # (!\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o ) # (!\LessThan1~33_cout ))))

	.dataa(\my_alu.portB[17]~input_o ),
	.datab(\my_alu.portA[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~33_cout ),
	.combout(),
	.cout(\LessThan1~35_cout ));
// synopsys translate_off
defparam \LessThan1~35 .lut_mask = 16'h004D;
defparam \LessThan1~35 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N4
cycloneive_lcell_comb \LessThan1~37 (
// Equation(s):
// \LessThan1~37_cout  = CARRY((\my_alu.portB[18]~input_o  & ((!\LessThan1~35_cout ) # (!\my_alu.portA[18]~input_o ))) # (!\my_alu.portB[18]~input_o  & (!\my_alu.portA[18]~input_o  & !\LessThan1~35_cout )))

	.dataa(\my_alu.portB[18]~input_o ),
	.datab(\my_alu.portA[18]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~35_cout ),
	.combout(),
	.cout(\LessThan1~37_cout ));
// synopsys translate_off
defparam \LessThan1~37 .lut_mask = 16'h002B;
defparam \LessThan1~37 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N6
cycloneive_lcell_comb \LessThan1~39 (
// Equation(s):
// \LessThan1~39_cout  = CARRY((\my_alu.portA[19]~input_o  & ((!\LessThan1~37_cout ) # (!\my_alu.portB[19]~input_o ))) # (!\my_alu.portA[19]~input_o  & (!\my_alu.portB[19]~input_o  & !\LessThan1~37_cout )))

	.dataa(\my_alu.portA[19]~input_o ),
	.datab(\my_alu.portB[19]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~37_cout ),
	.combout(),
	.cout(\LessThan1~39_cout ));
// synopsys translate_off
defparam \LessThan1~39 .lut_mask = 16'h002B;
defparam \LessThan1~39 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N8
cycloneive_lcell_comb \LessThan1~41 (
// Equation(s):
// \LessThan1~41_cout  = CARRY((\my_alu.portA[20]~input_o  & (\my_alu.portB[20]~input_o  & !\LessThan1~39_cout )) # (!\my_alu.portA[20]~input_o  & ((\my_alu.portB[20]~input_o ) # (!\LessThan1~39_cout ))))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[20]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~39_cout ),
	.combout(),
	.cout(\LessThan1~41_cout ));
// synopsys translate_off
defparam \LessThan1~41 .lut_mask = 16'h004D;
defparam \LessThan1~41 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N10
cycloneive_lcell_comb \LessThan1~43 (
// Equation(s):
// \LessThan1~43_cout  = CARRY((\my_alu.portB[21]~input_o  & (\my_alu.portA[21]~input_o  & !\LessThan1~41_cout )) # (!\my_alu.portB[21]~input_o  & ((\my_alu.portA[21]~input_o ) # (!\LessThan1~41_cout ))))

	.dataa(\my_alu.portB[21]~input_o ),
	.datab(\my_alu.portA[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~41_cout ),
	.combout(),
	.cout(\LessThan1~43_cout ));
// synopsys translate_off
defparam \LessThan1~43 .lut_mask = 16'h004D;
defparam \LessThan1~43 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N12
cycloneive_lcell_comb \LessThan1~45 (
// Equation(s):
// \LessThan1~45_cout  = CARRY((\my_alu.portB[22]~input_o  & ((!\LessThan1~43_cout ) # (!\my_alu.portA[22]~input_o ))) # (!\my_alu.portB[22]~input_o  & (!\my_alu.portA[22]~input_o  & !\LessThan1~43_cout )))

	.dataa(\my_alu.portB[22]~input_o ),
	.datab(\my_alu.portA[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~43_cout ),
	.combout(),
	.cout(\LessThan1~45_cout ));
// synopsys translate_off
defparam \LessThan1~45 .lut_mask = 16'h002B;
defparam \LessThan1~45 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N14
cycloneive_lcell_comb \LessThan1~47 (
// Equation(s):
// \LessThan1~47_cout  = CARRY((\my_alu.portB[23]~input_o  & (\my_alu.portA[23]~input_o  & !\LessThan1~45_cout )) # (!\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o ) # (!\LessThan1~45_cout ))))

	.dataa(\my_alu.portB[23]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~45_cout ),
	.combout(),
	.cout(\LessThan1~47_cout ));
// synopsys translate_off
defparam \LessThan1~47 .lut_mask = 16'h004D;
defparam \LessThan1~47 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N16
cycloneive_lcell_comb \LessThan1~49 (
// Equation(s):
// \LessThan1~49_cout  = CARRY((\my_alu.portA[24]~input_o  & (\my_alu.portB[24]~input_o  & !\LessThan1~47_cout )) # (!\my_alu.portA[24]~input_o  & ((\my_alu.portB[24]~input_o ) # (!\LessThan1~47_cout ))))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(\my_alu.portB[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~47_cout ),
	.combout(),
	.cout(\LessThan1~49_cout ));
// synopsys translate_off
defparam \LessThan1~49 .lut_mask = 16'h004D;
defparam \LessThan1~49 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N18
cycloneive_lcell_comb \LessThan1~51 (
// Equation(s):
// \LessThan1~51_cout  = CARRY((\my_alu.portB[25]~input_o  & (\my_alu.portA[25]~input_o  & !\LessThan1~49_cout )) # (!\my_alu.portB[25]~input_o  & ((\my_alu.portA[25]~input_o ) # (!\LessThan1~49_cout ))))

	.dataa(\my_alu.portB[25]~input_o ),
	.datab(\my_alu.portA[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~49_cout ),
	.combout(),
	.cout(\LessThan1~51_cout ));
// synopsys translate_off
defparam \LessThan1~51 .lut_mask = 16'h004D;
defparam \LessThan1~51 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N20
cycloneive_lcell_comb \LessThan1~53 (
// Equation(s):
// \LessThan1~53_cout  = CARRY((\my_alu.portA[26]~input_o  & (\my_alu.portB[26]~input_o  & !\LessThan1~51_cout )) # (!\my_alu.portA[26]~input_o  & ((\my_alu.portB[26]~input_o ) # (!\LessThan1~51_cout ))))

	.dataa(\my_alu.portA[26]~input_o ),
	.datab(\my_alu.portB[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~51_cout ),
	.combout(),
	.cout(\LessThan1~53_cout ));
// synopsys translate_off
defparam \LessThan1~53 .lut_mask = 16'h004D;
defparam \LessThan1~53 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N22
cycloneive_lcell_comb \LessThan1~55 (
// Equation(s):
// \LessThan1~55_cout  = CARRY((\my_alu.portA[27]~input_o  & ((!\LessThan1~53_cout ) # (!\my_alu.portB[27]~input_o ))) # (!\my_alu.portA[27]~input_o  & (!\my_alu.portB[27]~input_o  & !\LessThan1~53_cout )))

	.dataa(\my_alu.portA[27]~input_o ),
	.datab(\my_alu.portB[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~53_cout ),
	.combout(),
	.cout(\LessThan1~55_cout ));
// synopsys translate_off
defparam \LessThan1~55 .lut_mask = 16'h002B;
defparam \LessThan1~55 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N24
cycloneive_lcell_comb \LessThan1~57 (
// Equation(s):
// \LessThan1~57_cout  = CARRY((\my_alu.portB[28]~input_o  & ((!\LessThan1~55_cout ) # (!\my_alu.portA[28]~input_o ))) # (!\my_alu.portB[28]~input_o  & (!\my_alu.portA[28]~input_o  & !\LessThan1~55_cout )))

	.dataa(\my_alu.portB[28]~input_o ),
	.datab(\my_alu.portA[28]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~55_cout ),
	.combout(),
	.cout(\LessThan1~57_cout ));
// synopsys translate_off
defparam \LessThan1~57 .lut_mask = 16'h002B;
defparam \LessThan1~57 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N26
cycloneive_lcell_comb \LessThan1~59 (
// Equation(s):
// \LessThan1~59_cout  = CARRY((\my_alu.portB[29]~input_o  & (\my_alu.portA[29]~input_o  & !\LessThan1~57_cout )) # (!\my_alu.portB[29]~input_o  & ((\my_alu.portA[29]~input_o ) # (!\LessThan1~57_cout ))))

	.dataa(\my_alu.portB[29]~input_o ),
	.datab(\my_alu.portA[29]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~57_cout ),
	.combout(),
	.cout(\LessThan1~59_cout ));
// synopsys translate_off
defparam \LessThan1~59 .lut_mask = 16'h004D;
defparam \LessThan1~59 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N28
cycloneive_lcell_comb \LessThan1~61 (
// Equation(s):
// \LessThan1~61_cout  = CARRY((\my_alu.portB[30]~input_o  & ((!\LessThan1~59_cout ) # (!\my_alu.portA[30]~input_o ))) # (!\my_alu.portB[30]~input_o  & (!\my_alu.portA[30]~input_o  & !\LessThan1~59_cout )))

	.dataa(\my_alu.portB[30]~input_o ),
	.datab(\my_alu.portA[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\LessThan1~59_cout ),
	.combout(),
	.cout(\LessThan1~61_cout ));
// synopsys translate_off
defparam \LessThan1~61 .lut_mask = 16'h002B;
defparam \LessThan1~61 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X97_Y33_N30
cycloneive_lcell_comb \LessThan1~62 (
// Equation(s):
// \LessThan1~62_combout  = (\my_alu.portB[31]~input_o  & ((\LessThan1~61_cout ) # (!\my_alu.portA[31]~input_o ))) # (!\my_alu.portB[31]~input_o  & (\LessThan1~61_cout  & !\my_alu.portA[31]~input_o ))

	.dataa(\my_alu.portB[31]~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(\LessThan1~61_cout ),
	.combout(\LessThan1~62_combout ),
	.cout());
// synopsys translate_off
defparam \LessThan1~62 .lut_mask = 16'hA0FA;
defparam \LessThan1~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N10
cycloneive_lcell_comb \Selector31~11 (
// Equation(s):
// \Selector31~11_combout  = (\Selector31~10_combout  & ((\my_alu.aluOp[0]~input_o  & ((\LessThan1~62_combout ))) # (!\my_alu.aluOp[0]~input_o  & (\LessThan0~62_combout ))))

	.dataa(\LessThan0~62_combout ),
	.datab(\Selector31~10_combout ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\LessThan1~62_combout ),
	.cin(gnd),
	.combout(\Selector31~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~11 .lut_mask = 16'hC808;
defparam \Selector31~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y52_N1
cycloneive_io_ibuf \my_alu.aluOp[1]~input (
	.i(\my_alu.aluOp [1]),
	.ibar(gnd),
	.o(\my_alu.aluOp[1]~input_o ));
// synopsys translate_off
defparam \my_alu.aluOp[1]~input .bus_hold = "false";
defparam \my_alu.aluOp[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N0
cycloneive_lcell_comb \Selector31~15 (
// Equation(s):
// \Selector31~15_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~15 .lut_mask = 16'h2000;
defparam \Selector31~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X58_Y0_N1
cycloneive_io_ibuf \my_alu.portB[0]~input (
	.i(\my_alu.portB [0]),
	.ibar(gnd),
	.o(\my_alu.portB[0]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[0]~input .bus_hold = "false";
defparam \my_alu.portB[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N14
cycloneive_lcell_comb \Selector31~16 (
// Equation(s):
// \Selector31~16_combout  = (\Selector31~14_combout ) # ((!\my_alu.portA[0]~input_o  & (\Selector31~15_combout  & !\my_alu.portB[0]~input_o )))

	.dataa(\Selector31~14_combout ),
	.datab(\my_alu.portA[0]~input_o ),
	.datac(\Selector31~15_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\Selector31~16_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~16 .lut_mask = 16'hAABA;
defparam \Selector31~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y32_N8
cycloneive_io_ibuf \my_alu.portB[1]~input (
	.i(\my_alu.portB [1]),
	.ibar(gnd),
	.o(\my_alu.portB[1]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[1]~input .bus_hold = "false";
defparam \my_alu.portB[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N8
cycloneive_lcell_comb \ShiftLeft0~9 (
// Equation(s):
// \ShiftLeft0~9_combout  = (\my_alu.portB[2]~input_o ) # ((\my_alu.portB[0]~input_o ) # ((\my_alu.portB[1]~input_o ) # (\my_alu.portB[3]~input_o )))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~9_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~9 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N14
cycloneive_lcell_comb \Selector31~13 (
// Equation(s):
// \Selector31~13_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~13 .lut_mask = 16'h0020;
defparam \Selector31~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N24
cycloneive_lcell_comb \Selector31~20 (
// Equation(s):
// \Selector31~20_combout  = (\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portB[0]~input_o ))

	.dataa(\Selector31~19_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\Selector31~13_combout ),
	.cin(gnd),
	.combout(\Selector31~20_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~20 .lut_mask = 16'hFFA0;
defparam \Selector31~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N8
cycloneive_lcell_comb \Selector31~22 (
// Equation(s):
// \Selector31~22_combout  = (\Selector31~20_combout ) # ((\Selector30~0_combout  & !\ShiftLeft0~9_combout ))

	.dataa(\Selector30~0_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~9_combout ),
	.datad(\Selector31~20_combout ),
	.cin(gnd),
	.combout(\Selector31~22_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~22 .lut_mask = 16'hFF0A;
defparam \Selector31~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y22_N1
cycloneive_io_ibuf \my_alu.portB[25]~input (
	.i(\my_alu.portB [25]),
	.ibar(gnd),
	.o(\my_alu.portB[25]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[25]~input .bus_hold = "false";
defparam \my_alu.portB[25]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y27_N1
cycloneive_io_ibuf \my_alu.portB[28]~input (
	.i(\my_alu.portB [28]),
	.ibar(gnd),
	.o(\my_alu.portB[28]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[28]~input .bus_hold = "false";
defparam \my_alu.portB[28]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N28
cycloneive_lcell_comb \ShiftLeft0~6 (
// Equation(s):
// \ShiftLeft0~6_combout  = (\my_alu.portB[26]~input_o ) # ((\my_alu.portB[25]~input_o ) # ((\my_alu.portB[28]~input_o ) # (\my_alu.portB[27]~input_o )))

	.dataa(\my_alu.portB[26]~input_o ),
	.datab(\my_alu.portB[25]~input_o ),
	.datac(\my_alu.portB[28]~input_o ),
	.datad(\my_alu.portB[27]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~6_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~6 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y48_N1
cycloneive_io_ibuf \my_alu.portB[30]~input (
	.i(\my_alu.portB [30]),
	.ibar(gnd),
	.o(\my_alu.portB[30]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[30]~input .bus_hold = "false";
defparam \my_alu.portB[30]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y30_N1
cycloneive_io_ibuf \my_alu.portB[31]~input (
	.i(\my_alu.portB [31]),
	.ibar(gnd),
	.o(\my_alu.portB[31]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[31]~input .bus_hold = "false";
defparam \my_alu.portB[31]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y52_N8
cycloneive_io_ibuf \my_alu.portB[29]~input (
	.i(\my_alu.portB [29]),
	.ibar(gnd),
	.o(\my_alu.portB[29]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[29]~input .bus_hold = "false";
defparam \my_alu.portB[29]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N22
cycloneive_lcell_comb \ShiftLeft0~7 (
// Equation(s):
// \ShiftLeft0~7_combout  = (\my_alu.portB[30]~input_o ) # ((\my_alu.portB[31]~input_o ) # (\my_alu.portB[29]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portB[30]~input_o ),
	.datac(\my_alu.portB[31]~input_o ),
	.datad(\my_alu.portB[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~7_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~7 .lut_mask = 16'hFFFC;
defparam \ShiftLeft0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y46_N8
cycloneive_io_ibuf \my_alu.portB[9]~input (
	.i(\my_alu.portB [9]),
	.ibar(gnd),
	.o(\my_alu.portB[9]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[9]~input .bus_hold = "false";
defparam \my_alu.portB[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N2
cycloneive_lcell_comb \ShiftLeft0~1 (
// Equation(s):
// \ShiftLeft0~1_combout  = (\my_alu.portB[10]~input_o ) # ((\my_alu.portB[12]~input_o ) # ((\my_alu.portB[11]~input_o ) # (\my_alu.portB[9]~input_o )))

	.dataa(\my_alu.portB[10]~input_o ),
	.datab(\my_alu.portB[12]~input_o ),
	.datac(\my_alu.portB[11]~input_o ),
	.datad(\my_alu.portB[9]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~1_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~1 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y29_N1
cycloneive_io_ibuf \my_alu.portB[17]~input (
	.i(\my_alu.portB [17]),
	.ibar(gnd),
	.o(\my_alu.portB[17]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[17]~input .bus_hold = "false";
defparam \my_alu.portB[17]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N30
cycloneive_lcell_comb \ShiftLeft0~3 (
// Equation(s):
// \ShiftLeft0~3_combout  = (\my_alu.portB[18]~input_o ) # ((\my_alu.portB[19]~input_o ) # ((\my_alu.portB[20]~input_o ) # (\my_alu.portB[17]~input_o )))

	.dataa(\my_alu.portB[18]~input_o ),
	.datab(\my_alu.portB[19]~input_o ),
	.datac(\my_alu.portB[20]~input_o ),
	.datad(\my_alu.portB[17]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~3_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~3 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y34_N22
cycloneive_io_ibuf \my_alu.portB[8]~input (
	.i(\my_alu.portB [8]),
	.ibar(gnd),
	.o(\my_alu.portB[8]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[8]~input .bus_hold = "false";
defparam \my_alu.portB[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y47_N22
cycloneive_io_ibuf \my_alu.portB[5]~input (
	.i(\my_alu.portB [5]),
	.ibar(gnd),
	.o(\my_alu.portB[5]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[5]~input .bus_hold = "false";
defparam \my_alu.portB[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y20_N1
cycloneive_io_ibuf \my_alu.portB[7]~input (
	.i(\my_alu.portB [7]),
	.ibar(gnd),
	.o(\my_alu.portB[7]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[7]~input .bus_hold = "false";
defparam \my_alu.portB[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N0
cycloneive_lcell_comb \ShiftLeft0~0 (
// Equation(s):
// \ShiftLeft0~0_combout  = (\my_alu.portB[6]~input_o ) # ((\my_alu.portB[8]~input_o ) # ((\my_alu.portB[5]~input_o ) # (\my_alu.portB[7]~input_o )))

	.dataa(\my_alu.portB[6]~input_o ),
	.datab(\my_alu.portB[8]~input_o ),
	.datac(\my_alu.portB[5]~input_o ),
	.datad(\my_alu.portB[7]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~0_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~0 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N24
cycloneive_lcell_comb \ShiftLeft0~4 (
// Equation(s):
// \ShiftLeft0~4_combout  = (\ShiftLeft0~2_combout ) # ((\ShiftLeft0~1_combout ) # ((\ShiftLeft0~3_combout ) # (\ShiftLeft0~0_combout )))

	.dataa(\ShiftLeft0~2_combout ),
	.datab(\ShiftLeft0~1_combout ),
	.datac(\ShiftLeft0~3_combout ),
	.datad(\ShiftLeft0~0_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~4_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~4 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N16
cycloneive_lcell_comb \ShiftLeft0~8 (
// Equation(s):
// \ShiftLeft0~8_combout  = (\ShiftLeft0~5_combout ) # ((\ShiftLeft0~6_combout ) # ((\ShiftLeft0~7_combout ) # (\ShiftLeft0~4_combout )))

	.dataa(\ShiftLeft0~5_combout ),
	.datab(\ShiftLeft0~6_combout ),
	.datac(\ShiftLeft0~7_combout ),
	.datad(\ShiftLeft0~4_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~8_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~8 .lut_mask = 16'hFFFE;
defparam \ShiftLeft0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N20
cycloneive_lcell_comb \Selector31~18 (
// Equation(s):
// \Selector31~18_combout  = (\Selector31~17_combout  & !\ShiftLeft0~8_combout )

	.dataa(\Selector31~17_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~8_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector31~18_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~18 .lut_mask = 16'h0A0A;
defparam \Selector31~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N10
cycloneive_lcell_comb \Selector31~23 (
// Equation(s):
// \Selector31~23_combout  = (\ShiftRight0~28_combout  & ((\Selector31~18_combout ) # ((\my_alu.portA[0]~input_o  & \Selector31~22_combout )))) # (!\ShiftRight0~28_combout  & (\my_alu.portA[0]~input_o  & (\Selector31~22_combout )))

	.dataa(\ShiftRight0~28_combout ),
	.datab(\my_alu.portA[0]~input_o ),
	.datac(\Selector31~22_combout ),
	.datad(\Selector31~18_combout ),
	.cin(gnd),
	.combout(\Selector31~23_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~23 .lut_mask = 16'hEAC0;
defparam \Selector31~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N0
cycloneive_lcell_comb \Add0~0 (
// Equation(s):
// \Add0~0_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[0]~input_o  $ (VCC))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[0]~input_o  & VCC))
// \Add0~1  = CARRY((\my_alu.portB[0]~input_o  & \my_alu.portA[0]~input_o ))

	.dataa(\my_alu.portB[0]~input_o ),
	.datab(\my_alu.portA[0]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout(\Add0~1 ));
// synopsys translate_off
defparam \Add0~0 .lut_mask = 16'h6688;
defparam \Add0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N6
cycloneive_lcell_comb \Selector31~33 (
// Equation(s):
// \Selector31~33_combout  = (!\my_alu.aluOp[0]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[1]~input_o  & \Add0~0_combout )))

	.dataa(\my_alu.aluOp[0]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[1]~input_o ),
	.datad(\Add0~0_combout ),
	.cin(gnd),
	.combout(\Selector31~33_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~33 .lut_mask = 16'h1000;
defparam \Selector31~33 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N8
cycloneive_lcell_comb \Selector31~24 (
// Equation(s):
// \Selector31~24_combout  = (\Selector31~11_combout ) # ((\Selector31~16_combout ) # ((\Selector31~23_combout ) # (\Selector31~33_combout )))

	.dataa(\Selector31~11_combout ),
	.datab(\Selector31~16_combout ),
	.datac(\Selector31~23_combout ),
	.datad(\Selector31~33_combout ),
	.cin(gnd),
	.combout(\Selector31~24_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~24 .lut_mask = 16'hFFFE;
defparam \Selector31~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N12
cycloneive_lcell_comb \Selector31~19 (
// Equation(s):
// \Selector31~19_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~19_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~19 .lut_mask = 16'h0002;
defparam \Selector31~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N10
cycloneive_lcell_comb \Selector30~2 (
// Equation(s):
// \Selector30~2_combout  = (\my_alu.portA[1]~input_o  & ((\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portB[1]~input_o )))) # (!\my_alu.portA[1]~input_o  & (\Selector31~13_combout  & ((\my_alu.portB[1]~input_o ))))

	.dataa(\my_alu.portA[1]~input_o ),
	.datab(\Selector31~13_combout ),
	.datac(\Selector31~19_combout ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\Selector30~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~2 .lut_mask = 16'hEC88;
defparam \Selector30~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N2
cycloneive_lcell_comb \Add0~2 (
// Equation(s):
// \Add0~2_combout  = (\my_alu.portA[1]~input_o  & ((\my_alu.portB[1]~input_o  & (\Add0~1  & VCC)) # (!\my_alu.portB[1]~input_o  & (!\Add0~1 )))) # (!\my_alu.portA[1]~input_o  & ((\my_alu.portB[1]~input_o  & (!\Add0~1 )) # (!\my_alu.portB[1]~input_o  & 
// ((\Add0~1 ) # (GND)))))
// \Add0~3  = CARRY((\my_alu.portA[1]~input_o  & (!\my_alu.portB[1]~input_o  & !\Add0~1 )) # (!\my_alu.portA[1]~input_o  & ((!\Add0~1 ) # (!\my_alu.portB[1]~input_o ))))

	.dataa(\my_alu.portA[1]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~1 ),
	.combout(\Add0~2_combout ),
	.cout(\Add0~3 ));
// synopsys translate_off
defparam \Add0~2 .lut_mask = 16'h9617;
defparam \Add0~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N2
cycloneive_lcell_comb \Add1~2 (
// Equation(s):
// \Add1~2_combout  = (\my_alu.portA[1]~input_o  & ((\my_alu.portB[1]~input_o  & (!\Add1~1 )) # (!\my_alu.portB[1]~input_o  & (\Add1~1  & VCC)))) # (!\my_alu.portA[1]~input_o  & ((\my_alu.portB[1]~input_o  & ((\Add1~1 ) # (GND))) # (!\my_alu.portB[1]~input_o 
//  & (!\Add1~1 ))))
// \Add1~3  = CARRY((\my_alu.portA[1]~input_o  & (\my_alu.portB[1]~input_o  & !\Add1~1 )) # (!\my_alu.portA[1]~input_o  & ((\my_alu.portB[1]~input_o ) # (!\Add1~1 ))))

	.dataa(\my_alu.portA[1]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~1 ),
	.combout(\Add1~2_combout ),
	.cout(\Add1~3 ));
// synopsys translate_off
defparam \Add1~2 .lut_mask = 16'h694D;
defparam \Add1~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N16
cycloneive_lcell_comb \Selector31~8 (
// Equation(s):
// \Selector31~8_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~8 .lut_mask = 16'h0100;
defparam \Selector31~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N12
cycloneive_lcell_comb \Selector30~3 (
// Equation(s):
// \Selector30~3_combout  = (\Selector31~12_combout  & ((\Add1~2_combout ) # ((\Add0~2_combout  & \Selector31~8_combout )))) # (!\Selector31~12_combout  & (\Add0~2_combout  & ((\Selector31~8_combout ))))

	.dataa(\Selector31~12_combout ),
	.datab(\Add0~2_combout ),
	.datac(\Add1~2_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector30~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~3 .lut_mask = 16'hECA0;
defparam \Selector30~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N10
cycloneive_lcell_comb \Selector30~5 (
// Equation(s):
// \Selector30~5_combout  = (\Selector30~4_combout ) # ((\Selector30~2_combout ) # (\Selector30~3_combout ))

	.dataa(\Selector30~4_combout ),
	.datab(\Selector30~2_combout ),
	.datac(\Selector30~3_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector30~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~5 .lut_mask = 16'hFEFE;
defparam \Selector30~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N6
cycloneive_lcell_comb \Selector31~21 (
// Equation(s):
// \Selector31~21_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~21_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~21 .lut_mask = 16'h0001;
defparam \Selector31~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N22
cycloneive_lcell_comb \Selector30~0 (
// Equation(s):
// \Selector30~0_combout  = (!\ShiftLeft0~8_combout  & (!\my_alu.portB[4]~input_o  & \Selector31~21_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\Selector31~21_combout ),
	.cin(gnd),
	.combout(\Selector30~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~0 .lut_mask = 16'h0300;
defparam \Selector30~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N30
cycloneive_lcell_comb \ShiftLeft0~10 (
// Equation(s):
// \ShiftLeft0~10_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[0]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[1]~input_o )))

	.dataa(\my_alu.portA[0]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~10_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~10 .lut_mask = 16'hB8B8;
defparam \ShiftLeft0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N8
cycloneive_lcell_comb \Selector30~1 (
// Equation(s):
// \Selector30~1_combout  = (!\ShiftLeft0~11_combout  & (\Selector30~0_combout  & (!\my_alu.portB[3]~input_o  & \ShiftLeft0~10_combout )))

	.dataa(\ShiftLeft0~11_combout ),
	.datab(\Selector30~0_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftLeft0~10_combout ),
	.cin(gnd),
	.combout(\Selector30~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~1 .lut_mask = 16'h0400;
defparam \Selector30~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y32_N1
cycloneive_io_ibuf \my_alu.portB[2]~input (
	.i(\my_alu.portB [2]),
	.ibar(gnd),
	.o(\my_alu.portB[2]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[2]~input .bus_hold = "false";
defparam \my_alu.portB[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N0
cycloneive_lcell_comb \ShiftRight0~39 (
// Equation(s):
// \ShiftRight0~39_combout  = (!\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & ((\my_alu.portA[2]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[1]~input_o ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[1]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~39_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~39 .lut_mask = 16'h5410;
defparam \ShiftRight0~39 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N12
cycloneive_lcell_comb \ShiftRight0~41 (
// Equation(s):
// \ShiftRight0~41_combout  = (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~39_combout ) # ((\ShiftRight0~40_combout  & \my_alu.portB[1]~input_o ))))

	.dataa(\ShiftRight0~40_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\ShiftRight0~39_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~41_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~41 .lut_mask = 16'h3320;
defparam \ShiftRight0~41 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N0
cycloneive_lcell_comb \ShiftRight0~43 (
// Equation(s):
// \ShiftRight0~43_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[6]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[5]~input_o )))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[5]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~43_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~43 .lut_mask = 16'hBB88;
defparam \ShiftRight0~43 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N22
cycloneive_lcell_comb \ShiftRight0~42 (
// Equation(s):
// \ShiftRight0~42_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & ((\my_alu.portA[8]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[7]~input_o ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[7]~input_o ),
	.datac(\my_alu.portA[8]~input_o ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~42_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~42 .lut_mask = 16'hA088;
defparam \ShiftRight0~42 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N18
cycloneive_lcell_comb \ShiftRight0~44 (
// Equation(s):
// \ShiftRight0~44_combout  = (\ShiftRight0~42_combout ) # ((\ShiftRight0~43_combout  & !\my_alu.portB[1]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight0~43_combout ),
	.datac(\ShiftRight0~42_combout ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~44_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~44 .lut_mask = 16'hF0FC;
defparam \ShiftRight0~44 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N24
cycloneive_lcell_comb \ShiftRight0~45 (
// Equation(s):
// \ShiftRight0~45_combout  = (!\my_alu.portB[3]~input_o  & ((\ShiftRight0~41_combout ) # ((\my_alu.portB[2]~input_o  & \ShiftRight0~44_combout ))))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\ShiftRight0~41_combout ),
	.datac(\ShiftRight0~44_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~45_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~45 .lut_mask = 16'h00EC;
defparam \ShiftRight0~45 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N30
cycloneive_lcell_comb \ShiftRight0~29 (
// Equation(s):
// \ShiftRight0~29_combout  = (!\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & (\my_alu.portA[31]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[29]~input_o )))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[31]~input_o ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\my_alu.portA[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~29_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~29 .lut_mask = 16'h0D08;
defparam \ShiftRight0~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N24
cycloneive_lcell_comb \ShiftRight0~30 (
// Equation(s):
// \ShiftRight0~30_combout  = (\ShiftRight0~29_combout ) # ((!\my_alu.portB[1]~input_o  & (\my_alu.portB[0]~input_o  & \my_alu.portA[30]~input_o )))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~29_combout ),
	.datad(\my_alu.portA[30]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~30_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~30 .lut_mask = 16'hF4F0;
defparam \ShiftRight0~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y36_N1
cycloneive_io_ibuf \my_alu.portA[26]~input (
	.i(\my_alu.portA [26]),
	.ibar(gnd),
	.o(\my_alu.portA[26]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[26]~input .bus_hold = "false";
defparam \my_alu.portA[26]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N2
cycloneive_lcell_comb \ShiftRight0~31 (
// Equation(s):
// \ShiftRight0~31_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[28]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[26]~input_o )))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[28]~input_o ),
	.datac(\my_alu.portA[26]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~31_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~31 .lut_mask = 16'hD8D8;
defparam \ShiftRight0~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N28
cycloneive_lcell_comb \ShiftRight0~32 (
// Equation(s):
// \ShiftRight0~32_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~31_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~3_combout ))

	.dataa(\ShiftRight0~3_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~31_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~32_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~32 .lut_mask = 16'hFA0A;
defparam \ShiftRight0~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N0
cycloneive_lcell_comb \ShiftRight0~33 (
// Equation(s):
// \ShiftRight0~33_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~30_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~32_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\ShiftRight0~30_combout ),
	.datad(\ShiftRight0~32_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~33_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~33 .lut_mask = 16'hF3C0;
defparam \ShiftRight0~33 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N8
cycloneive_lcell_comb \ShiftRight0~38 (
// Equation(s):
// \ShiftRight0~38_combout  = (\my_alu.portB[3]~input_o  & ((\ShiftRight0~33_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector22~2_combout ))

	.dataa(\Selector22~2_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~33_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~38_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~38 .lut_mask = 16'hF0AA;
defparam \ShiftRight0~38 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N20
cycloneive_lcell_comb \ShiftRight0~51 (
// Equation(s):
// \ShiftRight0~51_combout  = (\my_alu.portB[4]~input_o  & (((\ShiftRight0~38_combout )))) # (!\my_alu.portB[4]~input_o  & ((\ShiftRight0~50_combout ) # ((\ShiftRight0~45_combout ))))

	.dataa(\ShiftRight0~50_combout ),
	.datab(\ShiftRight0~45_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\ShiftRight0~38_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~51_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~51 .lut_mask = 16'hFE0E;
defparam \ShiftRight0~51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N6
cycloneive_lcell_comb \Selector30~6 (
// Equation(s):
// \Selector30~6_combout  = (\Selector30~5_combout ) # ((\Selector30~1_combout ) # ((\Selector31~18_combout  & \ShiftRight0~51_combout )))

	.dataa(\Selector30~5_combout ),
	.datab(\Selector31~18_combout ),
	.datac(\Selector30~1_combout ),
	.datad(\ShiftRight0~51_combout ),
	.cin(gnd),
	.combout(\Selector30~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector30~6 .lut_mask = 16'hFEFA;
defparam \Selector30~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N16
cycloneive_lcell_comb \Selector9~2 (
// Equation(s):
// \Selector9~2_combout  = (!\my_alu.aluOp[2]~input_o  & (!\ShiftLeft0~8_combout  & !\my_alu.aluOp[3]~input_o ))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.aluOp[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector9~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~2 .lut_mask = 16'h0101;
defparam \Selector9~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N14
cycloneive_lcell_comb \Selector29~3 (
// Equation(s):
// \Selector29~3_combout  = (!\my_alu.aluOp[1]~input_o  & (\my_alu.aluOp[0]~input_o  & ((\ShiftLeft0~8_combout ) # (!\my_alu.portB[4]~input_o ))))

	.dataa(\my_alu.aluOp[1]~input_o ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\my_alu.aluOp[0]~input_o ),
	.cin(gnd),
	.combout(\Selector29~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~3 .lut_mask = 16'h4500;
defparam \Selector29~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N0
cycloneive_lcell_comb \Selector29~4 (
// Equation(s):
// \Selector29~4_combout  = (\Selector29~2_combout  & (\Selector9~2_combout  & \Selector29~3_combout ))

	.dataa(\Selector29~2_combout ),
	.datab(gnd),
	.datac(\Selector9~2_combout ),
	.datad(\Selector29~3_combout ),
	.cin(gnd),
	.combout(\Selector29~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~4 .lut_mask = 16'hA000;
defparam \Selector29~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N0
cycloneive_lcell_comb \ShiftRight0~62 (
// Equation(s):
// \ShiftRight0~62_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~61_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~31_combout )))

	.dataa(\ShiftRight0~61_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~31_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~62_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~62 .lut_mask = 16'hAFA0;
defparam \ShiftRight0~62 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N24
cycloneive_lcell_comb \ShiftRight0~1 (
// Equation(s):
// \ShiftRight0~1_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[31]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[30]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[31]~input_o ),
	.datad(\my_alu.portA[30]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~1_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~1 .lut_mask = 16'hF3C0;
defparam \ShiftRight0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N20
cycloneive_lcell_comb \ShiftRight0~63 (
// Equation(s):
// \ShiftRight0~63_combout  = (\my_alu.portB[2]~input_o  & (((\ShiftRight0~1_combout  & !\my_alu.portB[1]~input_o )))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~62_combout ))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\ShiftRight0~62_combout ),
	.datac(\ShiftRight0~1_combout ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~63_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~63 .lut_mask = 16'h44E4;
defparam \ShiftRight0~63 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N12
cycloneive_lcell_comb \ShiftRight0~68 (
// Equation(s):
// \ShiftRight0~68_combout  = (\my_alu.portB[3]~input_o  & ((\ShiftRight0~63_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector21~2_combout ))

	.dataa(\Selector21~2_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftRight0~63_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~68_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~68 .lut_mask = 16'hFA0A;
defparam \ShiftRight0~68 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N8
cycloneive_lcell_comb \Selector15~2 (
// Equation(s):
// \Selector15~2_combout  = (!\my_alu.aluOp[2]~input_o  & (!\ShiftLeft0~8_combout  & (!\my_alu.aluOp[3]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.aluOp[3]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector15~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~2 .lut_mask = 16'h0001;
defparam \Selector15~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N10
cycloneive_lcell_comb \Selector29~10 (
// Equation(s):
// \Selector29~10_combout  = (\my_alu.portB[4]~input_o  & (\Selector15~2_combout  & \my_alu.aluOp[0]~input_o ))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(gnd),
	.datac(\Selector15~2_combout ),
	.datad(\my_alu.aluOp[0]~input_o ),
	.cin(gnd),
	.combout(\Selector29~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~10 .lut_mask = 16'hA000;
defparam \Selector29~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N28
cycloneive_lcell_comb \Selector31~31 (
// Equation(s):
// \Selector31~31_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~31_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~31 .lut_mask = 16'h0200;
defparam \Selector31~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N4
cycloneive_lcell_comb \Selector29~7 (
// Equation(s):
// \Selector29~7_combout  = (\my_alu.portB[2]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[2]~input_o )))) # (!\my_alu.portB[2]~input_o  & ((\my_alu.portA[2]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[2]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\Selector29~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~7 .lut_mask = 16'h0CCA;
defparam \Selector29~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N24
cycloneive_lcell_comb \Selector31~25 (
// Equation(s):
// \Selector31~25_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~25_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~25 .lut_mask = 16'h0002;
defparam \Selector31~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N0
cycloneive_lcell_comb \Selector29~5 (
// Equation(s):
// \Selector29~5_combout  = (\Selector31~30_combout  & (((\my_alu.portB[2]~input_o ) # (\my_alu.portA[2]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[2]~input_o  & \my_alu.portA[2]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\Selector29~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~5 .lut_mask = 16'hEAA0;
defparam \Selector29~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N14
cycloneive_lcell_comb \Selector29~8 (
// Equation(s):
// \Selector29~8_combout  = (\Selector29~6_combout ) # ((\Selector29~7_combout ) # (\Selector29~5_combout ))

	.dataa(\Selector29~6_combout ),
	.datab(gnd),
	.datac(\Selector29~7_combout ),
	.datad(\Selector29~5_combout ),
	.cin(gnd),
	.combout(\Selector29~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~8 .lut_mask = 16'hFFFA;
defparam \Selector29~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N30
cycloneive_lcell_comb \Selector31~28 (
// Equation(s):
// \Selector31~28_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~28_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~28 .lut_mask = 16'h0001;
defparam \Selector31~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N2
cycloneive_lcell_comb \Selector23~3 (
// Equation(s):
// \Selector23~3_combout  = (!\ShiftLeft0~8_combout  & (\Selector31~28_combout  & !\my_alu.portB[4]~input_o ))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(gnd),
	.datac(\Selector31~28_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector23~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~3 .lut_mask = 16'h0050;
defparam \Selector23~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N6
cycloneive_lcell_comb \ShiftLeft0~12 (
// Equation(s):
// \ShiftLeft0~12_combout  = (!\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & (\my_alu.portA[0]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[2]~input_o )))))

	.dataa(\my_alu.portA[0]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~12_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~12 .lut_mask = 16'h2320;
defparam \ShiftLeft0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N24
cycloneive_lcell_comb \ShiftLeft0~13 (
// Equation(s):
// \ShiftLeft0~13_combout  = (\ShiftLeft0~12_combout ) # ((!\my_alu.portB[1]~input_o  & (\my_alu.portB[0]~input_o  & \my_alu.portA[1]~input_o )))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[1]~input_o ),
	.datad(\ShiftLeft0~12_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~13_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~13 .lut_mask = 16'hFF40;
defparam \ShiftLeft0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N16
cycloneive_lcell_comb \Selector29~9 (
// Equation(s):
// \Selector29~9_combout  = (\Selector29~8_combout ) # ((\ShiftRight0~55_combout  & (\Selector23~3_combout  & \ShiftLeft0~13_combout )))

	.dataa(\ShiftRight0~55_combout ),
	.datab(\Selector29~8_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\ShiftLeft0~13_combout ),
	.cin(gnd),
	.combout(\Selector29~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~9 .lut_mask = 16'hECCC;
defparam \Selector29~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N2
cycloneive_lcell_comb \Selector29~11 (
// Equation(s):
// \Selector29~11_combout  = (\Selector29~4_combout ) # ((\Selector29~9_combout ) # ((\ShiftRight0~68_combout  & \Selector29~10_combout )))

	.dataa(\Selector29~4_combout ),
	.datab(\ShiftRight0~68_combout ),
	.datac(\Selector29~10_combout ),
	.datad(\Selector29~9_combout ),
	.cin(gnd),
	.combout(\Selector29~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~11 .lut_mask = 16'hFFEA;
defparam \Selector29~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N12
cycloneive_lcell_comb \ShiftRight0~74 (
// Equation(s):
// \ShiftRight0~74_combout  = (\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & ((\my_alu.portA[30]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[28]~input_o ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[28]~input_o ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\my_alu.portA[30]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~74_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~74 .lut_mask = 16'hE040;
defparam \ShiftRight0~74 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N14
cycloneive_lcell_comb \ShiftRight0~75 (
// Equation(s):
// \ShiftRight0~75_combout  = (\ShiftRight0~74_combout ) # ((\ShiftRight0~61_combout  & !\my_alu.portB[0]~input_o ))

	.dataa(\ShiftRight0~61_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~74_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~75_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~75 .lut_mask = 16'hFF0A;
defparam \ShiftRight0~75 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N16
cycloneive_lcell_comb \ShiftRight0~76 (
// Equation(s):
// \ShiftRight0~76_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~73_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~75_combout )))

	.dataa(\ShiftRight0~73_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\ShiftRight0~75_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~76_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~76 .lut_mask = 16'hB8B8;
defparam \ShiftRight0~76 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N14
cycloneive_lcell_comb \ShiftRight0~79 (
// Equation(s):
// \ShiftRight0~79_combout  = (\my_alu.portB[3]~input_o  & ((\ShiftRight0~76_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector20~2_combout ))

	.dataa(\Selector20~2_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~76_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~79_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~79 .lut_mask = 16'hF0AA;
defparam \ShiftRight0~79 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N20
cycloneive_lcell_comb \Selector31~27 (
// Equation(s):
// \Selector31~27_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~27_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~27 .lut_mask = 16'h0100;
defparam \Selector31~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y49_N1
cycloneive_io_ibuf \my_alu.portA[3]~input (
	.i(\my_alu.portA [3]),
	.ibar(gnd),
	.o(\my_alu.portA[3]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[3]~input .bus_hold = "false";
defparam \my_alu.portA[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N6
cycloneive_lcell_comb \Add0~6 (
// Equation(s):
// \Add0~6_combout  = (\my_alu.portB[3]~input_o  & ((\my_alu.portA[3]~input_o  & (\Add0~5  & VCC)) # (!\my_alu.portA[3]~input_o  & (!\Add0~5 )))) # (!\my_alu.portB[3]~input_o  & ((\my_alu.portA[3]~input_o  & (!\Add0~5 )) # (!\my_alu.portA[3]~input_o  & 
// ((\Add0~5 ) # (GND)))))
// \Add0~7  = CARRY((\my_alu.portB[3]~input_o  & (!\my_alu.portA[3]~input_o  & !\Add0~5 )) # (!\my_alu.portB[3]~input_o  & ((!\Add0~5 ) # (!\my_alu.portA[3]~input_o ))))

	.dataa(\my_alu.portB[3]~input_o ),
	.datab(\my_alu.portA[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~5 ),
	.combout(\Add0~6_combout ),
	.cout(\Add0~7 ));
// synopsys translate_off
defparam \Add0~6 .lut_mask = 16'h9617;
defparam \Add0~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N6
cycloneive_lcell_comb \Add1~6 (
// Equation(s):
// \Add1~6_combout  = (\my_alu.portB[3]~input_o  & ((\my_alu.portA[3]~input_o  & (!\Add1~5 )) # (!\my_alu.portA[3]~input_o  & ((\Add1~5 ) # (GND))))) # (!\my_alu.portB[3]~input_o  & ((\my_alu.portA[3]~input_o  & (\Add1~5  & VCC)) # (!\my_alu.portA[3]~input_o 
//  & (!\Add1~5 ))))
// \Add1~7  = CARRY((\my_alu.portB[3]~input_o  & ((!\Add1~5 ) # (!\my_alu.portA[3]~input_o ))) # (!\my_alu.portB[3]~input_o  & (!\my_alu.portA[3]~input_o  & !\Add1~5 )))

	.dataa(\my_alu.portB[3]~input_o ),
	.datab(\my_alu.portA[3]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~5 ),
	.combout(\Add1~6_combout ),
	.cout(\Add1~7 ));
// synopsys translate_off
defparam \Add1~6 .lut_mask = 16'h692B;
defparam \Add1~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N20
cycloneive_lcell_comb \Selector28~3 (
// Equation(s):
// \Selector28~3_combout  = (\Selector31~26_combout  & ((\Add1~6_combout ) # ((\Selector31~27_combout  & \Add0~6_combout )))) # (!\Selector31~26_combout  & (\Selector31~27_combout  & (\Add0~6_combout )))

	.dataa(\Selector31~26_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Add0~6_combout ),
	.datad(\Add1~6_combout ),
	.cin(gnd),
	.combout(\Selector28~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~3 .lut_mask = 16'hEAC0;
defparam \Selector28~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N18
cycloneive_lcell_comb \Selector28~2 (
// Equation(s):
// \Selector28~2_combout  = (\Selector31~30_combout  & (((\my_alu.portA[3]~input_o ) # (\my_alu.portB[3]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portA[3]~input_o  & \my_alu.portB[3]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector28~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~2 .lut_mask = 16'hEAA0;
defparam \Selector28~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N16
cycloneive_lcell_comb \ShiftLeft0~15 (
// Equation(s):
// \ShiftLeft0~15_combout  = (\ShiftLeft0~14_combout ) # ((\ShiftLeft0~10_combout  & \my_alu.portB[1]~input_o ))

	.dataa(\ShiftLeft0~14_combout ),
	.datab(\ShiftLeft0~10_combout ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~15_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~15 .lut_mask = 16'hEAEA;
defparam \ShiftLeft0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N12
cycloneive_lcell_comb \Selector28~10 (
// Equation(s):
// \Selector28~10_combout  = (\Selector23~3_combout  & (\ShiftLeft0~15_combout  & (!\my_alu.portB[2]~input_o  & !\my_alu.portB[3]~input_o )))

	.dataa(\Selector23~3_combout ),
	.datab(\ShiftLeft0~15_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector28~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~10 .lut_mask = 16'h0008;
defparam \Selector28~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N8
cycloneive_lcell_comb \Selector28~5 (
// Equation(s):
// \Selector28~5_combout  = (\Selector28~4_combout ) # ((\Selector28~3_combout ) # ((\Selector28~2_combout ) # (\Selector28~10_combout )))

	.dataa(\Selector28~4_combout ),
	.datab(\Selector28~3_combout ),
	.datac(\Selector28~2_combout ),
	.datad(\Selector28~10_combout ),
	.cin(gnd),
	.combout(\Selector28~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~5 .lut_mask = 16'hFFFE;
defparam \Selector28~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y31_N1
cycloneive_io_ibuf \my_alu.portA[15]~input (
	.i(\my_alu.portA [15]),
	.ibar(gnd),
	.o(\my_alu.portA[15]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[15]~input .bus_hold = "false";
defparam \my_alu.portA[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N18
cycloneive_lcell_comb \ShiftRight0~56 (
// Equation(s):
// \ShiftRight0~56_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[17]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[15]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(\my_alu.portA[17]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~56_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~56 .lut_mask = 16'hF0CC;
defparam \ShiftRight0~56 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N0
cycloneive_lcell_comb \ShiftRight0~11 (
// Equation(s):
// \ShiftRight0~11_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[18]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[16]~input_o ))

	.dataa(\my_alu.portA[16]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~11_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~11 .lut_mask = 16'hEE22;
defparam \ShiftRight0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N18
cycloneive_lcell_comb \ShiftRight0~70 (
// Equation(s):
// \ShiftRight0~70_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~11_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~56_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~56_combout ),
	.datad(\ShiftRight0~11_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~70_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~70 .lut_mask = 16'hFC30;
defparam \ShiftRight0~70 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N4
cycloneive_lcell_comb \ShiftRight0~72 (
// Equation(s):
// \ShiftRight0~72_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~70_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~71_combout ))

	.dataa(\ShiftRight0~71_combout ),
	.datab(\ShiftRight0~70_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~72_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~72 .lut_mask = 16'hCCAA;
defparam \ShiftRight0~72 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N14
cycloneive_lcell_comb \ShiftRight0~53 (
// Equation(s):
// \ShiftRight0~53_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[9]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[7]~input_o )))

	.dataa(\my_alu.portA[9]~input_o ),
	.datab(\my_alu.portA[7]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~53_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~53 .lut_mask = 16'hAACC;
defparam \ShiftRight0~53 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N22
cycloneive_lcell_comb \ShiftRight0~69 (
// Equation(s):
// \ShiftRight0~69_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~25_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~53_combout )))

	.dataa(\ShiftRight0~25_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~53_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~69_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~69 .lut_mask = 16'hAAF0;
defparam \ShiftRight0~69 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N12
cycloneive_lcell_comb \ShiftRight0~55 (
// Equation(s):
// \ShiftRight0~55_combout  = (!\my_alu.portB[2]~input_o  & !\my_alu.portB[3]~input_o )

	.dataa(gnd),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~55_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~55 .lut_mask = 16'h0303;
defparam \ShiftRight0~55 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y40_N8
cycloneive_io_ibuf \my_alu.portA[4]~input (
	.i(\my_alu.portA [4]),
	.ibar(gnd),
	.o(\my_alu.portA[4]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[4]~input .bus_hold = "false";
defparam \my_alu.portA[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N26
cycloneive_lcell_comb \ShiftRight0~40 (
// Equation(s):
// \ShiftRight0~40_combout  = (\my_alu.portB[0]~input_o  & ((\my_alu.portA[4]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[3]~input_o ))

	.dataa(\my_alu.portA[3]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~40_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~40 .lut_mask = 16'hE2E2;
defparam \ShiftRight0~40 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N0
cycloneive_lcell_comb \Selector28~6 (
// Equation(s):
// \Selector28~6_combout  = (\Selector29~0_combout  & (((!\ShiftRight0~55_combout )))) # (!\Selector29~0_combout  & ((\ShiftRight0~55_combout  & ((\ShiftRight0~40_combout ))) # (!\ShiftRight0~55_combout  & (\ShiftRight0~69_combout ))))

	.dataa(\Selector29~0_combout ),
	.datab(\ShiftRight0~69_combout ),
	.datac(\ShiftRight0~55_combout ),
	.datad(\ShiftRight0~40_combout ),
	.cin(gnd),
	.combout(\Selector28~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~6 .lut_mask = 16'h5E0E;
defparam \Selector28~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N14
cycloneive_lcell_comb \Selector28~7 (
// Equation(s):
// \Selector28~7_combout  = (\Selector29~0_combout  & ((\Selector28~6_combout  & (\ShiftRight0~72_combout )) # (!\Selector28~6_combout  & ((\ShiftRight0~43_combout ))))) # (!\Selector29~0_combout  & (((\Selector28~6_combout ))))

	.dataa(\Selector29~0_combout ),
	.datab(\ShiftRight0~72_combout ),
	.datac(\ShiftRight0~43_combout ),
	.datad(\Selector28~6_combout ),
	.cin(gnd),
	.combout(\Selector28~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~7 .lut_mask = 16'hDDA0;
defparam \Selector28~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N12
cycloneive_lcell_comb \Selector28~8 (
// Equation(s):
// \Selector28~8_combout  = (\Selector28~5_combout ) # ((\Selector29~3_combout  & (\Selector9~2_combout  & \Selector28~7_combout )))

	.dataa(\Selector29~3_combout ),
	.datab(\Selector28~5_combout ),
	.datac(\Selector9~2_combout ),
	.datad(\Selector28~7_combout ),
	.cin(gnd),
	.combout(\Selector28~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~8 .lut_mask = 16'hECCC;
defparam \Selector28~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N8
cycloneive_lcell_comb \Selector28~9 (
// Equation(s):
// \Selector28~9_combout  = (\Selector28~8_combout ) # ((\Selector29~10_combout  & \ShiftRight0~79_combout ))

	.dataa(gnd),
	.datab(\Selector29~10_combout ),
	.datac(\ShiftRight0~79_combout ),
	.datad(\Selector28~8_combout ),
	.cin(gnd),
	.combout(\Selector28~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector28~9 .lut_mask = 16'hFFC0;
defparam \Selector28~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N8
cycloneive_lcell_comb \Add1~8 (
// Equation(s):
// \Add1~8_combout  = ((\my_alu.portB[4]~input_o  $ (\my_alu.portA[4]~input_o  $ (\Add1~7 )))) # (GND)
// \Add1~9  = CARRY((\my_alu.portB[4]~input_o  & (\my_alu.portA[4]~input_o  & !\Add1~7 )) # (!\my_alu.portB[4]~input_o  & ((\my_alu.portA[4]~input_o ) # (!\Add1~7 ))))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\my_alu.portA[4]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~7 ),
	.combout(\Add1~8_combout ),
	.cout(\Add1~9 ));
// synopsys translate_off
defparam \Add1~8 .lut_mask = 16'h964D;
defparam \Add1~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N4
cycloneive_lcell_comb \Selector31~12 (
// Equation(s):
// \Selector31~12_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~12 .lut_mask = 16'h1000;
defparam \Selector31~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N2
cycloneive_lcell_comb \Selector27~1 (
// Equation(s):
// \Selector27~1_combout  = (\Add0~8_combout  & ((\Selector31~8_combout ) # ((\Add1~8_combout  & \Selector31~12_combout )))) # (!\Add0~8_combout  & (\Add1~8_combout  & (\Selector31~12_combout )))

	.dataa(\Add0~8_combout ),
	.datab(\Add1~8_combout ),
	.datac(\Selector31~12_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector27~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~1 .lut_mask = 16'hEAC0;
defparam \Selector27~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N20
cycloneive_lcell_comb \Selector27~2 (
// Equation(s):
// \Selector27~2_combout  = (\my_alu.portB[4]~input_o  & (\Selector31~9_combout  & ((!\my_alu.portA[4]~input_o )))) # (!\my_alu.portB[4]~input_o  & ((\my_alu.portA[4]~input_o  & (\Selector31~9_combout )) # (!\my_alu.portA[4]~input_o  & 
// ((\Selector31~15_combout )))))

	.dataa(\Selector31~9_combout ),
	.datab(\Selector31~15_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\my_alu.portA[4]~input_o ),
	.cin(gnd),
	.combout(\Selector27~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~2 .lut_mask = 16'h0AAC;
defparam \Selector27~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y42_N15
cycloneive_io_ibuf \my_alu.portA[11]~input (
	.i(\my_alu.portA [11]),
	.ibar(gnd),
	.o(\my_alu.portA[11]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[11]~input .bus_hold = "false";
defparam \my_alu.portA[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N20
cycloneive_lcell_comb \ShiftRight0~24 (
// Equation(s):
// \ShiftRight0~24_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[11]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[9]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~24_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~24 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N6
cycloneive_lcell_comb \ShiftRight0~25 (
// Equation(s):
// \ShiftRight0~25_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[10]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[8]~input_o ))

	.dataa(\my_alu.portA[8]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[10]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~25_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~25 .lut_mask = 16'hFA0A;
defparam \ShiftRight0~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N16
cycloneive_lcell_comb \ShiftRight0~26 (
// Equation(s):
// \ShiftRight0~26_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~24_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~25_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~24_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~25_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~26_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~26 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N16
cycloneive_lcell_comb \ShiftRight0~17 (
// Equation(s):
// \ShiftRight0~17_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & ((\my_alu.portA[7]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[6]~input_o ))))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[7]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~17_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~17 .lut_mask = 16'hE200;
defparam \ShiftRight0~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N26
cycloneive_lcell_comb \ShiftRight0~18 (
// Equation(s):
// \ShiftRight0~18_combout  = (\my_alu.portB[0]~input_o  & ((\my_alu.portA[5]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[4]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[4]~input_o ),
	.datad(\my_alu.portA[5]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~18_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~18 .lut_mask = 16'hFC30;
defparam \ShiftRight0~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N28
cycloneive_lcell_comb \ShiftRight0~19 (
// Equation(s):
// \ShiftRight0~19_combout  = (\ShiftRight0~17_combout ) # ((\ShiftRight0~18_combout  & !\my_alu.portB[1]~input_o ))

	.dataa(gnd),
	.datab(\ShiftRight0~17_combout ),
	.datac(\ShiftRight0~18_combout ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~19_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~19 .lut_mask = 16'hCCFC;
defparam \ShiftRight0~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N2
cycloneive_lcell_comb \Selector24~2 (
// Equation(s):
// \Selector24~2_combout  = (\my_alu.portB[4]~input_o ) # ((\my_alu.portB[2]~input_o  & !\my_alu.portB[3]~input_o ))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector24~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~2 .lut_mask = 16'hF2F2;
defparam \Selector24~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y38_N0
cycloneive_lcell_comb \Selector27~3 (
// Equation(s):
// \Selector27~3_combout  = (\Selector24~1_combout  & (((\Selector24~2_combout )))) # (!\Selector24~1_combout  & ((\Selector24~2_combout  & (\ShiftRight0~26_combout )) # (!\Selector24~2_combout  & ((\ShiftRight0~19_combout )))))

	.dataa(\Selector24~1_combout ),
	.datab(\ShiftRight0~26_combout ),
	.datac(\ShiftRight0~19_combout ),
	.datad(\Selector24~2_combout ),
	.cin(gnd),
	.combout(\Selector27~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~3 .lut_mask = 16'hEE50;
defparam \Selector27~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N16
cycloneive_lcell_comb \Selector24~1 (
// Equation(s):
// \Selector24~1_combout  = (\my_alu.portB[3]~input_o ) # (\my_alu.portB[4]~input_o )

	.dataa(gnd),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector24~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~1 .lut_mask = 16'hFCFC;
defparam \Selector24~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N10
cycloneive_lcell_comb \ShiftRight0~7 (
// Equation(s):
// \ShiftRight0~7_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[23]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[21]~input_o )))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[21]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~7_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~7 .lut_mask = 16'hDD88;
defparam \ShiftRight0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y26_N22
cycloneive_io_ibuf \my_alu.portA[20]~input (
	.i(\my_alu.portA [20]),
	.ibar(gnd),
	.o(\my_alu.portA[20]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[20]~input .bus_hold = "false";
defparam \my_alu.portA[20]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N16
cycloneive_lcell_comb \ShiftRight0~8 (
// Equation(s):
// \ShiftRight0~8_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[22]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[20]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[20]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[22]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~8_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~8 .lut_mask = 16'hEE44;
defparam \ShiftRight0~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N2
cycloneive_lcell_comb \ShiftRight0~9 (
// Equation(s):
// \ShiftRight0~9_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~7_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~8_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~7_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~8_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~9_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~9 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N10
cycloneive_lcell_comb \ShiftRight0~81 (
// Equation(s):
// \ShiftRight0~81_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & (\ShiftRight0~5_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~9_combout )))))

	.dataa(\ShiftRight0~5_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftRight0~9_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~81_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~81 .lut_mask = 16'h0B08;
defparam \ShiftRight0~81 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N4
cycloneive_lcell_comb \ShiftRight0~82 (
// Equation(s):
// \ShiftRight0~82_combout  = (\ShiftRight0~81_combout ) # ((\ShiftRight0~2_combout  & (\my_alu.portB[3]~input_o  & !\my_alu.portB[2]~input_o )))

	.dataa(\ShiftRight0~2_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~81_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~82_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~82 .lut_mask = 16'hFF08;
defparam \ShiftRight0~82 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y38_N2
cycloneive_lcell_comb \Selector27~4 (
// Equation(s):
// \Selector27~4_combout  = (\Selector27~3_combout  & (((\ShiftRight0~82_combout ) # (!\Selector24~1_combout )))) # (!\Selector27~3_combout  & (\ShiftRight0~80_combout  & (\Selector24~1_combout )))

	.dataa(\ShiftRight0~80_combout ),
	.datab(\Selector27~3_combout ),
	.datac(\Selector24~1_combout ),
	.datad(\ShiftRight0~82_combout ),
	.cin(gnd),
	.combout(\Selector27~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~4 .lut_mask = 16'hEC2C;
defparam \Selector27~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N18
cycloneive_lcell_comb \ShiftLeft0~16 (
// Equation(s):
// \ShiftLeft0~16_combout  = (!\my_alu.portB[0]~input_o  & (!\my_alu.portB[1]~input_o  & \my_alu.portA[0]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~16_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~16 .lut_mask = 16'h0300;
defparam \ShiftLeft0~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N14
cycloneive_lcell_comb \ShiftLeft0~18 (
// Equation(s):
// \ShiftLeft0~18_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[2]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[4]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[4]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~18_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~18 .lut_mask = 16'hFC0C;
defparam \ShiftLeft0~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N28
cycloneive_lcell_comb \ShiftLeft0~17 (
// Equation(s):
// \ShiftLeft0~17_combout  = (\my_alu.portB[0]~input_o  & ((\my_alu.portB[1]~input_o  & (\my_alu.portA[1]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[3]~input_o )))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[1]~input_o ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~17_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~17 .lut_mask = 16'hD800;
defparam \ShiftLeft0~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N8
cycloneive_lcell_comb \ShiftLeft0~19 (
// Equation(s):
// \ShiftLeft0~19_combout  = (\ShiftLeft0~17_combout ) # ((!\my_alu.portB[0]~input_o  & \ShiftLeft0~18_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~18_combout ),
	.datad(\ShiftLeft0~17_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~19_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~19 .lut_mask = 16'hFF30;
defparam \ShiftLeft0~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N12
cycloneive_lcell_comb \ShiftLeft0~20 (
// Equation(s):
// \ShiftLeft0~20_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~16_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~19_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~16_combout ),
	.datac(\ShiftLeft0~19_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~20_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~20 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N14
cycloneive_lcell_comb \Selector27~5 (
// Equation(s):
// \Selector27~5_combout  = (\Selector24~0_combout  & ((\ShiftLeft0~20_combout ) # ((\Selector27~4_combout  & \Selector31~18_combout )))) # (!\Selector24~0_combout  & (\Selector27~4_combout  & ((\Selector31~18_combout ))))

	.dataa(\Selector24~0_combout ),
	.datab(\Selector27~4_combout ),
	.datac(\ShiftLeft0~20_combout ),
	.datad(\Selector31~18_combout ),
	.cin(gnd),
	.combout(\Selector27~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~5 .lut_mask = 16'hECA0;
defparam \Selector27~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N0
cycloneive_lcell_comb \Selector27~0 (
// Equation(s):
// \Selector27~0_combout  = (\Selector31~13_combout  & (((\my_alu.portB[4]~input_o ) # (\my_alu.portA[4]~input_o )))) # (!\Selector31~13_combout  & (\Selector31~19_combout  & (\my_alu.portB[4]~input_o  & \my_alu.portA[4]~input_o )))

	.dataa(\Selector31~19_combout ),
	.datab(\Selector31~13_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\my_alu.portA[4]~input_o ),
	.cin(gnd),
	.combout(\Selector27~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~0 .lut_mask = 16'hECC0;
defparam \Selector27~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N30
cycloneive_lcell_comb \Selector27~6 (
// Equation(s):
// \Selector27~6_combout  = (\Selector27~1_combout ) # ((\Selector27~2_combout ) # ((\Selector27~5_combout ) # (\Selector27~0_combout )))

	.dataa(\Selector27~1_combout ),
	.datab(\Selector27~2_combout ),
	.datac(\Selector27~5_combout ),
	.datad(\Selector27~0_combout ),
	.cin(gnd),
	.combout(\Selector27~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector27~6 .lut_mask = 16'hFFFE;
defparam \Selector27~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N18
cycloneive_lcell_comb \ShiftLeft0~23 (
// Equation(s):
// \ShiftLeft0~23_combout  = (\my_alu.portB[2]~input_o  & (((\ShiftLeft0~10_combout  & !\my_alu.portB[1]~input_o )))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~22_combout ))

	.dataa(\ShiftLeft0~22_combout ),
	.datab(\ShiftLeft0~10_combout ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~23_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~23 .lut_mask = 16'h0CAA;
defparam \ShiftLeft0~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y17_N8
cycloneive_io_ibuf \my_alu.portA[12]~input (
	.i(\my_alu.portA [12]),
	.ibar(gnd),
	.o(\my_alu.portA[12]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[12]~input .bus_hold = "false";
defparam \my_alu.portA[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N28
cycloneive_lcell_comb \ShiftRight0~48 (
// Equation(s):
// \ShiftRight0~48_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[12]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[10]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[10]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~48_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~48 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~48 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N30
cycloneive_lcell_comb \ShiftRight0~49 (
// Equation(s):
// \ShiftRight0~49_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~48_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~24_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~48_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~24_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~49_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~49 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~49 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N4
cycloneive_lcell_comb \ShiftRight0~34 (
// Equation(s):
// \ShiftRight0~34_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[24]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[22]~input_o )))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(\my_alu.portA[22]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~34_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~34 .lut_mask = 16'hAACC;
defparam \ShiftRight0~34 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N30
cycloneive_lcell_comb \ShiftRight0~35 (
// Equation(s):
// \ShiftRight0~35_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~34_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~7_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~34_combout ),
	.datad(\ShiftRight0~7_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~35_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~35 .lut_mask = 16'hF3C0;
defparam \ShiftRight0~35 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N14
cycloneive_lcell_comb \ShiftRight0~84 (
// Equation(s):
// \ShiftRight0~84_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & (\ShiftRight0~32_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~35_combout )))))

	.dataa(\my_alu.portB[3]~input_o ),
	.datab(\ShiftRight0~32_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~35_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~84_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~84 .lut_mask = 16'h4540;
defparam \ShiftRight0~84 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N16
cycloneive_lcell_comb \ShiftRight0~85 (
// Equation(s):
// \ShiftRight0~85_combout  = (\ShiftRight0~84_combout ) # ((\ShiftRight0~30_combout  & (!\my_alu.portB[2]~input_o  & \my_alu.portB[3]~input_o )))

	.dataa(\ShiftRight0~30_combout ),
	.datab(\ShiftRight0~84_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~85_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~85 .lut_mask = 16'hCECC;
defparam \ShiftRight0~85 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N0
cycloneive_lcell_comb \ShiftRight0~21 (
// Equation(s):
// \ShiftRight0~21_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[15]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[13]~input_o ))

	.dataa(\my_alu.portA[13]~input_o ),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~21_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~21 .lut_mask = 16'hCACA;
defparam \ShiftRight0~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y15_N8
cycloneive_io_ibuf \my_alu.portA[16]~input (
	.i(\my_alu.portA [16]),
	.ibar(gnd),
	.o(\my_alu.portA[16]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[16]~input .bus_hold = "false";
defparam \my_alu.portA[16]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X115_Y23_N1
cycloneive_io_ibuf \my_alu.portA[14]~input (
	.i(\my_alu.portA [14]),
	.ibar(gnd),
	.o(\my_alu.portA[14]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[14]~input .bus_hold = "false";
defparam \my_alu.portA[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N28
cycloneive_lcell_comb \ShiftRight0~46 (
// Equation(s):
// \ShiftRight0~46_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[16]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[14]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[16]~input_o ),
	.datac(\my_alu.portA[14]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~46_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~46 .lut_mask = 16'hCCF0;
defparam \ShiftRight0~46 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N10
cycloneive_lcell_comb \ShiftRight0~47 (
// Equation(s):
// \ShiftRight0~47_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~46_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~21_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~21_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~46_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~47_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~47 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~47 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y33_N1
cycloneive_io_ibuf \my_alu.portA[19]~input (
	.i(\my_alu.portA [19]),
	.ibar(gnd),
	.o(\my_alu.portA[19]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[19]~input .bus_hold = "false";
defparam \my_alu.portA[19]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N24
cycloneive_lcell_comb \ShiftRight0~10 (
// Equation(s):
// \ShiftRight0~10_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[19]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[17]~input_o ))

	.dataa(\my_alu.portA[17]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[19]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~10_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~10 .lut_mask = 16'hEE22;
defparam \ShiftRight0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N2
cycloneive_lcell_comb \ShiftRight0~36 (
// Equation(s):
// \ShiftRight0~36_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[20]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[18]~input_o )))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~36_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~36 .lut_mask = 16'hBB88;
defparam \ShiftRight0~36 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N10
cycloneive_lcell_comb \ShiftRight0~37 (
// Equation(s):
// \ShiftRight0~37_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~36_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~10_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~10_combout ),
	.datad(\ShiftRight0~36_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~37_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~37 .lut_mask = 16'hFC30;
defparam \ShiftRight0~37 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N12
cycloneive_lcell_comb \ShiftRight0~83 (
// Equation(s):
// \ShiftRight0~83_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~37_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~47_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~47_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~37_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~83_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~83 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~83 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y38_N28
cycloneive_lcell_comb \Selector26~3 (
// Equation(s):
// \Selector26~3_combout  = (\Selector24~1_combout  & (((\ShiftRight0~83_combout ) # (\Selector24~2_combout )))) # (!\Selector24~1_combout  & (\ShiftRight0~44_combout  & ((!\Selector24~2_combout ))))

	.dataa(\Selector24~1_combout ),
	.datab(\ShiftRight0~44_combout ),
	.datac(\ShiftRight0~83_combout ),
	.datad(\Selector24~2_combout ),
	.cin(gnd),
	.combout(\Selector26~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~3 .lut_mask = 16'hAAE4;
defparam \Selector26~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N24
cycloneive_lcell_comb \Selector26~4 (
// Equation(s):
// \Selector26~4_combout  = (\Selector24~2_combout  & ((\Selector26~3_combout  & ((\ShiftRight0~85_combout ))) # (!\Selector26~3_combout  & (\ShiftRight0~49_combout )))) # (!\Selector24~2_combout  & (((\Selector26~3_combout ))))

	.dataa(\Selector24~2_combout ),
	.datab(\ShiftRight0~49_combout ),
	.datac(\ShiftRight0~85_combout ),
	.datad(\Selector26~3_combout ),
	.cin(gnd),
	.combout(\Selector26~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~4 .lut_mask = 16'hF588;
defparam \Selector26~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N18
cycloneive_lcell_comb \Selector26~5 (
// Equation(s):
// \Selector26~5_combout  = (\Selector24~0_combout  & ((\ShiftLeft0~23_combout ) # ((\Selector31~18_combout  & \Selector26~4_combout )))) # (!\Selector24~0_combout  & (\Selector31~18_combout  & ((\Selector26~4_combout ))))

	.dataa(\Selector24~0_combout ),
	.datab(\Selector31~18_combout ),
	.datac(\ShiftLeft0~23_combout ),
	.datad(\Selector26~4_combout ),
	.cin(gnd),
	.combout(\Selector26~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~5 .lut_mask = 16'hECA0;
defparam \Selector26~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N4
cycloneive_lcell_comb \Selector26~2 (
// Equation(s):
// \Selector26~2_combout  = (\my_alu.portA[5]~input_o  & (\Selector31~9_combout  & ((!\my_alu.portB[5]~input_o )))) # (!\my_alu.portA[5]~input_o  & ((\my_alu.portB[5]~input_o  & (\Selector31~9_combout )) # (!\my_alu.portB[5]~input_o  & 
// ((\Selector31~15_combout )))))

	.dataa(\Selector31~9_combout ),
	.datab(\Selector31~15_combout ),
	.datac(\my_alu.portA[5]~input_o ),
	.datad(\my_alu.portB[5]~input_o ),
	.cin(gnd),
	.combout(\Selector26~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~2 .lut_mask = 16'h0AAC;
defparam \Selector26~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N8
cycloneive_lcell_comb \Selector26~0 (
// Equation(s):
// \Selector26~0_combout  = (\my_alu.portA[5]~input_o  & ((\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portB[5]~input_o )))) # (!\my_alu.portA[5]~input_o  & (\Selector31~13_combout  & ((\my_alu.portB[5]~input_o ))))

	.dataa(\my_alu.portA[5]~input_o ),
	.datab(\Selector31~13_combout ),
	.datac(\Selector31~19_combout ),
	.datad(\my_alu.portB[5]~input_o ),
	.cin(gnd),
	.combout(\Selector26~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~0 .lut_mask = 16'hEC88;
defparam \Selector26~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N10
cycloneive_lcell_comb \Add1~10 (
// Equation(s):
// \Add1~10_combout  = (\my_alu.portB[5]~input_o  & ((\my_alu.portA[5]~input_o  & (!\Add1~9 )) # (!\my_alu.portA[5]~input_o  & ((\Add1~9 ) # (GND))))) # (!\my_alu.portB[5]~input_o  & ((\my_alu.portA[5]~input_o  & (\Add1~9  & VCC)) # 
// (!\my_alu.portA[5]~input_o  & (!\Add1~9 ))))
// \Add1~11  = CARRY((\my_alu.portB[5]~input_o  & ((!\Add1~9 ) # (!\my_alu.portA[5]~input_o ))) # (!\my_alu.portB[5]~input_o  & (!\my_alu.portA[5]~input_o  & !\Add1~9 )))

	.dataa(\my_alu.portB[5]~input_o ),
	.datab(\my_alu.portA[5]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~9 ),
	.combout(\Add1~10_combout ),
	.cout(\Add1~11 ));
// synopsys translate_off
defparam \Add1~10 .lut_mask = 16'h692B;
defparam \Add1~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N18
cycloneive_lcell_comb \Selector26~1 (
// Equation(s):
// \Selector26~1_combout  = (\Add0~10_combout  & ((\Selector31~8_combout ) # ((\Add1~10_combout  & \Selector31~12_combout )))) # (!\Add0~10_combout  & (\Add1~10_combout  & (\Selector31~12_combout )))

	.dataa(\Add0~10_combout ),
	.datab(\Add1~10_combout ),
	.datac(\Selector31~12_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector26~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~1 .lut_mask = 16'hEAC0;
defparam \Selector26~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N6
cycloneive_lcell_comb \Selector26~6 (
// Equation(s):
// \Selector26~6_combout  = (\Selector26~5_combout ) # ((\Selector26~2_combout ) # ((\Selector26~0_combout ) # (\Selector26~1_combout )))

	.dataa(\Selector26~5_combout ),
	.datab(\Selector26~2_combout ),
	.datac(\Selector26~0_combout ),
	.datad(\Selector26~1_combout ),
	.cin(gnd),
	.combout(\Selector26~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector26~6 .lut_mask = 16'hFFFE;
defparam \Selector26~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N12
cycloneive_lcell_comb \Add1~12 (
// Equation(s):
// \Add1~12_combout  = ((\my_alu.portA[6]~input_o  $ (\my_alu.portB[6]~input_o  $ (\Add1~11 )))) # (GND)
// \Add1~13  = CARRY((\my_alu.portA[6]~input_o  & ((!\Add1~11 ) # (!\my_alu.portB[6]~input_o ))) # (!\my_alu.portA[6]~input_o  & (!\my_alu.portB[6]~input_o  & !\Add1~11 )))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(\my_alu.portB[6]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~11 ),
	.combout(\Add1~12_combout ),
	.cout(\Add1~13 ));
// synopsys translate_off
defparam \Add1~12 .lut_mask = 16'h962B;
defparam \Add1~12 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X95_Y34_N26
cycloneive_lcell_comb \Selector25~1 (
// Equation(s):
// \Selector25~1_combout  = (\Add0~12_combout  & ((\Selector31~8_combout ) # ((\Selector31~12_combout  & \Add1~12_combout )))) # (!\Add0~12_combout  & (\Selector31~12_combout  & (\Add1~12_combout )))

	.dataa(\Add0~12_combout ),
	.datab(\Selector31~12_combout ),
	.datac(\Add1~12_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector25~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~1 .lut_mask = 16'hEAC0;
defparam \Selector25~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N26
cycloneive_lcell_comb \Selector31~9 (
// Equation(s):
// \Selector31~9_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~9 .lut_mask = 16'h0200;
defparam \Selector31~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y22_N22
cycloneive_io_ibuf \my_alu.portA[6]~input (
	.i(\my_alu.portA [6]),
	.ibar(gnd),
	.o(\my_alu.portA[6]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[6]~input .bus_hold = "false";
defparam \my_alu.portA[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N2
cycloneive_lcell_comb \Selector25~2 (
// Equation(s):
// \Selector25~2_combout  = (\my_alu.portB[6]~input_o  & (((\Selector31~9_combout  & !\my_alu.portA[6]~input_o )))) # (!\my_alu.portB[6]~input_o  & ((\my_alu.portA[6]~input_o  & ((\Selector31~9_combout ))) # (!\my_alu.portA[6]~input_o  & 
// (\Selector31~15_combout ))))

	.dataa(\Selector31~15_combout ),
	.datab(\Selector31~9_combout ),
	.datac(\my_alu.portB[6]~input_o ),
	.datad(\my_alu.portA[6]~input_o ),
	.cin(gnd),
	.combout(\Selector25~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~2 .lut_mask = 16'h0CCA;
defparam \Selector25~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N24
cycloneive_lcell_comb \ShiftLeft0~24 (
// Equation(s):
// \ShiftLeft0~24_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[4]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[6]~input_o ))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portA[4]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~24_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~24 .lut_mask = 16'hF0AA;
defparam \ShiftLeft0~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N18
cycloneive_lcell_comb \ShiftLeft0~21 (
// Equation(s):
// \ShiftLeft0~21_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[3]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[5]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[5]~input_o ),
	.datac(\my_alu.portA[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~21_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~21 .lut_mask = 16'hE4E4;
defparam \ShiftLeft0~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y36_N22
cycloneive_lcell_comb \ShiftLeft0~25 (
// Equation(s):
// \ShiftLeft0~25_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~21_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~24_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~24_combout ),
	.datad(\ShiftLeft0~21_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~25_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~25 .lut_mask = 16'hFC30;
defparam \ShiftLeft0~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N12
cycloneive_lcell_comb \ShiftLeft0~26 (
// Equation(s):
// \ShiftLeft0~26_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~13_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~25_combout )))

	.dataa(\ShiftLeft0~13_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~25_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~26_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~26 .lut_mask = 16'hAFA0;
defparam \ShiftLeft0~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N4
cycloneive_lcell_comb \Selector24~0 (
// Equation(s):
// \Selector24~0_combout  = (!\my_alu.portB[4]~input_o  & (\Selector31~21_combout  & (!\ShiftLeft0~8_combout  & !\my_alu.portB[3]~input_o )))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\Selector31~21_combout ),
	.datac(\ShiftLeft0~8_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector24~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~0 .lut_mask = 16'h0004;
defparam \Selector24~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N28
cycloneive_lcell_comb \Selector25~5 (
// Equation(s):
// \Selector25~5_combout  = (\Selector25~4_combout  & ((\Selector31~18_combout ) # ((\ShiftLeft0~26_combout  & \Selector24~0_combout )))) # (!\Selector25~4_combout  & (((\ShiftLeft0~26_combout  & \Selector24~0_combout ))))

	.dataa(\Selector25~4_combout ),
	.datab(\Selector31~18_combout ),
	.datac(\ShiftLeft0~26_combout ),
	.datad(\Selector24~0_combout ),
	.cin(gnd),
	.combout(\Selector25~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~5 .lut_mask = 16'hF888;
defparam \Selector25~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N0
cycloneive_lcell_comb \Selector25~0 (
// Equation(s):
// \Selector25~0_combout  = (\Selector31~13_combout  & (((\my_alu.portB[6]~input_o ) # (\my_alu.portA[6]~input_o )))) # (!\Selector31~13_combout  & (\Selector31~19_combout  & (\my_alu.portB[6]~input_o  & \my_alu.portA[6]~input_o )))

	.dataa(\Selector31~13_combout ),
	.datab(\Selector31~19_combout ),
	.datac(\my_alu.portB[6]~input_o ),
	.datad(\my_alu.portA[6]~input_o ),
	.cin(gnd),
	.combout(\Selector25~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~0 .lut_mask = 16'hEAA0;
defparam \Selector25~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N20
cycloneive_lcell_comb \Selector25~6 (
// Equation(s):
// \Selector25~6_combout  = (\Selector25~1_combout ) # ((\Selector25~2_combout ) # ((\Selector25~5_combout ) # (\Selector25~0_combout )))

	.dataa(\Selector25~1_combout ),
	.datab(\Selector25~2_combout ),
	.datac(\Selector25~5_combout ),
	.datad(\Selector25~0_combout ),
	.cin(gnd),
	.combout(\Selector25~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector25~6 .lut_mask = 16'hFFFE;
defparam \Selector25~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N26
cycloneive_lcell_comb \Selector24~5 (
// Equation(s):
// \Selector24~5_combout  = (\my_alu.portB[7]~input_o  & (((!\my_alu.portA[7]~input_o  & \Selector31~9_combout )))) # (!\my_alu.portB[7]~input_o  & ((\my_alu.portA[7]~input_o  & ((\Selector31~9_combout ))) # (!\my_alu.portA[7]~input_o  & 
// (\Selector31~15_combout ))))

	.dataa(\Selector31~15_combout ),
	.datab(\my_alu.portB[7]~input_o ),
	.datac(\my_alu.portA[7]~input_o ),
	.datad(\Selector31~9_combout ),
	.cin(gnd),
	.combout(\Selector24~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~5 .lut_mask = 16'h3E02;
defparam \Selector24~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N14
cycloneive_lcell_comb \Add0~14 (
// Equation(s):
// \Add0~14_combout  = (\my_alu.portA[7]~input_o  & ((\my_alu.portB[7]~input_o  & (\Add0~13  & VCC)) # (!\my_alu.portB[7]~input_o  & (!\Add0~13 )))) # (!\my_alu.portA[7]~input_o  & ((\my_alu.portB[7]~input_o  & (!\Add0~13 )) # (!\my_alu.portB[7]~input_o  & 
// ((\Add0~13 ) # (GND)))))
// \Add0~15  = CARRY((\my_alu.portA[7]~input_o  & (!\my_alu.portB[7]~input_o  & !\Add0~13 )) # (!\my_alu.portA[7]~input_o  & ((!\Add0~13 ) # (!\my_alu.portB[7]~input_o ))))

	.dataa(\my_alu.portA[7]~input_o ),
	.datab(\my_alu.portB[7]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~13 ),
	.combout(\Add0~14_combout ),
	.cout(\Add0~15 ));
// synopsys translate_off
defparam \Add0~14 .lut_mask = 16'h9617;
defparam \Add0~14 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N8
cycloneive_lcell_comb \Selector24~4 (
// Equation(s):
// \Selector24~4_combout  = (\Add1~14_combout  & ((\Selector31~12_combout ) # ((\Add0~14_combout  & \Selector31~8_combout )))) # (!\Add1~14_combout  & (((\Add0~14_combout  & \Selector31~8_combout ))))

	.dataa(\Add1~14_combout ),
	.datab(\Selector31~12_combout ),
	.datac(\Add0~14_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector24~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~4 .lut_mask = 16'hF888;
defparam \Selector24~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N22
cycloneive_lcell_comb \Selector24~3 (
// Equation(s):
// \Selector24~3_combout  = (\Selector31~13_combout  & ((\my_alu.portB[7]~input_o ) # ((\my_alu.portA[7]~input_o )))) # (!\Selector31~13_combout  & (\my_alu.portB[7]~input_o  & (\my_alu.portA[7]~input_o  & \Selector31~19_combout )))

	.dataa(\Selector31~13_combout ),
	.datab(\my_alu.portB[7]~input_o ),
	.datac(\my_alu.portA[7]~input_o ),
	.datad(\Selector31~19_combout ),
	.cin(gnd),
	.combout(\Selector24~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~3 .lut_mask = 16'hE8A8;
defparam \Selector24~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N24
cycloneive_lcell_comb \ShiftRight0~58 (
// Equation(s):
// \ShiftRight0~58_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[13]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[11]~input_o )))

	.dataa(\my_alu.portA[13]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~58_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~58 .lut_mask = 16'hAFA0;
defparam \ShiftRight0~58 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N18
cycloneive_lcell_comb \ShiftRight0~22 (
// Equation(s):
// \ShiftRight0~22_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[14]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[12]~input_o )))

	.dataa(\my_alu.portA[14]~input_o ),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~22_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~22 .lut_mask = 16'hAACC;
defparam \ShiftRight0~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N4
cycloneive_lcell_comb \ShiftRight0~71 (
// Equation(s):
// \ShiftRight0~71_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~22_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~58_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~58_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~22_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~71_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~71 .lut_mask = 16'hFC0C;
defparam \ShiftRight0~71 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N8
cycloneive_lcell_comb \ShiftRight0~64 (
// Equation(s):
// \ShiftRight0~64_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[25]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[23]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[25]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~64_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~64 .lut_mask = 16'hEE44;
defparam \ShiftRight0~64 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N16
cycloneive_lcell_comb \ShiftRight0~4 (
// Equation(s):
// \ShiftRight0~4_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[26]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[24]~input_o ))

	.dataa(\my_alu.portA[24]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portA[26]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~4_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~4 .lut_mask = 16'hF0AA;
defparam \ShiftRight0~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N28
cycloneive_lcell_comb \ShiftRight0~77 (
// Equation(s):
// \ShiftRight0~77_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~4_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~64_combout ))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~64_combout ),
	.datad(\ShiftRight0~4_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~77_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~77 .lut_mask = 16'hFC30;
defparam \ShiftRight0~77 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N18
cycloneive_lcell_comb \ShiftRight0~90 (
// Equation(s):
// \ShiftRight0~90_combout  = (!\my_alu.portB[2]~input_o  & ((\my_alu.portB[3]~input_o  & (\ShiftRight0~73_combout )) # (!\my_alu.portB[3]~input_o  & ((\ShiftRight0~77_combout )))))

	.dataa(\ShiftRight0~73_combout ),
	.datab(\ShiftRight0~77_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~90_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~90 .lut_mask = 16'h0A0C;
defparam \ShiftRight0~90 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N20
cycloneive_lcell_comb \ShiftRight0~91 (
// Equation(s):
// \ShiftRight0~91_combout  = (\ShiftRight0~90_combout ) # ((\ShiftRight0~75_combout  & (\my_alu.portB[2]~input_o  & !\my_alu.portB[3]~input_o )))

	.dataa(\ShiftRight0~75_combout ),
	.datab(\ShiftRight0~90_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~91_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~91 .lut_mask = 16'hCCEC;
defparam \ShiftRight0~91 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N30
cycloneive_lcell_comb \Selector24~7 (
// Equation(s):
// \Selector24~7_combout  = (\Selector24~6_combout  & (((\ShiftRight0~91_combout ) # (!\Selector24~2_combout )))) # (!\Selector24~6_combout  & (\ShiftRight0~71_combout  & ((\Selector24~2_combout ))))

	.dataa(\Selector24~6_combout ),
	.datab(\ShiftRight0~71_combout ),
	.datac(\ShiftRight0~91_combout ),
	.datad(\Selector24~2_combout ),
	.cin(gnd),
	.combout(\Selector24~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~7 .lut_mask = 16'hE4AA;
defparam \Selector24~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N16
cycloneive_lcell_comb \Selector24~8 (
// Equation(s):
// \Selector24~8_combout  = (\ShiftLeft0~29_combout  & ((\Selector24~0_combout ) # ((\Selector31~18_combout  & \Selector24~7_combout )))) # (!\ShiftLeft0~29_combout  & (\Selector31~18_combout  & (\Selector24~7_combout )))

	.dataa(\ShiftLeft0~29_combout ),
	.datab(\Selector31~18_combout ),
	.datac(\Selector24~7_combout ),
	.datad(\Selector24~0_combout ),
	.cin(gnd),
	.combout(\Selector24~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~8 .lut_mask = 16'hEAC0;
defparam \Selector24~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N4
cycloneive_lcell_comb \Selector24~9 (
// Equation(s):
// \Selector24~9_combout  = (\Selector24~5_combout ) # ((\Selector24~4_combout ) # ((\Selector24~3_combout ) # (\Selector24~8_combout )))

	.dataa(\Selector24~5_combout ),
	.datab(\Selector24~4_combout ),
	.datac(\Selector24~3_combout ),
	.datad(\Selector24~8_combout ),
	.cin(gnd),
	.combout(\Selector24~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector24~9 .lut_mask = 16'hFFFE;
defparam \Selector24~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N8
cycloneive_lcell_comb \ShiftRight0~12 (
// Equation(s):
// \ShiftRight0~12_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~10_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~11_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~10_combout ),
	.datad(\ShiftRight0~11_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~12_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~12 .lut_mask = 16'hF3C0;
defparam \ShiftRight0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N26
cycloneive_lcell_comb \Selector23~2 (
// Equation(s):
// \Selector23~2_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~9_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~12_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~12_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~9_combout ),
	.cin(gnd),
	.combout(\Selector23~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~2 .lut_mask = 16'hFC0C;
defparam \Selector23~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N28
cycloneive_lcell_comb \Selector23~9 (
// Equation(s):
// \Selector23~9_combout  = (\Selector15~2_combout  & (\my_alu.portB[3]~input_o  & (\my_alu.aluOp[0]~input_o  & !\my_alu.portB[4]~input_o )))

	.dataa(\Selector15~2_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector23~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~9 .lut_mask = 16'h0080;
defparam \Selector23~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N22
cycloneive_lcell_comb \Selector23~10 (
// Equation(s):
// \Selector23~10_combout  = (\Selector23~8_combout ) # ((\Selector23~2_combout  & \Selector23~9_combout ))

	.dataa(\Selector23~8_combout ),
	.datab(gnd),
	.datac(\Selector23~2_combout ),
	.datad(\Selector23~9_combout ),
	.cin(gnd),
	.combout(\Selector23~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~10 .lut_mask = 16'hFAAA;
defparam \Selector23~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N6
cycloneive_lcell_comb \ShiftLeft0~30 (
// Equation(s):
// \ShiftLeft0~30_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[6]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[8]~input_o )))

	.dataa(\my_alu.portA[6]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portA[8]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~30_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~30 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N8
cycloneive_lcell_comb \ShiftLeft0~31 (
// Equation(s):
// \ShiftLeft0~31_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~27_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~30_combout )))

	.dataa(\ShiftLeft0~27_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~30_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~31_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~31 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N24
cycloneive_lcell_comb \ShiftLeft0~32 (
// Equation(s):
// \ShiftLeft0~32_combout  = (!\my_alu.portB[2]~input_o  & ((\my_alu.portB[3]~input_o  & (\ShiftLeft0~16_combout )) # (!\my_alu.portB[3]~input_o  & ((\ShiftLeft0~31_combout )))))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\ShiftLeft0~16_combout ),
	.datac(\ShiftLeft0~31_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~32_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~32 .lut_mask = 16'h4450;
defparam \ShiftLeft0~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N26
cycloneive_lcell_comb \ShiftLeft0~33 (
// Equation(s):
// \ShiftLeft0~33_combout  = (\ShiftLeft0~32_combout ) # ((\ShiftLeft0~19_combout  & (\my_alu.portB[2]~input_o  & !\my_alu.portB[3]~input_o )))

	.dataa(\ShiftLeft0~19_combout ),
	.datab(\ShiftLeft0~32_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~33_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~33 .lut_mask = 16'hCCEC;
defparam \ShiftLeft0~33 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N18
cycloneive_lcell_comb \Selector23~14 (
// Equation(s):
// \Selector23~14_combout  = (!\ShiftLeft0~8_combout  & (\ShiftLeft0~33_combout  & (\Selector31~28_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(\ShiftLeft0~33_combout ),
	.datac(\Selector31~28_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector23~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~14 .lut_mask = 16'h0040;
defparam \Selector23~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N8
cycloneive_lcell_comb \ShiftRight0~0 (
// Equation(s):
// \ShiftRight0~0_combout  = (!\my_alu.portB[1]~input_o  & ((\my_alu.portB[0]~input_o  & ((\my_alu.portA[29]~input_o ))) # (!\my_alu.portB[0]~input_o  & (\my_alu.portA[28]~input_o ))))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[28]~input_o ),
	.datad(\my_alu.portA[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~0_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~0 .lut_mask = 16'h5410;
defparam \ShiftRight0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N8
cycloneive_lcell_comb \ShiftRight0~2 (
// Equation(s):
// \ShiftRight0~2_combout  = (\ShiftRight0~0_combout ) # ((\ShiftRight0~1_combout  & \my_alu.portB[1]~input_o ))

	.dataa(\ShiftRight0~1_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~0_combout ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~2_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~2 .lut_mask = 16'hFAF0;
defparam \ShiftRight0~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N24
cycloneive_lcell_comb \ShiftRight0~6 (
// Equation(s):
// \ShiftRight0~6_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~2_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~5_combout ))

	.dataa(\ShiftRight0~5_combout ),
	.datab(gnd),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~2_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~6_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~6 .lut_mask = 16'hFA0A;
defparam \ShiftRight0~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N0
cycloneive_lcell_comb \Selector23~11 (
// Equation(s):
// \Selector23~11_combout  = (\Selector15~2_combout  & (!\my_alu.portB[3]~input_o  & (\my_alu.aluOp[0]~input_o  & \my_alu.portB[4]~input_o )))

	.dataa(\Selector15~2_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector23~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~11 .lut_mask = 16'h2000;
defparam \Selector23~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N10
cycloneive_lcell_comb \Selector23~12 (
// Equation(s):
// \Selector23~12_combout  = (\Selector23~10_combout ) # ((\Selector23~14_combout ) # ((\ShiftRight0~6_combout  & \Selector23~11_combout )))

	.dataa(\Selector23~10_combout ),
	.datab(\Selector23~14_combout ),
	.datac(\ShiftRight0~6_combout ),
	.datad(\Selector23~11_combout ),
	.cin(gnd),
	.combout(\Selector23~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~12 .lut_mask = 16'hFEEE;
defparam \Selector23~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N12
cycloneive_lcell_comb \Selector22~10 (
// Equation(s):
// \Selector22~10_combout  = (\ShiftLeft0~37_combout  & (!\my_alu.portB[4]~input_o  & (\Selector31~28_combout  & !\ShiftLeft0~8_combout )))

	.dataa(\ShiftLeft0~37_combout ),
	.datab(\my_alu.portB[4]~input_o ),
	.datac(\Selector31~28_combout ),
	.datad(\ShiftLeft0~8_combout ),
	.cin(gnd),
	.combout(\Selector22~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~10 .lut_mask = 16'h0020;
defparam \Selector22~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N2
cycloneive_lcell_comb \Selector22~2 (
// Equation(s):
// \Selector22~2_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~35_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~37_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~35_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~37_combout ),
	.cin(gnd),
	.combout(\Selector22~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~2 .lut_mask = 16'hCFC0;
defparam \Selector22~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N18
cycloneive_lcell_comb \Add0~18 (
// Equation(s):
// \Add0~18_combout  = (\my_alu.portA[9]~input_o  & ((\my_alu.portB[9]~input_o  & (\Add0~17  & VCC)) # (!\my_alu.portB[9]~input_o  & (!\Add0~17 )))) # (!\my_alu.portA[9]~input_o  & ((\my_alu.portB[9]~input_o  & (!\Add0~17 )) # (!\my_alu.portB[9]~input_o  & 
// ((\Add0~17 ) # (GND)))))
// \Add0~19  = CARRY((\my_alu.portA[9]~input_o  & (!\my_alu.portB[9]~input_o  & !\Add0~17 )) # (!\my_alu.portA[9]~input_o  & ((!\Add0~17 ) # (!\my_alu.portB[9]~input_o ))))

	.dataa(\my_alu.portA[9]~input_o ),
	.datab(\my_alu.portB[9]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~17 ),
	.combout(\Add0~18_combout ),
	.cout(\Add0~19 ));
// synopsys translate_off
defparam \Add0~18 .lut_mask = 16'h9617;
defparam \Add0~18 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N18
cycloneive_lcell_comb \Selector31~26 (
// Equation(s):
// \Selector31~26_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~26_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~26 .lut_mask = 16'h1000;
defparam \Selector31~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N16
cycloneive_lcell_comb \Selector22~5 (
// Equation(s):
// \Selector22~5_combout  = (\Add1~18_combout  & ((\Selector31~26_combout ) # ((\Add0~18_combout  & \Selector31~27_combout )))) # (!\Add1~18_combout  & (\Add0~18_combout  & (\Selector31~27_combout )))

	.dataa(\Add1~18_combout ),
	.datab(\Add0~18_combout ),
	.datac(\Selector31~27_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector22~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~5 .lut_mask = 16'hEAC0;
defparam \Selector22~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N22
cycloneive_lcell_comb \Selector22~4 (
// Equation(s):
// \Selector22~4_combout  = (\Selector31~30_combout  & ((\my_alu.portA[9]~input_o ) # ((\my_alu.portB[9]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portA[9]~input_o  & (\my_alu.portB[9]~input_o  & \Selector31~25_combout )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(\my_alu.portB[9]~input_o ),
	.datad(\Selector31~25_combout ),
	.cin(gnd),
	.combout(\Selector22~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~4 .lut_mask = 16'hE8A8;
defparam \Selector22~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N28
cycloneive_lcell_comb \Selector22~3 (
// Equation(s):
// \Selector22~3_combout  = (\Selector21~3_combout  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~47_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~49_combout ))))

	.dataa(\Selector21~3_combout ),
	.datab(\ShiftRight0~49_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~47_combout ),
	.cin(gnd),
	.combout(\Selector22~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~3 .lut_mask = 16'hA808;
defparam \Selector22~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N12
cycloneive_lcell_comb \Selector22~7 (
// Equation(s):
// \Selector22~7_combout  = (\Selector22~6_combout ) # ((\Selector22~5_combout ) # ((\Selector22~4_combout ) # (\Selector22~3_combout )))

	.dataa(\Selector22~6_combout ),
	.datab(\Selector22~5_combout ),
	.datac(\Selector22~4_combout ),
	.datad(\Selector22~3_combout ),
	.cin(gnd),
	.combout(\Selector22~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~7 .lut_mask = 16'hFFFE;
defparam \Selector22~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N20
cycloneive_lcell_comb \Selector22~8 (
// Equation(s):
// \Selector22~8_combout  = (\Selector22~7_combout ) # ((\Selector23~9_combout  & \Selector22~2_combout ))

	.dataa(gnd),
	.datab(\Selector23~9_combout ),
	.datac(\Selector22~2_combout ),
	.datad(\Selector22~7_combout ),
	.cin(gnd),
	.combout(\Selector22~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~8 .lut_mask = 16'hFFC0;
defparam \Selector22~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N30
cycloneive_lcell_comb \Selector22~9 (
// Equation(s):
// \Selector22~9_combout  = (\Selector22~10_combout ) # ((\Selector22~8_combout ) # ((\ShiftRight0~33_combout  & \Selector23~11_combout )))

	.dataa(\Selector22~10_combout ),
	.datab(\Selector22~8_combout ),
	.datac(\ShiftRight0~33_combout ),
	.datad(\Selector23~11_combout ),
	.cin(gnd),
	.combout(\Selector22~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector22~9 .lut_mask = 16'hFEEE;
defparam \Selector22~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N20
cycloneive_lcell_comb \Selector19~2 (
// Equation(s):
// \Selector19~2_combout  = (\my_alu.aluOp[0]~input_o  & ((\ShiftLeft0~8_combout ) # ((!\my_alu.portB[4]~input_o  & !\my_alu.portB[3]~input_o ))))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\my_alu.aluOp[0]~input_o ),
	.cin(gnd),
	.combout(\Selector19~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~2 .lut_mask = 16'hCD00;
defparam \Selector19~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N30
cycloneive_lcell_comb \Selector21~3 (
// Equation(s):
// \Selector21~3_combout  = (\Selector19~2_combout  & \Selector15~2_combout )

	.dataa(gnd),
	.datab(\Selector19~2_combout ),
	.datac(\Selector15~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector21~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~3 .lut_mask = 16'hC0C0;
defparam \Selector21~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N16
cycloneive_lcell_comb \ShiftRight0~57 (
// Equation(s):
// \ShiftRight0~57_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftRight0~56_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftRight0~46_combout ))

	.dataa(\ShiftRight0~46_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~56_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~57_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~57 .lut_mask = 16'hE2E2;
defparam \ShiftRight0~57 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N2
cycloneive_lcell_comb \ShiftRight0~60 (
// Equation(s):
// \ShiftRight0~60_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~57_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~59_combout ))

	.dataa(\ShiftRight0~59_combout ),
	.datab(\ShiftRight0~57_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~60_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~60 .lut_mask = 16'hCCAA;
defparam \ShiftRight0~60 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N24
cycloneive_lcell_comb \ShiftLeft0~41 (
// Equation(s):
// \ShiftLeft0~41_combout  = (\ShiftLeft0~40_combout ) # ((\my_alu.portB[3]~input_o  & (!\my_alu.portB[2]~input_o  & \ShiftLeft0~13_combout )))

	.dataa(\ShiftLeft0~40_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~13_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~41_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~41 .lut_mask = 16'hAEAA;
defparam \ShiftLeft0~41 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N20
cycloneive_lcell_comb \Add0~20 (
// Equation(s):
// \Add0~20_combout  = ((\my_alu.portB[10]~input_o  $ (\my_alu.portA[10]~input_o  $ (!\Add0~19 )))) # (GND)
// \Add0~21  = CARRY((\my_alu.portB[10]~input_o  & ((\my_alu.portA[10]~input_o ) # (!\Add0~19 ))) # (!\my_alu.portB[10]~input_o  & (\my_alu.portA[10]~input_o  & !\Add0~19 )))

	.dataa(\my_alu.portB[10]~input_o ),
	.datab(\my_alu.portA[10]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~19 ),
	.combout(\Add0~20_combout ),
	.cout(\Add0~21 ));
// synopsys translate_off
defparam \Add0~20 .lut_mask = 16'h698E;
defparam \Add0~20 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N28
cycloneive_lcell_comb \Selector21~5 (
// Equation(s):
// \Selector21~5_combout  = (\Add1~20_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~20_combout )))) # (!\Add1~20_combout  & (\Selector31~27_combout  & ((\Add0~20_combout ))))

	.dataa(\Add1~20_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Add0~20_combout ),
	.cin(gnd),
	.combout(\Selector21~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~5 .lut_mask = 16'hECA0;
defparam \Selector21~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N24
cycloneive_lcell_comb \Selector21~7 (
// Equation(s):
// \Selector21~7_combout  = (\Selector21~6_combout ) # ((\Selector21~5_combout ) # ((\ShiftLeft0~41_combout  & \Selector23~3_combout )))

	.dataa(\Selector21~6_combout ),
	.datab(\ShiftLeft0~41_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\Selector21~5_combout ),
	.cin(gnd),
	.combout(\Selector21~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~7 .lut_mask = 16'hFFEA;
defparam \Selector21~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y34_N2
cycloneive_lcell_comb \Selector21~8 (
// Equation(s):
// \Selector21~8_combout  = (\Selector21~4_combout ) # ((\Selector21~7_combout ) # ((\Selector21~3_combout  & \ShiftRight0~60_combout )))

	.dataa(\Selector21~4_combout ),
	.datab(\Selector21~3_combout ),
	.datac(\ShiftRight0~60_combout ),
	.datad(\Selector21~7_combout ),
	.cin(gnd),
	.combout(\Selector21~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~8 .lut_mask = 16'hFFEA;
defparam \Selector21~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N8
cycloneive_lcell_comb \ShiftRight0~67 (
// Equation(s):
// \ShiftRight0~67_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~66_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~36_combout )))

	.dataa(\ShiftRight0~66_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftRight0~36_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~67_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~67 .lut_mask = 16'hB8B8;
defparam \ShiftRight0~67 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N22
cycloneive_lcell_comb \Selector21~10 (
// Equation(s):
// \Selector21~10_combout  = (\Selector23~9_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftRight0~65_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~67_combout )))))

	.dataa(\ShiftRight0~65_combout ),
	.datab(\Selector23~9_combout ),
	.datac(\ShiftRight0~67_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector21~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~10 .lut_mask = 16'h88C0;
defparam \Selector21~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N14
cycloneive_lcell_comb \Selector21~9 (
// Equation(s):
// \Selector21~9_combout  = (\Selector21~8_combout ) # ((\Selector21~10_combout ) # ((\ShiftRight0~63_combout  & \Selector23~11_combout )))

	.dataa(\Selector21~8_combout ),
	.datab(\ShiftRight0~63_combout ),
	.datac(\Selector21~10_combout ),
	.datad(\Selector23~11_combout ),
	.cin(gnd),
	.combout(\Selector21~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector21~9 .lut_mask = 16'hFEFA;
defparam \Selector21~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N6
cycloneive_lcell_comb \ShiftRight0~66 (
// Equation(s):
// \ShiftRight0~66_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[21]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[19]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portA[19]~input_o ),
	.datac(\my_alu.portA[21]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftRight0~66_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~66 .lut_mask = 16'hE4E4;
defparam \ShiftRight0~66 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N30
cycloneive_lcell_comb \ShiftRight0~78 (
// Equation(s):
// \ShiftRight0~78_combout  = (\my_alu.portB[0]~input_o  & (\ShiftRight0~8_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftRight0~66_combout )))

	.dataa(gnd),
	.datab(\ShiftRight0~8_combout ),
	.datac(\my_alu.portB[0]~input_o ),
	.datad(\ShiftRight0~66_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~78_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~78 .lut_mask = 16'hCFC0;
defparam \ShiftRight0~78 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N0
cycloneive_lcell_comb \Selector20~2 (
// Equation(s):
// \Selector20~2_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~77_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~78_combout )))

	.dataa(\ShiftRight0~77_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~78_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector20~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~2 .lut_mask = 16'hAAF0;
defparam \Selector20~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N0
cycloneive_lcell_comb \Selector20~3 (
// Equation(s):
// \Selector20~3_combout  = (\ShiftRight0~72_combout  & (\Selector15~2_combout  & \Selector19~2_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~72_combout ),
	.datac(\Selector15~2_combout ),
	.datad(\Selector19~2_combout ),
	.cin(gnd),
	.combout(\Selector20~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~3 .lut_mask = 16'hC000;
defparam \Selector20~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N16
cycloneive_lcell_comb \Selector20~8 (
// Equation(s):
// \Selector20~8_combout  = (\Selector20~7_combout ) # ((\Selector20~3_combout ) # ((\Selector23~9_combout  & \Selector20~2_combout )))

	.dataa(\Selector20~7_combout ),
	.datab(\Selector23~9_combout ),
	.datac(\Selector20~2_combout ),
	.datad(\Selector20~3_combout ),
	.cin(gnd),
	.combout(\Selector20~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~8 .lut_mask = 16'hFFEA;
defparam \Selector20~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N4
cycloneive_lcell_comb \ShiftLeft0~28 (
// Equation(s):
// \ShiftLeft0~28_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~24_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~27_combout ))

	.dataa(\ShiftLeft0~27_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~24_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~28_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~28 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N2
cycloneive_lcell_comb \ShiftLeft0~44 (
// Equation(s):
// \ShiftLeft0~44_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & ((\ShiftLeft0~28_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~43_combout ))))

	.dataa(\ShiftLeft0~43_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~28_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~44_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~44 .lut_mask = 16'h3202;
defparam \ShiftLeft0~44 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N28
cycloneive_lcell_comb \ShiftLeft0~45 (
// Equation(s):
// \ShiftLeft0~45_combout  = (\ShiftLeft0~44_combout ) # ((!\my_alu.portB[2]~input_o  & (\my_alu.portB[3]~input_o  & \ShiftLeft0~15_combout )))

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\ShiftLeft0~44_combout ),
	.datad(\ShiftLeft0~15_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~45_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~45 .lut_mask = 16'hF4F0;
defparam \ShiftLeft0~45 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N14
cycloneive_lcell_comb \Selector20~10 (
// Equation(s):
// \Selector20~10_combout  = (!\ShiftLeft0~8_combout  & (\ShiftLeft0~45_combout  & (\Selector31~28_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(\ShiftLeft0~45_combout ),
	.datac(\Selector31~28_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector20~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~10 .lut_mask = 16'h0040;
defparam \Selector20~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N26
cycloneive_lcell_comb \Selector20~9 (
// Equation(s):
// \Selector20~9_combout  = (\Selector20~8_combout ) # ((\Selector20~10_combout ) # ((\ShiftRight0~76_combout  & \Selector23~11_combout )))

	.dataa(\ShiftRight0~76_combout ),
	.datab(\Selector20~8_combout ),
	.datac(\Selector20~10_combout ),
	.datad(\Selector23~11_combout ),
	.cin(gnd),
	.combout(\Selector20~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector20~9 .lut_mask = 16'hFEFC;
defparam \Selector20~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N18
cycloneive_lcell_comb \Selector19~10 (
// Equation(s):
// \Selector19~10_combout  = (\Selector29~10_combout  & (!\my_alu.portB[2]~input_o  & (!\my_alu.portB[3]~input_o  & \ShiftRight0~2_combout )))

	.dataa(\Selector29~10_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftRight0~2_combout ),
	.cin(gnd),
	.combout(\Selector19~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~10 .lut_mask = 16'h0200;
defparam \Selector19~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N28
cycloneive_lcell_comb \Selector19~3 (
// Equation(s):
// \Selector19~3_combout  = (\Selector23~9_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftRight0~5_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~9_combout )))))

	.dataa(\ShiftRight0~5_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\Selector23~9_combout ),
	.datad(\ShiftRight0~9_combout ),
	.cin(gnd),
	.combout(\Selector19~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~3 .lut_mask = 16'hB080;
defparam \Selector19~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N2
cycloneive_lcell_comb \Selector31~30 (
// Equation(s):
// \Selector31~30_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~30_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~30 .lut_mask = 16'h0020;
defparam \Selector31~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N20
cycloneive_lcell_comb \Selector19~4 (
// Equation(s):
// \Selector19~4_combout  = (\Selector31~30_combout  & (((\my_alu.portB[12]~input_o ) # (\my_alu.portA[12]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[12]~input_o  & \my_alu.portA[12]~input_o )))

	.dataa(\Selector31~25_combout ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portB[12]~input_o ),
	.datad(\my_alu.portA[12]~input_o ),
	.cin(gnd),
	.combout(\Selector19~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~4 .lut_mask = 16'hECC0;
defparam \Selector19~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N24
cycloneive_lcell_comb \Add0~24 (
// Equation(s):
// \Add0~24_combout  = ((\my_alu.portB[12]~input_o  $ (\my_alu.portA[12]~input_o  $ (!\Add0~23 )))) # (GND)
// \Add0~25  = CARRY((\my_alu.portB[12]~input_o  & ((\my_alu.portA[12]~input_o ) # (!\Add0~23 ))) # (!\my_alu.portB[12]~input_o  & (\my_alu.portA[12]~input_o  & !\Add0~23 )))

	.dataa(\my_alu.portB[12]~input_o ),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~23 ),
	.combout(\Add0~24_combout ),
	.cout(\Add0~25 ));
// synopsys translate_off
defparam \Add0~24 .lut_mask = 16'h698E;
defparam \Add0~24 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N16
cycloneive_lcell_comb \Selector19~5 (
// Equation(s):
// \Selector19~5_combout  = (\Add1~24_combout  & ((\Selector31~26_combout ) # ((\Add0~24_combout  & \Selector31~27_combout )))) # (!\Add1~24_combout  & (\Add0~24_combout  & ((\Selector31~27_combout ))))

	.dataa(\Add1~24_combout ),
	.datab(\Add0~24_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector19~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~5 .lut_mask = 16'hECA0;
defparam \Selector19~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N0
cycloneive_lcell_comb \Selector19~7 (
// Equation(s):
// \Selector19~7_combout  = (\Selector19~6_combout ) # ((\Selector19~4_combout ) # (\Selector19~5_combout ))

	.dataa(\Selector19~6_combout ),
	.datab(\Selector19~4_combout ),
	.datac(gnd),
	.datad(\Selector19~5_combout ),
	.cin(gnd),
	.combout(\Selector19~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~7 .lut_mask = 16'hFFEE;
defparam \Selector19~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N30
cycloneive_lcell_comb \Selector19~8 (
// Equation(s):
// \Selector19~8_combout  = (\Selector19~3_combout ) # ((\Selector19~7_combout ) # ((\ShiftRight0~80_combout  & \Selector21~3_combout )))

	.dataa(\ShiftRight0~80_combout ),
	.datab(\Selector19~3_combout ),
	.datac(\Selector19~7_combout ),
	.datad(\Selector21~3_combout ),
	.cin(gnd),
	.combout(\Selector19~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~8 .lut_mask = 16'hFEFC;
defparam \Selector19~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N14
cycloneive_lcell_comb \ShiftLeft0~42 (
// Equation(s):
// \ShiftLeft0~42_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[9]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[11]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[9]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~42_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~42 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~42 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N22
cycloneive_lcell_comb \ShiftLeft0~47 (
// Equation(s):
// \ShiftLeft0~47_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~42_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~46_combout ))

	.dataa(\ShiftLeft0~46_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~42_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~47_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~47 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~47 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N0
cycloneive_lcell_comb \Selector11~2 (
// Equation(s):
// \Selector11~2_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~31_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~47_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~31_combout ),
	.datac(\ShiftLeft0~47_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector11~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~2 .lut_mask = 16'hCCF0;
defparam \Selector11~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N10
cycloneive_lcell_comb \ShiftLeft0~48 (
// Equation(s):
// \ShiftLeft0~48_combout  = (\my_alu.portB[3]~input_o  & (\ShiftLeft0~20_combout )) # (!\my_alu.portB[3]~input_o  & ((\Selector11~2_combout )))

	.dataa(\ShiftLeft0~20_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(gnd),
	.datad(\Selector11~2_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~48_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~48 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~48 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N8
cycloneive_lcell_comb \Selector19~9 (
// Equation(s):
// \Selector19~9_combout  = (\Selector19~10_combout ) # ((\Selector19~8_combout ) # ((\Selector23~3_combout  & \ShiftLeft0~48_combout )))

	.dataa(\Selector23~3_combout ),
	.datab(\Selector19~10_combout ),
	.datac(\Selector19~8_combout ),
	.datad(\ShiftLeft0~48_combout ),
	.cin(gnd),
	.combout(\Selector19~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector19~9 .lut_mask = 16'hFEFC;
defparam \Selector19~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y19_N1
cycloneive_io_ibuf \my_alu.portB[13]~input (
	.i(\my_alu.portB [13]),
	.ibar(gnd),
	.o(\my_alu.portB[13]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[13]~input .bus_hold = "false";
defparam \my_alu.portB[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N26
cycloneive_lcell_comb \Add0~26 (
// Equation(s):
// \Add0~26_combout  = (\my_alu.portA[13]~input_o  & ((\my_alu.portB[13]~input_o  & (\Add0~25  & VCC)) # (!\my_alu.portB[13]~input_o  & (!\Add0~25 )))) # (!\my_alu.portA[13]~input_o  & ((\my_alu.portB[13]~input_o  & (!\Add0~25 )) # 
// (!\my_alu.portB[13]~input_o  & ((\Add0~25 ) # (GND)))))
// \Add0~27  = CARRY((\my_alu.portA[13]~input_o  & (!\my_alu.portB[13]~input_o  & !\Add0~25 )) # (!\my_alu.portA[13]~input_o  & ((!\Add0~25 ) # (!\my_alu.portB[13]~input_o ))))

	.dataa(\my_alu.portA[13]~input_o ),
	.datab(\my_alu.portB[13]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~25 ),
	.combout(\Add0~26_combout ),
	.cout(\Add0~27 ));
// synopsys translate_off
defparam \Add0~26 .lut_mask = 16'h9617;
defparam \Add0~26 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N10
cycloneive_lcell_comb \Selector18~4 (
// Equation(s):
// \Selector18~4_combout  = (\Add1~26_combout  & ((\Selector31~26_combout ) # ((\Add0~26_combout  & \Selector31~27_combout )))) # (!\Add1~26_combout  & (\Add0~26_combout  & ((\Selector31~27_combout ))))

	.dataa(\Add1~26_combout ),
	.datab(\Add0~26_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector18~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~4 .lut_mask = 16'hECA0;
defparam \Selector18~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N2
cycloneive_lcell_comb \Selector18~3 (
// Equation(s):
// \Selector18~3_combout  = (\Selector31~30_combout  & (((\my_alu.portB[13]~input_o ) # (\my_alu.portA[13]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[13]~input_o  & \my_alu.portA[13]~input_o )))

	.dataa(\Selector31~25_combout ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portB[13]~input_o ),
	.datad(\my_alu.portA[13]~input_o ),
	.cin(gnd),
	.combout(\Selector18~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~3 .lut_mask = 16'hECC0;
defparam \Selector18~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N4
cycloneive_lcell_comb \Selector18~6 (
// Equation(s):
// \Selector18~6_combout  = (\Selector18~5_combout ) # ((\Selector18~4_combout ) # (\Selector18~3_combout ))

	.dataa(\Selector18~5_combout ),
	.datab(\Selector18~4_combout ),
	.datac(\Selector18~3_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector18~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~6 .lut_mask = 16'hFEFE;
defparam \Selector18~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N30
cycloneive_lcell_comb \Selector18~7 (
// Equation(s):
// \Selector18~7_combout  = (\Selector18~2_combout ) # ((\Selector18~6_combout ) # ((\Selector21~3_combout  & \ShiftRight0~83_combout )))

	.dataa(\Selector18~2_combout ),
	.datab(\Selector21~3_combout ),
	.datac(\Selector18~6_combout ),
	.datad(\ShiftRight0~83_combout ),
	.cin(gnd),
	.combout(\Selector18~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~7 .lut_mask = 16'hFEFA;
defparam \Selector18~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N2
cycloneive_lcell_comb \ShiftLeft0~34 (
// Equation(s):
// \ShiftLeft0~34_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[7]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[9]~input_o ))

	.dataa(\my_alu.portA[9]~input_o ),
	.datab(\my_alu.portA[7]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~34_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~34 .lut_mask = 16'hCCAA;
defparam \ShiftLeft0~34 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y32_N12
cycloneive_lcell_comb \ShiftLeft0~35 (
// Equation(s):
// \ShiftLeft0~35_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~30_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~34_combout )))

	.dataa(\ShiftLeft0~30_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~34_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~35_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~35 .lut_mask = 16'hB8B8;
defparam \ShiftLeft0~35 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N0
cycloneive_lcell_comb \Selector10~2 (
// Equation(s):
// \Selector10~2_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~35_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~50_combout ))

	.dataa(\ShiftLeft0~50_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~35_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector10~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~2 .lut_mask = 16'hF0AA;
defparam \Selector10~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N24
cycloneive_lcell_comb \ShiftLeft0~51 (
// Equation(s):
// \ShiftLeft0~51_combout  = (\my_alu.portB[3]~input_o  & (\ShiftLeft0~23_combout )) # (!\my_alu.portB[3]~input_o  & ((\Selector10~2_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~23_combout ),
	.datac(\Selector10~2_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~51_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~51 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~51 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N20
cycloneive_lcell_comb \Selector18~9 (
// Equation(s):
// \Selector18~9_combout  = (\Selector29~10_combout  & (!\my_alu.portB[2]~input_o  & (\ShiftRight0~30_combout  & !\my_alu.portB[3]~input_o )))

	.dataa(\Selector29~10_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\ShiftRight0~30_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector18~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~9 .lut_mask = 16'h0020;
defparam \Selector18~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N18
cycloneive_lcell_comb \Selector18~8 (
// Equation(s):
// \Selector18~8_combout  = (\Selector18~7_combout ) # ((\Selector18~9_combout ) # ((\ShiftLeft0~51_combout  & \Selector23~3_combout )))

	.dataa(\Selector18~7_combout ),
	.datab(\ShiftLeft0~51_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\Selector18~9_combout ),
	.cin(gnd),
	.combout(\Selector18~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector18~8 .lut_mask = 16'hFFEA;
defparam \Selector18~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N10
cycloneive_lcell_comb \ShiftLeft0~52 (
// Equation(s):
// \ShiftLeft0~52_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[12]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[14]~input_o ))

	.dataa(\my_alu.portA[14]~input_o ),
	.datab(\my_alu.portA[12]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~52_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~52 .lut_mask = 16'hCCAA;
defparam \ShiftLeft0~52 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y32_N26
cycloneive_lcell_comb \ShiftLeft0~49 (
// Equation(s):
// \ShiftLeft0~49_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[11]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[13]~input_o ))

	.dataa(\my_alu.portA[13]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[11]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~49_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~49 .lut_mask = 16'hFA0A;
defparam \ShiftLeft0~49 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N28
cycloneive_lcell_comb \ShiftLeft0~53 (
// Equation(s):
// \ShiftLeft0~53_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~49_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~52_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~52_combout ),
	.datac(\ShiftLeft0~49_combout ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~53_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~53 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~53 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N22
cycloneive_lcell_comb \Selector9~3 (
// Equation(s):
// \Selector9~3_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~39_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~53_combout )))

	.dataa(\ShiftLeft0~39_combout ),
	.datab(\ShiftLeft0~53_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector9~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~3 .lut_mask = 16'hACAC;
defparam \Selector9~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N24
cycloneive_lcell_comb \ShiftLeft0~54 (
// Equation(s):
// \ShiftLeft0~54_combout  = (\my_alu.portB[3]~input_o  & (\ShiftLeft0~26_combout )) # (!\my_alu.portB[3]~input_o  & ((\Selector9~3_combout )))

	.dataa(\ShiftLeft0~26_combout ),
	.datab(\Selector9~3_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~54_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~54 .lut_mask = 16'hAACC;
defparam \ShiftLeft0~54 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y36_N24
cycloneive_lcell_comb \ShiftRight0~86 (
// Equation(s):
// \ShiftRight0~86_combout  = (\my_alu.portB[2]~input_o  & (\ShiftRight0~67_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftRight0~57_combout )))

	.dataa(\ShiftRight0~67_combout ),
	.datab(\ShiftRight0~57_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~86_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~86 .lut_mask = 16'hAACC;
defparam \ShiftRight0~86 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N24
cycloneive_lcell_comb \Selector17~4 (
// Equation(s):
// \Selector17~4_combout  = (\my_alu.portB[14]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[14]~input_o )))) # (!\my_alu.portB[14]~input_o  & ((\my_alu.portA[14]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[14]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[14]~input_o ),
	.datad(\my_alu.portA[14]~input_o ),
	.cin(gnd),
	.combout(\Selector17~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~4 .lut_mask = 16'h0CCA;
defparam \Selector17~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y34_N15
cycloneive_io_ibuf \my_alu.portB[10]~input (
	.i(\my_alu.portB [10]),
	.ibar(gnd),
	.o(\my_alu.portB[10]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[10]~input .bus_hold = "false";
defparam \my_alu.portB[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N28
cycloneive_lcell_comb \Add1~28 (
// Equation(s):
// \Add1~28_combout  = ((\my_alu.portB[14]~input_o  $ (\my_alu.portA[14]~input_o  $ (\Add1~27 )))) # (GND)
// \Add1~29  = CARRY((\my_alu.portB[14]~input_o  & (\my_alu.portA[14]~input_o  & !\Add1~27 )) # (!\my_alu.portB[14]~input_o  & ((\my_alu.portA[14]~input_o ) # (!\Add1~27 ))))

	.dataa(\my_alu.portB[14]~input_o ),
	.datab(\my_alu.portA[14]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~27 ),
	.combout(\Add1~28_combout ),
	.cout(\Add1~29 ));
// synopsys translate_off
defparam \Add1~28 .lut_mask = 16'h964D;
defparam \Add1~28 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N12
cycloneive_lcell_comb \Selector17~3 (
// Equation(s):
// \Selector17~3_combout  = (\Add0~28_combout  & ((\Selector31~27_combout ) # ((\Selector31~26_combout  & \Add1~28_combout )))) # (!\Add0~28_combout  & (((\Selector31~26_combout  & \Add1~28_combout ))))

	.dataa(\Add0~28_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Add1~28_combout ),
	.cin(gnd),
	.combout(\Selector17~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~3 .lut_mask = 16'hF888;
defparam \Selector17~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N6
cycloneive_lcell_comb \Selector17~5 (
// Equation(s):
// \Selector17~5_combout  = (\Selector17~2_combout ) # ((\Selector17~4_combout ) # (\Selector17~3_combout ))

	.dataa(\Selector17~2_combout ),
	.datab(\Selector17~4_combout ),
	.datac(gnd),
	.datad(\Selector17~3_combout ),
	.cin(gnd),
	.combout(\Selector17~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~5 .lut_mask = 16'hFFEE;
defparam \Selector17~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N22
cycloneive_lcell_comb \Selector17~6 (
// Equation(s):
// \Selector17~6_combout  = (\Selector17~1_combout ) # ((\Selector17~5_combout ) # ((\ShiftRight0~86_combout  & \Selector21~3_combout )))

	.dataa(\Selector17~1_combout ),
	.datab(\ShiftRight0~86_combout ),
	.datac(\Selector17~5_combout ),
	.datad(\Selector21~3_combout ),
	.cin(gnd),
	.combout(\Selector17~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~6 .lut_mask = 16'hFEFA;
defparam \Selector17~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N18
cycloneive_lcell_comb \ShiftLeft0~11 (
// Equation(s):
// \ShiftLeft0~11_combout  = (\my_alu.portB[2]~input_o ) # (\my_alu.portB[1]~input_o )

	.dataa(\my_alu.portB[2]~input_o ),
	.datab(gnd),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~11_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~11 .lut_mask = 16'hFAFA;
defparam \ShiftLeft0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N28
cycloneive_lcell_comb \Selector17~0 (
// Equation(s):
// \Selector17~0_combout  = (\ShiftRight0~1_combout  & (!\ShiftLeft0~11_combout  & (\Selector29~10_combout  & !\my_alu.portB[3]~input_o )))

	.dataa(\ShiftRight0~1_combout ),
	.datab(\ShiftLeft0~11_combout ),
	.datac(\Selector29~10_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector17~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~0 .lut_mask = 16'h0020;
defparam \Selector17~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N26
cycloneive_lcell_comb \Selector17~7 (
// Equation(s):
// \Selector17~7_combout  = (\Selector17~6_combout ) # ((\Selector17~0_combout ) # ((\Selector23~3_combout  & \ShiftLeft0~54_combout )))

	.dataa(\Selector23~3_combout ),
	.datab(\ShiftLeft0~54_combout ),
	.datac(\Selector17~6_combout ),
	.datad(\Selector17~0_combout ),
	.cin(gnd),
	.combout(\Selector17~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector17~7 .lut_mask = 16'hFFF8;
defparam \Selector17~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N8
cycloneive_lcell_comb \ShiftLeft0~56 (
// Equation(s):
// \ShiftLeft0~56_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~52_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~55_combout ))

	.dataa(\ShiftLeft0~55_combout ),
	.datab(\ShiftLeft0~52_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~56_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~56 .lut_mask = 16'hCCAA;
defparam \ShiftLeft0~56 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N20
cycloneive_lcell_comb \ShiftLeft0~38 (
// Equation(s):
// \ShiftLeft0~38_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[8]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[10]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[8]~input_o ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portA[10]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~38_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~38 .lut_mask = 16'hCFC0;
defparam \ShiftLeft0~38 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N16
cycloneive_lcell_comb \ShiftLeft0~43 (
// Equation(s):
// \ShiftLeft0~43_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~38_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~42_combout ))

	.dataa(\ShiftLeft0~42_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~38_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~43_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~43 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~43 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N2
cycloneive_lcell_comb \Selector8~2 (
// Equation(s):
// \Selector8~2_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~43_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~56_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~56_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~43_combout ),
	.cin(gnd),
	.combout(\Selector8~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~2 .lut_mask = 16'hFC0C;
defparam \Selector8~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N14
cycloneive_lcell_comb \ShiftLeft0~29 (
// Equation(s):
// \ShiftLeft0~29_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~15_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~28_combout ))

	.dataa(\ShiftLeft0~28_combout ),
	.datab(\ShiftLeft0~15_combout ),
	.datac(gnd),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~29_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~29 .lut_mask = 16'hCCAA;
defparam \ShiftLeft0~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N0
cycloneive_lcell_comb \ShiftLeft0~57 (
// Equation(s):
// \ShiftLeft0~57_combout  = (\my_alu.portB[3]~input_o  & ((\ShiftLeft0~29_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector8~2_combout ))

	.dataa(gnd),
	.datab(\Selector8~2_combout ),
	.datac(\ShiftLeft0~29_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~57_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~57 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~57 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N4
cycloneive_lcell_comb \ShiftRight0~89 (
// Equation(s):
// \ShiftRight0~89_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftRight0~78_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~70_combout ))

	.dataa(\ShiftRight0~70_combout ),
	.datab(gnd),
	.datac(\ShiftRight0~78_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~89_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~89 .lut_mask = 16'hF0AA;
defparam \ShiftRight0~89 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N2
cycloneive_lcell_comb \Selector16~2 (
// Equation(s):
// \Selector16~2_combout  = (\ShiftRight0~89_combout  & (\Selector15~2_combout  & \Selector19~2_combout ))

	.dataa(gnd),
	.datab(\ShiftRight0~89_combout ),
	.datac(\Selector15~2_combout ),
	.datad(\Selector19~2_combout ),
	.cin(gnd),
	.combout(\Selector16~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~2 .lut_mask = 16'hC000;
defparam \Selector16~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N30
cycloneive_lcell_comb \Selector16~3 (
// Equation(s):
// \Selector16~3_combout  = (\my_alu.portA[15]~input_o  & ((\Selector31~30_combout ) # ((\Selector31~25_combout  & \my_alu.portB[15]~input_o )))) # (!\my_alu.portA[15]~input_o  & (\Selector31~30_combout  & ((\my_alu.portB[15]~input_o ))))

	.dataa(\my_alu.portA[15]~input_o ),
	.datab(\Selector31~30_combout ),
	.datac(\Selector31~25_combout ),
	.datad(\my_alu.portB[15]~input_o ),
	.cin(gnd),
	.combout(\Selector16~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~3 .lut_mask = 16'hEC88;
defparam \Selector16~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y34_N30
cycloneive_lcell_comb \Add0~30 (
// Equation(s):
// \Add0~30_combout  = (\my_alu.portB[15]~input_o  & ((\my_alu.portA[15]~input_o  & (\Add0~29  & VCC)) # (!\my_alu.portA[15]~input_o  & (!\Add0~29 )))) # (!\my_alu.portB[15]~input_o  & ((\my_alu.portA[15]~input_o  & (!\Add0~29 )) # 
// (!\my_alu.portA[15]~input_o  & ((\Add0~29 ) # (GND)))))
// \Add0~31  = CARRY((\my_alu.portB[15]~input_o  & (!\my_alu.portA[15]~input_o  & !\Add0~29 )) # (!\my_alu.portB[15]~input_o  & ((!\Add0~29 ) # (!\my_alu.portA[15]~input_o ))))

	.dataa(\my_alu.portB[15]~input_o ),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~29 ),
	.combout(\Add0~30_combout ),
	.cout(\Add0~31 ));
// synopsys translate_off
defparam \Add0~30 .lut_mask = 16'h9617;
defparam \Add0~30 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y34_N30
cycloneive_lcell_comb \Add1~30 (
// Equation(s):
// \Add1~30_combout  = (\my_alu.portB[15]~input_o  & ((\my_alu.portA[15]~input_o  & (!\Add1~29 )) # (!\my_alu.portA[15]~input_o  & ((\Add1~29 ) # (GND))))) # (!\my_alu.portB[15]~input_o  & ((\my_alu.portA[15]~input_o  & (\Add1~29  & VCC)) # 
// (!\my_alu.portA[15]~input_o  & (!\Add1~29 ))))
// \Add1~31  = CARRY((\my_alu.portB[15]~input_o  & ((!\Add1~29 ) # (!\my_alu.portA[15]~input_o ))) # (!\my_alu.portB[15]~input_o  & (!\my_alu.portA[15]~input_o  & !\Add1~29 )))

	.dataa(\my_alu.portB[15]~input_o ),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~29 ),
	.combout(\Add1~30_combout ),
	.cout(\Add1~31 ));
// synopsys translate_off
defparam \Add1~30 .lut_mask = 16'h692B;
defparam \Add1~30 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N24
cycloneive_lcell_comb \Selector16~4 (
// Equation(s):
// \Selector16~4_combout  = (\Selector31~26_combout  & ((\Add1~30_combout ) # ((\Add0~30_combout  & \Selector31~27_combout )))) # (!\Selector31~26_combout  & (\Add0~30_combout  & ((\Selector31~27_combout ))))

	.dataa(\Selector31~26_combout ),
	.datab(\Add0~30_combout ),
	.datac(\Add1~30_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector16~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~4 .lut_mask = 16'hECA0;
defparam \Selector16~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N28
cycloneive_lcell_comb \Selector16~6 (
// Equation(s):
// \Selector16~6_combout  = (\Selector16~5_combout ) # ((\Selector16~2_combout ) # ((\Selector16~3_combout ) # (\Selector16~4_combout )))

	.dataa(\Selector16~5_combout ),
	.datab(\Selector16~2_combout ),
	.datac(\Selector16~3_combout ),
	.datad(\Selector16~4_combout ),
	.cin(gnd),
	.combout(\Selector16~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~6 .lut_mask = 16'hFFFE;
defparam \Selector16~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N26
cycloneive_lcell_comb \Selector16~0 (
// Equation(s):
// \Selector16~0_combout  = (\Selector23~9_combout  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~75_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~77_combout ))))

	.dataa(\ShiftRight0~77_combout ),
	.datab(\Selector23~9_combout ),
	.datac(\ShiftRight0~75_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector16~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~0 .lut_mask = 16'hC088;
defparam \Selector16~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N12
cycloneive_lcell_comb \Selector16~1 (
// Equation(s):
// \Selector16~1_combout  = (\Selector16~0_combout ) # ((\Selector29~10_combout  & (\my_alu.portA[31]~input_o  & !\ShiftLeft0~9_combout )))

	.dataa(\Selector29~10_combout ),
	.datab(\Selector16~0_combout ),
	.datac(\my_alu.portA[31]~input_o ),
	.datad(\ShiftLeft0~9_combout ),
	.cin(gnd),
	.combout(\Selector16~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~1 .lut_mask = 16'hCCEC;
defparam \Selector16~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N6
cycloneive_lcell_comb \Selector16~7 (
// Equation(s):
// \Selector16~7_combout  = (\Selector16~6_combout ) # ((\Selector16~1_combout ) # ((\ShiftLeft0~57_combout  & \Selector23~3_combout )))

	.dataa(\ShiftLeft0~57_combout ),
	.datab(\Selector16~6_combout ),
	.datac(\Selector23~3_combout ),
	.datad(\Selector16~1_combout ),
	.cin(gnd),
	.combout(\Selector16~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector16~7 .lut_mask = 16'hFFEC;
defparam \Selector16~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N16
cycloneive_lcell_comb \Selector15~11 (
// Equation(s):
// \Selector15~11_combout  = (!\Selector9~5_combout  & \Selector15~2_combout )

	.dataa(\Selector9~5_combout ),
	.datab(gnd),
	.datac(\Selector15~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector15~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~11 .lut_mask = 16'h5050;
defparam \Selector15~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N4
cycloneive_lcell_comb \ShiftLeft0~55 (
// Equation(s):
// \ShiftLeft0~55_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[13]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[15]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(\my_alu.portA[13]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~55_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~55 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~55 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N4
cycloneive_lcell_comb \ShiftLeft0~58 (
// Equation(s):
// \ShiftLeft0~58_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[14]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[16]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portA[16]~input_o ),
	.datac(\my_alu.portA[14]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~58_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~58 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~58 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N14
cycloneive_lcell_comb \ShiftLeft0~59 (
// Equation(s):
// \ShiftLeft0~59_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~55_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~58_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~55_combout ),
	.datad(\ShiftLeft0~58_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~59_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~59 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~59 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N20
cycloneive_lcell_comb \ShiftLeft0~60 (
// Equation(s):
// \ShiftLeft0~60_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~47_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~59_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~47_combout ),
	.datac(\ShiftLeft0~59_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~60_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~60 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~60 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N0
cycloneive_lcell_comb \ShiftRight0~13 (
// Equation(s):
// \ShiftRight0~13_combout  = (\my_alu.portB[3]~input_o  & ((\ShiftRight0~6_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector23~2_combout ))

	.dataa(gnd),
	.datab(\Selector23~2_combout ),
	.datac(\ShiftRight0~6_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~13_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~13 .lut_mask = 16'hF0CC;
defparam \ShiftRight0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N8
cycloneive_lcell_comb \Selector31~29 (
// Equation(s):
// \Selector31~29_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & !\my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~29_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~29 .lut_mask = 16'h0010;
defparam \Selector31~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N26
cycloneive_lcell_comb \Selector15~9 (
// Equation(s):
// \Selector15~9_combout  = (!\ShiftLeft0~8_combout  & (\Selector31~29_combout  & !\my_alu.portB[4]~input_o ))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(gnd),
	.datac(\Selector31~29_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector15~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~9 .lut_mask = 16'h0050;
defparam \Selector15~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y37_N22
cycloneive_lcell_comb \Selector31~32 (
// Equation(s):
// \Selector31~32_combout  = (\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.aluOp[0]~input_o  & \my_alu.aluOp[1]~input_o )))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.aluOp[1]~input_o ),
	.cin(gnd),
	.combout(\Selector31~32_combout ),
	.cout());
// synopsys translate_off
defparam \Selector31~32 .lut_mask = 16'h2000;
defparam \Selector31~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N26
cycloneive_lcell_comb \Selector15~8 (
// Equation(s):
// \Selector15~8_combout  = (\my_alu.portB[16]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portA[16]~input_o )))) # (!\my_alu.portB[16]~input_o  & ((\my_alu.portA[16]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portA[16]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\my_alu.portB[16]~input_o ),
	.datab(\Selector31~31_combout ),
	.datac(\Selector31~32_combout ),
	.datad(\my_alu.portA[16]~input_o ),
	.cin(gnd),
	.combout(\Selector15~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~8 .lut_mask = 16'h44D8;
defparam \Selector15~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N18
cycloneive_lcell_comb \Selector15~10 (
// Equation(s):
// \Selector15~10_combout  = (\Selector15~7_combout ) # ((\Selector15~8_combout ) # ((\ShiftRight0~13_combout  & \Selector15~9_combout )))

	.dataa(\Selector15~7_combout ),
	.datab(\ShiftRight0~13_combout ),
	.datac(\Selector15~9_combout ),
	.datad(\Selector15~8_combout ),
	.cin(gnd),
	.combout(\Selector15~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~10 .lut_mask = 16'hFFEA;
defparam \Selector15~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N18
cycloneive_lcell_comb \Selector23~13 (
// Equation(s):
// \Selector23~13_combout  = (!\my_alu.portB[4]~input_o  & (\my_alu.portB[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \Selector15~2_combout )))

	.dataa(\my_alu.portB[4]~input_o ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\Selector15~2_combout ),
	.cin(gnd),
	.combout(\Selector23~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector23~13 .lut_mask = 16'h0400;
defparam \Selector23~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N4
cycloneive_lcell_comb \Selector15~3 (
// Equation(s):
// \Selector15~3_combout  = (\Selector23~13_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~19_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~31_combout )))))

	.dataa(\ShiftLeft0~19_combout ),
	.datab(\Selector23~13_combout ),
	.datac(\ShiftLeft0~31_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector15~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~3 .lut_mask = 16'h88C0;
defparam \Selector15~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N20
cycloneive_lcell_comb \Selector9~4 (
// Equation(s):
// \Selector9~4_combout  = (!\my_alu.aluOp[0]~input_o  & (\Selector15~2_combout  & \my_alu.portB[4]~input_o ))

	.dataa(\my_alu.aluOp[0]~input_o ),
	.datab(\Selector15~2_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector9~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~4 .lut_mask = 16'h4040;
defparam \Selector9~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N0
cycloneive_lcell_comb \Selector15~4 (
// Equation(s):
// \Selector15~4_combout  = (\Selector15~3_combout ) # ((!\ShiftLeft0~9_combout  & (\my_alu.portA[0]~input_o  & \Selector9~4_combout )))

	.dataa(\ShiftLeft0~9_combout ),
	.datab(\my_alu.portA[0]~input_o ),
	.datac(\Selector15~3_combout ),
	.datad(\Selector9~4_combout ),
	.cin(gnd),
	.combout(\Selector15~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~4 .lut_mask = 16'hF4F0;
defparam \Selector15~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N2
cycloneive_lcell_comb \Selector15~12 (
// Equation(s):
// \Selector15~12_combout  = (\Selector15~10_combout ) # ((\Selector15~4_combout ) # ((\Selector15~11_combout  & \ShiftLeft0~60_combout )))

	.dataa(\Selector15~11_combout ),
	.datab(\ShiftLeft0~60_combout ),
	.datac(\Selector15~10_combout ),
	.datad(\Selector15~4_combout ),
	.cin(gnd),
	.combout(\Selector15~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector15~12 .lut_mask = 16'hFFF8;
defparam \Selector15~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N30
cycloneive_lcell_comb \Selector14~9 (
// Equation(s):
// \Selector14~9_combout  = (\Selector11~3_combout  & (\ShiftLeft0~10_combout  & (!\my_alu.portB[1]~input_o  & !\my_alu.portB[2]~input_o )))

	.dataa(\Selector11~3_combout ),
	.datab(\ShiftLeft0~10_combout ),
	.datac(\my_alu.portB[1]~input_o ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector14~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~9 .lut_mask = 16'h0008;
defparam \Selector14~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N0
cycloneive_lcell_comb \ShiftLeft0~61 (
// Equation(s):
// \ShiftLeft0~61_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[15]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[17]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[15]~input_o ),
	.datac(\my_alu.portA[17]~input_o ),
	.datad(\my_alu.portB[1]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~61_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~61 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~61 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N2
cycloneive_lcell_comb \ShiftLeft0~62 (
// Equation(s):
// \ShiftLeft0~62_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~58_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~61_combout )))

	.dataa(\ShiftLeft0~58_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~61_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~62_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~62 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~62 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N22
cycloneive_lcell_comb \ShiftLeft0~63 (
// Equation(s):
// \ShiftLeft0~63_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~50_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~62_combout )))

	.dataa(\ShiftLeft0~50_combout ),
	.datab(gnd),
	.datac(\ShiftLeft0~62_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~63_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~63 .lut_mask = 16'hAAF0;
defparam \ShiftLeft0~63 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N28
cycloneive_lcell_comb \Selector14~3 (
// Equation(s):
// \Selector14~3_combout  = (\Selector31~30_combout  & ((\my_alu.portA[17]~input_o ) # ((\my_alu.portB[17]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portA[17]~input_o  & (\Selector31~25_combout  & \my_alu.portB[17]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portA[17]~input_o ),
	.datac(\Selector31~25_combout ),
	.datad(\my_alu.portB[17]~input_o ),
	.cin(gnd),
	.combout(\Selector14~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~3 .lut_mask = 16'hEA88;
defparam \Selector14~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N30
cycloneive_lcell_comb \Selector14~5 (
// Equation(s):
// \Selector14~5_combout  = (\my_alu.portA[17]~input_o  & (((\Selector31~31_combout  & !\my_alu.portB[17]~input_o )))) # (!\my_alu.portA[17]~input_o  & ((\my_alu.portB[17]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[17]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portA[17]~input_o ),
	.datad(\my_alu.portB[17]~input_o ),
	.cin(gnd),
	.combout(\Selector14~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~5 .lut_mask = 16'h0CCA;
defparam \Selector14~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N2
cycloneive_lcell_comb \Add1~34 (
// Equation(s):
// \Add1~34_combout  = (\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o  & (!\Add1~33 )) # (!\my_alu.portA[17]~input_o  & ((\Add1~33 ) # (GND))))) # (!\my_alu.portB[17]~input_o  & ((\my_alu.portA[17]~input_o  & (\Add1~33  & VCC)) # 
// (!\my_alu.portA[17]~input_o  & (!\Add1~33 ))))
// \Add1~35  = CARRY((\my_alu.portB[17]~input_o  & ((!\Add1~33 ) # (!\my_alu.portA[17]~input_o ))) # (!\my_alu.portB[17]~input_o  & (!\my_alu.portA[17]~input_o  & !\Add1~33 )))

	.dataa(\my_alu.portB[17]~input_o ),
	.datab(\my_alu.portA[17]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~33 ),
	.combout(\Add1~34_combout ),
	.cout(\Add1~35 ));
// synopsys translate_off
defparam \Add1~34 .lut_mask = 16'h692B;
defparam \Add1~34 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N18
cycloneive_lcell_comb \Selector14~4 (
// Equation(s):
// \Selector14~4_combout  = (\Add0~34_combout  & ((\Selector31~27_combout ) # ((\Add1~34_combout  & \Selector31~26_combout )))) # (!\Add0~34_combout  & (\Add1~34_combout  & (\Selector31~26_combout )))

	.dataa(\Add0~34_combout ),
	.datab(\Add1~34_combout ),
	.datac(\Selector31~26_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector14~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~4 .lut_mask = 16'hEAC0;
defparam \Selector14~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N16
cycloneive_lcell_comb \Selector14~6 (
// Equation(s):
// \Selector14~6_combout  = (\Selector14~3_combout ) # ((\Selector14~5_combout ) # (\Selector14~4_combout ))

	.dataa(gnd),
	.datab(\Selector14~3_combout ),
	.datac(\Selector14~5_combout ),
	.datad(\Selector14~4_combout ),
	.cin(gnd),
	.combout(\Selector14~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~6 .lut_mask = 16'hFFFC;
defparam \Selector14~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N2
cycloneive_lcell_comb \Selector14~2 (
// Equation(s):
// \Selector14~2_combout  = (\Selector23~13_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~22_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~35_combout )))))

	.dataa(\ShiftLeft0~22_combout ),
	.datab(\ShiftLeft0~35_combout ),
	.datac(\Selector23~13_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector14~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~2 .lut_mask = 16'hA0C0;
defparam \Selector14~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N12
cycloneive_lcell_comb \Selector14~7 (
// Equation(s):
// \Selector14~7_combout  = (\Selector14~6_combout ) # ((\Selector14~2_combout ) # ((\ShiftRight0~38_combout  & \Selector15~9_combout )))

	.dataa(\ShiftRight0~38_combout ),
	.datab(\Selector14~6_combout ),
	.datac(\Selector15~9_combout ),
	.datad(\Selector14~2_combout ),
	.cin(gnd),
	.combout(\Selector14~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~7 .lut_mask = 16'hFFEC;
defparam \Selector14~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N24
cycloneive_lcell_comb \Selector14~8 (
// Equation(s):
// \Selector14~8_combout  = (\Selector14~9_combout ) # ((\Selector14~7_combout ) # ((\Selector15~11_combout  & \ShiftLeft0~63_combout )))

	.dataa(\Selector14~9_combout ),
	.datab(\Selector15~11_combout ),
	.datac(\ShiftLeft0~63_combout ),
	.datad(\Selector14~7_combout ),
	.cin(gnd),
	.combout(\Selector14~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector14~8 .lut_mask = 16'hFFEA;
defparam \Selector14~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N10
cycloneive_lcell_comb \ShiftLeft0~66 (
// Equation(s):
// \ShiftLeft0~66_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~53_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~65_combout ))

	.dataa(\ShiftLeft0~65_combout ),
	.datab(\ShiftLeft0~53_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~66_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~66 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~66 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N14
cycloneive_lcell_comb \Selector13~10 (
// Equation(s):
// \Selector13~10_combout  = (\ShiftLeft0~13_combout  & (!\my_alu.portB[3]~input_o  & (!\my_alu.portB[2]~input_o  & \Selector9~4_combout )))

	.dataa(\ShiftLeft0~13_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\Selector9~4_combout ),
	.cin(gnd),
	.combout(\Selector13~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~10 .lut_mask = 16'h0200;
defparam \Selector13~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N28
cycloneive_lcell_comb \Selector13~2 (
// Equation(s):
// \Selector13~2_combout  = (\Selector15~9_combout  & ((\my_alu.portB[3]~input_o  & ((\ShiftRight0~63_combout ))) # (!\my_alu.portB[3]~input_o  & (\Selector21~2_combout ))))

	.dataa(\Selector21~2_combout ),
	.datab(\ShiftRight0~63_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\Selector15~9_combout ),
	.cin(gnd),
	.combout(\Selector13~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~2 .lut_mask = 16'hCA00;
defparam \Selector13~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y20_N8
cycloneive_io_ibuf \my_alu.portB[18]~input (
	.i(\my_alu.portB [18]),
	.ibar(gnd),
	.o(\my_alu.portB[18]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[18]~input .bus_hold = "false";
defparam \my_alu.portB[18]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N22
cycloneive_lcell_comb \Selector13~3 (
// Equation(s):
// \Selector13~3_combout  = (\Selector31~30_combout  & (((\my_alu.portB[18]~input_o ) # (\my_alu.portA[18]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portB[18]~input_o  & \my_alu.portA[18]~input_o )))

	.dataa(\Selector31~30_combout ),
	.datab(\Selector31~25_combout ),
	.datac(\my_alu.portB[18]~input_o ),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\Selector13~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~3 .lut_mask = 16'hEAA0;
defparam \Selector13~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N24
cycloneive_lcell_comb \Selector13~5 (
// Equation(s):
// \Selector13~5_combout  = (\my_alu.portB[18]~input_o  & (((\Selector31~31_combout  & !\my_alu.portA[18]~input_o )))) # (!\my_alu.portB[18]~input_o  & ((\my_alu.portA[18]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[18]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portB[18]~input_o ),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\Selector13~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~5 .lut_mask = 16'h0CCA;
defparam \Selector13~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N10
cycloneive_lcell_comb \Selector13~6 (
// Equation(s):
// \Selector13~6_combout  = (\Selector13~4_combout ) # ((\Selector13~3_combout ) # (\Selector13~5_combout ))

	.dataa(\Selector13~4_combout ),
	.datab(gnd),
	.datac(\Selector13~3_combout ),
	.datad(\Selector13~5_combout ),
	.cin(gnd),
	.combout(\Selector13~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~6 .lut_mask = 16'hFFFA;
defparam \Selector13~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N8
cycloneive_lcell_comb \Selector13~8 (
// Equation(s):
// \Selector13~8_combout  = (\Selector13~2_combout ) # ((\Selector13~6_combout ) # ((\Selector13~7_combout  & \Selector23~13_combout )))

	.dataa(\Selector13~7_combout ),
	.datab(\Selector23~13_combout ),
	.datac(\Selector13~2_combout ),
	.datad(\Selector13~6_combout ),
	.cin(gnd),
	.combout(\Selector13~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~8 .lut_mask = 16'hFFF8;
defparam \Selector13~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N28
cycloneive_lcell_comb \Selector13~9 (
// Equation(s):
// \Selector13~9_combout  = (\Selector13~10_combout ) # ((\Selector13~8_combout ) # ((\ShiftLeft0~66_combout  & \Selector15~11_combout )))

	.dataa(\ShiftLeft0~66_combout ),
	.datab(\Selector13~10_combout ),
	.datac(\Selector13~8_combout ),
	.datad(\Selector15~11_combout ),
	.cin(gnd),
	.combout(\Selector13~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector13~9 .lut_mask = 16'hFEFC;
defparam \Selector13~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y32_N6
cycloneive_lcell_comb \Selector12~0 (
// Equation(s):
// \Selector12~0_combout  = (\Selector23~13_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~28_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~43_combout )))))

	.dataa(\ShiftLeft0~28_combout ),
	.datab(\Selector23~13_combout ),
	.datac(\ShiftLeft0~43_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\Selector12~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~0 .lut_mask = 16'h88C0;
defparam \Selector12~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N20
cycloneive_lcell_comb \ShiftLeft0~69 (
// Equation(s):
// \ShiftLeft0~69_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~56_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~68_combout ))

	.dataa(\ShiftLeft0~68_combout ),
	.datab(\ShiftLeft0~56_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~69_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~69 .lut_mask = 16'hCACA;
defparam \ShiftLeft0~69 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N8
cycloneive_lcell_comb \Selector12~5 (
// Equation(s):
// \Selector12~5_combout  = (\Selector12~4_combout ) # ((\Selector12~0_combout ) # ((\ShiftLeft0~69_combout  & \Selector15~11_combout )))

	.dataa(\Selector12~4_combout ),
	.datab(\Selector12~0_combout ),
	.datac(\ShiftLeft0~69_combout ),
	.datad(\Selector15~11_combout ),
	.cin(gnd),
	.combout(\Selector12~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~5 .lut_mask = 16'hFEEE;
defparam \Selector12~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N2
cycloneive_lcell_comb \Selector12~6 (
// Equation(s):
// \Selector12~6_combout  = (\Selector12~5_combout ) # ((\ShiftRight0~55_combout  & (\ShiftLeft0~15_combout  & \Selector9~4_combout )))

	.dataa(\ShiftRight0~55_combout ),
	.datab(\ShiftLeft0~15_combout ),
	.datac(\Selector12~5_combout ),
	.datad(\Selector9~4_combout ),
	.cin(gnd),
	.combout(\Selector12~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~6 .lut_mask = 16'hF8F0;
defparam \Selector12~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N4
cycloneive_lcell_comb \Selector12~7 (
// Equation(s):
// \Selector12~7_combout  = (\Selector12~6_combout ) # ((\Selector15~9_combout  & \ShiftRight0~79_combout ))

	.dataa(\Selector15~9_combout ),
	.datab(\ShiftRight0~79_combout ),
	.datac(\Selector12~6_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector12~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector12~7 .lut_mask = 16'hF8F8;
defparam \Selector12~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N22
cycloneive_lcell_comb \ShiftLeft0~67 (
// Equation(s):
// \ShiftLeft0~67_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[17]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[19]~input_o )))

	.dataa(\my_alu.portA[17]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[19]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~67_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~67 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~67 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N6
cycloneive_lcell_comb \ShiftLeft0~70 (
// Equation(s):
// \ShiftLeft0~70_combout  = (\my_alu.portB[1]~input_o  & ((\my_alu.portA[18]~input_o ))) # (!\my_alu.portB[1]~input_o  & (\my_alu.portA[20]~input_o ))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[18]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~70_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~70 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~70 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N26
cycloneive_lcell_comb \ShiftLeft0~71 (
// Equation(s):
// \ShiftLeft0~71_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~67_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~70_combout )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~67_combout ),
	.datad(\ShiftLeft0~70_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~71_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~71 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~71 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N12
cycloneive_lcell_comb \ShiftLeft0~72 (
// Equation(s):
// \ShiftLeft0~72_combout  = (\my_alu.portB[2]~input_o  & ((\ShiftLeft0~59_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftLeft0~71_combout ))

	.dataa(gnd),
	.datab(\ShiftLeft0~71_combout ),
	.datac(\ShiftLeft0~59_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~72_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~72 .lut_mask = 16'hF0CC;
defparam \ShiftLeft0~72 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N30
cycloneive_lcell_comb \Selector11~4 (
// Equation(s):
// \Selector11~4_combout  = (!\Selector9~5_combout  & (\Selector15~2_combout  & \ShiftLeft0~72_combout ))

	.dataa(\Selector9~5_combout ),
	.datab(gnd),
	.datac(\Selector15~2_combout ),
	.datad(\ShiftLeft0~72_combout ),
	.cin(gnd),
	.combout(\Selector11~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~4 .lut_mask = 16'h5000;
defparam \Selector11~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N30
cycloneive_lcell_comb \Selector11~9 (
// Equation(s):
// \Selector11~9_combout  = (\Selector11~8_combout ) # ((\Selector11~4_combout ) # ((\Selector23~13_combout  & \Selector11~2_combout )))

	.dataa(\Selector11~8_combout ),
	.datab(\Selector23~13_combout ),
	.datac(\Selector11~2_combout ),
	.datad(\Selector11~4_combout ),
	.cin(gnd),
	.combout(\Selector11~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~9 .lut_mask = 16'hFFEA;
defparam \Selector11~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N22
cycloneive_lcell_comb \Selector11~11 (
// Equation(s):
// \Selector11~11_combout  = (\ShiftRight0~82_combout  & (\Selector31~29_combout  & (!\ShiftLeft0~8_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftRight0~82_combout ),
	.datab(\Selector31~29_combout ),
	.datac(\ShiftLeft0~8_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector11~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~11 .lut_mask = 16'h0008;
defparam \Selector11~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N20
cycloneive_lcell_comb \Selector11~3 (
// Equation(s):
// \Selector11~3_combout  = (\Selector15~2_combout  & (!\my_alu.portB[3]~input_o  & (!\my_alu.aluOp[0]~input_o  & \my_alu.portB[4]~input_o )))

	.dataa(\Selector15~2_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.aluOp[0]~input_o ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector11~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~3 .lut_mask = 16'h0200;
defparam \Selector11~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N8
cycloneive_lcell_comb \Selector11~10 (
// Equation(s):
// \Selector11~10_combout  = (\Selector11~9_combout ) # ((\Selector11~11_combout ) # ((\ShiftLeft0~20_combout  & \Selector11~3_combout )))

	.dataa(\Selector11~9_combout ),
	.datab(\ShiftLeft0~20_combout ),
	.datac(\Selector11~11_combout ),
	.datad(\Selector11~3_combout ),
	.cin(gnd),
	.combout(\Selector11~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector11~10 .lut_mask = 16'hFEFA;
defparam \Selector11~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N10
cycloneive_lcell_comb \Add0~42 (
// Equation(s):
// \Add0~42_combout  = (\my_alu.portB[21]~input_o  & ((\my_alu.portA[21]~input_o  & (\Add0~41  & VCC)) # (!\my_alu.portA[21]~input_o  & (!\Add0~41 )))) # (!\my_alu.portB[21]~input_o  & ((\my_alu.portA[21]~input_o  & (!\Add0~41 )) # 
// (!\my_alu.portA[21]~input_o  & ((\Add0~41 ) # (GND)))))
// \Add0~43  = CARRY((\my_alu.portB[21]~input_o  & (!\my_alu.portA[21]~input_o  & !\Add0~41 )) # (!\my_alu.portB[21]~input_o  & ((!\Add0~41 ) # (!\my_alu.portA[21]~input_o ))))

	.dataa(\my_alu.portB[21]~input_o ),
	.datab(\my_alu.portA[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~41 ),
	.combout(\Add0~42_combout ),
	.cout(\Add0~43 ));
// synopsys translate_off
defparam \Add0~42 .lut_mask = 16'h9617;
defparam \Add0~42 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: IOIBUF_X115_Y27_N8
cycloneive_io_ibuf \my_alu.portB[21]~input (
	.i(\my_alu.portB [21]),
	.ibar(gnd),
	.o(\my_alu.portB[21]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[21]~input .bus_hold = "false";
defparam \my_alu.portB[21]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N10
cycloneive_lcell_comb \Add1~42 (
// Equation(s):
// \Add1~42_combout  = (\my_alu.portA[21]~input_o  & ((\my_alu.portB[21]~input_o  & (!\Add1~41 )) # (!\my_alu.portB[21]~input_o  & (\Add1~41  & VCC)))) # (!\my_alu.portA[21]~input_o  & ((\my_alu.portB[21]~input_o  & ((\Add1~41 ) # (GND))) # 
// (!\my_alu.portB[21]~input_o  & (!\Add1~41 ))))
// \Add1~43  = CARRY((\my_alu.portA[21]~input_o  & (\my_alu.portB[21]~input_o  & !\Add1~41 )) # (!\my_alu.portA[21]~input_o  & ((\my_alu.portB[21]~input_o ) # (!\Add1~41 ))))

	.dataa(\my_alu.portA[21]~input_o ),
	.datab(\my_alu.portB[21]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~41 ),
	.combout(\Add1~42_combout ),
	.cout(\Add1~43 ));
// synopsys translate_off
defparam \Add1~42 .lut_mask = 16'h694D;
defparam \Add1~42 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y33_N8
cycloneive_lcell_comb \Selector10~5 (
// Equation(s):
// \Selector10~5_combout  = (\Selector31~26_combout  & ((\Add1~42_combout ) # ((\Add0~42_combout  & \Selector31~27_combout )))) # (!\Selector31~26_combout  & (\Add0~42_combout  & ((\Selector31~27_combout ))))

	.dataa(\Selector31~26_combout ),
	.datab(\Add0~42_combout ),
	.datac(\Add1~42_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector10~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~5 .lut_mask = 16'hECA0;
defparam \Selector10~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N12
cycloneive_lcell_comb \Selector10~6 (
// Equation(s):
// \Selector10~6_combout  = (\my_alu.portB[21]~input_o  & (((!\my_alu.portA[21]~input_o  & \Selector31~31_combout )))) # (!\my_alu.portB[21]~input_o  & ((\my_alu.portA[21]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portA[21]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\my_alu.portB[21]~input_o ),
	.datac(\my_alu.portA[21]~input_o ),
	.datad(\Selector31~31_combout ),
	.cin(gnd),
	.combout(\Selector10~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~6 .lut_mask = 16'h3E02;
defparam \Selector10~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y33_N22
cycloneive_lcell_comb \Selector10~7 (
// Equation(s):
// \Selector10~7_combout  = (\Selector10~4_combout ) # ((\Selector10~5_combout ) # (\Selector10~6_combout ))

	.dataa(\Selector10~4_combout ),
	.datab(gnd),
	.datac(\Selector10~5_combout ),
	.datad(\Selector10~6_combout ),
	.cin(gnd),
	.combout(\Selector10~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~7 .lut_mask = 16'hFFFA;
defparam \Selector10~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N10
cycloneive_lcell_comb \Selector10~8 (
// Equation(s):
// \Selector10~8_combout  = (\Selector10~3_combout ) # ((\Selector10~7_combout ) # ((\Selector23~13_combout  & \Selector10~2_combout )))

	.dataa(\Selector10~3_combout ),
	.datab(\Selector10~7_combout ),
	.datac(\Selector23~13_combout ),
	.datad(\Selector10~2_combout ),
	.cin(gnd),
	.combout(\Selector10~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~8 .lut_mask = 16'hFEEE;
defparam \Selector10~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N24
cycloneive_lcell_comb \Selector10~10 (
// Equation(s):
// \Selector10~10_combout  = (!\ShiftLeft0~8_combout  & (\ShiftRight0~85_combout  & (\Selector31~29_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(\ShiftRight0~85_combout ),
	.datac(\Selector31~29_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector10~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~10 .lut_mask = 16'h0040;
defparam \Selector10~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N4
cycloneive_lcell_comb \Selector10~9 (
// Equation(s):
// \Selector10~9_combout  = (\Selector10~8_combout ) # ((\Selector10~10_combout ) # ((\Selector11~3_combout  & \ShiftLeft0~23_combout )))

	.dataa(\Selector10~8_combout ),
	.datab(\Selector11~3_combout ),
	.datac(\Selector10~10_combout ),
	.datad(\ShiftLeft0~23_combout ),
	.cin(gnd),
	.combout(\Selector10~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector10~9 .lut_mask = 16'hFEFA;
defparam \Selector10~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y28_N1
cycloneive_io_ibuf \my_alu.portB[22]~input (
	.i(\my_alu.portB [22]),
	.ibar(gnd),
	.o(\my_alu.portB[22]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[22]~input .bus_hold = "false";
defparam \my_alu.portB[22]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N16
cycloneive_lcell_comb \Selector9~9 (
// Equation(s):
// \Selector9~9_combout  = (\my_alu.portA[22]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portB[22]~input_o )))) # (!\my_alu.portA[22]~input_o  & ((\my_alu.portB[22]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portB[22]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\Selector31~31_combout ),
	.datab(\Selector31~32_combout ),
	.datac(\my_alu.portA[22]~input_o ),
	.datad(\my_alu.portB[22]~input_o ),
	.cin(gnd),
	.combout(\Selector9~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~9 .lut_mask = 16'h0AAC;
defparam \Selector9~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N12
cycloneive_lcell_comb \Add0~44 (
// Equation(s):
// \Add0~44_combout  = ((\my_alu.portB[22]~input_o  $ (\my_alu.portA[22]~input_o  $ (!\Add0~43 )))) # (GND)
// \Add0~45  = CARRY((\my_alu.portB[22]~input_o  & ((\my_alu.portA[22]~input_o ) # (!\Add0~43 ))) # (!\my_alu.portB[22]~input_o  & (\my_alu.portA[22]~input_o  & !\Add0~43 )))

	.dataa(\my_alu.portB[22]~input_o ),
	.datab(\my_alu.portA[22]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~43 ),
	.combout(\Add0~44_combout ),
	.cout(\Add0~45 ));
// synopsys translate_off
defparam \Add0~44 .lut_mask = 16'h698E;
defparam \Add0~44 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N14
cycloneive_lcell_comb \Selector9~8 (
// Equation(s):
// \Selector9~8_combout  = (\Add1~44_combout  & ((\Selector31~26_combout ) # ((\Selector31~27_combout  & \Add0~44_combout )))) # (!\Add1~44_combout  & (\Selector31~27_combout  & (\Add0~44_combout )))

	.dataa(\Add1~44_combout ),
	.datab(\Selector31~27_combout ),
	.datac(\Add0~44_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector9~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~8 .lut_mask = 16'hEAC0;
defparam \Selector9~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N20
cycloneive_lcell_comb \Selector9~7 (
// Equation(s):
// \Selector9~7_combout  = (\my_alu.portB[22]~input_o  & ((\Selector31~30_combout ) # ((\my_alu.portA[22]~input_o  & \Selector31~25_combout )))) # (!\my_alu.portB[22]~input_o  & (\Selector31~30_combout  & (\my_alu.portA[22]~input_o )))

	.dataa(\my_alu.portB[22]~input_o ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portA[22]~input_o ),
	.datad(\Selector31~25_combout ),
	.cin(gnd),
	.combout(\Selector9~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~7 .lut_mask = 16'hE8C8;
defparam \Selector9~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N18
cycloneive_lcell_comb \Selector9~10 (
// Equation(s):
// \Selector9~10_combout  = (\Selector9~9_combout ) # ((\Selector9~8_combout ) # (\Selector9~7_combout ))

	.dataa(gnd),
	.datab(\Selector9~9_combout ),
	.datac(\Selector9~8_combout ),
	.datad(\Selector9~7_combout ),
	.cin(gnd),
	.combout(\Selector9~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~10 .lut_mask = 16'hFFFC;
defparam \Selector9~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N6
cycloneive_lcell_comb \Selector9~11 (
// Equation(s):
// \Selector9~11_combout  = (\Selector9~6_combout ) # ((\Selector9~10_combout ) # ((\Selector23~13_combout  & \Selector9~3_combout )))

	.dataa(\Selector9~6_combout ),
	.datab(\Selector9~10_combout ),
	.datac(\Selector23~13_combout ),
	.datad(\Selector9~3_combout ),
	.cin(gnd),
	.combout(\Selector9~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~11 .lut_mask = 16'hFEEE;
defparam \Selector9~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y34_N18
cycloneive_lcell_comb \ShiftRight0~87 (
// Equation(s):
// \ShiftRight0~87_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & ((\ShiftRight0~62_combout ))) # (!\my_alu.portB[2]~input_o  & (\ShiftRight0~65_combout ))))

	.dataa(\ShiftRight0~65_combout ),
	.datab(\ShiftRight0~62_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftRight0~87_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~87 .lut_mask = 16'h0C0A;
defparam \ShiftRight0~87 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N18
cycloneive_lcell_comb \ShiftRight0~88 (
// Equation(s):
// \ShiftRight0~88_combout  = (\ShiftRight0~87_combout ) # ((\my_alu.portB[3]~input_o  & (!\ShiftLeft0~11_combout  & \ShiftRight0~1_combout )))

	.dataa(\my_alu.portB[3]~input_o ),
	.datab(\ShiftLeft0~11_combout ),
	.datac(\ShiftRight0~1_combout ),
	.datad(\ShiftRight0~87_combout ),
	.cin(gnd),
	.combout(\ShiftRight0~88_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftRight0~88 .lut_mask = 16'hFF20;
defparam \ShiftRight0~88 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N2
cycloneive_lcell_comb \Selector9~13 (
// Equation(s):
// \Selector9~13_combout  = (!\ShiftLeft0~8_combout  & (\Selector31~29_combout  & (\ShiftRight0~88_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(\Selector31~29_combout ),
	.datac(\ShiftRight0~88_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector9~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~13 .lut_mask = 16'h0040;
defparam \Selector9~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N16
cycloneive_lcell_comb \Selector9~12 (
// Equation(s):
// \Selector9~12_combout  = (\Selector9~11_combout ) # ((\Selector9~13_combout ) # ((\ShiftLeft0~26_combout  & \Selector11~3_combout )))

	.dataa(\Selector9~11_combout ),
	.datab(\Selector9~13_combout ),
	.datac(\ShiftLeft0~26_combout ),
	.datad(\Selector11~3_combout ),
	.cin(gnd),
	.combout(\Selector9~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector9~12 .lut_mask = 16'hFEEE;
defparam \Selector9~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y22_N15
cycloneive_io_ibuf \my_alu.portB[23]~input (
	.i(\my_alu.portB [23]),
	.ibar(gnd),
	.o(\my_alu.portB[23]~input_o ));
// synopsys translate_off
defparam \my_alu.portB[23]~input .bus_hold = "false";
defparam \my_alu.portB[23]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N20
cycloneive_lcell_comb \Selector8~6 (
// Equation(s):
// \Selector8~6_combout  = (\my_alu.portA[23]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portB[23]~input_o )))) # (!\my_alu.portA[23]~input_o  & ((\my_alu.portB[23]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portB[23]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\Selector31~31_combout ),
	.datab(\Selector31~32_combout ),
	.datac(\my_alu.portA[23]~input_o ),
	.datad(\my_alu.portB[23]~input_o ),
	.cin(gnd),
	.combout(\Selector8~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~6 .lut_mask = 16'h0AAC;
defparam \Selector8~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N8
cycloneive_lcell_comb \Selector8~4 (
// Equation(s):
// \Selector8~4_combout  = (\Selector31~30_combout  & (((\my_alu.portA[23]~input_o ) # (\my_alu.portB[23]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portA[23]~input_o  & \my_alu.portB[23]~input_o )))

	.dataa(\Selector31~25_combout ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portA[23]~input_o ),
	.datad(\my_alu.portB[23]~input_o ),
	.cin(gnd),
	.combout(\Selector8~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~4 .lut_mask = 16'hECC0;
defparam \Selector8~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N14
cycloneive_lcell_comb \Add0~46 (
// Equation(s):
// \Add0~46_combout  = (\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o  & (\Add0~45  & VCC)) # (!\my_alu.portA[23]~input_o  & (!\Add0~45 )))) # (!\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o  & (!\Add0~45 )) # 
// (!\my_alu.portA[23]~input_o  & ((\Add0~45 ) # (GND)))))
// \Add0~47  = CARRY((\my_alu.portB[23]~input_o  & (!\my_alu.portA[23]~input_o  & !\Add0~45 )) # (!\my_alu.portB[23]~input_o  & ((!\Add0~45 ) # (!\my_alu.portA[23]~input_o ))))

	.dataa(\my_alu.portB[23]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~45 ),
	.combout(\Add0~46_combout ),
	.cout(\Add0~47 ));
// synopsys translate_off
defparam \Add0~46 .lut_mask = 16'h9617;
defparam \Add0~46 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N14
cycloneive_lcell_comb \Add1~46 (
// Equation(s):
// \Add1~46_combout  = (\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o  & (!\Add1~45 )) # (!\my_alu.portA[23]~input_o  & ((\Add1~45 ) # (GND))))) # (!\my_alu.portB[23]~input_o  & ((\my_alu.portA[23]~input_o  & (\Add1~45  & VCC)) # 
// (!\my_alu.portA[23]~input_o  & (!\Add1~45 ))))
// \Add1~47  = CARRY((\my_alu.portB[23]~input_o  & ((!\Add1~45 ) # (!\my_alu.portA[23]~input_o ))) # (!\my_alu.portB[23]~input_o  & (!\my_alu.portA[23]~input_o  & !\Add1~45 )))

	.dataa(\my_alu.portB[23]~input_o ),
	.datab(\my_alu.portA[23]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~45 ),
	.combout(\Add1~46_combout ),
	.cout(\Add1~47 ));
// synopsys translate_off
defparam \Add1~46 .lut_mask = 16'h692B;
defparam \Add1~46 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N18
cycloneive_lcell_comb \Selector8~5 (
// Equation(s):
// \Selector8~5_combout  = (\Selector31~26_combout  & ((\Add1~46_combout ) # ((\Add0~46_combout  & \Selector31~27_combout )))) # (!\Selector31~26_combout  & (\Add0~46_combout  & ((\Selector31~27_combout ))))

	.dataa(\Selector31~26_combout ),
	.datab(\Add0~46_combout ),
	.datac(\Add1~46_combout ),
	.datad(\Selector31~27_combout ),
	.cin(gnd),
	.combout(\Selector8~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~5 .lut_mask = 16'hECA0;
defparam \Selector8~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N22
cycloneive_lcell_comb \Selector8~7 (
// Equation(s):
// \Selector8~7_combout  = (\Selector8~6_combout ) # ((\Selector8~4_combout ) # (\Selector8~5_combout ))

	.dataa(gnd),
	.datab(\Selector8~6_combout ),
	.datac(\Selector8~4_combout ),
	.datad(\Selector8~5_combout ),
	.cin(gnd),
	.combout(\Selector8~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~7 .lut_mask = 16'hFFFC;
defparam \Selector8~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N18
cycloneive_lcell_comb \Selector8~8 (
// Equation(s):
// \Selector8~8_combout  = (\Selector8~3_combout ) # ((\Selector8~7_combout ) # ((\Selector8~2_combout  & \Selector23~13_combout )))

	.dataa(\Selector8~3_combout ),
	.datab(\Selector8~2_combout ),
	.datac(\Selector23~13_combout ),
	.datad(\Selector8~7_combout ),
	.cin(gnd),
	.combout(\Selector8~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~8 .lut_mask = 16'hFFEA;
defparam \Selector8~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N28
cycloneive_lcell_comb \Selector8~10 (
// Equation(s):
// \Selector8~10_combout  = (!\ShiftLeft0~8_combout  & (\Selector31~29_combout  & (\ShiftRight0~91_combout  & !\my_alu.portB[4]~input_o )))

	.dataa(\ShiftLeft0~8_combout ),
	.datab(\Selector31~29_combout ),
	.datac(\ShiftRight0~91_combout ),
	.datad(\my_alu.portB[4]~input_o ),
	.cin(gnd),
	.combout(\Selector8~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~10 .lut_mask = 16'h0040;
defparam \Selector8~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y37_N12
cycloneive_lcell_comb \Selector8~9 (
// Equation(s):
// \Selector8~9_combout  = (\Selector8~8_combout ) # ((\Selector8~10_combout ) # ((\ShiftLeft0~29_combout  & \Selector11~3_combout )))

	.dataa(\Selector8~8_combout ),
	.datab(\Selector8~10_combout ),
	.datac(\ShiftLeft0~29_combout ),
	.datad(\Selector11~3_combout ),
	.cin(gnd),
	.combout(\Selector8~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector8~9 .lut_mask = 16'hFEEE;
defparam \Selector8~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y24_N8
cycloneive_io_ibuf \my_alu.portA[24]~input (
	.i(\my_alu.portA [24]),
	.ibar(gnd),
	.o(\my_alu.portA[24]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[24]~input .bus_hold = "false";
defparam \my_alu.portA[24]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N10
cycloneive_lcell_comb \Selector7~2 (
// Equation(s):
// \Selector7~2_combout  = (\my_alu.portB[24]~input_o  & (((\Selector31~9_combout  & !\my_alu.portA[24]~input_o )))) # (!\my_alu.portB[24]~input_o  & ((\my_alu.portA[24]~input_o  & ((\Selector31~9_combout ))) # (!\my_alu.portA[24]~input_o  & 
// (\Selector31~15_combout ))))

	.dataa(\Selector31~15_combout ),
	.datab(\Selector31~9_combout ),
	.datac(\my_alu.portB[24]~input_o ),
	.datad(\my_alu.portA[24]~input_o ),
	.cin(gnd),
	.combout(\Selector7~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~2 .lut_mask = 16'h0CCA;
defparam \Selector7~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N16
cycloneive_lcell_comb \Add0~48 (
// Equation(s):
// \Add0~48_combout  = ((\my_alu.portB[24]~input_o  $ (\my_alu.portA[24]~input_o  $ (!\Add0~47 )))) # (GND)
// \Add0~49  = CARRY((\my_alu.portB[24]~input_o  & ((\my_alu.portA[24]~input_o ) # (!\Add0~47 ))) # (!\my_alu.portB[24]~input_o  & (\my_alu.portA[24]~input_o  & !\Add0~47 )))

	.dataa(\my_alu.portB[24]~input_o ),
	.datab(\my_alu.portA[24]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~47 ),
	.combout(\Add0~48_combout ),
	.cout(\Add0~49 ));
// synopsys translate_off
defparam \Add0~48 .lut_mask = 16'h698E;
defparam \Add0~48 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N16
cycloneive_lcell_comb \Selector7~1 (
// Equation(s):
// \Selector7~1_combout  = (\Add1~48_combout  & ((\Selector31~12_combout ) # ((\Add0~48_combout  & \Selector31~8_combout )))) # (!\Add1~48_combout  & (((\Add0~48_combout  & \Selector31~8_combout ))))

	.dataa(\Add1~48_combout ),
	.datab(\Selector31~12_combout ),
	.datac(\Add0~48_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector7~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~1 .lut_mask = 16'hF888;
defparam \Selector7~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N14
cycloneive_lcell_comb \Selector7~0 (
// Equation(s):
// \Selector7~0_combout  = (\Selector31~13_combout  & ((\my_alu.portA[24]~input_o ) # ((\my_alu.portB[24]~input_o )))) # (!\Selector31~13_combout  & (\my_alu.portA[24]~input_o  & (\my_alu.portB[24]~input_o  & \Selector31~19_combout )))

	.dataa(\Selector31~13_combout ),
	.datab(\my_alu.portA[24]~input_o ),
	.datac(\my_alu.portB[24]~input_o ),
	.datad(\Selector31~19_combout ),
	.cin(gnd),
	.combout(\Selector7~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~0 .lut_mask = 16'hE8A8;
defparam \Selector7~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N2
cycloneive_lcell_comb \Selector7~3 (
// Equation(s):
// \Selector7~3_combout  = (!\ShiftLeft0~8_combout  & \Selector31~21_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\ShiftLeft0~8_combout ),
	.datad(\Selector31~21_combout ),
	.cin(gnd),
	.combout(\Selector7~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~3 .lut_mask = 16'h0F00;
defparam \Selector7~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N12
cycloneive_lcell_comb \Selector7~6 (
// Equation(s):
// \Selector7~6_combout  = (\Selector31~17_combout  & (!\ShiftLeft0~8_combout  & (!\my_alu.portB[4]~input_o  & !\my_alu.portB[3]~input_o )))

	.dataa(\Selector31~17_combout ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector7~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~6 .lut_mask = 16'h0002;
defparam \Selector7~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y36_N6
cycloneive_lcell_comb \Selector7~7 (
// Equation(s):
// \Selector7~7_combout  = (\Selector7~5_combout  & ((\Selector7~3_combout ) # ((\ShiftRight0~6_combout  & \Selector7~6_combout )))) # (!\Selector7~5_combout  & (((\ShiftRight0~6_combout  & \Selector7~6_combout ))))

	.dataa(\Selector7~5_combout ),
	.datab(\Selector7~3_combout ),
	.datac(\ShiftRight0~6_combout ),
	.datad(\Selector7~6_combout ),
	.cin(gnd),
	.combout(\Selector7~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~7 .lut_mask = 16'hF888;
defparam \Selector7~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N12
cycloneive_lcell_comb \Selector7~8 (
// Equation(s):
// \Selector7~8_combout  = (\Selector7~2_combout ) # ((\Selector7~1_combout ) # ((\Selector7~0_combout ) # (\Selector7~7_combout )))

	.dataa(\Selector7~2_combout ),
	.datab(\Selector7~1_combout ),
	.datac(\Selector7~0_combout ),
	.datad(\Selector7~7_combout ),
	.cin(gnd),
	.combout(\Selector7~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector7~8 .lut_mask = 16'hFFFE;
defparam \Selector7~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N30
cycloneive_lcell_comb \Selector6~0 (
// Equation(s):
// \Selector6~0_combout  = (\my_alu.portA[25]~input_o  & ((\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portB[25]~input_o )))) # (!\my_alu.portA[25]~input_o  & (((\my_alu.portB[25]~input_o  & \Selector31~13_combout ))))

	.dataa(\Selector31~19_combout ),
	.datab(\my_alu.portA[25]~input_o ),
	.datac(\my_alu.portB[25]~input_o ),
	.datad(\Selector31~13_combout ),
	.cin(gnd),
	.combout(\Selector6~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~0 .lut_mask = 16'hFC80;
defparam \Selector6~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N18
cycloneive_lcell_comb \Selector6~2 (
// Equation(s):
// \Selector6~2_combout  = (\my_alu.portB[25]~input_o  & (((\Selector31~9_combout  & !\my_alu.portA[25]~input_o )))) # (!\my_alu.portB[25]~input_o  & ((\my_alu.portA[25]~input_o  & ((\Selector31~9_combout ))) # (!\my_alu.portA[25]~input_o  & 
// (\Selector31~15_combout ))))

	.dataa(\Selector31~15_combout ),
	.datab(\Selector31~9_combout ),
	.datac(\my_alu.portB[25]~input_o ),
	.datad(\my_alu.portA[25]~input_o ),
	.cin(gnd),
	.combout(\Selector6~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~2 .lut_mask = 16'h0CCA;
defparam \Selector6~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N28
cycloneive_lcell_comb \ShiftLeft0~36 (
// Equation(s):
// \ShiftLeft0~36_combout  = (!\my_alu.portB[3]~input_o  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~22_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~35_combout )))))

	.dataa(\ShiftLeft0~22_combout ),
	.datab(\ShiftLeft0~35_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~36_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~36 .lut_mask = 16'h0A0C;
defparam \ShiftLeft0~36 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N14
cycloneive_lcell_comb \ShiftLeft0~37 (
// Equation(s):
// \ShiftLeft0~37_combout  = (\ShiftLeft0~36_combout ) # ((!\ShiftLeft0~11_combout  & (\my_alu.portB[3]~input_o  & \ShiftLeft0~10_combout )))

	.dataa(\ShiftLeft0~11_combout ),
	.datab(\ShiftLeft0~36_combout ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(\ShiftLeft0~10_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~37_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~37 .lut_mask = 16'hDCCC;
defparam \ShiftLeft0~37 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N30
cycloneive_lcell_comb \ShiftLeft0~74 (
// Equation(s):
// \ShiftLeft0~74_combout  = (\my_alu.portB[0]~input_o  & ((\ShiftLeft0~70_combout ))) # (!\my_alu.portB[0]~input_o  & (\ShiftLeft0~73_combout ))

	.dataa(\ShiftLeft0~73_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(gnd),
	.datad(\ShiftLeft0~70_combout ),
	.cin(gnd),
	.combout(\ShiftLeft0~74_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~74 .lut_mask = 16'hEE22;
defparam \ShiftLeft0~74 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y36_N4
cycloneive_lcell_comb \Selector6~4 (
// Equation(s):
// \Selector6~4_combout  = (\Selector6~3_combout  & (((\ShiftLeft0~37_combout )) # (!\Selector24~2_combout ))) # (!\Selector6~3_combout  & (\Selector24~2_combout  & ((\ShiftLeft0~74_combout ))))

	.dataa(\Selector6~3_combout ),
	.datab(\Selector24~2_combout ),
	.datac(\ShiftLeft0~37_combout ),
	.datad(\ShiftLeft0~74_combout ),
	.cin(gnd),
	.combout(\Selector6~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~4 .lut_mask = 16'hE6A2;
defparam \Selector6~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N4
cycloneive_lcell_comb \Selector6~5 (
// Equation(s):
// \Selector6~5_combout  = (\Selector7~3_combout  & ((\Selector6~4_combout ) # ((\Selector7~6_combout  & \ShiftRight0~33_combout )))) # (!\Selector7~3_combout  & (\Selector7~6_combout  & (\ShiftRight0~33_combout )))

	.dataa(\Selector7~3_combout ),
	.datab(\Selector7~6_combout ),
	.datac(\ShiftRight0~33_combout ),
	.datad(\Selector6~4_combout ),
	.cin(gnd),
	.combout(\Selector6~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~5 .lut_mask = 16'hEAC0;
defparam \Selector6~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N18
cycloneive_lcell_comb \Add0~50 (
// Equation(s):
// \Add0~50_combout  = (\my_alu.portA[25]~input_o  & ((\my_alu.portB[25]~input_o  & (\Add0~49  & VCC)) # (!\my_alu.portB[25]~input_o  & (!\Add0~49 )))) # (!\my_alu.portA[25]~input_o  & ((\my_alu.portB[25]~input_o  & (!\Add0~49 )) # 
// (!\my_alu.portB[25]~input_o  & ((\Add0~49 ) # (GND)))))
// \Add0~51  = CARRY((\my_alu.portA[25]~input_o  & (!\my_alu.portB[25]~input_o  & !\Add0~49 )) # (!\my_alu.portA[25]~input_o  & ((!\Add0~49 ) # (!\my_alu.portB[25]~input_o ))))

	.dataa(\my_alu.portA[25]~input_o ),
	.datab(\my_alu.portB[25]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~49 ),
	.combout(\Add0~50_combout ),
	.cout(\Add0~51 ));
// synopsys translate_off
defparam \Add0~50 .lut_mask = 16'h9617;
defparam \Add0~50 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N24
cycloneive_lcell_comb \Selector6~1 (
// Equation(s):
// \Selector6~1_combout  = (\Add1~50_combout  & ((\Selector31~12_combout ) # ((\Add0~50_combout  & \Selector31~8_combout )))) # (!\Add1~50_combout  & (\Add0~50_combout  & ((\Selector31~8_combout ))))

	.dataa(\Add1~50_combout ),
	.datab(\Add0~50_combout ),
	.datac(\Selector31~12_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector6~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~1 .lut_mask = 16'hECA0;
defparam \Selector6~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X95_Y33_N28
cycloneive_lcell_comb \Selector6~6 (
// Equation(s):
// \Selector6~6_combout  = (\Selector6~0_combout ) # ((\Selector6~2_combout ) # ((\Selector6~5_combout ) # (\Selector6~1_combout )))

	.dataa(\Selector6~0_combout ),
	.datab(\Selector6~2_combout ),
	.datac(\Selector6~5_combout ),
	.datad(\Selector6~1_combout ),
	.cin(gnd),
	.combout(\Selector6~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector6~6 .lut_mask = 16'hFFFE;
defparam \Selector6~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N6
cycloneive_lcell_comb \Selector5~5 (
// Equation(s):
// \Selector5~5_combout  = (\Selector5~4_combout  & ((\Selector7~3_combout ) # ((\Selector7~6_combout  & \ShiftRight0~63_combout )))) # (!\Selector5~4_combout  & (\Selector7~6_combout  & (\ShiftRight0~63_combout )))

	.dataa(\Selector5~4_combout ),
	.datab(\Selector7~6_combout ),
	.datac(\ShiftRight0~63_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector5~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~5 .lut_mask = 16'hEAC0;
defparam \Selector5~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N28
cycloneive_lcell_comb \Selector5~2 (
// Equation(s):
// \Selector5~2_combout  = (\my_alu.portA[26]~input_o  & (\Selector31~9_combout  & ((!\my_alu.portB[26]~input_o )))) # (!\my_alu.portA[26]~input_o  & ((\my_alu.portB[26]~input_o  & (\Selector31~9_combout )) # (!\my_alu.portB[26]~input_o  & 
// ((\Selector31~15_combout )))))

	.dataa(\Selector31~9_combout ),
	.datab(\Selector31~15_combout ),
	.datac(\my_alu.portA[26]~input_o ),
	.datad(\my_alu.portB[26]~input_o ),
	.cin(gnd),
	.combout(\Selector5~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~2 .lut_mask = 16'h0AAC;
defparam \Selector5~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N20
cycloneive_lcell_comb \Add0~52 (
// Equation(s):
// \Add0~52_combout  = ((\my_alu.portB[26]~input_o  $ (\my_alu.portA[26]~input_o  $ (!\Add0~51 )))) # (GND)
// \Add0~53  = CARRY((\my_alu.portB[26]~input_o  & ((\my_alu.portA[26]~input_o ) # (!\Add0~51 ))) # (!\my_alu.portB[26]~input_o  & (\my_alu.portA[26]~input_o  & !\Add0~51 )))

	.dataa(\my_alu.portB[26]~input_o ),
	.datab(\my_alu.portA[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~51 ),
	.combout(\Add0~52_combout ),
	.cout(\Add0~53 ));
// synopsys translate_off
defparam \Add0~52 .lut_mask = 16'h698E;
defparam \Add0~52 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N20
cycloneive_lcell_comb \Add1~52 (
// Equation(s):
// \Add1~52_combout  = ((\my_alu.portB[26]~input_o  $ (\my_alu.portA[26]~input_o  $ (\Add1~51 )))) # (GND)
// \Add1~53  = CARRY((\my_alu.portB[26]~input_o  & (\my_alu.portA[26]~input_o  & !\Add1~51 )) # (!\my_alu.portB[26]~input_o  & ((\my_alu.portA[26]~input_o ) # (!\Add1~51 ))))

	.dataa(\my_alu.portB[26]~input_o ),
	.datab(\my_alu.portA[26]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~51 ),
	.combout(\Add1~52_combout ),
	.cout(\Add1~53 ));
// synopsys translate_off
defparam \Add1~52 .lut_mask = 16'h964D;
defparam \Add1~52 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N26
cycloneive_lcell_comb \Selector5~1 (
// Equation(s):
// \Selector5~1_combout  = (\Selector31~12_combout  & ((\Add1~52_combout ) # ((\Add0~52_combout  & \Selector31~8_combout )))) # (!\Selector31~12_combout  & (\Add0~52_combout  & ((\Selector31~8_combout ))))

	.dataa(\Selector31~12_combout ),
	.datab(\Add0~52_combout ),
	.datac(\Add1~52_combout ),
	.datad(\Selector31~8_combout ),
	.cin(gnd),
	.combout(\Selector5~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~1 .lut_mask = 16'hECA0;
defparam \Selector5~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N16
cycloneive_lcell_comb \Selector5~0 (
// Equation(s):
// \Selector5~0_combout  = (\my_alu.portA[26]~input_o  & ((\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portB[26]~input_o )))) # (!\my_alu.portA[26]~input_o  & (\Selector31~13_combout  & ((\my_alu.portB[26]~input_o ))))

	.dataa(\my_alu.portA[26]~input_o ),
	.datab(\Selector31~13_combout ),
	.datac(\Selector31~19_combout ),
	.datad(\my_alu.portB[26]~input_o ),
	.cin(gnd),
	.combout(\Selector5~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~0 .lut_mask = 16'hEC88;
defparam \Selector5~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y36_N22
cycloneive_lcell_comb \Selector5~6 (
// Equation(s):
// \Selector5~6_combout  = (\Selector5~5_combout ) # ((\Selector5~2_combout ) # ((\Selector5~1_combout ) # (\Selector5~0_combout )))

	.dataa(\Selector5~5_combout ),
	.datab(\Selector5~2_combout ),
	.datac(\Selector5~1_combout ),
	.datad(\Selector5~0_combout ),
	.cin(gnd),
	.combout(\Selector5~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~6 .lut_mask = 16'hFFFE;
defparam \Selector5~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X115_Y41_N8
cycloneive_io_ibuf \my_alu.portA[27]~input (
	.i(\my_alu.portA [27]),
	.ibar(gnd),
	.o(\my_alu.portA[27]~input_o ));
// synopsys translate_off
defparam \my_alu.portA[27]~input .bus_hold = "false";
defparam \my_alu.portA[27]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N22
cycloneive_lcell_comb \Add0~54 (
// Equation(s):
// \Add0~54_combout  = (\my_alu.portB[27]~input_o  & ((\my_alu.portA[27]~input_o  & (\Add0~53  & VCC)) # (!\my_alu.portA[27]~input_o  & (!\Add0~53 )))) # (!\my_alu.portB[27]~input_o  & ((\my_alu.portA[27]~input_o  & (!\Add0~53 )) # 
// (!\my_alu.portA[27]~input_o  & ((\Add0~53 ) # (GND)))))
// \Add0~55  = CARRY((\my_alu.portB[27]~input_o  & (!\my_alu.portA[27]~input_o  & !\Add0~53 )) # (!\my_alu.portB[27]~input_o  & ((!\Add0~53 ) # (!\my_alu.portA[27]~input_o ))))

	.dataa(\my_alu.portB[27]~input_o ),
	.datab(\my_alu.portA[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~53 ),
	.combout(\Add0~54_combout ),
	.cout(\Add0~55 ));
// synopsys translate_off
defparam \Add0~54 .lut_mask = 16'h9617;
defparam \Add0~54 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N22
cycloneive_lcell_comb \Add1~54 (
// Equation(s):
// \Add1~54_combout  = (\my_alu.portB[27]~input_o  & ((\my_alu.portA[27]~input_o  & (!\Add1~53 )) # (!\my_alu.portA[27]~input_o  & ((\Add1~53 ) # (GND))))) # (!\my_alu.portB[27]~input_o  & ((\my_alu.portA[27]~input_o  & (\Add1~53  & VCC)) # 
// (!\my_alu.portA[27]~input_o  & (!\Add1~53 ))))
// \Add1~55  = CARRY((\my_alu.portB[27]~input_o  & ((!\Add1~53 ) # (!\my_alu.portA[27]~input_o ))) # (!\my_alu.portB[27]~input_o  & (!\my_alu.portA[27]~input_o  & !\Add1~53 )))

	.dataa(\my_alu.portB[27]~input_o ),
	.datab(\my_alu.portA[27]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~53 ),
	.combout(\Add1~54_combout ),
	.cout(\Add1~55 ));
// synopsys translate_off
defparam \Add1~54 .lut_mask = 16'h692B;
defparam \Add1~54 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X95_Y37_N0
cycloneive_lcell_comb \Selector4~1 (
// Equation(s):
// \Selector4~1_combout  = (\Selector31~8_combout  & ((\Add0~54_combout ) # ((\Selector31~12_combout  & \Add1~54_combout )))) # (!\Selector31~8_combout  & (((\Selector31~12_combout  & \Add1~54_combout ))))

	.dataa(\Selector31~8_combout ),
	.datab(\Add0~54_combout ),
	.datac(\Selector31~12_combout ),
	.datad(\Add1~54_combout ),
	.cin(gnd),
	.combout(\Selector4~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~1 .lut_mask = 16'hF888;
defparam \Selector4~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N18
cycloneive_lcell_comb \Selector4~2 (
// Equation(s):
// \Selector4~2_combout  = (\my_alu.portA[27]~input_o  & (\Selector31~9_combout  & ((!\my_alu.portB[27]~input_o )))) # (!\my_alu.portA[27]~input_o  & ((\my_alu.portB[27]~input_o  & (\Selector31~9_combout )) # (!\my_alu.portB[27]~input_o  & 
// ((\Selector31~15_combout )))))

	.dataa(\my_alu.portA[27]~input_o ),
	.datab(\Selector31~9_combout ),
	.datac(\Selector31~15_combout ),
	.datad(\my_alu.portB[27]~input_o ),
	.cin(gnd),
	.combout(\Selector4~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~2 .lut_mask = 16'h44D8;
defparam \Selector4~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y36_N24
cycloneive_lcell_comb \Selector4~5 (
// Equation(s):
// \Selector4~5_combout  = (\Selector4~4_combout  & ((\Selector7~3_combout ) # ((\ShiftRight0~76_combout  & \Selector7~6_combout )))) # (!\Selector4~4_combout  & (\ShiftRight0~76_combout  & (\Selector7~6_combout )))

	.dataa(\Selector4~4_combout ),
	.datab(\ShiftRight0~76_combout ),
	.datac(\Selector7~6_combout ),
	.datad(\Selector7~3_combout ),
	.cin(gnd),
	.combout(\Selector4~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~5 .lut_mask = 16'hEAC0;
defparam \Selector4~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N0
cycloneive_lcell_comb \Selector4~0 (
// Equation(s):
// \Selector4~0_combout  = (\my_alu.portB[27]~input_o  & ((\Selector31~13_combout ) # ((\Selector31~19_combout  & \my_alu.portA[27]~input_o )))) # (!\my_alu.portB[27]~input_o  & (((\Selector31~13_combout  & \my_alu.portA[27]~input_o ))))

	.dataa(\Selector31~19_combout ),
	.datab(\my_alu.portB[27]~input_o ),
	.datac(\Selector31~13_combout ),
	.datad(\my_alu.portA[27]~input_o ),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~0 .lut_mask = 16'hF8C0;
defparam \Selector4~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N28
cycloneive_lcell_comb \Selector4~6 (
// Equation(s):
// \Selector4~6_combout  = (\Selector4~1_combout ) # ((\Selector4~2_combout ) # ((\Selector4~5_combout ) # (\Selector4~0_combout )))

	.dataa(\Selector4~1_combout ),
	.datab(\Selector4~2_combout ),
	.datac(\Selector4~5_combout ),
	.datad(\Selector4~0_combout ),
	.cin(gnd),
	.combout(\Selector4~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~6 .lut_mask = 16'hFFFE;
defparam \Selector4~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N24
cycloneive_lcell_comb \Selector3~7 (
// Equation(s):
// \Selector3~7_combout  = (\my_alu.portB[28]~input_o  & (\Selector31~31_combout  & ((!\my_alu.portA[28]~input_o )))) # (!\my_alu.portB[28]~input_o  & ((\my_alu.portA[28]~input_o  & (\Selector31~31_combout )) # (!\my_alu.portA[28]~input_o  & 
// ((\Selector31~32_combout )))))

	.dataa(\Selector31~31_combout ),
	.datab(\my_alu.portB[28]~input_o ),
	.datac(\Selector31~32_combout ),
	.datad(\my_alu.portA[28]~input_o ),
	.cin(gnd),
	.combout(\Selector3~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~7 .lut_mask = 16'h22B8;
defparam \Selector3~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y34_N20
cycloneive_lcell_comb \Selector3~10 (
// Equation(s):
// \Selector3~10_combout  = (\Selector15~9_combout  & (!\my_alu.portB[3]~input_o  & (!\my_alu.portB[2]~input_o  & \ShiftRight0~2_combout )))

	.dataa(\Selector15~9_combout ),
	.datab(\my_alu.portB[3]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftRight0~2_combout ),
	.cin(gnd),
	.combout(\Selector3~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~10 .lut_mask = 16'h0200;
defparam \Selector3~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N12
cycloneive_lcell_comb \Selector3~5 (
// Equation(s):
// \Selector3~5_combout  = (\my_alu.portA[28]~input_o  & ((\Selector31~30_combout ) # ((\my_alu.portB[28]~input_o  & \Selector31~25_combout )))) # (!\my_alu.portA[28]~input_o  & (\Selector31~30_combout  & (\my_alu.portB[28]~input_o )))

	.dataa(\my_alu.portA[28]~input_o ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portB[28]~input_o ),
	.datad(\Selector31~25_combout ),
	.cin(gnd),
	.combout(\Selector3~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~5 .lut_mask = 16'hE8C8;
defparam \Selector3~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N10
cycloneive_lcell_comb \Selector3~8 (
// Equation(s):
// \Selector3~8_combout  = (\Selector3~6_combout ) # ((\Selector3~7_combout ) # ((\Selector3~10_combout ) # (\Selector3~5_combout )))

	.dataa(\Selector3~6_combout ),
	.datab(\Selector3~7_combout ),
	.datac(\Selector3~10_combout ),
	.datad(\Selector3~5_combout ),
	.cin(gnd),
	.combout(\Selector3~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~8 .lut_mask = 16'hFFFE;
defparam \Selector3~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N22
cycloneive_lcell_comb \Selector2~2 (
// Equation(s):
// \Selector2~2_combout  = (\my_alu.aluOp[1]~input_o ) # ((\my_alu.aluOp[0]~input_o ) # ((!\ShiftLeft0~8_combout  & \my_alu.portB[4]~input_o )))

	.dataa(\my_alu.aluOp[1]~input_o ),
	.datab(\ShiftLeft0~8_combout ),
	.datac(\my_alu.portB[4]~input_o ),
	.datad(\my_alu.aluOp[0]~input_o ),
	.cin(gnd),
	.combout(\Selector2~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~2 .lut_mask = 16'hFFBA;
defparam \Selector2~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N26
cycloneive_lcell_comb \Selector29~0 (
// Equation(s):
// \Selector29~0_combout  = (\my_alu.portB[3]~input_o ) # ((\my_alu.portB[1]~input_o  & !\my_alu.portB[2]~input_o ))

	.dataa(\my_alu.portB[1]~input_o ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\my_alu.portB[3]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector29~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector29~0 .lut_mask = 16'hF2F2;
defparam \Selector29~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N14
cycloneive_lcell_comb \ShiftLeft0~90 (
// Equation(s):
// \ShiftLeft0~90_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[27]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[28]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portA[27]~input_o ),
	.datac(\my_alu.portA[28]~input_o ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~90_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~90 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~90 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N24
cycloneive_lcell_comb \Selector3~2 (
// Equation(s):
// \Selector3~2_combout  = (\Selector29~0_combout  & (((!\ShiftRight0~55_combout )))) # (!\Selector29~0_combout  & ((\ShiftRight0~55_combout  & ((\ShiftLeft0~90_combout ))) # (!\ShiftRight0~55_combout  & (\ShiftLeft0~81_combout ))))

	.dataa(\ShiftLeft0~81_combout ),
	.datab(\Selector29~0_combout ),
	.datac(\ShiftRight0~55_combout ),
	.datad(\ShiftLeft0~90_combout ),
	.cin(gnd),
	.combout(\Selector3~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~2 .lut_mask = 16'h3E0E;
defparam \Selector3~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X87_Y35_N2
cycloneive_lcell_comb \ShiftLeft0~85 (
// Equation(s):
// \ShiftLeft0~85_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[25]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[26]~input_o )))

	.dataa(\my_alu.portA[25]~input_o ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[26]~input_o ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~85_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~85 .lut_mask = 16'hB8B8;
defparam \ShiftLeft0~85 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N10
cycloneive_lcell_comb \Selector3~3 (
// Equation(s):
// \Selector3~3_combout  = (\Selector3~2_combout  & ((\ShiftLeft0~72_combout ) # ((!\Selector29~0_combout )))) # (!\Selector3~2_combout  & (((\ShiftLeft0~85_combout  & \Selector29~0_combout ))))

	.dataa(\ShiftLeft0~72_combout ),
	.datab(\Selector3~2_combout ),
	.datac(\ShiftLeft0~85_combout ),
	.datad(\Selector29~0_combout ),
	.cin(gnd),
	.combout(\Selector3~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~3 .lut_mask = 16'hB8CC;
defparam \Selector3~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N24
cycloneive_lcell_comb \Selector3~4 (
// Equation(s):
// \Selector3~4_combout  = (\Selector9~2_combout  & (!\Selector2~2_combout  & \Selector3~3_combout ))

	.dataa(gnd),
	.datab(\Selector9~2_combout ),
	.datac(\Selector2~2_combout ),
	.datad(\Selector3~3_combout ),
	.cin(gnd),
	.combout(\Selector3~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~4 .lut_mask = 16'h0C00;
defparam \Selector3~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y33_N4
cycloneive_lcell_comb \Selector3~9 (
// Equation(s):
// \Selector3~9_combout  = (\Selector3~8_combout ) # ((\Selector3~4_combout ) # ((\Selector9~4_combout  & \ShiftLeft0~48_combout )))

	.dataa(\Selector3~8_combout ),
	.datab(\Selector9~4_combout ),
	.datac(\ShiftLeft0~48_combout ),
	.datad(\Selector3~4_combout ),
	.cin(gnd),
	.combout(\Selector3~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~9 .lut_mask = 16'hFFEA;
defparam \Selector3~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y33_N6
cycloneive_lcell_comb \ShiftLeft0~91 (
// Equation(s):
// \ShiftLeft0~91_combout  = (\my_alu.portB[0]~input_o  & (\my_alu.portA[28]~input_o )) # (!\my_alu.portB[0]~input_o  & ((\my_alu.portA[29]~input_o )))

	.dataa(gnd),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\my_alu.portA[28]~input_o ),
	.datad(\my_alu.portA[29]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~91_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~91 .lut_mask = 16'hF3C0;
defparam \ShiftLeft0~91 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N18
cycloneive_lcell_comb \Selector2~3 (
// Equation(s):
// \Selector2~3_combout  = (\Selector29~0_combout  & (((!\ShiftRight0~55_combout )))) # (!\Selector29~0_combout  & ((\ShiftRight0~55_combout  & ((\ShiftLeft0~91_combout ))) # (!\ShiftRight0~55_combout  & (\ShiftLeft0~83_combout ))))

	.dataa(\ShiftLeft0~83_combout ),
	.datab(\ShiftLeft0~91_combout ),
	.datac(\Selector29~0_combout ),
	.datad(\ShiftRight0~55_combout ),
	.cin(gnd),
	.combout(\Selector2~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~3 .lut_mask = 16'h0CFA;
defparam \Selector2~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N8
cycloneive_lcell_comb \ShiftLeft0~75 (
// Equation(s):
// \ShiftLeft0~75_combout  = (\my_alu.portB[2]~input_o  & (\ShiftLeft0~62_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~74_combout )))

	.dataa(gnd),
	.datab(\ShiftLeft0~62_combout ),
	.datac(\ShiftLeft0~74_combout ),
	.datad(\my_alu.portB[2]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~75_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~75 .lut_mask = 16'hCCF0;
defparam \ShiftLeft0~75 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N4
cycloneive_lcell_comb \Selector2~4 (
// Equation(s):
// \Selector2~4_combout  = (\Selector2~3_combout  & (((\ShiftLeft0~75_combout ) # (!\Selector29~0_combout )))) # (!\Selector2~3_combout  & (\ShiftLeft0~88_combout  & (\Selector29~0_combout )))

	.dataa(\ShiftLeft0~88_combout ),
	.datab(\Selector2~3_combout ),
	.datac(\Selector29~0_combout ),
	.datad(\ShiftLeft0~75_combout ),
	.cin(gnd),
	.combout(\Selector2~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~4 .lut_mask = 16'hEC2C;
defparam \Selector2~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y37_N6
cycloneive_lcell_comb \Selector2~5 (
// Equation(s):
// \Selector2~5_combout  = (\Selector2~4_combout  & (!\Selector2~2_combout  & \Selector9~2_combout ))

	.dataa(gnd),
	.datab(\Selector2~4_combout ),
	.datac(\Selector2~2_combout ),
	.datad(\Selector9~2_combout ),
	.cin(gnd),
	.combout(\Selector2~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~5 .lut_mask = 16'h0C00;
defparam \Selector2~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N28
cycloneive_lcell_comb \Selector2~6 (
// Equation(s):
// \Selector2~6_combout  = (\Selector31~30_combout  & (((\my_alu.portA[29]~input_o ) # (\my_alu.portB[29]~input_o )))) # (!\Selector31~30_combout  & (\Selector31~25_combout  & (\my_alu.portA[29]~input_o  & \my_alu.portB[29]~input_o )))

	.dataa(\Selector31~25_combout ),
	.datab(\Selector31~30_combout ),
	.datac(\my_alu.portA[29]~input_o ),
	.datad(\my_alu.portB[29]~input_o ),
	.cin(gnd),
	.combout(\Selector2~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~6 .lut_mask = 16'hECC0;
defparam \Selector2~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N22
cycloneive_lcell_comb \Selector2~11 (
// Equation(s):
// \Selector2~11_combout  = (\Selector15~9_combout  & (!\my_alu.portB[2]~input_o  & (\ShiftRight0~30_combout  & !\my_alu.portB[3]~input_o )))

	.dataa(\Selector15~9_combout ),
	.datab(\my_alu.portB[2]~input_o ),
	.datac(\ShiftRight0~30_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector2~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~11 .lut_mask = 16'h0020;
defparam \Selector2~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N6
cycloneive_lcell_comb \Selector2~8 (
// Equation(s):
// \Selector2~8_combout  = (\my_alu.portA[29]~input_o  & (((\Selector31~31_combout  & !\my_alu.portB[29]~input_o )))) # (!\my_alu.portA[29]~input_o  & ((\my_alu.portB[29]~input_o  & ((\Selector31~31_combout ))) # (!\my_alu.portB[29]~input_o  & 
// (\Selector31~32_combout ))))

	.dataa(\Selector31~32_combout ),
	.datab(\Selector31~31_combout ),
	.datac(\my_alu.portA[29]~input_o ),
	.datad(\my_alu.portB[29]~input_o ),
	.cin(gnd),
	.combout(\Selector2~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~8 .lut_mask = 16'h0CCA;
defparam \Selector2~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N8
cycloneive_lcell_comb \Selector2~9 (
// Equation(s):
// \Selector2~9_combout  = (\Selector2~7_combout ) # ((\Selector2~6_combout ) # ((\Selector2~11_combout ) # (\Selector2~8_combout )))

	.dataa(\Selector2~7_combout ),
	.datab(\Selector2~6_combout ),
	.datac(\Selector2~11_combout ),
	.datad(\Selector2~8_combout ),
	.cin(gnd),
	.combout(\Selector2~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~9 .lut_mask = 16'hFFFE;
defparam \Selector2~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y37_N26
cycloneive_lcell_comb \Selector2~10 (
// Equation(s):
// \Selector2~10_combout  = (\Selector2~5_combout ) # ((\Selector2~9_combout ) # ((\Selector9~4_combout  & \ShiftLeft0~51_combout )))

	.dataa(\Selector2~5_combout ),
	.datab(\Selector9~4_combout ),
	.datac(\Selector2~9_combout ),
	.datad(\ShiftLeft0~51_combout ),
	.cin(gnd),
	.combout(\Selector2~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~10 .lut_mask = 16'hFEFA;
defparam \Selector2~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N6
cycloneive_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\ShiftRight0~1_combout  & (!\ShiftLeft0~11_combout  & (\Selector15~9_combout  & !\my_alu.portB[3]~input_o )))

	.dataa(\ShiftRight0~1_combout ),
	.datab(\ShiftLeft0~11_combout ),
	.datac(\Selector15~9_combout ),
	.datad(\my_alu.portB[3]~input_o ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'h0020;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N16
cycloneive_lcell_comb \Selector1~6 (
// Equation(s):
// \Selector1~6_combout  = (\my_alu.portB[2]~input_o ) # ((!\my_alu.portB[1]~input_o  & \my_alu.portB[0]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\my_alu.portB[0]~input_o ),
	.cin(gnd),
	.combout(\Selector1~6_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~6 .lut_mask = 16'hF3F0;
defparam \Selector1~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N26
cycloneive_lcell_comb \Selector1~7 (
// Equation(s):
// \Selector1~7_combout  = (\ShiftLeft0~11_combout  & ((\Selector1~6_combout ) # ((\ShiftLeft0~90_combout )))) # (!\ShiftLeft0~11_combout  & (!\Selector1~6_combout  & ((\my_alu.portA[30]~input_o ))))

	.dataa(\ShiftLeft0~11_combout ),
	.datab(\Selector1~6_combout ),
	.datac(\ShiftLeft0~90_combout ),
	.datad(\my_alu.portA[30]~input_o ),
	.cin(gnd),
	.combout(\Selector1~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~7 .lut_mask = 16'hB9A8;
defparam \Selector1~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y35_N12
cycloneive_lcell_comb \Selector1~8 (
// Equation(s):
// \Selector1~8_combout  = (\Selector1~6_combout  & ((\Selector1~7_combout  & (\ShiftLeft0~86_combout )) # (!\Selector1~7_combout  & ((\my_alu.portA[29]~input_o ))))) # (!\Selector1~6_combout  & (((\Selector1~7_combout ))))

	.dataa(\ShiftLeft0~86_combout ),
	.datab(\Selector1~6_combout ),
	.datac(\Selector1~7_combout ),
	.datad(\my_alu.portA[29]~input_o ),
	.cin(gnd),
	.combout(\Selector1~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~8 .lut_mask = 16'hBCB0;
defparam \Selector1~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y35_N30
cycloneive_lcell_comb \ShiftLeft0~76 (
// Equation(s):
// \ShiftLeft0~76_combout  = (\my_alu.portB[1]~input_o  & (\my_alu.portA[20]~input_o )) # (!\my_alu.portB[1]~input_o  & ((\my_alu.portA[22]~input_o )))

	.dataa(\my_alu.portA[20]~input_o ),
	.datab(\my_alu.portB[1]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[22]~input_o ),
	.cin(gnd),
	.combout(\ShiftLeft0~76_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~76 .lut_mask = 16'hBB88;
defparam \ShiftLeft0~76 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y35_N10
cycloneive_lcell_comb \ShiftLeft0~77 (
// Equation(s):
// \ShiftLeft0~77_combout  = (\my_alu.portB[0]~input_o  & (\ShiftLeft0~73_combout )) # (!\my_alu.portB[0]~input_o  & ((\ShiftLeft0~76_combout )))

	.dataa(\ShiftLeft0~73_combout ),
	.datab(\my_alu.portB[0]~input_o ),
	.datac(\ShiftLeft0~76_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ShiftLeft0~77_combout ),
	.cout());
// synopsys translate_off
defparam \ShiftLeft0~77 .lut_mask = 16'hB8B8;
defparam \ShiftLeft0~77 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X88_Y35_N4
cycloneive_lcell_comb \Selector1~1 (
// Equation(s):
// \Selector1~1_combout  = (\Selector23~13_combout  & ((\my_alu.portB[2]~input_o  & (\ShiftLeft0~65_combout )) # (!\my_alu.portB[2]~input_o  & ((\ShiftLeft0~77_combout )))))

	.dataa(\ShiftLeft0~65_combout ),
	.datab(\Selector23~13_combout ),
	.datac(\my_alu.portB[2]~input_o ),
	.datad(\ShiftLeft0~77_combout ),
	.cin(gnd),
	.combout(\Selector1~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~1 .lut_mask = 16'h8C80;
defparam \Selector1~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N14
cycloneive_lcell_comb \Selector1~2 (
// Equation(s):
// \Selector1~2_combout  = (\Selector31~30_combout  & ((\my_alu.portA[30]~input_o ) # ((\my_alu.portB[30]~input_o )))) # (!\Selector31~30_combout  & (\my_alu.portA[30]~input_o  & (\my_alu.portB[30]~input_o  & \Selector31~25_combout )))

	.dataa(\Selector31~30_combout ),
	.datab(\my_alu.portA[30]~input_o ),
	.datac(\my_alu.portB[30]~input_o ),
	.datad(\Selector31~25_combout ),
	.cin(gnd),
	.combout(\Selector1~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~2 .lut_mask = 16'hE8A8;
defparam \Selector1~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N28
cycloneive_lcell_comb \Add0~60 (
// Equation(s):
// \Add0~60_combout  = ((\my_alu.portA[30]~input_o  $ (\my_alu.portB[30]~input_o  $ (!\Add0~59 )))) # (GND)
// \Add0~61  = CARRY((\my_alu.portA[30]~input_o  & ((\my_alu.portB[30]~input_o ) # (!\Add0~59 ))) # (!\my_alu.portA[30]~input_o  & (\my_alu.portB[30]~input_o  & !\Add0~59 )))

	.dataa(\my_alu.portA[30]~input_o ),
	.datab(\my_alu.portB[30]~input_o ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~59 ),
	.combout(\Add0~60_combout ),
	.cout(\Add0~61 ));
// synopsys translate_off
defparam \Add0~60 .lut_mask = 16'h698E;
defparam \Add0~60 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N0
cycloneive_lcell_comb \Selector1~3 (
// Equation(s):
// \Selector1~3_combout  = (\Add1~60_combout  & ((\Selector31~26_combout ) # ((\Add0~60_combout  & \Selector31~27_combout )))) # (!\Add1~60_combout  & (\Add0~60_combout  & (\Selector31~27_combout )))

	.dataa(\Add1~60_combout ),
	.datab(\Add0~60_combout ),
	.datac(\Selector31~27_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector1~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~3 .lut_mask = 16'hEAC0;
defparam \Selector1~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y36_N4
cycloneive_lcell_comb \Selector1~5 (
// Equation(s):
// \Selector1~5_combout  = (\Selector1~4_combout ) # ((\Selector1~2_combout ) # (\Selector1~3_combout ))

	.dataa(\Selector1~4_combout ),
	.datab(gnd),
	.datac(\Selector1~2_combout ),
	.datad(\Selector1~3_combout ),
	.cin(gnd),
	.combout(\Selector1~5_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~5 .lut_mask = 16'hFFFA;
defparam \Selector1~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N16
cycloneive_lcell_comb \Selector1~9 (
// Equation(s):
// \Selector1~9_combout  = (\Selector1~1_combout ) # ((\Selector1~5_combout ) # ((\Selector15~11_combout  & \Selector1~8_combout )))

	.dataa(\Selector15~11_combout ),
	.datab(\Selector1~8_combout ),
	.datac(\Selector1~1_combout ),
	.datad(\Selector1~5_combout ),
	.cin(gnd),
	.combout(\Selector1~9_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~9 .lut_mask = 16'hFFF8;
defparam \Selector1~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N10
cycloneive_lcell_comb \Selector1~10 (
// Equation(s):
// \Selector1~10_combout  = (\Selector1~0_combout ) # ((\Selector1~9_combout ) # ((\ShiftLeft0~54_combout  & \Selector9~4_combout )))

	.dataa(\Selector1~0_combout ),
	.datab(\ShiftLeft0~54_combout ),
	.datac(\Selector9~4_combout ),
	.datad(\Selector1~9_combout ),
	.cin(gnd),
	.combout(\Selector1~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~10 .lut_mask = 16'hFFEA;
defparam \Selector1~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N0
cycloneive_lcell_comb \Selector0~11 (
// Equation(s):
// \Selector0~11_combout  = (\Selector31~30_combout ) # ((\Selector31~25_combout  & \my_alu.portB[31]~input_o ))

	.dataa(gnd),
	.datab(\Selector31~30_combout ),
	.datac(\Selector31~25_combout ),
	.datad(\my_alu.portB[31]~input_o ),
	.cin(gnd),
	.combout(\Selector0~11_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~11 .lut_mask = 16'hFCCC;
defparam \Selector0~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X91_Y34_N2
cycloneive_lcell_comb \Selector0~12 (
// Equation(s):
// \Selector0~12_combout  = (\my_alu.portA[31]~input_o  & ((\Selector0~11_combout ) # ((!\ShiftLeft0~9_combout  & \Selector15~9_combout ))))

	.dataa(\ShiftLeft0~9_combout ),
	.datab(\Selector15~9_combout ),
	.datac(\my_alu.portA[31]~input_o ),
	.datad(\Selector0~11_combout ),
	.cin(gnd),
	.combout(\Selector0~12_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~12 .lut_mask = 16'hF040;
defparam \Selector0~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N18
cycloneive_lcell_comb \Selector0~13 (
// Equation(s):
// \Selector0~13_combout  = (\Selector0~12_combout ) # ((\Selector0~6_combout  & \Selector23~13_combout ))

	.dataa(\Selector0~6_combout ),
	.datab(\Selector23~13_combout ),
	.datac(gnd),
	.datad(\Selector0~12_combout ),
	.cin(gnd),
	.combout(\Selector0~13_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~13 .lut_mask = 16'hFF88;
defparam \Selector0~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N20
cycloneive_lcell_comb \Selector0~15 (
// Equation(s):
// \Selector0~15_combout  = (\Selector0~3_combout  & (!\my_alu.aluOp[3]~input_o  & \my_alu.aluOp[2]~input_o ))

	.dataa(\Selector0~3_combout ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(gnd),
	.datad(\my_alu.aluOp[2]~input_o ),
	.cin(gnd),
	.combout(\Selector0~15_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~15 .lut_mask = 16'h2200;
defparam \Selector0~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y33_N30
cycloneive_lcell_comb \Add0~62 (
// Equation(s):
// \Add0~62_combout  = \my_alu.portA[31]~input_o  $ (\my_alu.portB[31]~input_o  $ (\Add0~61 ))

	.dataa(\my_alu.portA[31]~input_o ),
	.datab(\my_alu.portB[31]~input_o ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add0~61 ),
	.combout(\Add0~62_combout ),
	.cout());
// synopsys translate_off
defparam \Add0~62 .lut_mask = 16'h9696;
defparam \Add0~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X92_Y33_N30
cycloneive_lcell_comb \Add1~62 (
// Equation(s):
// \Add1~62_combout  = \my_alu.portB[31]~input_o  $ (\Add1~61  $ (!\my_alu.portA[31]~input_o ))

	.dataa(gnd),
	.datab(\my_alu.portB[31]~input_o ),
	.datac(gnd),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(\Add1~61 ),
	.combout(\Add1~62_combout ),
	.cout());
// synopsys translate_off
defparam \Add1~62 .lut_mask = 16'h3CC3;
defparam \Add1~62 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N2
cycloneive_lcell_comb \Selector0~7 (
// Equation(s):
// \Selector0~7_combout  = (\Selector31~27_combout  & ((\Add0~62_combout ) # ((\Add1~62_combout  & \Selector31~26_combout )))) # (!\Selector31~27_combout  & (((\Add1~62_combout  & \Selector31~26_combout ))))

	.dataa(\Selector31~27_combout ),
	.datab(\Add0~62_combout ),
	.datac(\Add1~62_combout ),
	.datad(\Selector31~26_combout ),
	.cin(gnd),
	.combout(\Selector0~7_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~7 .lut_mask = 16'hF888;
defparam \Selector0~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N0
cycloneive_lcell_comb \Selector0~10 (
// Equation(s):
// \Selector0~10_combout  = (\Selector0~15_combout ) # ((\Selector0~7_combout ) # ((\Selector0~9_combout  & \Selector15~11_combout )))

	.dataa(\Selector0~9_combout ),
	.datab(\Selector0~15_combout ),
	.datac(\Selector15~11_combout ),
	.datad(\Selector0~7_combout ),
	.cin(gnd),
	.combout(\Selector0~10_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~10 .lut_mask = 16'hFFEC;
defparam \Selector0~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N4
cycloneive_lcell_comb \Selector0~14 (
// Equation(s):
// \Selector0~14_combout  = (\Selector0~13_combout ) # ((\Selector0~10_combout ) # ((\ShiftLeft0~57_combout  & \Selector9~4_combout )))

	.dataa(\ShiftLeft0~57_combout ),
	.datab(\Selector0~13_combout ),
	.datac(\Selector9~4_combout ),
	.datad(\Selector0~10_combout ),
	.cin(gnd),
	.combout(\Selector0~14_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~14 .lut_mask = 16'hFFEC;
defparam \Selector0~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N24
cycloneive_lcell_comb \Equal10~1 (
// Equation(s):
// \Equal10~1_combout  = (!\Selector14~8_combout  & (!\Selector17~7_combout  & (!\Selector13~9_combout  & !\Selector18~8_combout )))

	.dataa(\Selector14~8_combout ),
	.datab(\Selector17~7_combout ),
	.datac(\Selector13~9_combout ),
	.datad(\Selector18~8_combout ),
	.cin(gnd),
	.combout(\Equal10~1_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~1 .lut_mask = 16'h0001;
defparam \Equal10~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N6
cycloneive_lcell_comb \Equal10~0 (
// Equation(s):
// \Equal10~0_combout  = (!\Selector21~9_combout  & (!\Selector20~9_combout  & (!\Selector19~9_combout  & !\Selector31~24_combout )))

	.dataa(\Selector21~9_combout ),
	.datab(\Selector20~9_combout ),
	.datac(\Selector19~9_combout ),
	.datad(\Selector31~24_combout ),
	.cin(gnd),
	.combout(\Equal10~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~0 .lut_mask = 16'h0001;
defparam \Equal10~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N10
cycloneive_lcell_comb \Equal10~2 (
// Equation(s):
// \Equal10~2_combout  = (\Equal10~1_combout  & \Equal10~0_combout )

	.dataa(gnd),
	.datab(\Equal10~1_combout ),
	.datac(gnd),
	.datad(\Equal10~0_combout ),
	.cin(gnd),
	.combout(\Equal10~2_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~2 .lut_mask = 16'hCC00;
defparam \Equal10~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X89_Y37_N20
cycloneive_lcell_comb \Equal10~5 (
// Equation(s):
// \Equal10~5_combout  = (!\Selector29~11_combout  & (!\Selector8~9_combout  & !\Selector30~6_combout ))

	.dataa(gnd),
	.datab(\Selector29~11_combout ),
	.datac(\Selector8~9_combout ),
	.datad(\Selector30~6_combout ),
	.cin(gnd),
	.combout(\Equal10~5_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~5 .lut_mask = 16'h0003;
defparam \Equal10~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X90_Y35_N4
cycloneive_lcell_comb \Equal10~6 (
// Equation(s):
// \Equal10~6_combout  = (!\Selector15~13_combout  & (!\Selector26~6_combout  & (!\Selector27~6_combout  & !\Selector15~4_combout )))

	.dataa(\Selector15~13_combout ),
	.datab(\Selector26~6_combout ),
	.datac(\Selector27~6_combout ),
	.datad(\Selector15~4_combout ),
	.cin(gnd),
	.combout(\Equal10~6_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~6 .lut_mask = 16'h0001;
defparam \Equal10~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N16
cycloneive_lcell_comb \Equal10~7 (
// Equation(s):
// \Equal10~7_combout  = (!\Selector2~10_combout  & (\Equal10~5_combout  & (!\Selector16~7_combout  & \Equal10~6_combout )))

	.dataa(\Selector2~10_combout ),
	.datab(\Equal10~5_combout ),
	.datac(\Selector16~7_combout ),
	.datad(\Equal10~6_combout ),
	.cin(gnd),
	.combout(\Equal10~7_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~7 .lut_mask = 16'h0400;
defparam \Equal10~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N20
cycloneive_lcell_comb \Equal10~10 (
// Equation(s):
// \Equal10~10_combout  = (\Equal10~9_combout  & (\Equal10~7_combout  & (!\Selector5~6_combout  & !\Selector4~6_combout )))

	.dataa(\Equal10~9_combout ),
	.datab(\Equal10~7_combout ),
	.datac(\Selector5~6_combout ),
	.datad(\Selector4~6_combout ),
	.cin(gnd),
	.combout(\Equal10~10_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~10 .lut_mask = 16'h0008;
defparam \Equal10~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N14
cycloneive_lcell_comb \Equal10~4 (
// Equation(s):
// \Equal10~4_combout  = (!\Selector9~12_combout  & (!\Selector23~12_combout  & (!\Selector0~14_combout  & !\Selector22~9_combout )))

	.dataa(\Selector9~12_combout ),
	.datab(\Selector23~12_combout ),
	.datac(\Selector0~14_combout ),
	.datad(\Selector22~9_combout ),
	.cin(gnd),
	.combout(\Equal10~4_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~4 .lut_mask = 16'h0001;
defparam \Equal10~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N12
cycloneive_lcell_comb \Equal10~3 (
// Equation(s):
// \Equal10~3_combout  = (!\Selector1~10_combout  & (!\Selector12~7_combout  & (!\Selector11~10_combout  & !\Selector10~9_combout )))

	.dataa(\Selector1~10_combout ),
	.datab(\Selector12~7_combout ),
	.datac(\Selector11~10_combout ),
	.datad(\Selector10~9_combout ),
	.cin(gnd),
	.combout(\Equal10~3_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~3 .lut_mask = 16'h0001;
defparam \Equal10~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X92_Y37_N22
cycloneive_lcell_comb \Equal10~11 (
// Equation(s):
// \Equal10~11_combout  = (\Equal10~2_combout  & (\Equal10~10_combout  & (\Equal10~4_combout  & \Equal10~3_combout )))

	.dataa(\Equal10~2_combout ),
	.datab(\Equal10~10_combout ),
	.datac(\Equal10~4_combout ),
	.datad(\Equal10~3_combout ),
	.cin(gnd),
	.combout(\Equal10~11_combout ),
	.cout());
// synopsys translate_off
defparam \Equal10~11 .lut_mask = 16'h8000;
defparam \Equal10~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N22
cycloneive_lcell_comb \overflow~0 (
// Equation(s):
// \overflow~0_combout  = (!\my_alu.aluOp[2]~input_o  & (!\my_alu.aluOp[3]~input_o  & (\my_alu.portB[31]~input_o  $ (!\my_alu.portA[31]~input_o ))))

	.dataa(\my_alu.aluOp[2]~input_o ),
	.datab(\my_alu.aluOp[3]~input_o ),
	.datac(\my_alu.portB[31]~input_o ),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(gnd),
	.combout(\overflow~0_combout ),
	.cout());
// synopsys translate_off
defparam \overflow~0 .lut_mask = 16'h1001;
defparam \overflow~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X94_Y35_N16
cycloneive_lcell_comb \overflow~1 (
// Equation(s):
// \overflow~1_combout  = (\overflow~0_combout  & (\my_alu.aluOp[1]~input_o  & (\Selector0~14_combout  $ (\my_alu.portA[31]~input_o ))))

	.dataa(\overflow~0_combout ),
	.datab(\Selector0~14_combout ),
	.datac(\my_alu.aluOp[1]~input_o ),
	.datad(\my_alu.portA[31]~input_o ),
	.cin(gnd),
	.combout(\overflow~1_combout ),
	.cout());
// synopsys translate_off
defparam \overflow~1 .lut_mask = 16'h2080;
defparam \overflow~1 .sum_lutc_input = "datac";
// synopsys translate_on

endmodule
