library verilog;
use verilog.vl_types.all;
entity EX8 is
    port(
        D               : in     vl_logic;
        clk             : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end EX8;
