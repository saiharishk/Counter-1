module tb();

reg clk,rst;
wire [3:0] Q;

counter COUT (clk,Q,rst);

initial
	begin
		rst=1;
		#2;
		rst=0;
	end
initial
	begin
		repeat (15)
		begin
			clk=1;
			#5;
			clk=0;
			#5;
		end
	end
endmodule
