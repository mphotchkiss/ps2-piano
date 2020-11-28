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
// CREATED		"Fri Nov 27 17:39:28 2020"

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
reg	data0;
reg	data1;
reg	data10;
reg	data2;
reg	data3;
reg	data4;
reg	data5;
reg	data6;
reg	data7;
reg	data8;
reg	data9;
wire	[10:0] dataout;
wire	[17:0] decode_data;
wire	error;
wire	reset_frequency;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;

wire	[7:0] GDFX_TEMP_SIGNAL_0;


assign	GDFX_TEMP_SIGNAL_0 = {data8,data7,data6,data5,data4,data3,data2,data1};


shiftregister	b2v_inst(
	.Data(Data),
	.clear_n(reset_n),
	.clk(clk_PS2),
	.dataout(dataout));

assign	error =  ~SYNTHESIZED_WIRE_0;


counter	b2v_inst2(
	.clk(clk_50MHz),
	.reset(SYNTHESIZED_WIRE_1),
	.q(count));
	defparam	b2v_inst2.N = 18;


sync	b2v_inst4(
	.clk(clk_50MHz),
	.d(SYNTHESIZED_WIRE_2),
	.q(reset_frequency));

assign	SYNTHESIZED_WIRE_1 = reset_n & reset_frequency;


datadecoder	b2v_inst6(
	.clk(clk_50MHz),
	.data(GDFX_TEMP_SIGNAL_0),
	.out(decode_data));


compL	b2v_inst7(
	.count(count),
	.val(decode_data),
	.y(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst7.N = 18;


always@(posedge clk_50MHz)
begin
if (error)
	begin
	data8 <= dataout[10];
	data7 <= dataout[9];
	data6 <= dataout[8];
	data5 <= dataout[7];
	data4 <= dataout[6];
	data3 <= dataout[5];
	data2 <= dataout[4];
	data1 <= dataout[3];
	end
end


error_check	b2v_inst9(
	.clk(clk_PS2),
	.reset_n(reset_n),
	.error(SYNTHESIZED_WIRE_0));

assign	frequency = reset_frequency;

endmodule
