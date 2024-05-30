`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 17:18:38
// Design Name: 
// Module Name: i2s_transiver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module i2s_transceiver(
    input clk_main,
    input rst,
    input rx_i2s_data,
    output tx_i2s_data,
    output wire m_clk,   //master clock
    output wire lr_clk,  //left-right channel clock
    output wire s_clk    //serial data clock
    );
    
    //gives 12.5 MHz
    clk_divider #(5) MCLK ( 
        .clk_main(clk_main),
        .rst(rst),
        .clk_divide(m_clk)
    );
    //gives 3.125 MHz
    clk_divider #(2) SCLK (
        .clk_main(m_clk),
        .rst(rst),
        .clk_divide(s_clk)
    );
    //gives arround 48 kHz
    clk_divider #(32) LRCLK (
        .clk_main(s_clk),
        .rst(rst),
        .clk_divide(lr_clk)
    );

reg [31:0] input_data_reg;
reg [31:0] output_data_reg;

reg [4:0] counter;

assign tx_i2s_data = output_data_reg[counter];

always @(posedge s_clk or posedge rst) begin
    if(rst) begin
        counter <= 0;
        input_data_reg <= 0;
        output_data_reg <= 0;
    end
    else if(s_clk) begin
        input_data_reg[counter] <= rx_i2s_data;
        if(counter < 31) begin
            counter <= counter + 1;
        end
        else begin
            counter <= 0;
            output_data_reg <= input_data_reg;
        end
    end
end

endmodule
