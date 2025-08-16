// ESTE MODULO DETERMINA A CONTAGEM DAS AÇOES ATE 5, COMO DESCREVE O PROBLEMA, SENDO A2 E A1 OS BITS POSICIONAIS NA CONTAGEM BCD
module contar_acao(reset, a2, a1);
	input a2, a1;
	output reset;
	
	and And_reset(reset, a2, a1);
endmodule