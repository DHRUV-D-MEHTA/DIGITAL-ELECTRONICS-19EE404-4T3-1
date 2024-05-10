library verilog;
use verilog.vl_types.all;
entity EX5_vlg_sample_tst is
    port(
        din0            : in     vl_logic;
        din1            : in     vl_logic;
        din2            : in     vl_logic;
        din3            : in     vl_logic;
        din4            : in     vl_logic;
        din5            : in     vl_logic;
        din6            : in     vl_logic;
        din7            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end EX5_vlg_sample_tst;
