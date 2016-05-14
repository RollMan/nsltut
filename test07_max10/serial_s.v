/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sat May 14 10:23:53 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module counter ( p_reset , m_clock , f , countup , reset );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output [12:0] f;
  wire [12:0] f;
  input countup;
  wire countup;
  input reset;
  wire reset;
  reg [12:0] cnt;
  wire _net_0;
  wire _net_1;

   assign  _net_0 = 
// synthesis translate_off
// synopsys translate_off
(countup)? 
// synthesis translate_on
// synopsys translate_on
((countup)?(cnt != 13'b1010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(countup)? 
// synthesis translate_on
// synopsys translate_on
((countup)?(cnt==13'b1010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  f = cnt;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 13'b0000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((countup&_net_1)&(countup&_net_0))|(((countup&_net_1)|(countup&_net_0))&reset)))   cnt <= 13'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((countup&_net_1))
      cnt <= 13'b0000000000000;
else if ((countup&_net_0))
      cnt <= (cnt+13'b0000000000001);
else if (reset)
      cnt <= 13'b0000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((countup&_net_1)|(countup&_net_0))|reset)==1'b1) ||
 ((((countup&_net_1)|(countup&_net_0))|reset)==1'b0) ) begin
 if ((((countup&_net_1)&(countup&_net_0))|(((countup&_net_1)|(countup&_net_0))&reset)))
 begin $display("Warning: assign collision(counter:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(counter:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sat May 14 10:23:53 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sat May 14 10:23:53 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_s ( p_reset , m_clock , start_send , TDX );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input start_send;
  wire start_send;
  output TDX;
  wire TDX;
  reg TDX_r;
  reg sending;
  reg [8:0] data;
  reg [3:0] loop;
  wire send;
  wire [3:0] _net_6;
  wire [12:0] _counter_i_f;
  wire _counter_i_countup;
  wire _counter_i_reset;
  wire _counter_i_p_reset;
  wire _counter_i_m_clock;
  wire _net_9;
  wire _net_10;
  reg _reg_11;
  reg _reg_12;
  reg _reg_13;
  reg _reg_14;
  reg _reg_15;
  reg _reg_16;
  reg _reg_17;
  reg _reg_18;
  reg _reg_19;
  reg _reg_20;
  wire _net_21;
  wire _reg_13_goto;
  wire _reg_12_goin;
  wire _net_22;
  wire _reg_13_goin;
  wire _net_23;
  wire _reg_15_goto;
  wire _reg_17_goin;
  wire _net_24;
  wire _reg_16_goto;
  wire _reg_15_goin;
  wire _net_25;
  wire _reg_16_goin;
  wire _net_26;
  wire _reg_17_goto;
  wire _reg_14_goin;
counter counter_i (.m_clock(m_clock), .p_reset(p_reset), .reset(_counter_i_reset), .countup(_counter_i_countup), .f(_counter_i_f));


// synthesis translate_off
// synopsys translate_off
always @(posedge send)
  begin
#1 if (send===1'bx)
 begin
$display("Warning: control hazard(serial_s:send) at %d",$time);
 end
#1 if ((((_net_9&_net_10))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_9&_net_10) || 1'b1) line 45 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  send = (_net_9&_net_10);
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(_reg_15)? 
// synthesis translate_on
// synopsys translate_on
((_reg_15)?(loop+4'b0001):4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_countup)
  begin
#1 if (_counter_i_countup===1'bx)
 begin
$display("Warning: control hazard(serial_s:_counter_i_countup) at %d",$time);
 end
#1 if ((((_reg_16&(~_net_24)))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_16&(~_net_24)) || 1'b1) line 56 at %d\n",$time);
#1 if ((((_reg_13&(~_net_21)))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_13&(~_net_21)) || 1'b1) line 62 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_countup = (_reg_16&(~_net_24))|
    (_reg_13&(~_net_21));

// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_reset)
  begin
#1 if (_counter_i_reset===1'bx)
 begin
$display("Warning: control hazard(serial_s:_counter_i_reset) at %d",$time);
 end
#1 if (((_reg_19)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_19 || 1'b1) line 51 at %d\n",$time);
#1 if ((((_reg_17&(~_net_26)))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_17&(~_net_26)) || 1'b1) line 54 at %d\n",$time);
#1 if (((_reg_14)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_14 || 1'b1) line 60 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_reset = _reg_19|
    (_reg_17&(~_net_26))|
    _reg_14;
   assign  _counter_i_p_reset = p_reset;
   assign  _counter_i_m_clock = m_clock;
   assign  _net_9 = (start_send==1'b1);
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(_net_9)? 
// synthesis translate_on
// synopsys translate_on
((_net_9)?(sending==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_21 = 
// synthesis translate_off
// synopsys translate_off
(_reg_13)? 
// synthesis translate_on
// synopsys translate_on
((_reg_13)?(~(_counter_i_f != 13'b1010001010000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_13_goto)
  begin
#1 if (_reg_13_goto===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_13_goto) at %d",$time);
 end
#1 if (((((_reg_13&(~_net_21))&_net_22))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_13&(~_net_21))&_net_22) || 1'b1) line 63 at %d\n",$time);
#1 if ((((_reg_13&_net_21))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_13&_net_21) || 1'b1) line 63 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_13_goto = ((_reg_13&(~_net_21))&_net_22)|
    (_reg_13&_net_21);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_12_goin)
  begin
#1 if (_reg_12_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_12_goin) at %d",$time);
 end
#1 if ((((_reg_13&_net_21))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_13&_net_21) || 1'b1) line 63 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_12_goin = (_reg_13&_net_21);
   assign  _net_22 = 
// synthesis translate_off
// synopsys translate_off
((_reg_13&(~_net_21)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_13&(~_net_21)))?(_counter_i_f != 13'b1010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_13_goin)
  begin
#1 if (_reg_13_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_13_goin) at %d",$time);
 end
#1 if (((((_reg_13&(~_net_21))&_net_22))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_13&(~_net_21))&_net_22) || 1'b1) line 63 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_13_goin = ((_reg_13&(~_net_21))&_net_22);
   assign  _net_23 = 
// synthesis translate_off
// synopsys translate_off
(_reg_15)? 
// synthesis translate_on
// synopsys translate_on
((_reg_15)?(_net_6 < 4'b1001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_15_goto)
  begin
#1 if (_reg_15_goto===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_15_goto) at %d",$time);
 end
#1 if ((((_reg_15&_net_23))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_15&_net_23) || 1'b1) line 59 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_15_goto = (_reg_15&_net_23);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_17_goin)
  begin
#1 if (_reg_17_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_17_goin) at %d",$time);
 end
#1 if ((((_reg_15&_net_23))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_15&_net_23) || 1'b1) line 59 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_17_goin = (_reg_15&_net_23);
   assign  _net_24 = 
// synthesis translate_off
// synopsys translate_off
(_reg_16)? 
// synthesis translate_on
// synopsys translate_on
((_reg_16)?(~(_counter_i_f != 13'b1010001010000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_16_goto)
  begin
#1 if (_reg_16_goto===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_16_goto) at %d",$time);
 end
#1 if (((((_reg_16&(~_net_24))&_net_25))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_16&(~_net_24))&_net_25) || 1'b1) line 57 at %d\n",$time);
#1 if ((((_reg_16&_net_24))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_16&_net_24) || 1'b1) line 57 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_16_goto = ((_reg_16&(~_net_24))&_net_25)|
    (_reg_16&_net_24);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_15_goin)
  begin
#1 if (_reg_15_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_15_goin) at %d",$time);
 end
#1 if ((((_reg_16&_net_24))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_16&_net_24) || 1'b1) line 57 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_15_goin = (_reg_16&_net_24);
   assign  _net_25 = 
// synthesis translate_off
// synopsys translate_off
((_reg_16&(~_net_24)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_16&(~_net_24)))?(_counter_i_f != 13'b1010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_16_goin)
  begin
#1 if (_reg_16_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_16_goin) at %d",$time);
 end
#1 if (((((_reg_16&(~_net_24))&_net_25))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_16&(~_net_24))&_net_25) || 1'b1) line 57 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_16_goin = ((_reg_16&(~_net_24))&_net_25);
   assign  _net_26 = 
// synthesis translate_off
// synopsys translate_off
(_reg_17)? 
// synthesis translate_on
// synopsys translate_on
((_reg_17)?(~(loop < 4'b1001)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_17_goto)
  begin
#1 if (_reg_17_goto===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_17_goto) at %d",$time);
 end
#1 if ((((_reg_17&_net_26))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_17&_net_26) || 1'b1) line 59 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_17_goto = (_reg_17&_net_26);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_14_goin)
  begin
#1 if (_reg_14_goin===1'bx)
 begin
$display("Warning: control hazard(serial_s:_reg_14_goin) at %d",$time);
 end
#1 if ((((_reg_17&_net_26))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_17&_net_26) || 1'b1) line 59 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_14_goin = (_reg_17&_net_26);
   assign  TDX = TDX_r;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     TDX_r <= 1'b1;
else 
// synthesis translate_off
// synopsys translate_off
if ((_reg_15&_reg_12))   TDX_r <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_reg_15)
      TDX_r <= (data[loop]);
else if (_reg_12)
      TDX_r <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_reg_15|_reg_12)==1'b1) ||
 ((_reg_15|_reg_12)==1'b0) ) begin
 if ((_reg_15&_reg_12))
 begin $display("Warning: assign collision(serial_s:TDX_r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_s:TDX_r) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     sending <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((send|_reg_20)&_reg_11))   sending <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((send|_reg_20))
      sending <= 1'b1;
else if (_reg_11)
      sending <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((send|_reg_20)|_reg_11)==1'b1) ||
 (((send|_reg_20)|_reg_11)==1'b0) ) begin
 if (((send|_reg_20)&_reg_11))
 begin $display("Warning: assign collision(serial_s:sending) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_s:sending) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin
if ((_net_9&_net_10))
      data <= 9'b010000010;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     loop <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if ((_reg_18&_reg_15))   loop <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_reg_18)
      loop <= 4'b0000;
else if (_reg_15)
      loop <= _net_6;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_reg_18|_reg_15)==1'b1) ||
 ((_reg_18|_reg_15)==1'b0) ) begin
 if ((_reg_18&_reg_15))
 begin $display("Warning: assign collision(serial_s:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_s:loop) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_11 <= 1'b0;
else if ((_reg_11|_reg_12))
      _reg_11 <= _reg_12;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_12 <= 1'b0;
else if (((_reg_13&_net_21)|(_reg_12|_reg_13)))
      _reg_12 <= ((_reg_13&_net_21)|(_reg_13&(~_reg_13_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_13 <= 1'b0;
else if ((((_reg_13&(~_net_21))&_net_22)|(_reg_13|_reg_14)))
      _reg_13 <= (((_reg_13&(~_net_21))&_net_22)|_reg_14);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_14 <= 1'b0;
else if (((_reg_17&_net_26)|(_reg_14|_reg_15)))
      _reg_14 <= ((_reg_17&_net_26)|(_reg_15&(~_reg_15_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_15 <= 1'b0;
else if (((_reg_16&_net_24)|(_reg_15|_reg_16)))
      _reg_15 <= ((_reg_16&_net_24)|(_reg_16&(~_reg_16_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_16 <= 1'b0;
else if ((((_reg_16&(~_net_24))&_net_25)|(_reg_16|_reg_17)))
      _reg_16 <= (((_reg_16&(~_net_24))&_net_25)|(_reg_17&(~_reg_17_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_17 <= 1'b0;
else if (((_reg_15&_net_23)|(_reg_17|_reg_18)))
      _reg_17 <= ((_reg_15&_net_23)|_reg_18);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_18 <= 1'b0;
else if ((_reg_18|_reg_19))
      _reg_18 <= _reg_19;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_19 <= 1'b0;
else if ((send|(_reg_19|_reg_20)))
      _reg_19 <= (_reg_20|send);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_20 <= 1'b0;
else if (_reg_20)
      _reg_20 <= 1'b0;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sat May 14 10:23:53 2016
 Licensed to :EVALUATION USER
*/
