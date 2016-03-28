
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:51:45 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module counter ( p_reset , m_clock , reset , f , countup );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input reset;
  wire reset;
  output [15:0] f;
  wire [15:0] f;
  input countup;
  wire countup;
  reg [31:0] cnt;
  reg [15:0] f_r;
  wire _net_0;
  wire _net_1;
  wire _net_2;

   assign  _net_0 = (~reset);
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(countup)? 
// synthesis translate_on
// synopsys translate_on
((countup)?(cnt != 32'b00000000000000000000001010001010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(countup)? 
// synthesis translate_on
// synopsys translate_on
((countup)?(cnt==32'b00000000000000000000001010001010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  f = f_r;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((countup&_net_2)&(countup&_net_1))|(((countup&_net_2)|(countup&_net_1))&_net_0)))   cnt <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((countup&_net_2))
      cnt <= 32'b00000000000000000000000000000000;
else if ((countup&_net_1))
      cnt <= (cnt+32'b00000000000000000000000000000001);
else if (_net_0)
      cnt <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((countup&_net_2)|(countup&_net_1))|_net_0)==1'b1) ||
 ((((countup&_net_2)|(countup&_net_1))|_net_0)==1'b0) ) begin
 if ((((countup&_net_2)&(countup&_net_1))|(((countup&_net_2)|(countup&_net_1))&_net_0)))
 begin $display("Warning: assign collision(counter:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(counter:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     f_r <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((countup&_net_2)&_net_0))   f_r <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((countup&_net_2))
      f_r <= (f_r+16'b0000000000000001);
else if (_net_0)
      f_r <= 16'b0000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((countup&_net_2)|_net_0)==1'b1) ||
 (((countup&_net_2)|_net_0)==1'b0) ) begin
 if (((countup&_net_2)&_net_0))
 begin $display("Warning: assign collision(counter:f_r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(counter:f_r) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:51:45 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:51:45 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_r ( p_reset , m_clock , RDX );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input RDX;
  wire RDX;
  reg counter_reset;
  reg [7:0] recieved;
  reg [3:0] loop;
  reg receive;
  wire _counter_i_reset;
  wire [15:0] _counter_i_f;
  wire _counter_i_countup;
  wire _counter_i_p_reset;
  wire _counter_i_m_clock;
  wire _proc_receive_set;
  wire _proc_receive_reset;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  reg _reg_8;
  reg _reg_9;
  reg _reg_10;
  reg _reg_11;
  reg _reg_12;
  reg _reg_13;
  wire _net_14;
  wire _reg_9_goto;
  wire _reg_11_goin;
  wire _net_15;
  wire _net_16;
  wire _reg_11_goto;
  wire _reg_8_goin;
counter counter_i (.m_clock(m_clock), .p_reset(p_reset), .countup(_counter_i_countup), .f(_counter_i_f), .reset(_counter_i_reset));

   assign  _counter_i_reset = counter_reset;

// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_countup)
  begin
#1 if (_counter_i_countup===1'bx)
 begin
$display("Warning: control hazard(serial_r:_counter_i_countup) at %d",$time);
 end
#1 if ((((_reg_10&receive))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_10&receive) || 1'b1) line 66 at %d\n",$time);
#1 if (((_net_6)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_6 || 1'b1) line 49 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_countup = (_reg_10&receive)|
    _net_6;
   assign  _counter_i_p_reset = p_reset;
   assign  _counter_i_m_clock = m_clock;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_set)
  begin
#1 if (_proc_receive_set===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_set) at %d",$time);
 end
#1 if ((((_net_6&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_6&_net_7) || 1'b1) line 51 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_set = (_net_6&_net_7);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_reset)
  begin
#1 if (_proc_receive_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_reset) at %d",$time);
 end
#1 if ((((_reg_8&receive))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_8&receive) || 1'b1) line 73 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_reset = (_reg_8&receive);
   assign  _net_5 = (RDX != 1'b0);
   assign  _net_6 = (RDX==1'b0);
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?(_counter_i_f==16'b0000000000000011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
((_reg_9&receive))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_9&receive))?(loop < 4'b1000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_9_goto)
  begin
#1 if (_reg_9_goto===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_9_goto) at %d",$time);
 end
#1 if (((((_reg_9&receive)&_net_14))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_9&receive)&_net_14) || 1'b1) line 72 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_9_goto = ((_reg_9&receive)&_net_14);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_11_goin)
  begin
#1 if (_reg_11_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_11_goin) at %d",$time);
 end
#1 if (((((_reg_9&receive)&_net_14))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_9&receive)&_net_14) || 1'b1) line 72 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goin = ((_reg_9&receive)&_net_14);
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
((_reg_9&receive))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_9&receive))?(_counter_i_f==16'b0000000000001000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_16 = 
// synthesis translate_off
// synopsys translate_off
((_reg_11&receive))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_11&receive))?(~(loop < 4'b1000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_11_goto)
  begin
#1 if (_reg_11_goto===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_11_goto) at %d",$time);
 end
#1 if (((((_reg_11&receive)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_16) || 1'b1) line 72 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goto = ((_reg_11&receive)&_net_16);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_8_goin)
  begin
#1 if (_reg_8_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_8_goin) at %d",$time);
 end
#1 if (((((_reg_11&receive)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_16) || 1'b1) line 72 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_8_goin = ((_reg_11&receive)&_net_16);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     counter_reset <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((receive&_reg_13)&((_reg_11&receive)&(~_net_16)))|(((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))&((_reg_9&receive)&_net_15)))|((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))&_net_6))|(((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))|_net_6)&_net_5)))   counter_reset <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((receive&_reg_13))
      counter_reset <= 1'b0;
else if (((_reg_11&receive)&(~_net_16)))
      counter_reset <= 1'b1;
else if (((_reg_9&receive)&_net_15))
      counter_reset <= 1'b0;
else if (_net_6)
      counter_reset <= 1'b1;
else if (_net_5)
      counter_reset <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))|_net_6)|_net_5)==1'b1) ||
 ((((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))|_net_6)|_net_5)==1'b0) ) begin
 if ((((((receive&_reg_13)&((_reg_11&receive)&(~_net_16)))|(((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))&((_reg_9&receive)&_net_15)))|((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))&_net_6))|(((((receive&_reg_13)|((_reg_11&receive)&(~_net_16)))|((_reg_9&receive)&_net_15))|_net_6)&_net_5)))
 begin $display("Warning: assign collision(serial_r:counter_reset) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_r:counter_reset) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin
if (((_reg_9&receive)&_net_15))
      recieved <= ((recieved<<1)|({7'b0000000,RDX}));
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((_reg_12&receive)&((_reg_9&receive)&_net_15)))   loop <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_reg_12&receive))
      loop <= 4'b0000;
else if (((_reg_9&receive)&_net_15))
      loop <= (loop+4'b0001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_reg_12&receive)|((_reg_9&receive)&_net_15))==1'b1) ||
 (((_reg_12&receive)|((_reg_9&receive)&_net_15))==1'b0) ) begin
 if (((_reg_12&receive)&((_reg_9&receive)&_net_15)))
 begin $display("Warning: assign collision(serial_r:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_r:loop) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     receive <= 1'b0;
else if ((_proc_receive_set|_proc_receive_reset))
      receive <= _proc_receive_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_8 <= 1'b0;
else if ((_proc_receive_reset|(((_reg_11&receive)&_net_16)|(_reg_8|_reg_9))))
      _reg_8 <= ((((_reg_11&receive)&_net_16)|(_reg_9&(~_reg_9_goto)))&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_9 <= 1'b0;
else if ((_proc_receive_reset|(_reg_9|_reg_10)))
      _reg_9 <= (_reg_10&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_10 <= 1'b0;
else if ((_proc_receive_reset|(_reg_10|_reg_11)))
      _reg_10 <= ((_reg_11&(~_reg_11_goto))&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_11 <= 1'b0;
else if ((_proc_receive_reset|(((_reg_9&receive)&_net_14)|(_reg_11|_reg_12))))
      _reg_11 <= ((((_reg_9&receive)&_net_14)|_reg_12)&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_12 <= 1'b0;
else if ((_proc_receive_reset|(_reg_13|(_reg_12|_reg_13))))
      _reg_12 <= (_reg_13&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_13 <= 1'b0;
else if (((_proc_receive_set|_proc_receive_reset)|_reg_13))
      _reg_13 <= _proc_receive_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:51:45 2016
 Licensed to :EVALUATION USER
*/
