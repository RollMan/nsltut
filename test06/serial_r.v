/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Apr  6 16:44:48 2016
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
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Apr  6 16:44:48 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Apr  6 16:44:48 2016
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
  reg _reg_14;
  wire _net_15;
  wire _reg_10_goto;
  wire _reg_11_goin;
  wire _net_16;
  wire _net_17;
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
#1 if (((((_reg_11&receive)&(~_net_17)))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&(~_net_17)) || 1'b1) line 79 at %d\n",$time);
#1 if ((((_net_4&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_4&_net_6) || 1'b1) line 57 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_countup = ((_reg_11&receive)&(~_net_17))|
    (_net_4&_net_6);

// synthesis translate_off
// synopsys translate_off
always @(posedge _counter_i_reset)
  begin
#1 if (_counter_i_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_counter_i_reset) at %d",$time);
 end
#1 if ((((_reg_13&receive))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_13&receive) || 1'b1) line 74 at %d\n",$time);
#1 if (((((_reg_10&receive)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_16) || 1'b1) line 85 at %d\n",$time);
#1 if ((((_net_4&_net_5))===1'bx) || (1'b1)===1'bx) $display("hazard ((_net_4&_net_5) || 1'b1) line 65 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _counter_i_reset = (_reg_13&receive)|
    ((_reg_10&receive)&_net_16)|
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
#1 if (((((_net_4&_net_6)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((_net_4&_net_6)&_net_7) || 1'b1) line 60 at %d\n",$time);
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
#1 if ((((_reg_8&receive))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_8&receive) || 1'b1) line 89 at %d\n",$time);
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
   assign  _net_15 = 
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
#1 if (((((_reg_10&receive)&_net_15))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_15) || 1'b1) line 87 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_10_goto = ((_reg_10&receive)&_net_15);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_11_goin)
  begin
#1 if (_reg_11_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_11_goin) at %d",$time);
 end
#1 if (((((_reg_10&receive)&_net_15))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_10&receive)&_net_15) || 1'b1) line 87 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goin = ((_reg_10&receive)&_net_15);
   assign  _net_16 = 
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
   assign  _net_17 = 
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
#1 if (((((_reg_11&receive)&_net_17))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_17) || 1'b1) line 87 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_11_goto = ((_reg_11&receive)&_net_17);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_9_goin)
  begin
#1 if (_reg_9_goin===1'bx)
 begin
$display("Warning: control hazard(serial_r:_reg_9_goin) at %d",$time);
 end
#1 if (((((_reg_11&receive)&_net_17))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_11&receive)&_net_17) || 1'b1) line 87 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_9_goin = ((_reg_11&receive)&_net_17);

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((receive&_reg_14))
    begin
    $display("start receiving");
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  LEDR = recieved;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     recieved <= 8'b00000000;
else if (((_reg_10&receive)&_net_16))
      recieved <= ({RDX,(recieved[7:1])});
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     loop <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if (((_reg_12&receive)&((_reg_10&receive)&_net_16)))   loop <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_reg_12&receive))
      loop <= 4'b0000;
else if (((_reg_10&receive)&_net_16))
      loop <= (loop+4'b0001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_reg_12&receive)|((_reg_10&receive)&_net_16))==1'b1) ||
 (((_reg_12&receive)|((_reg_10&receive)&_net_16))==1'b0) ) begin
 if (((_reg_12&receive)&((_reg_10&receive)&_net_16)))
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
else if ((_proc_receive_reset|(((_reg_11&receive)&_net_17)|(_reg_9|_reg_10))))
      _reg_9 <= ((((_reg_11&receive)&_net_17)|(_reg_10&(~_reg_10_goto)))&(~_proc_receive_reset));
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
else if ((_proc_receive_reset|(((_reg_10&receive)&_net_15)|(_reg_11|_reg_12))))
      _reg_11 <= ((((_reg_10&receive)&_net_15)|_reg_12)&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_12 <= 1'b0;
else if ((_proc_receive_reset|(_reg_12|_reg_13)))
      _reg_12 <= (_reg_13&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_13 <= 1'b0;
else if ((_proc_receive_reset|(_reg_14|(_reg_13|_reg_14))))
      _reg_13 <= (_reg_14&(~_proc_receive_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_14 <= 1'b0;
else if (((_proc_receive_set|_proc_receive_reset)|_reg_14))
      _reg_14 <= _proc_receive_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Wed Apr  6 16:44:48 2016
 Licensed to :EVALUATION USER
*/
