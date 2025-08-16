module principal(d0, d1, d2, d3, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, RGB0, RGB1, clk_input, botao_velocidade, power, reset);
	 input botao_velocidade, power, clk_input, reset;
	 output d0, d1, d2, d3, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, RGB0, RGB1;
	 
	 wire b3, b2, b1, b0;
	 wire reset_mux;
	 wire reset_acao;
	 wire a3, a2, a1, a0;
	 wire clk;
	 wire clk_aux;
	 wire chaveamento_0, chaveamento_1;
	 wire reset_contagem;
	 wire reset_contagem_acao;
	 wire clk_contador;
	 wire controle_reset;
	 wire chave_0, chave_1;
	 wire reset_contagem_botao;
	 wire clk_botao;
	 
	 divisor_frequencia(chaveamento_1, clk, clk_aux, clk_botao);
	 botao_velocidade(.reset_contagem_botao(reset_contagem_botao),.chave_0(chave_0),.chave_1(chave_1),.botao(botao_velocidade),.clk_botao(clk_botao));
	 
	 or Or0(chaveamento_0, chave_1, chave_0);
	 or Or1(reset_contagem, reset_mux, controle_reset, !power, reset_contagem_botao);
	 or Or2(reset_contagem_acao, reset_acao, controle_reset, !power, reset_contagem_botao);
	 
	 and And0(chaveamento_1, clk_input, power);
	 and And1(clk_contador, clk, chaveamento_0);
	 and And2(controle_reset, power, !reset);
	 
	 nand Nand0(d0, power, !clk_aux);
	 nand Nand1(d3, power, clk_aux);
	 
	 assign d1 = 1'b1;
	 assign d2 = 1'b1;
	 assign RGB0 = power;
	 assign RGB1 = controle_reset;
	 
    cadeamento contador (
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0),
        .reset(reset_contagem),
        .clk(clk_contador)
    );
	 
	 cadeamento cadeamento_contagem_acao (
        .b3(a3),
        .b2(a2),
        .b1(a1),
        .b0(a0),
        .reset(reset_contagem_acao),
        .clk(reset_mux)
    );
	 
	 contar_acao contador_da_acao (
		  .reset(reset_acao),
		  .a2(a2),
		  .a1(a1)
	 );
	 
    mux multiplexador_da_acao (
        .reset_mux(reset_mux),
        .chave_0(chave_0),
        .chave_1(chave_1),
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0)
    );
	 
	 display display_mostrador (
		 .seg_a(seg_a), 
		 .seg_b(seg_b), 
		 .seg_c(seg_c), 
		 .seg_d(seg_d), 
		 .seg_e(seg_e), 
		 .seg_f(seg_f), 
		 .seg_g(seg_g), 
		 .b3(a3), 
		 .b2(a2), 
		 .b1(a1), 
		 .b0(a0),
		 .chave_0(chave_0),
		 .chave_1(chave_1),
		 .clk_aux(clk_aux)
	);

endmodule