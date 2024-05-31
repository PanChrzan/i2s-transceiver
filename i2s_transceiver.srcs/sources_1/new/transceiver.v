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

reg [23:0] input_data_reg;
reg [23:0] output_data_reg;
reg last_lr_state;

reg [4:0] counter;

assign tx_i2s_data = (counter<24) ? output_data_reg[counter] : 0;

always @(negedge s_clk or posedge rst) begin
    if(rst) begin
        counter <= 0;
        output_data_reg <= 0;
        last_lr_state <= 0;
    end
    else if(!s_clk) begin
        if(counter < 24) begin
            counter <= counter + 1;
            last_lr_state <= lr_clk;
        end
        else if(last_lr_state != lr_clk) begin
            counter <= 0;
            output_data_reg <= input_data_reg;
        end
    end
end

always @(posedge s_clk or posedge rst) begin
    if(rst) begin
        input_data_reg <= 0;
    end
    else if(s_clk) begin
        if(counter < 24) begin
            input_data_reg[counter] <= rx_i2s_data;
        end
    end
end

endmodule
