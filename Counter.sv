module counter #(parameter N = 8) //parameter N specifies the output bits
				(input logic clk, input logic reset, output logic [(N-1):0] q);

		always_ff@(posedge clk, negedge reset)
			if (reset == 0) q <= 0; //if the active reset, reset_n, is low, reset the count to 0
			else q <= q+1; //otherwise, increment by 1
endmodule
