library verilog;
use verilog.vl_types.all;
entity EX6 is
    port(
        s               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic;
        q_bar           : out    vl_logic
    );
end EX6;
