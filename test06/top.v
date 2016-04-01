
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module counter ( p_reset , m_clock , f , countup , reset );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output [15:0] f;
  wire [15:0] f;
  input countup;
  wire countup;
  input reset;
  wire reset;
  reg [31:0] cnt;
  reg [15:0] f_r;
  wire _net_0;
  wire _net_1;

   assign  _net_0 = 
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
   assign  _net_1 = 
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
if ((((countup&_net_1)&(countup&_net_0))|(((countup&_net_1)|(countup&_net_0))&reset)))   cnt <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((countup&_net_1))
      cnt <= 32'b00000000000000000000000000000000;
else if ((countup&_net_0))
      cnt <= (cnt+32'b00000000000000000000000000000001);
else if (reset)
      cnt <= 32'b00000000000000000000000000000000;
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
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     f_r <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((countup&_net_1)&reset))   f_r <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((countup&_net_1))
      f_r <= (f_r+16'b0000000000000001);
else if (reset)
      f_r <= 16'b0000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((countup&_net_1)|reset)==1'b1) ||
 (((countup&_net_1)|reset)==1'b0) ) begin
 if (((countup&_net_1)&reset))
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
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_r ( p_reset , m_clock , RDX , LEDR );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input RDX;
  wire RDX;
  output [7:0] LEDR;
  wire [7:0] LEDR;
  reg [7:0] recieved;
  reg [3:0] loop;
  reg receiving;
  reg receive;
  wire [15:0] _counter_i_f;
  wire _counter_i_countup;
  wire _counter_i_reset;
  wire _counter_i_p_reset;
  wire _counter_i_m_clock;
  wire _proc_receive_set;
  wire _proc_receive_reset;
  wire _net_4;
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
  wire _reg_10_goto;
  wire _reg_11_goin;
  wire _net_15;
  wire _net_16;
  wire _reg_11_goto;
  wire _reg_9_goin;
counter counter_i (.m_clock(m_clock), .p_reset(p_reset), .reset(_counter_i_reset), .countup(_counter_i_countup), .f(_counter_i_f));


// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_countup)
  begin
#1 if (_counter_i_countup===1'bx)
 begin
$display("Warning: control hazard(serial_r:_counter_i_countup) at %d",$time);
 end
#1 if (((((_reg_11&receive)&(~_net_16)))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&(~_net_16)) || 1'b1) line 77 at %d\n",$time);
#1 if ((((_net_4&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_4&_net_6) || 1'b1) line 56 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_countup = ((_reg_11&receive)&(~_net_16))|
    (_net_4&_net_6);

// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_reset)
  begin
#1 if (_counter_i_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_counter_i_reset) at %d",$time);
 end
#1 if ((((receive&_reg_13))===1'bx) || (1'b1)===1'bx) $display("hazard ((receive&_reg_13) || 1'b1) line 72 at %d\n",$time);
#1 if (((((_reg_10&receive)&_net_15))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_15) || 1'b1) line 83 at %d\n",$time);
#1 if ((((_net_4&_net_5))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_4&_net_5) || 1'b1) line 64 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_reset = (receive&_reg_13)|
    ((_reg_10&receive)&_net_15)|
    (_net_4&_net_5);
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
#1 if (((((_net_4&_net_6)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((_net_4&_net_6)&_net_7) || 1'b1) line 59 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_set = ((_net_4&_net_6)&_net_7);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_reset)
  begin
#1 if (_proc_receive_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_reset) at %d",$time);
 end
#1 if ((((_reg_8&receive))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_8&receive) || 1'b1) line 87 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_reset = (_reg_8&receive);
   assign  _net_4 = (receiving==1'b0);
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(_net_4)? 
// synthesis translate_on
// synopsys translate_on
((_net_4)?(RDX != 1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(_net_4)? 
// synthesis translate_on
// synopsys translate_on
((_net_4)?(RDX==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
((_net_4&_net_6))? 
// synthesis translate_on
// synopsys translate_on
(((_net_4&_net_6))?(_counter_i_f==16'b0000000000000011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
((_reg_10&receive))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_10&receive))?(loop < 4'b1000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_10_goto)
  begin
#1 if (_reg_10_goto===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_10_goto) at %d",$time);
 end
#1 if (((((_reg_10&receive)&_net_14))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_14) || 1'b1) line 85 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_10_goto = ((_reg_10&receive)&_net_14);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_11_goin)
  begin
#1 if (_reg_11_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_11_goin) at %d",$time);
 end
#1 if (((((_reg_10&receive)&_net_14))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_14) || 1'b1) line 85 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goin = ((_reg_10&receive)&_net_14);
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
((_reg_10&receive))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_10&receive))?(_counter_i_f==16'b0000000000001000):1'b0)
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
#1 if (((((_reg_11&receive)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_16) || 1'b1) line 85 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goto = ((_reg_11&receive)&_net_16);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_9_goin)
  begin
#1 if (_reg_9_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_9_goin) at %d",$time);
 end
#1 if (((((_reg_11&receive)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_16) || 1'b1) line 85 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_9_goin = ((_reg_11&receive)&_net_16);
   assign  LEDR = recieved;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     recieved <= 8'b00000000;
else if (((_reg_10&receive)&_net_15))
      recieved <= ({RDX,(recieved[7:1])});
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((_reg_12&receive)&((_reg_10&receive)&_net_15)))   loop <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_reg_12&receive))
      loop <= 4'b0000;
else if (((_reg_10&receive)&_net_15))
      loop <= (loop+4'b0001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_reg_12&receive)|((_reg_10&receive)&_net_15))==1'b1) ||
 (((_reg_12&receive)|((_reg_10&receive)&_net_15))==1'b0) ) begin
 if (((_reg_12&receive)&((_reg_10&receive)&_net_15)))
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
     receiving <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((_reg_9&receive)&((_net_4&_net_6)&_net_7)))   receiving <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_reg_9&receive))
      receiving <= 1'b0;
