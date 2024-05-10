library verilog;
use verilog.vl_types.all;
entity EX7 is
    port(
        j               : in     vl_logic;
        k               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic;
        qb              : out    vl_logic
    );
end EX7;
