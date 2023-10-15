module divider_testbench();

reg clk_tb, rst_tb;
wire y1_tb, y2_tb;

localparam CLK_PERIOD = 20;

  divider uut(clk_tb, rst_tb,  y1_tb, y2_tb);

initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);

    clk_tb = 0;
    toggle_clk;
    toggle_clk; 
    toggle_clk;
    toggle_clk;
    toggle_clk;   
    toggle_clk;    
    toggle_clk;
    toggle_clk;
    toggle_clk;   
    toggle_clk;    
    toggle_clk;
    toggle_clk;
  
  end
   task toggle_clk;
    begin
      clk_tb = ~clk_tb; #10;
      
    end
  endtask

initial begin

rst_tb = 1;
#CLK_PERIOD rst_tb = 0;
end

endmodule
