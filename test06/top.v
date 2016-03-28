
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
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
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
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
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module top ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] data;
  reg counter_reset;
  reg startf;
  reg [3:0] loop;
  reg DXT_r;
  reg start;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _sr_RDX;
  wire _sr_p_reset;
  wire _sr_m_clock;
  wire _counter_i_reset;
  wire [15:0] _counter_i_f;
  wire _counter_i_countup;
  wire _counter_i_p_reset;
  wire _counter_i_m_clock;
  wire _net_21;
  reg _reg_22;
  reg _reg_23;
  reg _reg_24;
  reg _reg_25;
  reg _reg_26;
  reg _reg_27;
  reg _reg_28;
  reg _reg_29;
  reg _reg_30;
  reg _reg_31;
  reg _reg_32;
  wire _net_35;
  wire _reg_24_goto;
  wire _reg_26_goin;
  wire _net_36;
  wire _net_37;
  wire _reg_26_goto;
  wire _reg_23_goin;
  wire _net_38;
  wire _reg_31_goto;
  wire _reg_30_goin;
  wire _net_39;
  wire _reg_31_goin;
counter counter_i (.m_clock(m_clock), .p_reset(p_reset), .countup(_counter_i_countup), .f(_counter_i_f), .reset(_counter_i_reset));
serial_r sr (.m_clock(m_clock), .p_reset(p_reset), .RDX(_sr_RDX));

always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(top:_proc_start_set) at %d",$time);
 end
#1 if (((_net_21)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_21 || 1'b1) line 23 at %d\n",$time);
 end
   assign  _proc_start_set = _net_21;
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(top:_proc_start_reset) at %d",$time);
 end
#1 if ((((_reg_22&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_22&start) || 1'b1) line 49 at %d\n",$time);
 end
   assign  _proc_start_reset = (_reg_22&start);
   assign  _sr_RDX = DXT_r;
   assign  _sr_p_reset = p_reset;
   assign  _sr_m_clock = m_clock;
   assign  _counter_i_reset = counter_reset;
always @(posedge _counter_i_countup)
  begin
#1 if (_counter_i_countup===1'bx)
 begin
$display("Warning: control hazard(top:_counter_i_countup) at %d",$time);
 end
