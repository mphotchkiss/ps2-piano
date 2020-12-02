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
// CREATED		"Wed Dec 02 12:30:55 2020"

module FinalProject(
	clk_50MHz,
	clk_PS2,
	Data,
	reset_n,
	frequency
);


input wire	clk_50MHz;
input wire	clk_PS2;
input wire	Data;
input wire	reset_n;
output wire	frequency;

wire	[17:0] count;
wire	data_exists;
reg	[7:0] data_transfered;
wire	[7:0] dataout;
wire	[17:0] decode_data;
wire	error;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





shiftregister	b2v_inst(
	.Data(Data),
	.clear_n(reset_n),
	.clk(clk_PS2),
	
	
	
	.dataout(dataout));


turn_off	b2v_inst1(
	.clock_50MHz(clk_50MHz),
	.reset_n(SYNTHESIZED_WIRE_0),
	.less_than(data_exists));

assign	frequency = SYNTHESIZED_WIRE_1 & data_exists;

assign	error =  ~SYNTHESIZED_WIRE_2;


PS2_data_counter	b2v_inst2(
	.clk_50MHz(clk_50MHz),
	.reset_n(reset_n),
	.decode_data(decode_data),
	
	.count(count));


oscillator	b2v_inst25(
	.clk_50MHz(clk_50MHz),
	.count(count),
	.decode_data(decode_data),
	.high_low(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_0 = clk_PS2 & reset_n;


datadecoder	b2v_inst6(
	.clk(clk_50MHz),
	.data(data_transfered),
	.out(decode_data));


always@(posedge clk_50MHz)
begin
if (error)
	begin
	data_transfered[7:0] <= dataout[7:0];
	end
end


error_check	b2v_inst9(
	.clk_fast(clk_50MHz),
	.clk(clk_PS2),
	.reset_n(reset_n),
	.error(SYNTHESIZED_WIRE_2));


endmodule
