library verilog;
use verilog.vl_types.all;
entity rx_parity_check_vlg_check_tst is
    port(
        framing_out     : in     vl_logic;
        p_check_out     : in     vl_logic;
        parity_out      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end rx_parity_check_vlg_check_tst;
