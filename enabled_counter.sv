module enabled_counter #(parameter N = 10)(input logic clk, en, reset_n, output logic [N-1:0] count);

	always_ff@(posedge clk, negedge reset_n)
			if (reset_n == 0) count <= 0;
			else
				if (en == 1)
					count <= count+1;
endmodule

