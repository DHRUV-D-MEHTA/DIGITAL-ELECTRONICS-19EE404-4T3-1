onerror {quit -f}
vlib work
vlog -work work FULL_ADDER.vo
vlog -work work FULL_ADDER.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FULL_ADDER_vlg_vec_tst
vcd file -direction FULL_ADDER.msim.vcd
vcd add -internal FULL_ADDER_vlg_vec_tst/*
vcd add -internal FULL_ADDER_vlg_vec_tst/i1/*
add wave /*
run -all
