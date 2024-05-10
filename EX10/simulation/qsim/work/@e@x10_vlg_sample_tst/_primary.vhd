library verilog;
use verilog.vl_types.all;
entity EX10_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        si              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end EX10_vlg_sample_tst;
