onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -divider -height 25 CONTROL_UNIT
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/dhit
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/imemLoad
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/dREN
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/dWEN
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/RegWrite
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/Branch
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/halt
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/JmpSel
add wave -noupdate -radix binary /system_tb/DUT/CPU/DP/cu_if/MemtoReg
add wave -noupdate -radix binary /system_tb/DUT/CPU/DP/cu_if/aluSrc
add wave -noupdate -radix binary /system_tb/DUT/CPU/DP/cu_if/RegDst
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/shamt
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/regD
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/regT
add wave -noupdate -radix binary /system_tb/DUT/CPU/DP/cu_if/regS
add wave -noupdate /system_tb/DUT/CPU/DP/cu_if/aluOp
add wave -noupdate /system_tb/DUT/CPU/DP/extOp
add wave -noupdate /system_tb/DUT/CPU/DP/tempPortB
add wave -noupdate /system_tb/DUT/CPU/DP/tempWSel
add wave -noupdate /system_tb/DUT/CPU/DP/tempWdat
add wave -noupdate -divider -height 25 REGISTER_FILE
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/WEN
add wave -noupdate -radix hexadecimal /system_tb/DUT/CPU/DP/rf_if/wsel
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/rsel1
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/rsel2
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/wdat
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/rdat1
add wave -noupdate /system_tb/DUT/CPU/DP/rf_if/rdat2
add wave -noupdate -divider -height 25 ALU
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/portA
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/portB
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/outputPort
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/negative
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/overflow
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/zero
add wave -noupdate /system_tb/DUT/CPU/DP/alu_if/aluOp
add wave -noupdate -divider -height 25 REQUEST_UNIT
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/ihitIn
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dhitIn
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dREN
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dWEN
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dmemREN
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/dhit
add wave -noupdate /system_tb/DUT/CPU/DP/ru_if/ihit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {52807 ps} 1} {{Cursor 2} {123216 ps} 1} {{Cursor 3} {236374 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 134
configure wave -valuecolwidth 115
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
WaveRestoreZoom {0 ps} {1469795 ps}
