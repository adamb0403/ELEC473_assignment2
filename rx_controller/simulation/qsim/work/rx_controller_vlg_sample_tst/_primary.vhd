library verilog;
use verilog.vl_types.all;
entity rx_controller_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(0 downto 0);
        clk             : in     vl_logic;
        ctrl_counter    : in     vl_logic;
        ctrl_half_baud  : in     vl_logic;
        ctrl_irda_half_baud: in     vl_logic;
        ctrl_rx         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end rx_controller_vlg_sample_tst;
