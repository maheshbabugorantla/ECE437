onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dcache_tb/CLK
add wave -noupdate /dcache_tb/nRST
add wave -noupdate /dcache_tb/DUT/CLK
add wave -noupdate /dcache_tb/DUT/nRST
add wave -noupdate /dcache_tb/DUT/i
add wave -noupdate /dcache_tb/DUT/offset
add wave -noupdate /dcache_tb/DUT/tag
add wave -noupdate /dcache_tb/DUT/miss
add wave -noupdate /dcache_tb/DUT/row
add wave -noupdate /dcache_tb/DUT/row_next
add wave -noupdate /dcache_tb/DUT/hit_count
add wave -noupdate /dcache_tb/DUT/state
add wave -noupdate /dcache_tb/DUT/next_state
add wave -noupdate /dcache_tb/DUT/tag_l
add wave -noupdate /dcache_tb/DUT/tag_r
add wave -noupdate /dcache_tb/DUT/data1_l
add wave -noupdate /dcache_tb/DUT/data2_l
add wave -noupdate /dcache_tb/DUT/data1_r
add wave -noupdate /dcache_tb/DUT/data2_r
add wave -noupdate /dcache_tb/DUT/dirty_l
add wave -noupdate /dcache_tb/DUT/valid_l
add wave -noupdate /dcache_tb/DUT/dirty_r
add wave -noupdate /dcache_tb/DUT/valid_r
add wave -noupdate /dcache_tb/DUT/j
add wave -noupdate /dcache_tb/dcif/dhit
add wave -noupdate /dcache_tb/dcif/dmemload
add wave -noupdate /dcache_tb/dcif/dmemaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {221 ns} 0}
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
