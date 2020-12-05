//////////////////////////////////////////////////////////////////////////////
// Company: 		Oregon State University
// Engineer Group:	Group 7
//
// Create Date: 	20 November 2020
// Design Name:		PS/2 Keyboard Piano
// Description:		Checks if inputted value is less than internal value M
//////////////////////////////////////////////////////////////////////////////
module comparator #(parameter N = 8, M = 60) //N is the number of bits recieved as input, and M is the comparison value
					(input logic [(N-1):0] a, output logic lt);
	assign lt = (a < M); //assing lt, short for less than, the value of a is less than M
endmodule
