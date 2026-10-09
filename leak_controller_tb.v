`timescale 1ns/1ps

module leak_controller_tb;

reg [3:0] leak;
wire alert_valid;
wire [1:0] alert_zone;

leak_controller uut (
    .leak(leak),
    .alert_valid(alert_valid),
    .alert_zone(alert_zone)
);

initial begin
    $dumpfile("leak_controller_tb.vcd");
    $dumpvars(0, leak_controller_tb);

    $monitor("Time=%0t Leak=%b Alert=%b Zone=%d",
             $time, leak, alert_valid, alert_zone);

    leak = 4'b0000; #10;
    leak = 4'b0001; #10;
    leak = 4'b0010; #10;
    leak = 4'b0100; #10;
    leak = 4'b1000; #10;
    leak = 4'b1100; #10;
    leak = 4'b0000; #10;

    $finish;
end

endmodule