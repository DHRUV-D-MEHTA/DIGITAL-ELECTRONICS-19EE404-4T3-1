library verilog;
use verilog.vl_types.all;
entity EX9_vlg_sample_tst is
    port(
        T               : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end EX9_vlg_sample_tst;
