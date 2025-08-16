// ESTE MODULO ENCADEIA FLIP-FLOPS NA FORMA DE UM CONTADOR ASSINCRONO, RESPONSAVEL POR FAZER A CONTAGEM
module cadeamento(b3, b2, b1, b0, reset, clk);
	input reset, clk;
	output b3, b2, b1, b0;
	
	wire T3, T2, T1, T0;
	
	flip_flop_d bit0(.q(T0),.d(!T0),.reset(reset),.clk(clk));
	flip_flop_d bit1(.q(T1),.d(!T1),.reset(reset),.clk(!T0));
	flip_flop_d bit2(.q(T2),.d(!T2),.reset(reset),.clk(!T1));
	flip_flop_d bit3(.q(T3),.d(!T3),.reset(reset),.clk(!T2));
	
	assign b0 = T0;
	assign b1 = T1;
	assign b2 = T2;
	assign b3 = T3;

endmodule