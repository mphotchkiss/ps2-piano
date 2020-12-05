module divider #(parameter N = 18, val = 2) //N is the number of bits inputted and outputted, val is the value to divide by
					(input logic [N-1:0] in, output logic [N-1:0] out);

always_comb
	out = in/val; //assign the output to the input divided by val
	
endmodule
