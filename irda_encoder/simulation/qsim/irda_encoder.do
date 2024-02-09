onerror {quit -f}
vlib work
vlog -work work irda_encoder.vo
vlog -work work irda_encoder.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.irda_encoder_vlg_vec_tst
vcd file -direction irda_encoder.msim.vcd
vcd add -internal irda_encoder_vlg_vec_tst/*
vcd add -internal irda_encoder_vlg_vec_tst/i1/*
add wave /*
run -all
