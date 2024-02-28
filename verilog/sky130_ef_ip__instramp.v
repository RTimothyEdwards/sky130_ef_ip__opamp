// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

/*--------------------------------------------------------------*/
/* Verilog behavioral model of analog macro instramp		*/
/* The amp is assigned an arbitrary gain of 1000.		*/
/* Note that the output value is clipped at a fixed value of	*/
/* 3.3V regardless of the actual value of vdd (which is not	*/
/* real-valued anyway).						*/
/*								*/
/* The analog signals are on a 3.3V domain (vdd, vss).		*/
/* The digital "ena" (enable) signal can be 1.8V or 3.3V.	*/
/*								*/
/* "ena" is active high (1 = enabled)				*/
/*--------------------------------------------------------------*/

`default_nettype none
`timescale 1 ns / 1 ps

module sky130_ef_ip__instramp #(parameter FUNCTIONAL = 1)(
`ifdef USE_POWER_PINS
   input       vdd,
   input       vss,
   input       dvdd,
   input       dvss,
`endif
   input  real inn,
   input  real inp,
   input  real bias,
   input       ena,
   output real out
);   


generate
   if(FUNCTIONAL == 1) begin
      reg    real ampvalue;

      assign out = (ampvalue > 3.3) ? 3.3 : (ampvalue < 0) ? 0 : ampvalue;

      initial begin
         ampvalue <= 0;
      end

      always @* begin
         if (ena == 1'b1) begin
            ampvalue <= (inp - inn) * 1000;
         end else begin
            ampvalue <= 0;
         end
      end
   end
endgenerate

endmodule
`default_nettype wire

