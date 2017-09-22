onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control_unit_tb/CLK
add wave -noupdate /control_unit_tb/nRST
add wave -noupdate /control_unit_tb/cuif/ALUOP
add wave -noupdate /control_unit_tb/cuif/ALUSel
add wave -noupdate /control_unit_tb/cuif/DataSel
add wave -noupdate /control_unit_tb/cuif/PCSel
add wave -noupdate /control_unit_tb/cuif/RegDest
add wave -noupdate /control_unit_tb/cuif/branch
add wave -noupdate /control_unit_tb/cuif/dhit
add wave -noupdate /control_unit_tb/cuif/funct
add wave -noupdate /control_unit_tb/cuif/halt
add wave -noupdate /control_unit_tb/cuif/ihit
add wave -noupdate /control_unit_tb/cuif/memREN
add wave -noupdate /control_unit_tb/cuif/memWEN
add wave -noupdate /control_unit_tb/cuif/op
add wave -noupdate /control_unit_tb/cuif/regWEN
add wave -noupdate /control_unit_tb/cuif/zero
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8 ns} 0}
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
WaveRestoreZoom {0 ns} {68 ns}
