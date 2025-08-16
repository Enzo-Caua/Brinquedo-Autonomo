// ESSE MODULO E RESPONSAVEL POR ALTERAR O TEMPO ENTRE CADA ACAO, ISTO E, A VELOCIDADE DA MUDANCA ENTRE CADA ACAO
module botao_velocidade(reset_contagem_botao, chave_0, chave_1, botao, clk_botao);
	input botao, clk_botao;
	output chave_0, chave_1, reset_contagem_botao;
	
	wire [3:0] q;
	wire sinal;
	
	flip_flop_d(.q(q[0]),.d(!botao),.reset(1'b0),.clk(clk_botao));
	flip_flop_d(.q(q[1]),.d(q[0]),.reset(1'b0),.clk(clk_botao));
	
	and And0(sinal, q[0], !q[1]);
	// ESSENCIALMENTE ESTE AQUI E O DEBOUNCE PARA MELHOR TRATAR A INTERFERENCIA NO BOTAO QUANDO E ACIONADO
	
	flip_flop_d(.q(q[2]),.d(!chave_0),.reset(1'b0),.clk(sinal));
	flip_flop_d(.q(q[3]),.d(!chave_1),.reset(1'b0),.clk(!q[2]));
	assign reset_contagem_botao = sinal;
	assign chave_0 = q[2];
	assign chave_1 = q[3];
	
endmodule
	