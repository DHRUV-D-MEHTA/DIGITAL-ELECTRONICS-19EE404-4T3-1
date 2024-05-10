library verilog;
use verilog.vl_types.all;
entity HALF_ADDER is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : out    vl_logic;
        S               : out    vl_logic
    );
end HALF_ADDER;
