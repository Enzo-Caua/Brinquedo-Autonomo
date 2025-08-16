transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/contar_2.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/contar_4.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/contar_8.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/mux.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/display.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/flip_flop_d.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/cadeamento.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/contar_acao.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/display_contagem_acao.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/display_velocidade.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/mux_display.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/principal.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/dividir_5.v}
vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/divisor_frequencia.v}

vlog -vlog01compat -work work +incdir+/home/pedro/Pedro\ -\ gostoso {/home/pedro/Pedro - gostoso/principal.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxii_ver -L rtl_work -L work -voptargs="+acc"  teste

add wave *
view structure
view signals
run 2 ns
