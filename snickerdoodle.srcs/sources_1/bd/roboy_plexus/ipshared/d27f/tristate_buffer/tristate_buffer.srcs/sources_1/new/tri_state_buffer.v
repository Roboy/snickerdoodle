module tri_state_buffer(
    input mdo, 
    input transmit,
    inout mdio,
    output mdi
);

assign mdio = transmit? mdo : 'bz;
assign mdi = mdio;

endmodule
