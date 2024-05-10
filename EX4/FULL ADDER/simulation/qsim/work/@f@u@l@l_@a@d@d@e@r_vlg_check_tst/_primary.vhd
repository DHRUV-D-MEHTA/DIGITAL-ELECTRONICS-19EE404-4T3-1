library verilog;
use verilog.vl_types.all;
entity FULL_ADDER_vlg_check_tst is
    port(
        carryout        : in     vl_logic;
        sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FULL_ADDER_vlg_check_tst;