else if (((_net_4&_net_6)&_net_7))
      receiving <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_reg_9&receive)|((_net_4&_net_6)&_net_7))==1'b1) ||
 (((_reg_9&receive)|((_net_4&_net_6)&_net_7))==1'b0) ) begin
 if (((_reg_9&receive)&((_net_4&_net_6)&_net_7)))
 begin $display("Warning: assign collision(serial_r:receiving) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_r:receiving) at %d",$time);

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
else if ((_proc_receive_reset|(_reg_8|_reg_9)))
      _reg_8 <= (_reg_9&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_9 <= 1'b0;
else if ((_proc_receive_reset|(((_reg_11&receive)&_net_16)|(_reg_9|_reg_10))))
      _reg_9 <= ((((_reg_11&receive)&_net_16)|(_reg_10&(~_reg_10_goto)))&(~_proc_receive_reset));
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
else if ((_proc_receive_reset|(((_reg_10&receive)&_net_14)|(_reg_11|_reg_12))))
      _reg_11 <= ((((_reg_10&receive)&_net_14)|_reg_12)&(~_proc_receive_reset));
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
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
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
  reg startf;
  reg [3:0] loop;
  reg DXT_r;
  reg start;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _sr_RDX;
  wire [7:0] _sr_LEDR;
  wire _sr_p_reset;
  wire _sr_m_clock;
  wire [15:0] _counter_i_f;
  wire _counter_i_countup;
  wire _counter_i_reset;
  wire _counter_i_p_reset;
  wire _counter_i_m_clock;
  wire _net_23;
  reg _reg_24;
  reg _reg_25;
  reg _reg_26;
  reg _reg_27;
  reg _reg_28;
  reg _reg_29;
  reg _reg_30;
  reg _reg_31;
  reg _reg_32;
  reg _reg_33;
  reg _reg_34;
  wire _net_37;
  wire _reg_26_goto;
  wire _reg_25_goin;
  wire _net_38;
  wire _reg_26_goin;
  wire _net_39;
  wire _reg_28_goto;
  wire _reg_29_goin;
  wire _net_40;
  wire _net_42;
  wire _reg_29_goto;
  wire _reg_27_goin;
  wire _net_43;
  wire _reg_33_goto;
  wire _reg_32_goin;
  wire _net_44;
  wire _reg_33_goin;
counter counter_i (.m_clock(m_clock), .p_reset(p_reset), .reset(_counter_i_reset), .countup(_counter_i_countup), .f(_counter_i_f));
serial_r sr (.m_clock(m_clock), .p_reset(p_reset), .LEDR(_sr_LEDR), .RDX(_sr_RDX));

always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(top:_proc_start_set) at %d",$time);
 end
#1 if (((_net_23)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_23 || 1'b1) line 23 at %d\n",$time);
 end
   assign  _proc_start_set = _net_23;
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(top:_proc_start_reset) at %d",$time);
 end
#1 if ((((_reg_24&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_24&start) || 1'b1) line 56 at %d\n",$time);
 end
   assign  _proc_start_reset = (_reg_24&start);
   assign  _sr_RDX = DXT_r;
   assign  _sr_p_reset = p_reset;
   assign  _sr_m_clock = m_clock;
always @(posedge _counter_i_countup)
  begin
#1 if (_counter_i_countup===1'bx)
 begin
$display("Warning: control hazard(top:_counter_i_countup) at %d",$time);
 end
#1 if (((((_reg_29&start)&(~_net_42)))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_29&start)&(~_net_42)) || 1'b1) line 42 at %d\n",$time);
 end
   assign  _counter_i_countup = ((_reg_29&start)&(~_net_42));
always @(posedge _counter_i_reset)
  begin
#1 if (_counter_i_reset===1'bx)
 begin
$display("Warning: control hazard(top:_counter_i_reset) at %d",$time);
 end
#1 if ((((_reg_30&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_30&start) || 1'b1) line 39 at %d\n",$time);
#1 if (((((_reg_28&start)&_net_40))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_28&start)&_net_40) || 1'b1) line 47 at %d\n",$time);
 end
   assign  _counter_i_reset = (_reg_30&start)|
    ((_reg_28&start)&_net_40);
   assign  _counter_i_p_reset = p_reset;
   assign  _counter_i_m_clock = m_clock;
   assign  _net_23 = (startf==1'b0);
always @(posedge m_clock)
  begin
    if((_reg_25&start))
    begin
    $display("FINISH");
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_25&start))
    begin
    $finish;
    end
  end
   assign  _net_37 = ((_reg_26&start))? (((_reg_26&start))?(~(loop < 4'b0011)):1'b0):1'bx;
always @(posedge _reg_26_goto)
  begin
#1 if (_reg_26_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_26_goto) at %d",$time);
 end
#1 if ((((((_reg_26&start)&(~_net_37))&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_26&start)&(~_net_37))&_net_38) || 1'b1) line 54 at %d\n",$time);
#1 if (((((_reg_26&start)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_26&start)&_net_37) || 1'b1) line 54 at %d\n",$time);
 end
   assign  _reg_26_goto = (((_reg_26&start)&(~_net_37))&_net_38)|
    ((_reg_26&start)&_net_37);
always @(posedge _reg_25_goin)
  begin
#1 if (_reg_25_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_25_goin) at %d",$time);
 end
#1 if (((((_reg_26&start)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_26&start)&_net_37) || 1'b1) line 54 at %d\n",$time);
 end
   assign  _reg_25_goin = ((_reg_26&start)&_net_37);
   assign  _net_38 = (((_reg_26&start)&(~_net_37)))? ((((_reg_26&start)&(~_net_37)))?(loop < 4'b0011):1'b0):1'bx;
always @(posedge _reg_26_goin)
  begin
#1 if (_reg_26_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_26_goin) at %d",$time);
 end
#1 if ((((((_reg_26&start)&(~_net_37))&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_26&start)&(~_net_37))&_net_38) || 1'b1) line 54 at %d\n",$time);
 end
   assign  _reg_26_goin = (((_reg_26&start)&(~_net_37))&_net_38);
   assign  _net_39 = ((_reg_28&start))? (((_reg_28&start))?(loop < 4'b1000):1'b0):1'bx;
always @(posedge _reg_28_goto)
  begin
#1 if (_reg_28_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_28_goto) at %d",$time);
 end
#1 if (((((_reg_28&start)&_net_39))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_28&start)&_net_39) || 1'b1) line 50 at %d\n",$time);
 end
   assign  _reg_28_goto = ((_reg_28&start)&_net_39);
always @(posedge _reg_29_goin)
  begin
#1 if (_reg_29_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_29_goin) at %d",$time);
 end
#1 if (((((_reg_28&start)&_net_39))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_28&start)&_net_39) || 1'b1) line 50 at %d\n",$time);
 end
   assign  _reg_29_goin = ((_reg_28&start)&_net_39);
   assign  _net_40 = ((_reg_28&start))? (((_reg_28&start))?(_counter_i_f==16'b0000000000001000):1'b0):1'bx;
always @(posedge m_clock)
  begin
    if(((_reg_28&start)&_net_40))
    begin
    $display("loop = %d, DXT_r = %d",loop,DXT_r);
    end
  end
   assign  _net_42 = ((_reg_29&start))? (((_reg_29&start))?(~(loop < 4'b1000)):1'b0):1'bx;
always @(posedge _reg_29_goto)
  begin
#1 if (_reg_29_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_29_goto) at %d",$time);
 end
#1 if (((((_reg_29&start)&_net_42))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_29&start)&_net_42) || 1'b1) line 50 at %d\n",$time);
 end
   assign  _reg_29_goto = ((_reg_29&start)&_net_42);
always @(posedge _reg_27_goin)
  begin
#1 if (_reg_27_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_27_goin) at %d",$time);
 end
#1 if (((((_reg_29&start)&_net_42))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_29&start)&_net_42) || 1'b1) line 50 at %d\n",$time);
 end
   assign  _reg_27_goin = ((_reg_29&start)&_net_42);
   assign  _net_43 = ((_reg_33&start))? (((_reg_33&start))?(~(loop < 4'b0011)):1'b0):1'bx;
always @(posedge _reg_33_goto)
  begin
#1 if (_reg_33_goto===1'bx)
 begin
$display("Warning: control hazard(top:_reg_33_goto) at %d",$time);
 end
#1 if ((((((_reg_33&start)&(~_net_43))&_net_44))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_33&start)&(~_net_43))&_net_44) || 1'b1) line 31 at %d\n",$time);
#1 if (((((_reg_33&start)&_net_43))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_33&start)&_net_43) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_33_goto = (((_reg_33&start)&(~_net_43))&_net_44)|
    ((_reg_33&start)&_net_43);
always @(posedge _reg_32_goin)
  begin
#1 if (_reg_32_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_32_goin) at %d",$time);
 end
#1 if (((((_reg_33&start)&_net_43))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_33&start)&_net_43) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_32_goin = ((_reg_33&start)&_net_43);
   assign  _net_44 = (((_reg_33&start)&(~_net_43)))? ((((_reg_33&start)&(~_net_43)))?(loop < 4'b0011):1'b0):1'bx;
always @(posedge _reg_33_goin)
  begin
#1 if (_reg_33_goin===1'bx)
 begin
$display("Warning: control hazard(top:_reg_33_goin) at %d",$time);
 end
#1 if ((((((_reg_33&start)&(~_net_43))&_net_44))===1'bx) || (1'b1)===1'bx) $display("hazard ((((_reg_33&start)&(~_net_43))&_net_44) || 1'b1) line 31 at %d\n",$time);
 end
   assign  _reg_33_goin = (((_reg_33&start)&(~_net_43))&_net_44);
always @(posedge m_clock)
  begin
if (_net_23)
      data <= 8'b11110000;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     startf <= 1'b0;
else if (_net_23)
      startf <= 1'b1;
end
always @(posedge m_clock)
  begin
if (((((((start&_reg_34)&((_reg_33&start)&(~_net_43)))|(((start&_reg_34)|((_reg_33&start)&(~_net_43)))&(_reg_31&start)))|((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))&((_reg_28&start)&_net_40)))|(((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))&(_reg_27&start)))|((((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))|(_reg_27&start))&((_reg_26&start)&(~_net_37)))))   loop <= 4'bx; 
  else if ((start&_reg_34))
      loop <= 4'b0000;
else if (((_reg_33&start)&(~_net_43)))
      loop <= (loop+4'b0001);
else if ((_reg_31&start))
      loop <= 4'b0000;
else if (((_reg_28&start)&_net_40))
      loop <= (loop+4'b0001);
else if ((_reg_27&start))
      loop <= 4'b0000;
else if (((_reg_26&start)&(~_net_37)))
      loop <= (loop+4'b0001);
end
always @(posedge m_clock)
  begin
if ((((((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))|(_reg_27&start))|((_reg_26&start)&(~_net_37)))==1'b1) ||
 (((((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))|(_reg_27&start))|((_reg_26&start)&(~_net_37)))==1'b0) ) begin
 if (((((((start&_reg_34)&((_reg_33&start)&(~_net_43)))|(((start&_reg_34)|((_reg_33&start)&(~_net_43)))&(_reg_31&start)))|((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))&((_reg_28&start)&_net_40)))|(((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))&(_reg_27&start)))|((((((start&_reg_34)|((_reg_33&start)&(~_net_43)))|(_reg_31&start))|((_reg_28&start)&_net_40))|(_reg_27&start))&((_reg_26&start)&(~_net_37)))))
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
else if (((_reg_32&start)&((_reg_28&start)&_net_40)))   DXT_r <= 1'bx; 
  else if ((_reg_32&start))
      DXT_r <= 1'b0;
else if (((_reg_28&start)&_net_40))
      DXT_r <= (data[(loop+4'b0001)]);
end
always @(posedge m_clock)
  begin
if ((((_reg_32&start)|((_reg_28&start)&_net_40))==1'b1) ||
 (((_reg_32&start)|((_reg_28&start)&_net_40))==1'b0) ) begin
 if (((_reg_32&start)&((_reg_28&start)&_net_40)))
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
     _reg_24 <= 1'b0;
else if ((_proc_start_reset|(_reg_24|_reg_25)))
      _reg_24 <= (_reg_25&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_25 <= 1'b0;
else if ((_proc_start_reset|(((_reg_26&start)&_net_37)|(_reg_25|_reg_26))))
      _reg_25 <= ((((_reg_26&start)&_net_37)|(_reg_26&(~_reg_26_goto)))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_26 <= 1'b0;
else if ((_proc_start_reset|((((_reg_26&start)&(~_net_37))&_net_38)|(_reg_26|_reg_27))))
      _reg_26 <= (((((_reg_26&start)&(~_net_37))&_net_38)|_reg_27)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_27 <= 1'b0;
else if ((_proc_start_reset|(((_reg_29&start)&_net_42)|(_reg_27|_reg_28))))
      _reg_27 <= ((((_reg_29&start)&_net_42)|(_reg_28&(~_reg_28_goto)))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_28 <= 1'b0;
else if ((_proc_start_reset|(_reg_28|_reg_29)))
      _reg_28 <= ((_reg_29&(~_reg_29_goto))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_29 <= 1'b0;
else if ((_proc_start_reset|(((_reg_28&start)&_net_39)|(_reg_29|_reg_30))))
      _reg_29 <= ((((_reg_28&start)&_net_39)|_reg_30)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_30 <= 1'b0;
else if ((_proc_start_reset|(_reg_30|_reg_31)))
      _reg_30 <= (_reg_31&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_31 <= 1'b0;
else if ((_proc_start_reset|(_reg_31|_reg_32)))
      _reg_31 <= (_reg_32&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_32 <= 1'b0;
else if ((_proc_start_reset|(((_reg_33&start)&_net_43)|(_reg_32|_reg_33))))
      _reg_32 <= ((((_reg_33&start)&_net_43)|(_reg_33&(~_reg_33_goto)))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_33 <= 1'b0;
else if ((_proc_start_reset|(((((_reg_33&start)&(~_net_43))&_net_44)|_reg_34)|(_reg_33|_reg_34))))
      _reg_33 <= ((((((_reg_33&start)&(~_net_43))&_net_44)|_reg_34)|_reg_34)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_34 <= 1'b0;
else if (((_proc_start_set|_proc_start_reset)|_reg_34))
      _reg_34 <= _proc_start_set;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Mar 30 10:51:04 2016
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
