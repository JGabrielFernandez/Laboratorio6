transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Laboratorio6_7_1200mv_85c_slow.vho}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio6/Laboratorio6_TB.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /LAB6=Laboratorio6_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  Laboratorio6_TB

add wave *
view structure
view signals
run -all
