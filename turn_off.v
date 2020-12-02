// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Wed Dec 02 12:30:26 2020"

module turn_off(
	clock_50MHz,
	reset_n,
	less_than
);


input wire	clock_50MHz;
input wire	reset_n;
output wire	less_than;

wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;

assign	less_than = SYNTHESIZED_WIRE_0;




enabled_counter	b2v_inst(
	.clk(clock_50MHz),
	.en(SYNTHESIZED_WIRE_0),
	.reset_n(reset_n),
	.count(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst.N = 32;


comparator	b2v_inst3(
	.a(SYNTHESIZED_WIRE_1),
	.lt(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst3.M = 1000000;
	defparam	b2v_inst3.N = 32;


endmodule
