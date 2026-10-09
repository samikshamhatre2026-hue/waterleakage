module leak_controller(
    input [3:0] leak,
    output reg alert_valid,
    output reg [1:0] alert_zone
);

always @(*) begin
    if (leak[3]) begin
        alert_valid = 1;
        alert_zone = 3;
    end
    else if (leak[2]) begin
        alert_valid = 1;
        alert_zone = 2;
    end
    else if (leak[1]) begin
        alert_valid = 1;
        alert_zone = 1;
    end
    else if (leak[0]) begin
        alert_valid = 1;
        alert_zone = 0;
    end
    else begin
        alert_valid = 0;
        alert_zone = 0;
    end
end

endmodule