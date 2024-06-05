`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 17:40:40
// Design Name: 
// Module Name: clk_divider
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


module clk_divider
#(
    parameter DIVIDER_VALUE = 2
)
(
    input clk_main,
    input rst,
    output clk_divide
);

reg [11:0] counter;
reg out_buf;

assign clk_divide = out_buf;

always @(posedge clk_main or posedge rst)
begin
    if(rst)
    begin
        counter <= 0;
        out_buf <=0;
    end
    else if(clk_main)
    begin
        if(counter == DIVIDER_VALUE - 1)
        begin
            out_buf <= ~out_buf;
            counter <= 0;
        end
        else
            counter <= counter + 1;         
    end
end
endmodule
