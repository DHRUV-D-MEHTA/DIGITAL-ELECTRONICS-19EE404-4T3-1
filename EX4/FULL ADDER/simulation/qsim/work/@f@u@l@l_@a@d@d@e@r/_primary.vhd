library verilog;
use verilog.vl_types.all;
entity FULL_ADDER is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        carryin         : in     vl_logic;
        sum             : out    vl_logic;
        carryout        : out    vl_logic
    );
end FULL_ADDER;
