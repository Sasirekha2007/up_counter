module up_counter (
    input  wire clk,       
    input  wire rst,      
	 input  wire d,
    output reg  [2:0] q   
);

initial begin
     q <= 3'b0000;
	 end

always @(posedge clk) 
begin
q <= 3'b000;
    if (rst) 
        q <= 3'b000;       
    else if(d)
        q <= q + 1;       
		  else
		  q <= q - 1;
end

endmodule
