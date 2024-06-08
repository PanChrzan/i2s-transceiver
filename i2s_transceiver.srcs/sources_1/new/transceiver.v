`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 17:18:38
// Design Name: 
// Module Name: i2s_transceiver
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
    input s_clk,
    input rst,
    input rx_i2s_data,
    input lr_clk,
    output tx_i2s_data
    );

reg [23:0] input_left_channel;
reg [23:0] input_right_channel;
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
        if(counter < 31) begin
            counter <= counter + 1;
            last_lr_state <= lr_clk;
        end
        else if(last_lr_state != lr_clk) begin
            counter <= 0;
            if (last_lr_state == 0) begin
                output_data_reg <= input_right_channel;
            end
            else if (last_lr_state == 1) begin
                output_data_reg <= input_left_channel;
            end
        end
    end
end

always @(posedge s_clk or posedge rst) begin
    if(rst) begin
        input_left_channel <= 0;
        input_right_channel <= 0;
    end
    else if(s_clk)
        if(!lr_clk) begin
            input_left_channel[counter] <= rx_i2s_data;
        end
        else if(lr_clk) begin
            input_right_channel[counter] <= rx_i2s_data;
        end
end

endmodule
