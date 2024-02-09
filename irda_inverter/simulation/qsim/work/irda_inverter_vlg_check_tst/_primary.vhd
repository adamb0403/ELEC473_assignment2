library verilog;
use verilog.vl_types.all;
entity irda_inverter_vlg_check_tst is
    port(
        IRDA_output     : in     vl_logic;
        UART_output     : in     vl_logic;
        rx_output       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end irda_inverter_vlg_check_tst;
