//////////////////////////////////////////////////////////////////////////////
// Company: 		Oregon State University
// Engineer Group:	Group 7
//
// Create Date: 	20 November 2020
// Design Name:		PS/2 Keyboard Piano
// Description:		Return frequency ratio of specified key
//////////////////////////////////////////////////////////////////////////////
module datadecoder(input logic [7:0] data, input logic clk, output logic [17:0] out); //accept 8 bits of make code data

	always_ff @(posedge clk)
		case(data)
			8'b00011100: out <= 227273; //'a' key A note
			8'b00011101: out <= 214592; //'w' key B sharp note
			8'b00011011: out <= 202429; //'s' key B note
			8'b00100011: out <= 190840; //'d' key C note
			8'b00100100: out <= 180505; //'e' key D sharp note
			8'b00101011: out <= 170068; //'f' key D note
			8'b00101101: out <= 160722; //'r' key E sharp note
			8'b00101100: out <= 151515; //'t' key E note
			default: out <= 0; //non-identified key was pressed, thus the ratio is 0
		endcase
endmodule
