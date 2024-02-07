library verilog;
use verilog.vl_types.all;
entity rx_parity_check is
    port(
        parity_in       : in     vl_logic_vector(9 downto 0);
        parity_out      : out    vl_logic_vector(6 downto 0);
        p_check_out     : out    vl_logic;
        framing_out     : out    vl_logic
    );
end rx_parity_check;
