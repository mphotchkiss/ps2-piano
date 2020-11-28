module compL #(parameter N = 18)(input logic [N-1:0] val, input logic [N-1:0] count, output logic y);
	always_comb
		y = (count<val);
endmodule
