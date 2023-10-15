module dflipflop(clk, rst, y);
   input clk, rst;    
   output reg y;
  
  localparam [1:0] BP_Init = 0,
                    BP_Out1 = 1,
                    BP_Out2 = 2,
  					BP_Out3 = 3;
   
   reg [1:0] BP_State;
   
   always @(posedge clk) begin
      if (rst) begin
         // Initial state
         BP_State = BP_Init;
      end
      else begin
         // State transitions
         case (BP_State) 
            BP_Init: begin
               BP_State = BP_Out1;
            end
            
            BP_Out1: begin
               BP_State = BP_Out2;
            end
            
            BP_Out2: begin
               BP_State = BP_Out3;
            end
           
           BP_Out3: begin
             BP_State = BP_Init;
           end
            
            default: begin
               BP_State = BP_Init;
            end
         endcase
      end
      
      // State actions
      case (BP_State) 
         BP_Init: begin
            y = 1;
         end
            
         BP_Out1: begin
            y = 0;
         end
            
         BP_Out2: begin
            y = 0;
         end
        
        BP_Out3: begin
          y = 1;
        end
         
         default: begin
            y = 1;
         end
      endcase
   end
endmodule

module divider(clk, rst, y1, y2);
  input clk, rst;    
  output reg y1, y2;
  
  dflipflop d0(clk, rst, y1);
  dflipflop d1(y1, rst, y2);
  
endmodulemodule dflipflop(clk, rst, y);
   input clk, rst;    
   output reg y;
  
  localparam [1:0] BP_Init = 0,
                    BP_Out1 = 1,
                    BP_Out2 = 2,
  					BP_Out3 = 3;
   
   reg [1:0] BP_State;
   
   always @(posedge clk) begin
      if (rst) begin
         // Initial state
         BP_State = BP_Init;
      end
      else begin
         // State transitions
         case (BP_State) 
            BP_Init: begin
               BP_State = BP_Out1;
            end
            
            BP_Out1: begin
               BP_State = BP_Out2;
            end
            
            BP_Out2: begin
               BP_State = BP_Out3;
            end
           
           BP_Out3: begin
             BP_State = BP_Init;
           end
            
            default: begin
               BP_State = BP_Init;
            end
         endcase
      end
      
      // State actions
      case (BP_State) 
         BP_Init: begin
            y = 1;
         end
            
         BP_Out1: begin
            y = 0;
         end
            
         BP_Out2: begin
            y = 0;
         end
        
        BP_Out3: begin
          y = 1;
        end
         
         default: begin
            y = 1;
         end
      endcase
   end
endmodule

module divider(clk, rst, y1, y2);
  input clk, rst;    
  output reg y1, y2;
  
  dflipflop d0(clk, rst, y1);
  dflipflop d1(y1, rst, y2);
  
endmodule