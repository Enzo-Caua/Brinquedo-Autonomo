// ESTE MODULO E RESPONSAVEL POR FAZER A CONTAGEM DE 4 SEGUNDOS, PRODUZINDO UM VALOR LOGICO ALTO DE SAIDA
module contar_4(reset_4, chave_0, chave_1, b2);
	input chave_0, chave_1, b2;
	output reset_4;
	
	wire T_chave_0;
	not Not_chave_0(T_chave_0, chave_0);
	
	and And_contar_4(reset_4, T_chave_0, chave_1, b2);
endmodule