onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /register_file_tb/CLK
add wave -noupdate /register_file_tb/nRST
add wave -noupdate /register_file_tb/v1
add wave -noupdate /register_file_tb/v2
add wave -noupdate /register_file_tb/v3
add wave -noupdate /register_file_tb/myif/WEN
add wave -noupdate /register_file_tb/myif/rdat1
add wave -noupdate /register_file_tb/myif/rdat2
add wave -noupdate /register_file_tb/myif/rsel1
add wave -noupdate /register_file_tb/myif/rsel2
add wave -noupdate /register_file_tb/myif/wdat
add wave -noupdate /register_file_tb/myif/wsel
add wave -noupdate -expand /register_file_tb/DUT/Reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {105 ns}
