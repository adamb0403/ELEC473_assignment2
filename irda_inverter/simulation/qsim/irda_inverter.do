onerror {quit -f}
vlib work
vlog -work work irda_inverter.vo
vlog -work work irda_inverter.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.irda_inverter_vlg_vec_tst
vcd file -direction irda_inverter.msim.vcd
vcd add -internal irda_inverter_vlg_vec_tst/*
vcd add -internal irda_inverter_vlg_vec_tst/i1/*
add wave /*
run -all
