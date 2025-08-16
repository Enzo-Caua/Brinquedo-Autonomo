// Esse modulo produz saidas que vao para o modulo de display; elas passam para um multiplexador instanciado em display.v para produzir
// o numero no 7 segmentos referente a velocidade em que o brinquedo se encontra
module display_velocidade(seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, chave_0, chave_1);

	input chave_0, chave_1;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	
	wire Nchave_0, Nchave_1;
	not Not_chave_0(Nchave_0, chave_0);
	not Not_chave_1(Nchave_1, chave_1);
	
	and And_a(seg_a, chave_1, Nchave_0);
  	and And_b(seg_b, 1'b0);
  	and And_c(seg_c, Nchave_1, chave_0);
	and And_d(seg_d, chave_1, Nchave_0);
	and And_e(seg_e, chave_1, Nchave_0);
	and And_f(seg_f, Nchave_1, chave_0);
	and And_g(seg_g, Nchave_1, Nchave_0);
endmodule