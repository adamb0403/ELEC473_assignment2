library verilog;
use verilog.vl_types.all;
entity tx_synchroniser_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        key_in          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_synchroniser_vlg_sample_tst;
