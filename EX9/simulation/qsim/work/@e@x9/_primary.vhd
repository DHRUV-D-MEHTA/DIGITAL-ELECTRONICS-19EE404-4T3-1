library verilog;
use verilog.vl_types.all;
entity EX9 is
    port(
        T               : in     vl_logic;
        clk             : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end EX9;
