module ha(a,b,s,c);
            input       a,b;
            output      s,c;
            
            assign s=a^c;
            assign c=a&b;
endmodule
