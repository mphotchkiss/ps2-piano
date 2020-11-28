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
// CREATED		"Fri Nov 27 18:37:39 2020"

module error_check(
	clk,
	reset_n,
	error
);


input wire	clk;
input wire	reset_n;
output wire	error;

wire	clk_n;
wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	error = SYNTHESIZED_WIRE_3;




counter	b2v_inst(
	.clk(clk_n),
	.reset(SYNTHESIZED_WIRE_0),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst.N = 4;


comparator	b2v_inst2(
	.a(SYNTHESIZED_WIRE_1),
	.lt(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst2.M = 11;
	defparam	b2v_inst2.N = 4;


sync	b2v_inst3(
	.clk(clk_n),
	.d(SYNTHESIZED_WIRE_2),
	.q(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_0 = reset_n & SYNTHESIZED_WIRE_3;

assign	clk_n =  ~clk;


endmodule
