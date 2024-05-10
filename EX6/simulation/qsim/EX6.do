onerror {quit -f}
vlib work
vlog -work work EX6.vo
vlog -work work EX6.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.EX6_vlg_vec_tst
vcd file -direction EX6.msim.vcd
vcd add -internal EX6_vlg_vec_tst/*
vcd add -internal EX6_vlg_vec_tst/i1/*
add wave /*
run -all
