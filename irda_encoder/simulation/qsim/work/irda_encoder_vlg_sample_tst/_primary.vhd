library verilog;
use verilog.vl_types.all;
entity irda_encoder_vlg_sample_tst is
    port(
        encoder_input   : in     vl_logic;
        irda_baud       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end irda_encoder_vlg_sample_tst;
