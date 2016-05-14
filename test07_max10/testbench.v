`timescale 1ns/1ns

module testbench;
  reg p_reset, m_clock, start_send;
  wire TDX;

  initial begin
    $dumpfile("testbench.vcd");
    $dumpvars(0, testbench);
    m_clock = 0;
    start_send = 0;
    p_reset = 1;
    #100
    p_reset = 0;
    #100
    #100
    start_send = 1;
    #20
    start_send = 0;
    #1000000
    $finish;
  end

  always #10 begin
    m_clock = ~m_clock;
  end
  serial_s serial_s (
    .p_reset(p_reset),
    .m_clock(m_clock),
    .start_send(start_send),
    .TDX(TDX)
  );
endmodule
