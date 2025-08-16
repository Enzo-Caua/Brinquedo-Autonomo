// ESTE MODULO E RESPONSAVEL POR FAZER A CONTAGEM DE 2 SEGUNDOS, PRODUZINDO UM VALOR LOGICO ALTO
module contar_2(reset_2, chave_0, chave_1, b1);
	input chave_0, chave_1, b1;
	output reset_2;
	
	wire T_chave_1;
	not Not_chave_1(T_chave_1, chave_1);
	
	and And_contar_2(reset_2, T_chave_1, chave_0, b1);
endmodule