module counter (clk,Q,rst);

input clk,rst;
output [3:0] Q;

reg [3:0] Q;

wire [3:0] inc_one,inc_two,inc_val,op;
wire eq,eq3,eq5,eq7,eq9;

always @(posedge clk or posedge rst)
begin
	if (rst) Q<=0;
	else Q <= op;
end

assign inc_one=Q+4'd1;
assign inc_two=Q+4'd2;

assign eq3 = (Q==4'd3);
assign eq5 = (Q==4'd5);
assign eq7 = (Q==4'd7);

or G1 [2:0] (eq,eq3,eq5,eq7);

assign inc_val = eq?inc_two:inc_one;

assign eq9 = (Q==4'd9);
assign op = eq9?4'd0:inc_val;

endmodule
