// A CONTAGEM DE 2, 4 e 8 TEM SUA SAIDA DIRECIONADA PARA UMA PORTA OR, CUJA SAIDA VAI SER UM RESET
// QUE RESETA A CONTAGEM E ALTERA AÇAO DO BRINQUEDO, AUMENTANDO-A EM UMA UNIDADE
module mux(reset_mux, chave_0, chave_1, b3, b2, b1, b0);
	input chave_0, chave_1, b3, b2, b1, b0;
	output reset_mux;

	wire reset_2, reset_4, reset_8;
	
	contar_2(reset_2, chave_0, chave_1, b1);
	contar_4(reset_4, chave_0, chave_1, b2);
	contar_8(reset_8, chave_0, chave_1, b3);
	
	or Or_reset(reset_mux, reset_2, reset_4, reset_8);
endmodule