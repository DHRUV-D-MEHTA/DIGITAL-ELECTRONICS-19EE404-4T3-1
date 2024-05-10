library verilog;
use verilog.vl_types.all;
entity HALF_SUBTRACTOR is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        difference      : out    vl_logic;
        borrow          : out    vl_logic
    );
end HALF_SUBTRACTOR;
