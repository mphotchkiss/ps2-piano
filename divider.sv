module divider #(parameter N = 18, val = 2)(input logic [N-1:0] in, output logic [N-1:0] out);

always_comb
	out = in/val;
	
endmodule
