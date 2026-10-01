module lvds_8to64
(
    input              clk,
    input      [ 63:0] lvds_in,
    output reg [511:0] lvds_out
);

always @(posedge clk) begin
    lvds_out <= {8{lvds_in}};
end


endmodule