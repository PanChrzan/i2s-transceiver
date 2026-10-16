`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 18:06:47
// Design Name: 
// Module Name: i2s_mem
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


module i2s_mem #(
    parameter MEM_DEPTH = 20
    )
    (
    input CLK_IN,
    input rst,
    input data_valid,
    input [31:0] i2s_rx_data,

    //ports for axis
    output [31:0] axis_m_tdata,
    output axis_m_tvalid,
    output axis_m_tlast,

    output [31:0] i2s_tx_data
    );
    
localparam IDLE = 0,
           TRANSFER_L = 1,
           TRANSFER_H = 2,
           WAIT = 3;
reg [1:0] state = IDLE;
reg [$clog2(MEM_DEPTH)-1:0] mem_counter;

reg [$clog2(MEM_DEPTH)-1:0] counter;
//reg which_half = 0;
reg [31:0] receive_data [MEM_DEPTH-1:0];
reg [31:0] transmit_data [MEM_DEPTH-1:0];

reg axis_m_tvalid_reg = 0;

assign i2s_tx_data = transmit_data[counter];
assign axis_m_tdata = receive_data[mem_counter];
assign axis_m_tvalid = axis_m_tvalid_reg;
assign axis_m_tlast = ((mem_counter == (MEM_DEPTH/2)-1) || (mem_counter == MEM_DEPTH-1));

always@(posedge CLK_IN) begin
    if(rst) begin
        counter <= 0;
    end
    if(data_valid) begin
        counter <= counter + 1;
        receive_data[counter] <= i2s_rx_data;
        if(counter >= MEM_DEPTH-1) begin
            counter <= 0;
        end
    end
end

always@(posedge CLK_IN) begin
    if(!rst) begin
        state = IDLE;
        mem_counter <= 0;
        axis_m_tvalid_reg <= 0;
    end
    else begin
    case (state)
        IDLE: begin
            if(counter == (MEM_DEPTH/2)) begin
                state <= TRANSFER_L;
                axis_m_tvalid_reg <= 1;
            end
            if(counter == 0) begin
                state <= TRANSFER_H;
                axis_m_tvalid_reg <= 1;
            end
        end
        TRANSFER_L: begin
            mem_counter <= mem_counter + 1;
            transmit_data[mem_counter] <= receive_data[mem_counter];
            if(mem_counter == (MEM_DEPTH/2)-1) begin
                state <= WAIT;
                axis_m_tvalid_reg <= 0;
            end
        end
        TRANSFER_H: begin
            mem_counter <= mem_counter + 1;
            transmit_data[mem_counter] <= receive_data[mem_counter];
            if(mem_counter == MEM_DEPTH-1) begin
                state <= WAIT;
                axis_m_tvalid_reg <= 0;
                mem_counter <= 0;
            end
        end
        WAIT: begin
            if(counter != (MEM_DEPTH/2) && counter != 0)
            begin
                state <= IDLE;
            end
        end
    endcase
    end
end
endmodule
