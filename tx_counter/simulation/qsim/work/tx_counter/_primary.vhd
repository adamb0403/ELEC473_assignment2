library verilog;
use verilog.vl_types.all;
entity tx_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        count_enable    : in     vl_logic;
        count_out       : out    vl_logic
    );
end tx_counter;
