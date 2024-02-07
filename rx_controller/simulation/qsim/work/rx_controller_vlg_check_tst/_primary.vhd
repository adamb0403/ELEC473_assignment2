library verilog;
use verilog.vl_types.all;
entity rx_controller_vlg_check_tst is
    port(
        ctrl_reset_baud : in     vl_logic;
        ctrl_sr_load    : in     vl_logic;
        current_state   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end rx_controller_vlg_check_tst;