#1 if ((((_reg_25&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_25&start) || 1'b1) line 41 at %d\n",$time);
 end
   assign  _counter_i_countup = (_reg_25&start);
   assign  _counter_i_p_reset = p_reset;
   assign  _counter_i_m_clock = m_clock;
   assign  _net_21 = (startf==1'b0);
always @(posedge m_clock)
  begin
    if((_reg_23&start))
    begin
    $display("FINISH");
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_23&start))
    begin
    $finish;
    end
  end
   assign  _net_35 = ((_reg_24&start))? (((_reg_24&start))?(loop < 4'b1000):1'b0):1'bx;
always @(posedge _reg_24_goto)
  begin
#1 if (_reg_24_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_24_goto) at %d",$time);
 end
#1 if (((((_reg_24&start)&_net_35))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_24&start)&_net_35) || 1'b1) line 47 at %d\n",$time);
 end
   assign  _reg_24_goto = ((_reg_24&start)&_net_35);
always @(posedge _reg_26_goin)
  begin
#1 if (_reg_26_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_26_goin) at %d",$time);
 end
#1 if (((((_reg_24&start)&_net_35))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_24&start)&_net_35) || 1'b1) line 47 at %d\n",$time);
 end
   assign  _reg_26_goin = ((_reg_24&start)&_net_35);
   assign  _net_36 = ((_reg_24&start))? (((_reg_24&start))?(_counter_i_f==16'b0000000000001000):1'b0):1'bx;
   assign  _net_37 = ((_reg_26&start))? (((_reg_26&start))?(~(loop < 4'b1000)):1'b0):1'bx;
always @(posedge _reg_26_goto)
  begin
#1 if (_reg_26_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_26_goto) at %d",$time);
 end
#1 if (((((_reg_26&start)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_26&start)&_net_37) || 1'b1) line 47 at %d\n",$time);
 end
   assign  _reg_26_goto = ((_reg_26&start)&_net_37);
always @(posedge _reg_23_goin)
  begin
#1 if (_reg_23_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_23_goin) at %d",$time);
 end
#1 if (((((_reg_26&start)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_26&start)&_net_37) || 1'b1) line 47 at %d\n",$time);
 end
   assign  _reg_23_goin = ((_reg_26&start)&_net_37);
   assign  _net_38 = ((_reg_31&start))? (((_reg_31&start))?(~(loop < 4'b0011)):1'b0):1'bx;
always @(posedge _reg_31_goto)
  begin
#1 if (_reg_31_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_31_goto) at %d",$time);
 end
#1 if ((((((_reg_31&start)&(~_net_38))&_net_39))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_31&start)&(~_net_38))&_net_39) || 1'b1) line 31 at %d\n",$time);
#1 if (((((_reg_31&start)&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_31&start)&_net_38) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_31_goto = (((_reg_31&start)&(~_net_38))&_net_39)|
    ((_reg_31&start)&_net_38);
always @(posedge _reg_30_goin)
  begin
#1 if (_reg_30_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_30_goin) at %d",$time);
 end
#1 if (((((_reg_31&start)&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_31&start)&_net_38) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_30_goin = ((_reg_31&start)&_net_38);
   assign  _net_39 = (((_reg_31&start)&(~_net_38)))? ((((_reg_31&start)&(~_net_38)))?(loop < 4'b0011):1'b0):1'bx;
always @(posedge _reg_31_goin)
  begin
#1 if (_reg_31_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_31_goin) at %d",$time);
 end
#1 if ((((((_reg_31&start)&(~_net_38))&_net_39))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_31&start)&(~_net_38))&_net_39) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_31_goin = (((_reg_31&start)&(~_net_38))&_net_39);
always @(posedge m_clock)
  begin
if (_net_21)
      data <= 8'b01101101;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     counter_reset <= 1'b0;
else if (((((_reg_30&start)&(_reg_27&start))|(((_reg_30&start)|(_reg_27&start))&((_reg_26&start)&(~_net_37))))|((((_reg_30&start)|(_reg_27&start))|((_reg_26&start)&(~_net_37)))&((_reg_24&start)&_net_36))))   counter_reset <= 1'bx; 
  else if ((_reg_30&start))
      counter_reset <= 1'b1;
else if ((_reg_27&start))
      counter_reset <= 1'b0;
else if (((_reg_26&start)&(~_net_37)))
      counter_reset <= 1'b1;
else if (((_reg_24&start)&_net_36))
      counter_reset <= 1'b0;
end
always @(posedge m_clock)
  begin
if ((((((_reg_30&start)|(_reg_27&start))|((_reg_26&start)&(~_net_37)))|((_reg_24&start)&_net_36))==1'b1) ||
 (((((_reg_30&start)|(_reg_27&start))|((_reg_26&start)&(~_net_37)))|((_reg_24&start)&_net_36))==1'b0) ) begin
 if (((((_reg_30&start)&(_reg_27&start))|(((_reg_30&start)|(_reg_27&start))&((_reg_26&start)&(~_net_37))))|((((_reg_30&start)|(_reg_27&start))|((_reg_26&start)&(~_net_37)))&((_reg_24&start)&_net_36))))
 begin $display("Warning: assign collision(top:counter_reset) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(top:counter_reset) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     startf <= 1'b0;
else if (_net_21)
      startf <= 1'b1;
end
always @(posedge m_clock)
  begin
if (((((start&_reg_32)&((_reg_31&start)&(~_net_38)))|(((start&_reg_32)|((_reg_31&start)&(~_net_38)))&(_reg_28&start)))|((((start&_reg_32)|((_reg_31&start)&(~_net_38)))|(_reg_28&start))&((_reg_24&start)&_net_36))))   loop <= 4'bx; 
  else if ((start&_reg_32))
      loop <= 4'b0000;
else if (((_reg_31&start)&(~_net_38)))
      loop <= (loop+4'b0001);
else if ((_reg_28&start))
      loop <= 4'b0000;
else if (((_reg_24&start)&_net_36))
      loop <= (loop+4'b0001);
end
always @(posedge m_clock)
  begin
if ((((((start&_reg_32)|((_reg_31&start)&(~_net_38)))|(_reg_28&start))|((_reg_24&start)&_net_36))==1'b1) ||
 (((((start&_reg_32)|((_reg_31&start)&(~_net_38)))|(_reg_28&start))|((_reg_24&start)&_net_36))==1'b0) ) begin
 if (((((start&_reg_32)&((_reg_31&start)&(~_net_38)))|(((start&_reg_32)|((_reg_31&start)&(~_net_38)))&(_reg_28&start)))|((((start&_reg_32)|((_reg_31&start)&(~_net_38)))|(_reg_28&start))&((_reg_24&start)&_net_36))))
 begin $display("Warning: assign collision(top:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(top:loop) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     DXT_r <= 1'b1;
else if (((_reg_29&start)&((_reg_24&start)&_net_36)))   DXT_r <= 1'bx; 
  else if ((_reg_29&start))
      DXT_r <= 1'b0;
else if (((_reg_24&start)&_net_36))
      DXT_r <= (data[loop]);
end
always @(posedge m_clock)
  begin
if ((((_reg_29&start)|((_reg_24&start)&_net_36))==1'b1) ||
 (((_reg_29&start)|((_reg_24&start)&_net_36))==1'b0) ) begin
 if (((_reg_29&start)&((_reg_24&start)&_net_36)))
 begin $display("Warning: assign collision(top:DXT_r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(top:DXT_r) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     start <= 1'b0;
else if ((_proc_start_set|_proc_start_reset))
      start <= _proc_start_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_22 <= 1'b0;
else if ((_proc_start_reset|(_reg_22|_reg_23)))
      _reg_22 <= (_reg_23&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_23 <= 1'b0;
else if ((_proc_start_reset|(((_reg_26&start)&_net_37)|(_reg_23|_reg_24))))
      _reg_23 <= ((((_reg_26&start)&_net_37)|(_reg_24&(~_reg_24_goto)))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_24 <= 1'b0;
else if ((_proc_start_reset|(_reg_24|_reg_25)))
      _reg_24 <= (_reg_25&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_25 <= 1'b0;
else if ((_proc_start_reset|(_reg_25|_reg_26)))
      _reg_25 <= ((_reg_26&(~_reg_26_goto))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_26 <= 1'b0;
else if ((_proc_start_reset|(((_reg_24&start)&_net_35)|(_reg_26|_reg_27))))
      _reg_26 <= ((((_reg_24&start)&_net_35)|_reg_27)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_27 <= 1'b0;
else if ((_proc_start_reset|(_reg_27|_reg_28)))
      _reg_27 <= (_reg_28&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_28 <= 1'b0;
else if ((_proc_start_reset|(_reg_28|_reg_29)))
      _reg_28 <= (_reg_29&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_29 <= 1'b0;
else if ((_proc_start_reset|(_reg_29|_reg_30)))
      _reg_29 <= (_reg_30&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_30 <= 1'b0;
else if ((_proc_start_reset|(((_reg_31&start)&_net_38)|(_reg_30|_reg_31))))
      _reg_30 <= ((((_reg_31&start)&_net_38)|(_reg_31&(~_reg_31_goto)))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_31 <= 1'b0;
else if ((_proc_start_reset|(((((_reg_31&start)&(~_net_38))&_net_39)|_reg_32)|(_reg_31|_reg_32))))
      _reg_31 <= ((((((_reg_31&start)&(~_net_38))&_net_39)|_reg_32)|_reg_32)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_32 <= 1'b0;
else if (((_proc_start_set|_proc_start_reset)|_reg_32))
      _reg_32 <= _proc_start_set;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:58:58 2016
 Licensed to :EVALUATION USER:
*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg p_reset;
	reg m_clock;

	top top_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("top.vcd");
		$dumpvars(0,top_instance);
	end

	initial begin
		#(tPD)
			p_reset = 1;
			m_clock = 0;
		#(tCYC)
			p_reset = 0;
	end

endmodule

//synthesis translate_on
