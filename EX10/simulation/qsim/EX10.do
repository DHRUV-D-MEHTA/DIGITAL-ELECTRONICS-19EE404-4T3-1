onerror {quit -f}
vlib work
vlog -work work EX10.vo
vlog -work work EX10.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.EX10_vlg_vec_tst
vcd file -direction EX10.msim.vcd
vcd add -internal EX10_vlg_vec_tst/*
vcd add -internal EX10_vlg_vec_tst/i1/*
add wave /*
run -all
