onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /laboratorio6_tb/Reset
add wave -noupdate /laboratorio6_tb/Botones
add wave -noupdate /laboratorio6_tb/LAB6/BTS
add wave -noupdate /laboratorio6_tb/LAB6/Gral_FSM/SetBotones
add wave -noupdate /laboratorio6_tb/LED_WRITE
add wave -noupdate /laboratorio6_tb/WE
add wave -noupdate /laboratorio6_tb/RDWR
add wave -noupdate /laboratorio6_tb/CE
add wave -noupdate /laboratorio6_tb/OE
add wave -noupdate /laboratorio6_tb/DATA_BUS
add wave -noupdate /laboratorio6_tb/ADDRESS
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {779407598 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {845971913 ps} {8244696216 ps}
