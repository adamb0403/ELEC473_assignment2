onerror {quit -f}
vlib work
vlog -work work full_uart.vo
vlog -work work full_uart.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.full_uart_vlg_vec_tst
vcd file -direction full_uart.msim.vcd
vcd add -internal full_uart_vlg_vec_tst/*
vcd add -internal full_uart_vlg_vec_tst/i1/*
add wave /*
run -all
