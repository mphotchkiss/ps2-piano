//////////////////////////////////////////////////////////////////////////////
// Company: 		Oregon State University
// Engineer Group:	Group 7
//
// Create Date: 	20 November 2020
// Design Name:		PS/2 Keyboard Piano
// Description:		Checks if inputted value is less than other inputted
//			value
//////////////////////////////////////////////////////////////////////////////
module compL #(parameter N = 18) //N is the number of bits of the two values to be compared
				(input logic [N-1:0] val, input logic [N-1:0] count, output logic y);
	always_comb
		y = (count<val); //assign y to the value of count is less than val i.e. compare the inputs
endmodule
