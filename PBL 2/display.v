// ESTE MODULO INSTANCIA OS MODULOS DE MULTIPLEXADORES DOS 7 SEGMENTOS PARA FAZER COM O TEMPO CONTADO E A VELOCIDADE SEJAM MOSTRADOS
module display(seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, b3, b2, b1, b0, chave_0, chave_1, clk_aux);
	input b3, b2, b1, b0, clk_aux, chave_0, chave_1;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	
	wire Tseg_a, Tseg_b, Tseg_c, Tseg_d, Tseg_e, Tseg_f, Tseg_g;
	wire Vseg_a, Vseg_b, Vseg_c, Vseg_d, Vseg_e, Vseg_f, Vseg_g;
	display_contagem_acao contagem_acao_ins(Tseg_a, Tseg_b, Tseg_c, Tseg_d, Tseg_e, Tseg_f, Tseg_g, b3, b2, b1, b0);
	display_velocidade(Vseg_a, Vseg_b, Vseg_c, Vseg_d, Vseg_e, Vseg_f, Vseg_g, chave_0, chave_1);
	
	mux_display(seg_a, Tseg_a, Vseg_a, clk_aux);
	mux_display(seg_b, Tseg_b, Vseg_b, clk_aux);
	mux_display(seg_c, Tseg_c, Vseg_c, clk_aux);
	mux_display(seg_d, Tseg_d, Vseg_d, clk_aux);
	mux_display(seg_e, Tseg_e, Vseg_e, clk_aux);
	mux_display(seg_f, Tseg_f, Vseg_f, clk_aux);
	mux_display(seg_g, Tseg_g, Vseg_g, clk_aux);
endmodule
