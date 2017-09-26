onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramREN
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramWEN
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramaddr
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramstore
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramload
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/ramstate
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/memREN
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/memWEN
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/memaddr
add wave -noupdate -expand -group scif /system_tb/DUT/CPU/scif/memstore
add wave -noupdate -expand -group syif /system_tb/DUT/syif/tbCTRL
add wave -noupdate -expand -group syif /system_tb/DUT/syif/halt
add wave -noupdate -expand -group syif /system_tb/DUT/syif/WEN
add wave -noupdate -expand -group syif /system_tb/DUT/syif/REN
add wave -noupdate -expand -group syif /system_tb/DUT/syif/addr
add wave -noupdate -expand -group syif /system_tb/DUT/syif/store
add wave -noupdate -expand -group syif /system_tb/DUT/syif/load
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/halt
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/ihit
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/imemREN
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/imemload
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/imemaddr
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dhit
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/datomic
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dmemREN
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dmemWEN
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/flushed
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dmemload
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dmemstore
add wave -noupdate -expand -group dcif /system_tb/DUT/CPU/dcif/dmemaddr
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/iwait
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/dwait
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/iREN
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/dREN
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/dWEN
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/iload
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/dload
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/dstore
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/iaddr
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/daddr
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ccwait
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ccinv
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ccwrite
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/cctrans
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ccsnoopaddr
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramstate
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate -expand -group ccif /system_tb/DUT/CPU/ccif/ramload
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/halt
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/ihit
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/imemREN
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/imemload
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/imemaddr
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dhit
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/datomic
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dmemREN
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dmemWEN
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/flushed
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dmemload
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dmemstore
add wave -noupdate -expand -group dpif /system_tb/DUT/CPU/DP/dpif/dmemaddr
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/negative
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/overflow
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/zero
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/port_a
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/port_b
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/out
add wave -noupdate -expand -group aluif /system_tb/DUT/CPU/DP/aluif/aluop
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/WEN
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/wsel
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/rsel1
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/rsel2
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/wdat
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/rdat1
add wave -noupdate -expand -group rfif /system_tb/DUT/CPU/DP/rfif/rdat2
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/JumpSel
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/ALUSel
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/RegDest
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/dREN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/dWEN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/halt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/zero
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/branch
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/jal
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/imemREN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/lui
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/bne
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/PCSel
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/memtoReg
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/regWEN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/aluop
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/instr
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/shamt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rs
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rd
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/imm_26
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/imm
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/JumpSel
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/ALUSel
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/RegDest
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/dREN
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/dWEN
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/halt
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/zero
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/branch
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/jal
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/imemREN
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/lui
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/bne
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/PCSel
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/memtoReg
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/regWEN
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/aluop
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/instr
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/shamt
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/rs
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/rt
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/rd
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/imm_26
add wave -noupdate -expand -group cuif /system_tb/DUT/CPU/DP/cuif/imm
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2010 ps} 0}
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
WaveRestoreZoom {0 ps} {109 ns}
