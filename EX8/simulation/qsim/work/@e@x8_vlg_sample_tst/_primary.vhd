library verilog;
use verilog.vl_types.all;
entity EX8_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end EX8_vlg_sample_tst;
