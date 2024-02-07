library verilog;
use verilog.vl_types.all;
entity rx_shift_register_vlg_check_tst is
    port(
        rx_sr_out       : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end rx_shift_register_vlg_check_tst;
