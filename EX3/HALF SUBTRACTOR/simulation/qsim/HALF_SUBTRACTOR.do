onerror {quit -f}
vlib work
vlog -work work HALF_SUBTRACTOR.vo
vlog -work work HALF_SUBTRACTOR.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.HALF_SUBTRACTOR_vlg_vec_tst
vcd file -direction HALF_SUBTRACTOR.msim.vcd
vcd add -internal HALF_SUBTRACTOR_vlg_vec_tst/*
vcd add -internal HALF_SUBTRACTOR_vlg_vec_tst/i1/*
add wave /*
run -all