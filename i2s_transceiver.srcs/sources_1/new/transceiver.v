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
    input s_clk,
    input rst,
    input rx_i2s_data,
    output tx_i2s_data
    );

reg [31:0] input_data_reg;
reg [31:0] output_data_reg;

reg [4:0] counter;

assign tx_i2s_data = output_data_reg[counter];

always @(negedge s_clk or posedge rst) begin
    if(rst) begin
        counter <= 0;
        output_data_reg <= 0;
    end
    else if(!s_clk) begin
        if(counter < 31) begin
            counter <= counter + 1;
        end
        else begin
            counter <= 0;
            output_data_reg <= input_data_reg;
        end
    end
end

always @(posedge s_clk or posedge rst) begin
    if(rst) begin
        input_data_reg <= 0;
    end
    else if(s_clk)
        input_data_reg[counter] <= rx_i2s_data;
end

endmodule
