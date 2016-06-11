transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio6/Lab6_Package.vhd}
vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio6/ff_d_rising.vhd}
vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio6/LFSR_12.vhd}

vcom -93 -work work {C:/Users/Daniela/Dropbox/Laura/Gabriel/Semestre 9/FPGA/Laboratorio6/LFSR_12_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  LFSR_12_TB

add wave *
view structure
view signals
run -all
