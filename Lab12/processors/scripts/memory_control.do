onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_control_tb/CLK
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/CLK
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/nRST
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_wait
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_inv
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_snoopaddr
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/snoopy
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_snoopy
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/snooper
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_snooper
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/sw
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/state
add wave -noupdate -expand -group DUT /memory_control_tb/DUT/next_state
add wave -noupdate -group ccif /memory_control_tb/ccif/iwait
add wave -noupdate -group ccif /memory_control_tb/ccif/dwait
add wave -noupdate -group ccif /memory_control_tb/ccif/iREN
add wave -noupdate -group ccif /memory_control_tb/ccif/dREN
add wave -noupdate -group ccif /memory_control_tb/ccif/dWEN
add wave -noupdate -group ccif /memory_control_tb/ccif/iload
add wave -noupdate -group ccif /memory_control_tb/ccif/dload
add wave -noupdate -group ccif /memory_control_tb/ccif/dstore
add wave -noupdate -group ccif /memory_control_tb/ccif/iaddr
add wave -noupdate -group ccif /memory_control_tb/ccif/daddr
add wave -noupdate -group ccif /memory_control_tb/ccif/ccwait
add wave -noupdate -group ccif /memory_control_tb/ccif/ccinv
add wave -noupdate -group ccif /memory_control_tb/ccif/ccwrite
add wave -noupdate -group ccif /memory_control_tb/ccif/cctrans
add wave -noupdate -group ccif /memory_control_tb/ccif/ccsnoopaddr
add wave -noupdate -group ccif /memory_control_tb/ccif/ramWEN
add wave -noupdate -group ccif /memory_control_tb/ccif/ramREN
add wave -noupdate -group ccif /memory_control_tb/ccif/ramstate
add wave -noupdate -group ccif /memory_control_tb/ccif/ramaddr
add wave -noupdate -group ccif /memory_control_tb/ccif/ramstore
add wave -noupdate -group ccif /memory_control_tb/ccif/ramload
add wave -noupdate -group cif0 /memory_control_tb/cif0/iwait
add wave -noupdate -group cif0 /memory_control_tb/cif0/dwait
add wave -noupdate -group cif0 /memory_control_tb/cif0/iREN
add wave -noupdate -group cif0 /memory_control_tb/cif0/dREN
add wave -noupdate -group cif0 /memory_control_tb/cif0/dWEN
add wave -noupdate -group cif0 /memory_control_tb/cif0/iload
add wave -noupdate -group cif0 /memory_control_tb/cif0/dload
add wave -noupdate -group cif0 /memory_control_tb/cif0/dstore
add wave -noupdate -group cif0 /memory_control_tb/cif0/iaddr
add wave -noupdate -group cif0 /memory_control_tb/cif0/daddr
add wave -noupdate -group cif0 /memory_control_tb/cif0/ccwait
add wave -noupdate -group cif0 /memory_control_tb/cif0/ccinv
add wave -noupdate -group cif0 /memory_control_tb/cif0/ccwrite
add wave -noupdate -group cif0 /memory_control_tb/cif0/cctrans
add wave -noupdate -group cif0 /memory_control_tb/cif0/ccsnoopaddr
add wave -noupdate -group cif1 /memory_control_tb/cif1/iwait
add wave -noupdate -group cif1 /memory_control_tb/cif1/dwait
add wave -noupdate -group cif1 /memory_control_tb/cif1/iREN
add wave -noupdate -group cif1 /memory_control_tb/cif1/dREN
add wave -noupdate -group cif1 /memory_control_tb/cif1/dWEN
add wave -noupdate -group cif1 /memory_control_tb/cif1/iload
add wave -noupdate -group cif1 /memory_control_tb/cif1/dload
add wave -noupdate -group cif1 /memory_control_tb/cif1/dstore
add wave -noupdate -group cif1 /memory_control_tb/cif1/iaddr
add wave -noupdate -group cif1 /memory_control_tb/cif1/daddr
add wave -noupdate -group cif1 /memory_control_tb/cif1/ccwait
add wave -noupdate -group cif1 /memory_control_tb/cif1/ccinv
add wave -noupdate -group cif1 /memory_control_tb/cif1/ccwrite
add wave -noupdate -group cif1 /memory_control_tb/cif1/cctrans
add wave -noupdate -group cif1 /memory_control_tb/cif1/ccsnoopaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55 ns} 0}
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
WaveRestoreZoom {0 ns} {278 ns}
