module sync(input logic clk, input logic d, output logic q);
	logic n1; 
	always_ff@(posedge clk)
		begin //on the rising edge of clock, pass the value of d to q
			n1 <= d; 
			q <= n1;
		end
endmodule
