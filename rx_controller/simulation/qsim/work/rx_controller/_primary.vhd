library verilog;
use verilog.vl_types.all;
entity rx_controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ctrl_counter    : in     vl_logic;
        ctrl_half_baud  : in     vl_logic;
        ctrl_rx         : in     vl_logic;
        ctrl_sr_load    : out    vl_logic;
        current_state   : out    vl_logic;
        ctrl_reset_baud : out    vl_logic
    );
end rx_controller;
