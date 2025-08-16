// ESTE MODULO E RESPONSAVEL POR FAZER A CONTAGEM DE 8 SEGUNDOS, PRODUZINDO UM VALOR LOGICO ALTO DE SAIDA.
module contar_8(reset_8, chave_0, chave_1, b3);
	input chave_0, chave_1, b3;
	output reset_8;
	
	and And_contar_8(reset_8, chave_0, chave_1, b3);
endmodule