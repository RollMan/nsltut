
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_s ( p_reset , m_clock , datain , TDX , launch , complete );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [7:0] datain;
  wire [7:0] datain;
  output TDX;
  wire TDX;
  input launch;
  wire launch;
  output complete;
  wire complete;
  reg TDX_r;
  reg [15:0] cnt;
  reg [4:0] idx;
  reg [7:0] data;
  reg startbit;
  reg send;
  reg endbit;
  wire _proc_endbit_set;
  wire _proc_endbit_reset;
  wire _proc_send_set;
  wire _proc_send_reset;
  wire _proc_startbit_set;
  wire _proc_startbit_reset;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;


// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_endbit_set)
  begin
#1 if (_proc_endbit_set===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_endbit_set) at %d",$time);
 end
#1 if (((((send&_net_4)&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard (((send&_net_4)&_net_6) || 1'b1) line 52 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_endbit_set = ((send&_net_4)&_net_6);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_endbit_reset)
  begin
#1 if (_proc_endbit_reset===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_endbit_reset) at %d",$time);
 end
#1 if ((((endbit&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((endbit&_net_8) || 1'b1) line 66 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_endbit_reset = (endbit&_net_8);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_send_set)
  begin
#1 if (_proc_send_set===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_send_set) at %d",$time);
 end
#1 if ((((startbit&_net_2))===1'bx) || (1'b1)===1'bx) $display("hazard ((startbit&_net_2) || 1'b1) line 32 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_send_set = (startbit&_net_2);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_send_reset)
  begin
#1 if (_proc_send_reset===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_send_reset) at %d",$time);
 end
#1 if (((((send&_net_4)&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard (((send&_net_4)&_net_6) || 1'b1) line 52 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_send_reset = ((send&_net_4)&_net_6);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_startbit_set)
  begin
#1 if (_proc_startbit_set===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_startbit_set) at %d",$time);
 end
#1 if ((((launch&_net_0))===1'bx) || (1'b1)===1'bx) $display("hazard ((launch&_net_0) || 1'b1) line 23 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_startbit_set = (launch&_net_0);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_startbit_reset)
  begin
#1 if (_proc_startbit_reset===1'bx)
 begin
$display("Warning: control hazard(serial_s:_proc_startbit_reset) at %d",$time);
 end
#1 if ((((startbit&_net_2))===1'bx) || (1'b1)===1'bx) $display("hazard ((startbit&_net_2) || 1'b1) line 32 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_startbit_reset = (startbit&_net_2);
   assign  _net_0 = 
