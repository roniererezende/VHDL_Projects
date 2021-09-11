transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Users/Roniere\ Resende/Documents/Meus\ Documentos/Estudo\ de\ Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class\ 9/Ex_9_B/db {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_B/db/ram_pll_altpll.v}
vcom -2008 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_B/Exercicio_1_RAM_9_2.vhd}
vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_B/RAM_PLL.vhd}

vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_B/Exercicio_1_RAM_9_2_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Exercicio_1_RAM_9_2_tb

add wave *
view structure
view signals
run 500 ns
