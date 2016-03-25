/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Mar 24 19:04:32 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module ltika ( p_reset , m_clock , led );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output led;
  wire led;
  reg [31:0] cnt;
  reg led_stat;
  wire _net_0;
  wire _net_1;

   assign  _net_0 = (cnt != 32'b00000010000000000000000000000000);
   assign  _net_1 = (cnt==32'b00000001000000000000000000000000);
   assign  led = led_stat;
always @(posedge m_clock or negedge p_reset)
  begin
if (p_reset==0)
     cnt <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_1&_net_0))   cnt <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_1)
      cnt <= 32'b00000000000000000000000000000000;
else if (_net_0)
      cnt <= (cnt+32'b00000000000000000000000000000001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_1|_net_0)==1'b1) ||
 ((_net_1|_net_0)==1'b0) ) begin
 if ((_net_1&_net_0))
 begin $display("Warning: assign collision(ltika:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(ltika:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (p_reset==0)
     led_stat <= 1'b1;
else if (_net_1)
      led_stat <= (~led_stat);
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Mar 24 19:04:32 2016
 Licensed to :EVALUATION USER
*/
