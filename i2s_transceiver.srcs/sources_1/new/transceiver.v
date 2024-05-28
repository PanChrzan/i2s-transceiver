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
wire [31:0] output_data_reg;
// fifo signals
reg write;
reg read;
wire fifo_empty;
wire fifo_full;

    sync_fifo #(32, 8) fifo (
        .clk(s_clk),
        .rst(rst),
        .writeEnable(write),
        .readEnable(read),
        .readData(output_data_reg),
        .writeData(input_data_reg),
        .empty(fifo_empty),
        .full(fifo_full)
    );

// reg previous_lr_state;
reg [4:0] write_to_fifo_counter;
reg [4:0] read_from_fifo_counter;
assign tx_i2s_data = output_data_reg[read_from_fifo_counter];

    always @(negedge s_clk or posedge rst) begin
        if(rst) begin
            input_data_reg <= 32'h00000000;
            read_from_fifo_counter <= 31;
        end
        else if(~s_clk) begin
            read_from_fifo_counter <= read_from_fifo_counter - 1;
            input_data_reg[31:0] <= {input_data_reg[30:0], rx_i2s_data};
        end
    end

    always @(posedge s_clk or posedge rst) begin
        if(rst) begin
            write <= 0;
            read <= 0;
            write_to_fifo_counter <= 0;
        end
        else if (s_clk) begin
            write_to_fifo_counter <= write_to_fifo_counter + 1;

            if (write_to_fifo_counter == 31) begin
                write <= 1;
                read <= 1;
            end
            else begin
                write <= 0;
                read <= 0;
            end
        end
    end

endmodule
