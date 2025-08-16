module frequency_divider (clock, clock_out, reset, clock_aux);
	input clock, reset;
	output clock_out, clock_aux;
	wire [24:0] Q;
	
	t_flip_flop div1 (.T(1'b1),.clock(clock),.Q(Q[0]),.reset(reset));
	t_flip_flop div2 (.T(1'b1),.clock(~Q[0]),.Q(Q[1]),.reset(reset));
	t_flip_flop div3 (.T(1'b1),.clock(~Q[1]),.Q(Q[2]),.reset(reset));
	t_flip_flop div4 (.T(1'b1),.clock(~Q[2]),.Q(Q[3]),.reset(reset));
	t_flip_flop div5 (.T(1'b1),.clock(~Q[3]),.Q(Q[4]),.reset(reset));
	t_flip_flop div6 (.T(1'b1),.clock(~Q[4]),.Q(Q[5]),.reset(reset));
	t_flip_flop div7 (.T(1'b1),.clock(~Q[5]),.Q(Q[6]),.reset(reset));
	t_flip_flop div8 (.T(1'b1),.clock(~Q[6]),.Q(Q[7]),.reset(reset));
	t_flip_flop div9 (.T(1'b1),.clock(~Q[7]),.Q(Q[8]),.reset(reset));
	t_flip_flop div10 (.T(1'b1),.clock(~Q[8]),.Q(Q[9]),.reset(reset));
	t_flip_flop div11 (.T(1'b1),.clock(~Q[9]),.Q(Q[10]),.reset(reset));
	t_flip_flop div12 (.T(1'b1),.clock(~Q[10]),.Q(Q[11]),.reset(reset));
	t_flip_flop div13 (.T(1'b1),.clock(~Q[11]),.Q(Q[12]),.reset(reset));
	t_flip_flop div14 (.T(1'b1),.clock(~Q[12]),.Q(Q[13]),.reset(reset));
	t_flip_flop div15 (.T(1'b1),.clock(~Q[13]),.Q(Q[14]),.reset(reset));
	t_flip_flop div16 (.T(1'b1),.clock(~Q[14]),.Q(Q[15]),.reset(reset));
	t_flip_flop div17 (.T(1'b1),.clock(~Q[15]),.Q(Q[16]),.reset(reset));
	t_flip_flop div18 (.T(1'b1),.clock(~Q[16]),.Q(Q[17]),.reset(reset));
	t_flip_flop div19 (.T(1'b1),.clock(~Q[17]),.Q(Q[18]),.reset(reset));
	t_flip_flop div20 (.T(1'b1),.clock(~Q[18]),.Q(Q[19]),.reset(reset));
	t_flip_flop div21 (.T(1'b1),.clock(~Q[19]),.Q(Q[20]),.reset(reset));
	t_flip_flop div22 (.T(1'b1),.clock(~Q[20]),.Q(Q[21]),.reset(reset));
	t_flip_flop div23 (.T(1'b1),.clock(~Q[21]),.Q(Q[22]),.reset(reset));
	t_flip_flop div24 (.T(1'b1),.clock(~Q[22]),.Q(Q[23]),.reset(reset));
	t_flip_flop div25 (.T(1'b1),.clock(~Q[23]),.Q(Q[24]),.reset(reset));
	t_flip_flop div26 (.T(1'b1),.clock(~Q[24]),.Q(clock_out),.reset(reset));
	
	assign clock_aux = Q[20];

endmodule