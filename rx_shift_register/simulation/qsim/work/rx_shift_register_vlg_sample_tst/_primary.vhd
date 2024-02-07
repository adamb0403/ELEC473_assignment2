library verilog;
use verilog.vl_types.all;
entity rx_shift_register_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rx_sr_in        : in     vl_logic;
        rx_sr_load      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end rx_shift_register_vlg_sample_tst;
