onerror {quit -f}
vlib work
vlog -work work rx_uart.vo
vlog -work work rx_uart.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rx_uart_vlg_vec_tst
vcd file -direction rx_uart.msim.vcd
vcd add -internal rx_uart_vlg_vec_tst/*
vcd add -internal rx_uart_vlg_vec_tst/i1/*
add wave /*
run -all
