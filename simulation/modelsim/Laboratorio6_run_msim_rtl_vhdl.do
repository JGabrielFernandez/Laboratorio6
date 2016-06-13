transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/ROM.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/FF_D_RISING.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/FF_D_FALLING.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/DF_HZ.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Control_RAM_FSM.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Comparador.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Lab6_Package.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/MUX_4_1.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/DATA_BUFFER.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/DEC_HEX_7SEG.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Top_FSM.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Laboratorio6.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/LFSR_12.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Laboratorio6_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Laboratorio6_TB

add wave *
view structure
view signals
run -all
