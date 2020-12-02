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
// CREATED		"Wed Dec 02 12:12:22 2020"

module PS2_data_counter(
	clk_50MHz,
	reset_n,
	decode_data,
	reset_count,
	count
);


input wire	clk_50MHz;
input wire	reset_n;
input wire	[17:0] decode_data;
output wire	reset_count;
output wire	[17:0] count;

wire	[17:0] count_ALTERA_SYNTHESIZED;
wire	count_less_than;
wire	counter_reset_n;
wire	reset_count_ALTERA_SYNTHESIZED;





counter	b2v_inst2(
	.clk(clk_50MHz),
	.reset(counter_reset_n),
	.q(count_ALTERA_SYNTHESIZED));
	defparam	b2v_inst2.N = 18;


sync	b2v_inst4(
	.clk(clk_50MHz),
	.d(count_less_than),
	.q(reset_count_ALTERA_SYNTHESIZED));

assign	counter_reset_n = reset_n & reset_count_ALTERA_SYNTHESIZED;


compL	b2v_inst7(
	.count(count_ALTERA_SYNTHESIZED),
	.val(decode_data),
	.y(count_less_than));
	defparam	b2v_inst7.N = 18;

assign	reset_count = reset_count_ALTERA_SYNTHESIZED;
assign	count = count_ALTERA_SYNTHESIZED;

endmodule
