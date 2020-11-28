module comparator #(parameter N = 8, M = 60)
					(input logic [(N-1):0] a, output logic lt);
	assign lt = (a < M);
endmodule
