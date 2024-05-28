`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 16:31:08
// Design Name: 
// Module Name: sync_fifo
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

module sync_fifo #(
  parameter  DataWidth = 32,
  parameter  Depth     = 8,
  localparam PtrWidth  = $clog2(Depth)
) (
  input clk,
  input rst,
  input writeEnable,
  input [DataWidth-1:0] writeData,
  input readEnable,
  output reg [DataWidth-1:0] readData,
  output full,
  output empty
);

  reg [DataWidth-1:0] mem[Depth-1:0];
  reg [PtrWidth:0] wrPtr;
  reg [PtrWidth:0] wrPtrNext;
  reg [PtrWidth:0] rdPtr;
  reg [PtrWidth:0] rdPtrNext;

  always@(*) begin
    wrPtrNext = wrPtr;
    rdPtrNext = rdPtr;
    if (writeEnable & ~full) begin
      wrPtrNext = wrPtr + 1;
    end
    if (readEnable & ~empty) begin
      rdPtrNext = rdPtr + 1;
    end
  end

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      wrPtr <= 0;
      rdPtr <= 0;
    end
    else if(clk) begin
      wrPtr <= wrPtrNext;
      rdPtr <= rdPtrNext;
      if(writeEnable & ~full) begin
          mem[wrPtr[PtrWidth-1:0]] <= writeData;
      end
      if(readEnable & ~empty) begin
          readData <= mem[rdPtr[PtrWidth-1:0]];
      end
    end
  end

  // assign readData = mem[rdPtr[PtrWidth-1:0]];
  // assign readData = mem[Depth-1];

  assign empty = (wrPtr[PtrWidth] == rdPtr[PtrWidth]) && (wrPtr[PtrWidth-1:0] == rdPtr[PtrWidth-1:0]);
  assign full  = (wrPtr[PtrWidth] != rdPtr[PtrWidth]) && (wrPtr[PtrWidth-1:0] == rdPtr[PtrWidth-1:0]);

endmodule