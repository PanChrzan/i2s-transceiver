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


module transceiver(
    input CLK_IN,
    input s_clk,
    input rst,
    input lr_clk,
    
    input rx_i2s_data,
    input [31:0] tx_i2s_data_reg,
    output tx_i2s_data,
    output reg data_valid,
    output reg [31:0] rx_i2s_data_reg
    );

reg [23:0] input_left_channel;
reg [23:0] input_right_channel;
//reg [31:0] output_data_reg;
reg last_s_clk_state;
reg last_lr_state;

reg [4:0] counter;
//reg last_data_valid;

assign tx_i2s_data = (counter<24) ? tx_i2s_data_reg[counter] : 0;

always @(posedge CLK_IN or posedge rst) begin
    if(rst) begin
        counter <= 0;
//        output_data_reg <= 32'hFFFF_FFFF;
        input_left_channel <= 24'hFFFF_FF;
        input_right_channel <= 24'hFFFF_FF;
        rx_i2s_data_reg <= 0;
        last_lr_state <= 0;
        last_s_clk_state <= 0;
        data_valid <= 0;
//        last_data_valid <= 0;
    end
    else begin
        data_valid <= 0;
//        last_data_valid <= data_valid;
        last_s_clk_state <= s_clk;
        if ((last_s_clk_state != s_clk) & s_clk == 1) begin
            if(counter < 31) begin
                counter <= counter + 1;
                last_lr_state <= lr_clk;
            end
            else if(last_lr_state != lr_clk) begin
                counter <= 0;
                // output valid rx data from right channel
                if (last_lr_state == 0) begin
                    rx_i2s_data_reg[23:0] <= input_right_channel;
                    data_valid <= 1;
                end
                // output valid rx data from left channel
                else if (last_lr_state == 1) begin
                    rx_i2s_data_reg[23:0] <= input_left_channel;
                    data_valid <= 1;
                end
            end
        end
        if ((last_s_clk_state != s_clk) & s_clk == 1) begin
            if(!lr_clk) begin
                input_left_channel[counter] <= rx_i2s_data;
            end
            else if(lr_clk) begin
                input_right_channel[counter] <= rx_i2s_data;
            end
        end
//        if (last_data_valid) begin
//            output_data_reg <= rx_i2s_data_reg;
//        end
    end
end

// always @(posedge CLK_IN or posedge rst) begin
//     if(rst) begin
//         input_left_channel <= 24'hFFFF_FF;
//         input_right_channel <= 24'hFFFF_FF;
//     end
//     else begin
//         if(!lr_clk) begin
//             input_left_channel[counter] <= rx_i2s_data;
//         end
//         else if(lr_clk) begin
//             input_right_channel[counter] <= rx_i2s_data;
//         end
//     end
// end



//ila_0 rx_tx_ila (
// 	.clk(CLK_IN), // input wire clk


// 	.probe0(s_clk), // input wire [0:0]  probe0  
// 	.probe1(lr_clk), // input wire [0:0]  probe1 
// 	.probe2(output_data_reg), // input wire [23:0]  probe2 
// 	.probe3(counter), // input wire [4:0]  probe3 
// 	.probe4(rx_i2s_data), // input wire [0:0]  probe4 
// 	.probe5(last_lr_state) // input wire [0:0]  probe5
//);

endmodule