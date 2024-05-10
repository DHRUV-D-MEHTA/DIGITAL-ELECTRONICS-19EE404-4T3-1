onerror {quit -f}
vlib work
vlog -work work FULL_SUBTRACTOR.vo
vlog -work work FULL_SUBTRACTOR.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FULL_SUBTRACTOR_vlg_vec_tst
vcd file -direction FULL_SUBTRACTOR.msim.vcd
vcd add -internal FULL_SUBTRACTOR_vlg_vec_tst/*
vcd add -internal FULL_SUBTRACTOR_vlg_vec_tst/i1/*
add wave /*
run -all
