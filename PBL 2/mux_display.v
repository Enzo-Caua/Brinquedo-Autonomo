// Esse modulo e o multiplexador responsavel por acionar o 7 segmentos alternadamente. Sua chave de seleçao
// e o clk_aux, que utiliza uma frequencia de 64 hz.
module mux_display(seg_x, Tseg_x, Vseg_x, clk_aux);
	input Tseg_x, Vseg_x, clk_aux;
	output seg_x;
	
	wire T0, T1, T2;
	nand Nand_0(T0, clk_aux);
	nand Nand_1(T1, T0, Vseg_x);
	nand Nand_2(T2, clk_aux, Tseg_x);
	nand Nand_3(seg_x, T2, T1);
  
endmodule