// synthesis translate_off
// synopsys translate_off
(launch)? 
// synthesis translate_on
// synopsys translate_on
((launch)?(((~startbit)&(~send))&(~endbit)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(startbit)? 
// synthesis translate_on
// synopsys translate_on
((startbit)?(cnt != 16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(startbit)? 
// synthesis translate_on
// synopsys translate_on
((startbit)?(cnt==16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(send)? 
// synthesis translate_on
// synopsys translate_on
((send)?(cnt != 16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(send)? 
// synthesis translate_on
// synopsys translate_on
((send)?(cnt==16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
((send&_net_4))? 
// synthesis translate_on
// synopsys translate_on
(((send&_net_4))?(idx != 5'b00111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
((send&_net_4))? 
// synthesis translate_on
// synopsys translate_on
(((send&_net_4))?(idx==5'b00111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(endbit)? 
// synthesis translate_on
// synopsys translate_on
((endbit)?(cnt != 16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(endbit)? 
// synthesis translate_on
// synopsys translate_on
((endbit)?(cnt==16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  TDX = TDX_r;

// synthesis translate_off
// synopsys translate_off
always @(posedge complete)
  begin
#1 if (complete===1'bx)
 begin
$display("Warning: control hazard(serial_s:complete) at %d",$time);
 end
#1 if ((((endbit&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((endbit&_net_8) || 1'b1) line 66 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  complete = (endbit&_net_8);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     TDX_r <= 1'b1;
else 
// synthesis translate_off
// synopsys translate_off
if (((endbit&send)|((endbit|send)&startbit)))   TDX_r <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (endbit)
      TDX_r <= 1'b1;
else if (send)
      TDX_r <= (data[idx]);
else if (startbit)
      TDX_r <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((endbit|send)|startbit)==1'b1) ||
 (((endbit|send)|startbit)==1'b0) ) begin
 if (((endbit&send)|((endbit|send)&startbit)))
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
     cnt <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((((endbit&_net_8)&(endbit&_net_7))|(((endbit&_net_8)|(endbit&_net_7))&(send&_net_4)))|((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))&(send&_net_3)))|(((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))&(startbit&_net_2)))|((((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))|(startbit&_net_2))&(startbit&_net_1))))   cnt <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((endbit&_net_8))
      cnt <= 16'b0000000000000000;
else if ((endbit&_net_7))
      cnt <= (cnt+16'b0000000000000001);
else if ((send&_net_4))
      cnt <= 16'b0000000000000000;
else if ((send&_net_3))
      cnt <= (cnt+16'b0000000000000001);
else if ((startbit&_net_2))
      cnt <= 16'b0000000000000000;
else if ((startbit&_net_1))
      cnt <= (cnt+16'b0000000000000001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))|(startbit&_net_2))|(startbit&_net_1))==1'b1) ||
 (((((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))|(startbit&_net_2))|(startbit&_net_1))==1'b0) ) begin
 if (((((((endbit&_net_8)&(endbit&_net_7))|(((endbit&_net_8)|(endbit&_net_7))&(send&_net_4)))|((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))&(send&_net_3)))|(((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))&(startbit&_net_2)))|((((((endbit&_net_8)|(endbit&_net_7))|(send&_net_4))|(send&_net_3))|(startbit&_net_2))&(startbit&_net_1))))
 begin $display("Warning: assign collision(serial_s:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_s:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     idx <= 5'b00000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((send&_net_4)&_net_6)&((send&_net_4)&_net_5)))   idx <= 5'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((send&_net_4)&_net_6))
      idx <= 5'b00000;
else if (((send&_net_4)&_net_5))
      idx <= (idx+5'b00001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((send&_net_4)&_net_6)|((send&_net_4)&_net_5))==1'b1) ||
 ((((send&_net_4)&_net_6)|((send&_net_4)&_net_5))==1'b0) ) begin
 if ((((send&_net_4)&_net_6)&((send&_net_4)&_net_5)))
 begin $display("Warning: assign collision(serial_s:idx) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_s:idx) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     data <= 8'b00000000;
else if ((launch&_net_0))
      data <= datain;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     startbit <= 1'b0;
else if ((_proc_startbit_set|_proc_startbit_reset))
      startbit <= _proc_startbit_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     send <= 1'b0;
else if ((_proc_send_set|_proc_send_reset))
      send <= _proc_send_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     endbit <= 1'b0;
else if ((_proc_endbit_set|_proc_endbit_reset))
      endbit <= _proc_endbit_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_r ( p_reset , m_clock , RDX , DATA , launch , complete );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input RDX;
  wire RDX;
  output [7:0] DATA;
  wire [7:0] DATA;
  input launch;
  wire launch;
  output complete;
  wire complete;
  reg [7:0] data;
  reg [3:0] received_bit;
  reg [15:0] cnt;
  reg start;
  reg receive;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _proc_receive_set;
  wire _proc_receive_reset;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;
  wire _net_15;
  wire _net_16;


// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_start_set) at %d",$time);
 end
#1 if ((((launch&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard ((launch&_net_9) || 1'b1) line 26 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_set = (launch&_net_9);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_start_reset) at %d",$time);
 end
#1 if (((((start&_net_10)&_net_12))===1'bx) || (1'b1)===1'bx) $display("hazard (((start&_net_10)&_net_12) || 1'b1) line 35 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_reset = ((start&_net_10)&_net_12);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_set)
  begin
#1 if (_proc_receive_set===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_set) at %d",$time);
 end
#1 if (((((start&_net_10)&_net_12))===1'bx) || (1'b1)===1'bx) $display("hazard (((start&_net_10)&_net_12) || 1'b1) line 35 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_set = ((start&_net_10)&_net_12);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_reset)
  begin
#1 if (_proc_receive_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_reset) at %d",$time);
 end
#1 if (((((receive&_net_15)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((receive&_net_15)&_net_16) || 1'b1) line 53 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_reset = ((receive&_net_15)&_net_16);
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(launch)? 
// synthesis translate_on
// synopsys translate_on
((launch)?((~start)&(~receive)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(RDX==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
((start&_net_10))? 
// synthesis translate_on
// synopsys translate_on
(((start&_net_10))?(cnt != 16'b0000011110011110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
((start&_net_10))? 
// synthesis translate_on
// synopsys translate_on
(((start&_net_10))?(cnt==16'b0000011110011110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(RDX==1'b1):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
(receive)? 
// synthesis translate_on
// synopsys translate_on
((receive)?(cnt != 16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
(receive)? 
// synthesis translate_on
// synopsys translate_on
((receive)?(cnt==16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_16 = 
// synthesis translate_off
// synopsys translate_off
((receive&_net_15))? 
// synthesis translate_on
// synopsys translate_on
(((receive&_net_15))?(received_bit==4'b1000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  DATA = 
// synthesis translate_off
// synopsys translate_off
(((receive&_net_15)&_net_16))? 
// synthesis translate_on
// synopsys translate_on
((((receive&_net_15)&_net_16))?data:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge complete)
  begin
#1 if (complete===1'bx)
 begin
$display("Warning: control hazard(serial_r:complete) at %d",$time);
 end
#1 if (((((receive&_net_15)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard (((receive&_net_15)&_net_16) || 1'b1) line 52 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  complete = ((receive&_net_15)&_net_16);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     data <= 8'b00000000;
else if ((receive&_net_15))
      data <= ({RDX,(data[7:1])});
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     received_bit <= 4'b0000;
else if ((receive&_net_15))
      received_bit <= (received_bit+4'b0001);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((receive&_net_15)&(receive&_net_14))|(((receive&_net_15)|(receive&_net_14))&(start&_net_13)))|((((receive&_net_15)|(receive&_net_14))|(start&_net_13))&((start&_net_10)&_net_12)))|(((((receive&_net_15)|(receive&_net_14))|(start&_net_13))|((start&_net_10)&_net_12))&((start&_net_10)&_net_11))))   cnt <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((receive&_net_15))
      cnt <= 16'b0000000000000000;
else if ((receive&_net_14))
      cnt <= (cnt+16'b0000000000000001);
else if ((start&_net_13))
      cnt <= 16'b0000000000000000;
else if (((start&_net_10)&_net_12))
      cnt <= 16'b0000000000000000;
else if (((start&_net_10)&_net_11))
      cnt <= (cnt+16'b0000000000000001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((receive&_net_15)|(receive&_net_14))|(start&_net_13))|((start&_net_10)&_net_12))|((start&_net_10)&_net_11))==1'b1) ||
 ((((((receive&_net_15)|(receive&_net_14))|(start&_net_13))|((start&_net_10)&_net_12))|((start&_net_10)&_net_11))==1'b0) ) begin
 if ((((((receive&_net_15)&(receive&_net_14))|(((receive&_net_15)|(receive&_net_14))&(start&_net_13)))|((((receive&_net_15)|(receive&_net_14))|(start&_net_13))&((start&_net_10)&_net_12)))|(((((receive&_net_15)|(receive&_net_14))|(start&_net_13))|((start&_net_10)&_net_12))&((start&_net_10)&_net_11))))
 begin $display("Warning: assign collision(serial_r:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_r:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
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
     receive <= 1'b0;
else if ((_proc_receive_set|_proc_receive_reset))
      receive <= _proc_receive_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module testbench_r ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [15:0] cnt;
  wire [7:0] _sender_datain;
  wire _sender_TDX;
  wire _sender_launch;
  wire _sender_complete;
  wire _sender_p_reset;
  wire _sender_m_clock;
  wire _receiver_RDX;
  wire [7:0] _receiver_DATA;
  wire _receiver_launch;
  wire _receiver_complete;
  wire _receiver_p_reset;
  wire _receiver_m_clock;
  wire _net_17;
  wire _net_18;
  wire _net_19;
serial_r receiver (.m_clock(m_clock), .p_reset(p_reset), .complete(_receiver_complete), .launch(_receiver_launch), .DATA(_receiver_DATA), .RDX(_receiver_RDX));
serial_s sender (.m_clock(m_clock), .p_reset(p_reset), .complete(_sender_complete), .launch(_sender_launch), .TDX(_sender_TDX), .datain(_sender_datain));

   assign  _sender_datain = (_net_18)? ((_net_18)?8'b00010001:8'b0):8'bx;
always @(posedge _sender_launch)
  begin
#1 if (_sender_launch===1'bx)
 begin
$display("Warning: control hazard(testbench_r:_sender_launch) at %d",$time);
 end
#1 if (((_net_18)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_18 || 1'b1) line 16 at %d\n",$time);
 end
   assign  _sender_launch = _net_18;
   assign  _sender_p_reset = p_reset;
   assign  _sender_m_clock = m_clock;
   assign  _receiver_RDX = _sender_TDX;
always @(posedge _receiver_launch)
  begin
#1 if (_receiver_launch===1'bx)
 begin
$display("Warning: control hazard(testbench_r:_receiver_launch) at %d",$time);
 end
#1 if (((1'b1)===1'bx) || (1'b1)===1'bx) $display("hazard (1'b1 || 1'b1) line 13 at %d\n",$time);
 end
   assign  _receiver_launch = 1'b1;
   assign  _receiver_p_reset = p_reset;
   assign  _receiver_m_clock = m_clock;
   assign  _net_17 = (cnt < 16'b0000000000001010);
   assign  _net_18 = (cnt==16'b0000000000001010);
   assign  _net_19 = (cnt > 16'b0000000000001010);
always @(posedge m_clock)
  begin
    if(_receiver_complete)
    begin
    $display("RECEIVED : 0x%x, 0d%d",_receiver_DATA,_receiver_DATA);
    end
  end
always @(posedge m_clock)
  begin
    if(_receiver_complete)
    begin
    $finish;
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 16'b0000000000000000;
else if (_net_17)
      cnt <= (cnt+16'b0000000000000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 17:29:39 2016
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

	testbench_r testbench_r_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("testbench_r.vcd");
		$dumpvars(0,testbench_r_instance);
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
