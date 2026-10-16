`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 09:48:50
// Design Name: 
// Module Name: pipeline_buffer
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


module pipeline_buffer(
    input CLK_IN,
    input rst_i,
    input data_valid_i,
    input [31:0] data_i,
    output reg data_ready_o,
    input receiver_ready_i,
    output reg [31:0] data_o
    );

localparam IDLE = 0,
           TRANSFER_L = 1,
           TRANSFER_H = 2,
           WAIT = 3;
reg [1:0] state = IDLE;

reg [5:0] counter = 0;
reg [31:0] data_mem [39:0];

always@(posedge CLK_IN) begin
    if(rst_i) begin
        counter <= 0;
    end
    else if(data_valid_i) begin
        counter <= counter + 1;
        data_mem[counter] <= data_i;
        if(counter >= 39) begin
            counter <= 0;
        end
    end
end

always@ (posedge CLK_IN) begin
    if(rst_i) begin
    end
    else begin
        case (state)
            IDLE: begin
                if (counter == 20) begin
                    state <= TRANSFER_L;
                    data_ready_o <= 1;
                end
            end
        
        endcase
    end
end
endmodule
