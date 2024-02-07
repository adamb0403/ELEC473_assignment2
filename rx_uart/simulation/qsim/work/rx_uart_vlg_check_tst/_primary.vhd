library verilog;
use verilog.vl_types.all;
entity rx_uart_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        HEX1            : in     vl_logic_vector(6 downto 0);
        LEDG            : in     vl_logic_vector(6 downto 6);
        LEDR            : in     vl_logic_vector(2 downto 2);
        ctrl_load_counter: in     vl_logic;
        ctrl_state      : in     vl_logic;
        parity_7sd      : in     vl_logic_vector(6 downto 0);
        sr_parity       : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end rx_uart_vlg_check_tst;
