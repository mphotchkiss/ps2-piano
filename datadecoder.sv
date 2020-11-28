module datadecoder(input logic [7:0] data, input logic clk, output logic [17:0] out);

	always_ff @(posedge clk)
		case(data)
			00011100: out <= 227273; //'a' key A note
			00011101: out <= 214592; //'w' key B sharp note
			00011011: out <= 202429; //'s' key B note
			00100011: out <= 190840; //'d' key C note
			00100100: out <= 180505; //'e' key D sharp note
			00101011: out <= 170068; //'f' key D note
			00101101: out <= 160722; //'r' key E sharp note
			00101100: out <= 151515; //'t' key E note
			default: out <= 0;
		endcase
endmodule
