module gray_to_binary (input [3:0] gray, output [3:0] binary);
   assign binary[0] = gray[0];
   assign binary[1] = gray[0] ^ gray[1];
   assign binary[2] = gray[0] ^ gray[1] ^ gray[2];
   assign binary[3] = gray[0] ^ gray[1] ^ gray[2] ^ gray[3];
endmodule