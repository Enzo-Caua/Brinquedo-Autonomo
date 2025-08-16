module principal(d0, d1, d2, d3, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, clk_input, chave_0, chave_1, reset);
	 input chave_0, chave_1, clk_input, reset;
	 output d0, d1, d2, d3, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	 
	 assign d1 = 1'b1;
	 assign d2 = 1'b1;
	 
	 wire b3, b2, b1, b0;
	 wire sinal;
	 wire sinal_acao;
	 wire a3, a2, a1, a0;
	 wire clk;
	 wire clk_aux;
	 wire chaveamento_0, chaveamento_1;
	 
	 or Or0(chaveamento_0, chave_1, chave_0);
	 and And0(chaveamento_1, clk_input, chaveamento_0);
	 
	 frequency_divider divisor(chaveamento_1, clk, reset, clk_aux);
	 
	 assign d0 = clk_aux;
	 assign d3 = !clk_aux;
	 
    cadeamento cadeamento_inst (
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0),
        .reset(sinal),
        .clk(clk)
    );
	 
	 cadeamento cadeamento_acao (
        .b3(a3),
        .b2(a2),
        .b1(a1),
        .b0(a0),
        .reset(sinal_acao),
        .clk(sinal)
    );
	 
	 contar_acao contar_acao_inst (
		  .reset(sinal_acao),
		  .a2(a2),
		  .a1(a1)
	 );
	 
    mux mux_inst (
        .reset_mux(sinal),
        .chave_0(chave_0),
        .chave_1(chave_1),
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0)
    );
	 
	 display display_ins (
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