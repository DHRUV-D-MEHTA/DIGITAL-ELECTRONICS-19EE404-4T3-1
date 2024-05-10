onerror {quit -f}
vlib work
vlog -work work EX12.vo
vlog -work work EX12.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.EX12_vlg_vec_tst
vcd file -direction EX12.msim.vcd
vcd add -internal EX12_vlg_vec_tst/*
vcd add -internal EX12_vlg_vec_tst/i1/*
add wave /*
run -all
