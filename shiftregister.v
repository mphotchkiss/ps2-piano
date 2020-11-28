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
// CREATED		"Fri Nov 27 17:15:31 2020"

module shiftregister(
	Data,
	clk,
	dataout
);


input wire	Data;
input wire	clk;
output wire	[10:0] dataout;

reg	[10:0] dataout_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_12;





always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[7] <= dataout_ALTERA_SYNTHESIZED[8];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[6] <= dataout_ALTERA_SYNTHESIZED[7];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[10] <= Data;
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[5] <= dataout_ALTERA_SYNTHESIZED[6];
	end
end

assign	SYNTHESIZED_WIRE_12 =  ~clk;



always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[4] <= dataout_ALTERA_SYNTHESIZED[5];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[3] <= dataout_ALTERA_SYNTHESIZED[4];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[2] <= dataout_ALTERA_SYNTHESIZED[3];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[1] <= dataout_ALTERA_SYNTHESIZED[2];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[0] <= dataout_ALTERA_SYNTHESIZED[1];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[8] <= dataout_ALTERA_SYNTHESIZED[9];
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	dataout_ALTERA_SYNTHESIZED[9] <= dataout_ALTERA_SYNTHESIZED[10];
	end
end

assign	dataout = dataout_ALTERA_SYNTHESIZED;

endmodule
