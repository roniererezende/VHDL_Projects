transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Users/Roniere Resende/Documents/Meus Documentos/Estudo de Tecnologias/Git_Github/My_Projects/VHDL_Projets/Class 4/Ex_5_A/Exercicio_3.vhd}

