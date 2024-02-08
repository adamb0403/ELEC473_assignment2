library verilog;
use verilog.vl_types.all;
entity full_uart is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(8 downto 0);
        UART_RXD        : in     vl_logic;
        IRDA_RXD        : in     vl_logic;
        UART_TXD        : out    vl_logic;
        IRDA_TXD        : out    vl_logic;
        tx_ctrl_state   : out    vl_logic_vector(1 downto 0);
        rx_ctrl_state   : out    vl_logic;
        rx_ctrl_load_counter: out    vl_logic;
        rx_sr_parity    : out    vl_logic_vector(10 downto 0);
        rx_parity_7sd   : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(2 downto 2);
        LEDG            : out    vl_logic_vector(6 downto 6)
    );
end full_uart;
