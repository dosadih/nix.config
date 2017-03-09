//-----------------------------------------------------------------------
Copyright 2017 Damien Pretet ThotIP

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
//-----------------------------------------------------------------------

`timescale 1ns/1ps
`default_nettype none

// Synthesis

module ModuleName

    #(
    )(
    input wire  clk,
    input wire  rstn
    );

endmodule

`resetall

// Simulation

module tb_name;

    reg         clk;
    reg         rstn;
    integer     clk_period = 10;

    initial begin
        
        clk         <= 1'b0;
        rstn        <= 1'b0;
        #100;
        rstn        <= 1'b0;
        
        $display("\n\n");
        $display("Design initialized");
        $display("clock period = %d ns",clk_period);
        $display("\n\n");
   
    end

    always begin
        #clk_period;
        clk <= ~clk;
    end

endmodule

`resetall

