onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /control_unit_tb/CLK
add wave -noupdate /control_unit_tb/nRST
add wave -noupdate -divider Control_Unit_DUT_Output
add wave -noupdate /control_unit_tb/DUT/cuif/dhit
add wave -noupdate /control_unit_tb/DUT/cuif/imemLoad
add wave -noupdate /control_unit_tb/DUT/cuif/dREN
add wave -noupdate /control_unit_tb/DUT/cuif/dWEN
add wave -noupdate /control_unit_tb/DUT/cuif/RegWrite
add wave -noupdate /control_unit_tb/DUT/cuif/Branch
add wave -noupdate /control_unit_tb/DUT/cuif/halt
add wave -noupdate /control_unit_tb/DUT/cuif/JmpSel
add wave -noupdate /control_unit_tb/DUT/cuif/MemtoReg
add wave -noupdate /control_unit_tb/DUT/cuif/aluSrc
add wave -noupdate /control_unit_tb/DUT/cuif/RegDst
add wave -noupdate /control_unit_tb/DUT/cuif/shamt
add wave -noupdate /control_unit_tb/DUT/cuif/regD
add wave -noupdate /control_unit_tb/DUT/cuif/regT
add wave -noupdate /control_unit_tb/DUT/cuif/regS
add wave -noupdate /control_unit_tb/DUT/cuif/aluOp
add wave -noupdate -divider Control_Unit_Tb
add wave -noupdate /control_unit_tb/PROG/cu_tb/dhit
add wave -noupdate /control_unit_tb/PROG/cu_tb/imemLoad
add wave -noupdate /control_unit_tb/PROG/cu_tb/dREN
add wave -noupdate /control_unit_tb/PROG/cu_tb/dWEN
add wave -noupdate /control_unit_tb/PROG/cu_tb/RegWrite
add wave -noupdate /control_unit_tb/PROG/cu_tb/Branch
add wave -noupdate /control_unit_tb/PROG/cu_tb/halt
add wave -noupdate /control_unit_tb/PROG/cu_tb/JmpSel
add wave -noupdate /control_unit_tb/PROG/cu_tb/MemtoReg
add wave -noupdate /control_unit_tb/PROG/cu_tb/aluSrc
add wave -noupdate /control_unit_tb/PROG/cu_tb/RegDst
add wave -noupdate /control_unit_tb/PROG/cu_tb/shamt
add wave -noupdate /control_unit_tb/PROG/cu_tb/regD
add wave -noupdate /control_unit_tb/PROG/cu_tb/regT
add wave -noupdate /control_unit_tb/PROG/cu_tb/regS
add wave -noupdate /control_unit_tb/PROG/cu_tb/aluOp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 183
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
WaveRestoreZoom {0 ns} {686 ns}
