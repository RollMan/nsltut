/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 23 23:41:33 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module counter01 ( p_reset , m_clock , led );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output led;
  wire led;
  reg [31:0] cnt;
  reg led_stat;
  wire [31:0] _countup_ins_value;
  wire _countup_ins_get_cnt;
  wire _countup_ins_p_reset;
  wire _countup_ins_m_clock;
  wire _net_0;
countup countup_ins (.m_clock(m_clock), .p_reset(p_reset), .get_cnt(_countup_ins_get_cnt), .value(_countup_ins_value));


// synthesis translate_off
// synopsys translate_off
always @(posedge _countup_ins_get_cnt)
  begin
#1 if (_countup_ins_get_cnt===1'bx)
 begin
$display("Warning: control hazard(counter01:_countup_ins_get_cnt) at %d",$time);
 end
#1 if (((1'b1)===1'bx) || (1'b1)===1'bx) $display("hazard (1'b1 || 1'b1) line 15 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _countup_ins_get_cnt = 1'b1;
   assign  _countup_ins_p_reset = p_reset;
   assign  _countup_ins_m_clock = m_clock;
   assign  _net_0 = (cnt==32'b11111111111111111111111111110000);
   assign  led = led_stat;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 32'b00000000000000000000000000000000;
else   cnt <= _countup_ins_value;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     led_stat <= 1'b0;
else if (_net_0)
      led_stat <= (~led_stat);
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 23 23:41:33 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 23 23:41:33 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module countup ( p_reset , m_clock , value , get_cnt );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output [31:0] value;
  wire [31:0] value;
  input get_cnt;
  wire get_cnt;
  reg [31:0] cnter;
  wire [31:0] res;
  wire _net_1;

   assign  res = 
// synthesis translate_off
// synopsys translate_off
(get_cnt)? 
// synthesis translate_on
// synopsys translate_on
((get_cnt)?cnter:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = (cnter >= 32'b11111111111111111111111111111111);
   assign  value = 
// synthesis translate_off
// synopsys translate_off
(get_cnt)? 
// synthesis translate_on
// synopsys translate_on
((get_cnt)?res:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnter <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_1)&_net_1))   cnter <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_1))
      cnter <= (cnter+32'b00000000000000000000000000000001);
else if (_net_1)
      cnter <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_1)|_net_1)==1'b1) ||
 (((~_net_1)|_net_1)==1'b0) ) begin
 if (((~_net_1)&_net_1))
 begin $display("Warning: assign collision(countup:cnter) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(countup:cnter) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 23 23:41:33 2016
 Licensed to :EVALUATION USER
*/
