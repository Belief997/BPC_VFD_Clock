
module top(
	input clk, 
	output out, out_n,
	output out_100k
);

wire rst_n = 'b1;

// 100 M in -> 100 k out , 10 ns -> 10 ms
parameter T_10MS = 32'd1_250_000; //150M 10ms 
reg [31:0] cnt_clk;
wire clk_100k;
initial begin
	cnt_clk = 'b0;
end
always@(posedge clk) begin
	if(cnt_clk < T_10MS - 1) begin
		cnt_clk <= cnt_clk + 'b1;
	end
	else begin
		cnt_clk <= 'b0;
	end
end
assign clk_100k = (cnt_clk == (T_10MS -1));
assign out_100k = clk_100k;

bpc_gen the_bpc_gen(
	.clk(clk_100k), .rst_n(rst_n),
	.bpc(out), .bpc_n(out_n)
);

//bpc_gen the_bpc_gen(
//	.clk(clk), .rst_n(rst_n),
//	.bpc(out)
//);
//


endmodule

