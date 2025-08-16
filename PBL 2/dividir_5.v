// Devido ao fato que o clock da placa e 50 Mhz, e necessario fazer uma divisao de multiplos de 5 e 2
// Nesse caso, aplica-se um contador assincrono que conte ate 5, a saida sera enviada para o proximo modulo
module dividir_5(clk, clk_out);
	input clk;
	output clk_out;
	wire reset;
	wire [2:0] q;
	
	flip_flop_d b0(.q(q[0]),.d(~q[0]),.reset(reset),.clk(clk));
	flip_flop_d b1(.q(q[1]),.d(~q[1]),.reset(reset),.clk(~q[0]));
	flip_flop_d b2(.q(q[2]),.d(~q[2]),.reset(reset),.clk(~q[1]));

	and And0(reset, q[0], q[2]);
	assign clk_out = q[2];
endmodule