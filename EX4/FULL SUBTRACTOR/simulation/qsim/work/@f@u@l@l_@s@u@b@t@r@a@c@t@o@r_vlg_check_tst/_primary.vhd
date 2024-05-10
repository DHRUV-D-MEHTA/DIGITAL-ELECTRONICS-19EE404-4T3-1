library verilog;
use verilog.vl_types.all;
entity FULL_SUBTRACTOR_vlg_check_tst is
    port(
        borrow          : in     vl_logic;
        difference      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FULL_SUBTRACTOR_vlg_check_tst;
