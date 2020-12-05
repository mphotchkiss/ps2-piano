module comparator #(parameter N = 8, M = 60) //N is the number of bits recieved as input, and M is the comparison value
					(input logic [(N-1):0] a, output logic lt);
	assign lt = (a < M); //assing lt, short for less than, the value of a is less than M
endmodule
