`timescale 1ns/1ns
module ha_tb;
        reg     a,b;
        wire    s,c;

        ha ha_i(.a(a), .b(b), .s(s), .c(c));

        initial begin
                $dumpfile("out.vcd");
                $dumpvars(0,s);
        end

        initial begin
                        a=1'b0;
                        b=1'b0;
               #10      a=1'b1;
               #10      b=1'b1;
               #10      a=1'b0;
               #10      $finish;
        end
endmodule
