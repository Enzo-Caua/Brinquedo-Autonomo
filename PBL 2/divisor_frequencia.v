// ESTE MODULO E RESPONSAVEL POR FAZER A DIVISAO DE FREQUENCIA DO CLOCK DA PLACA
// OBSERVA-SE QUE CADA SAIDA DOS MODULOS E A ENTRADA DO OUTRO.
module divisor_frequencia(clk, clk_out, clk_aux, clk_botao);
	input clk;
	output clk_out, clk_aux, clk_botao;
	
	wire [8:0] out;
	wire [5:0] q;
	
	dividir_5 div1 (.clk(clk),.clk_out(out[1]));
	dividir_5 div2 (.clk(out[1]),.clk_out(out[2]));
	dividir_5 div3 (.clk(out[2]),.clk_out(out[3]));
	dividir_5 div4 (.clk(out[3]),.clk_out(out[4]));
	dividir_5 div5 (.clk(out[4]),.clk_out(out[5]));
	dividir_5 div6 (.clk(out[5]),.clk_out(out[6]));
	dividir_5 div7 (.clk(out[6]),.clk_out(out[7]));
	dividir_5 div8 (.clk(out[7]),.clk_out(out[8]));
	flip_flop_d div9(.q(q[0]),.d(~q[0]),.reset(reset),.clk(out[8]));
	flip_flop_d div10(.q(q[1]),.d(~q[1]),.reset(reset),.clk(~q[0]));
	flip_flop_d div11(.q(q[2]),.d(~q[2]),.reset(reset),.clk(~q[1]));
	flip_flop_d div12(.q(q[3]),.d(~q[3]),.reset(reset),.clk(~q[2]));
	flip_flop_d div13(.q(q[4]),.d(~q[4]),.reset(reset),.clk(~q[3]));
	flip_flop_d div14(.q(q[5]),.d(~q[5]),.reset(reset),.clk(~q[4]));
	flip_flop_d div15(.q(clk_out),.d(~clk_out),.reset(reset),.clk(~q[5]));
	
	assign clk_aux = q[0];
	assign clk_botao = q[1];
endmodule