// Esse modulo produz saidas que vao para o modulo de display; elas passam para um multiplexador instanciado em display.v para produzir
// o numero no 7 segmentos referente a acao em que o brinquedo se encontra
module display_contagem_acao(seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, b3, b2, b1, b0);
  input b3, b2, b1, b0;
  output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;

  wire Nb_3, Nb_2, Nb_1, Nb_0;
  not Not_b3(Nb_3, b3);
  not Not_b2(Nb_2, b2);
  not Not_b1(Nb_1, b1);
  not Not_b0(Nb_0, b0);

  wire T_seg_a0, T_seg_a1, T_seg_a3;
  and And_a0(T_seg_a0, b2, Nb_0);
  and And_a1(T_seg_a1, Nb_2, Nb_1, b0);
  or Or_a0(seg_a, T_seg_a1, T_seg_a0);
  
  and And_b0(seg_b, b2, b0);

  and And_c0(seg_c, b1, Nb_0);
  
  or Or_d0(seg_d, T_seg_a1, T_seg_a0);

  or Or_e0(seg_e, b2, b0);

  wire T_seg_f0;
  and And_f0(T_seg_f0, Nb_2, b0);
  or Or_f0(seg_f, T_seg_f0, b1);

  and And_g0(seg_g, Nb_2, Nb_1);
	
endmodule