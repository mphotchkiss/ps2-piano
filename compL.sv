module compL #(parameter N = 18) //N is the number of bits of the two values to be compared
				(input logic [N-1:0] val, input logic [N-1:0] count, output logic y);
	always_comb
		y = (count<val); //assign y to the value of count is less than val i.e. compare the inputs
endmodule
