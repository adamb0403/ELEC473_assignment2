onerror {quit -f}
vlib work
vlog -work work tx_baud_counter.vo
vlog -work work tx_baud_counter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tx_baud_counter_vlg_vec_tst
vcd file -direction tx_baud_counter.msim.vcd
vcd add -internal tx_baud_counter_vlg_vec_tst/*
vcd add -internal tx_baud_counter_vlg_vec_tst/i1/*
add wave /*
run -all
