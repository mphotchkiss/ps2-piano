//////////////////////////////////////////////////////////////////////////////
// Company: 		Oregon State University
// Engineer Group:	Group 7
//
// Create Date: 	20 November 2020
// Design Name:		PS/2 Keyboard Piano
// Description:		Divide inputted value by internal value val
//////////////////////////////////////////////////////////////////////////////
module divider #(parameter N = 18, val = 2) //N is the number of bits inputted and outputted, val is the value to divide by
					(input logic [N-1:0] in, output logic [N-1:0] out);

always_comb
	out = in/val; //assign the output to the input divided by val
	
endmodule
