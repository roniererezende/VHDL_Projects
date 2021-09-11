onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sn74595_tb/oe_i
add wave -noupdate /sn74595_tb/rclk_i
add wave -noupdate /sn74595_tb/srclr_i
add wave -noupdate /sn74595_tb/srclk_i
add wave -noupdate /sn74595_tb/ser_i
add wave -noupdate /sn74595_tb/q_o
add wave -noupdate /sn74595_tb/qh_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60206 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {525 ns}
