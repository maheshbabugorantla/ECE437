onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/dhit
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/imemLoad
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/dREN
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/dWEN
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/RegWrite
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/Branch
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/halt
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/JmpSel
add wave -noupdate -group CONTROL_UNIT -radix binary /system_tb/DUT/CPU/DP/cu_if/MemtoReg
add wave -noupdate -group CONTROL_UNIT -radix binary /system_tb/DUT/CPU/DP/cu_if/aluSrc
add wave -noupdate -group CONTROL_UNIT -radix binary /system_tb/DUT/CPU/DP/cu_if/RegDst
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/shamt
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/regD
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/regT
add wave -noupdate -group CONTROL_UNIT -radix binary /system_tb/DUT/CPU/DP/cu_if/regS
add wave -noupdate -group CONTROL_UNIT /system_tb/DUT/CPU/DP/cu_if/aluOp
add wave -noupdate -group Datapath /system_tb/DUT/CPU/DP/extOp
add wave -noupdate -group Datapath /system_tb/DUT/CPU/DP/tempPortB
add wave -noupdate -group Datapath /system_tb/DUT/CPU/DP/tempWSel
add wave -noupdate -group Datapath /system_tb/DUT/CPU/DP/tempWdat
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/WEN
add wave -noupdate -group REGISTER_FILE -radix hexadecimal /system_tb/DUT/CPU/DP/rf_if/wsel
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/rsel1
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/rsel2
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/wdat
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/rdat1
add wave -noupdate -group REGISTER_FILE /system_tb/DUT/CPU/DP/rf_if/rdat2
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/portA
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/portB
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/outputPort
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/negative
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/overflow
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/zero
add wave -noupdate -group ALU /system_tb/DUT/CPU/DP/alu_if/aluOp
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/ihit
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/zero
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/Branch
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/halt
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/JmpSel
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemLoad
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/rdat1
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemaddr
add wave -noupdate -group PROGRAM_COUNTER -radix hexadecimal /system_tb/DUT/CPU/DP/pc_if/nextPC
add wave -noupdate /system_tb/DUT/CPU/DP/rf_dut/registerArray
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/ihitIn
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dhitIn
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dREN
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dmemREN
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dmemWEN
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dhit
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/ihit
add wave -noupdate -group REQUEST_UNIT /system_tb/DUT/CPU/DP/ru_if/dWEN
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/zero
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/Branch
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/JmpSel
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemLoad
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/rdat1
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemaddr
add wave -noupdate -group PROGRAM_COUNTER -radix hexadecimal /system_tb/DUT/CPU/DP/pc_if/nextPC
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/ihit
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/zero
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/Branch
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/halt
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/JmpSel
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemLoad
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/rdat1
add wave -noupdate -group PROGRAM_COUNTER /system_tb/DUT/CPU/DP/pc_if/imemaddr
add wave -noupdate -group PROGRAM_COUNTER -radix hexadecimal /system_tb/DUT/CPU/DP/pc_if/nextPC
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramREN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramWEN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramaddr
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramstore
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramload
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/ramstate
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memREN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memWEN
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memaddr
add wave -noupdate -group RAM /system_tb/DUT/RAM/ramif/memstore
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {ori {28769 ps} 1} {ori {108608 ps} 1} {{Cursor 5} {540882 ps} 0}
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
WaveRestoreZoom {349 ns} {931 ns}
