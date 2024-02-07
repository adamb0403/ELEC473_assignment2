onerror {quit -f}
vlib work
vlog -work work rx_parity_check.vo
vlog -work work rx_parity_check.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rx_parity_check_vlg_vec_tst
vcd file -direction rx_parity_check.msim.vcd
vcd add -internal rx_parity_check_vlg_vec_tst/*
vcd add -internal rx_parity_check_vlg_vec_tst/i1/*
add wave /*
run -all
