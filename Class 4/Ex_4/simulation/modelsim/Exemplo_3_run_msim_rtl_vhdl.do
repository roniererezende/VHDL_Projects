transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 4/Ex_4/Exemplo_3.vhd}

vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 4/Ex_4/exercicio4_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  exercicio4_tb

add wave *
view structure
view signals
run -all