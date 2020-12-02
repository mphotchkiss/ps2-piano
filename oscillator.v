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
// CREATED		"Wed Dec 02 12:12:49 2020"

module oscillator(
	clk_50MHz,
	count,
	decode_data,
	high_low
);


input wire	clk_50MHz;
input wire	[17:0] count;
input wire	[17:0] decode_data;
output wire	high_low;

wire	count_less_than_half;
wire	[17:0] SYNTHESIZED_WIRE_0;





sync	b2v_inst13(
	.clk(clk_50MHz),
	.d(count_less_than_half),
	.q(high_low));


compL	b2v_inst5(
	.count(count),
	.val(SYNTHESIZED_WIRE_0),
	.y(count_less_than_half));
	defparam	b2v_inst5.N = 18;


divider	b2v_inst7(
	.in(decode_data),
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst7.N = 18;
	defparam	b2v_inst7.val = 2;


endmodule
