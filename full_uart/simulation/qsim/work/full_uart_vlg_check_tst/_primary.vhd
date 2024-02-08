library verilog;
use verilog.vl_types.all;
entity full_uart_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        HEX1            : in     vl_logic_vector(6 downto 0);
        HEX4            : in     vl_logic_vector(6 downto 0);
        HEX5            : in     vl_logic_vector(6 downto 0);
        IRDA_TXD        : in     vl_logic;
        LEDG            : in     vl_logic_vector(6 downto 6);
        LEDR            : in     vl_logic_vector(2 downto 2);
        UART_TXD        : in     vl_logic;
        rx_ctrl_load_counter: in     vl_logic;
        rx_ctrl_state   : in     vl_logic;
        rx_parity_7sd   : in     vl_logic_vector(6 downto 0);
        rx_sr_parity    : in     vl_logic_vector(10 downto 0);
        tx_ctrl_state   : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end full_uart_vlg_check_tst;
