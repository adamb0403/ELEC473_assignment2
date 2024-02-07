library verilog;
use verilog.vl_types.all;
entity rx_parity_check_vlg_sample_tst is
    port(
        parity_in       : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end rx_parity_check_vlg_sample_tst;
