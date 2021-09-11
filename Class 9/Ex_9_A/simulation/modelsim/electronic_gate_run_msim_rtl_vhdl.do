transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Users/Roniere\ Resende/Documents/Meus\ Documentos/Estudo\ de\ Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class\ 9/Ex_9_A/db {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_A/db/electronic_gate_pll_altpll.v}
vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_A/electronic_gate_pll.vhd}
vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_A/electronic_gate.vhd}

vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 9/Ex_9_A/electronic_gate_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  electronic_gate_tb

add wave *
view structure
view signals
run 2000 ns
