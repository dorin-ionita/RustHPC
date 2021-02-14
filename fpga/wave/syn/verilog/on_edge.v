// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module on_edge (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        y,
        nx,
        ny,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'b1;
parameter    ap_ST_fsm_state2 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv3_3 = 3'b11;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] x;
input  [31:0] y;
input  [31:0] nx;
input  [31:0] ny;
output  [2:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [0:0] tmp20_fu_106_p2;
reg   [0:0] tmp20_reg_204;
wire   [0:0] tmp_159_fu_118_p2;
reg   [0:0] tmp_159_reg_209;
wire   [0:0] sel_tmp_fu_130_p2;
reg   [0:0] sel_tmp_reg_214;
wire   [0:0] sel_tmp7_fu_148_p2;
reg   [0:0] sel_tmp7_reg_219;
wire   [0:0] sel_tmp11_demorgan_fu_154_p2;
reg   [0:0] sel_tmp11_demorgan_reg_224;
wire   [0:0] tmp_fu_38_p2;
wire   [0:0] tmp_s_fu_44_p2;
wire   [31:0] tmp_152_fu_60_p2;
wire   [31:0] tmp_154_fu_76_p2;
wire   [0:0] tmp_157_fu_94_p2;
wire   [0:0] tmp_158_fu_100_p2;
wire   [0:0] tmp_156_fu_88_p2;
wire   [0:0] tmp_153_fu_66_p2;
wire   [0:0] tmp22_fu_124_p2;
wire   [0:0] tmp_155_fu_82_p2;
wire   [0:0] or_cond_fu_50_p2;
wire   [0:0] sel_tmp2_fu_136_p2;
wire   [0:0] sel_tmp6_fu_142_p2;
wire   [0:0] or_cond4_fu_112_p2;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] or_cond5_fu_160_p2;
wire   [2:0] p_s_fu_164_p3;
wire   [2:0] sel_tmp8_fu_172_p3;
wire   [0:0] sel_tmp3_fu_186_p2;
wire   [0:0] sel_tmp4_fu_191_p2;
wire   [2:0] sel_tmp1_fu_179_p3;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        sel_tmp11_demorgan_reg_224 <= sel_tmp11_demorgan_fu_154_p2;
        sel_tmp7_reg_219 <= sel_tmp7_fu_148_p2;
        sel_tmp_reg_214 <= sel_tmp_fu_130_p2;
        tmp20_reg_204 <= tmp20_fu_106_p2;
        tmp_159_reg_209 <= tmp_159_fu_118_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_return = ((sel_tmp4_fu_191_p2[0:0] === 1'b1) ? ap_const_lv3_3 : sel_tmp1_fu_179_p3);

assign or_cond4_fu_112_p2 = (tmp20_fu_106_p2 | tmp_156_fu_88_p2);

assign or_cond5_fu_160_p2 = (tmp20_reg_204 | tmp_159_reg_209);

assign or_cond_fu_50_p2 = (tmp_fu_38_p2 | tmp_s_fu_44_p2);

assign p_s_fu_164_p3 = ((or_cond5_fu_160_p2[0:0] === 1'b1) ? ap_const_lv3_0 : ap_const_lv3_4);

assign sel_tmp11_demorgan_fu_154_p2 = (or_cond_fu_50_p2 | tmp_153_fu_66_p2);

assign sel_tmp1_fu_179_p3 = ((sel_tmp11_demorgan_reg_224[0:0] === 1'b1) ? sel_tmp8_fu_172_p3 : ap_const_lv3_1);

assign sel_tmp2_fu_136_p2 = (or_cond_fu_50_p2 & sel_tmp_fu_130_p2);

assign sel_tmp3_fu_186_p2 = (sel_tmp_reg_214 ^ 1'b1);

assign sel_tmp4_fu_191_p2 = (sel_tmp11_demorgan_reg_224 & sel_tmp3_fu_186_p2);

assign sel_tmp6_fu_142_p2 = (sel_tmp2_fu_136_p2 | tmp_153_fu_66_p2);

assign sel_tmp7_fu_148_p2 = (sel_tmp6_fu_142_p2 & or_cond4_fu_112_p2);

assign sel_tmp8_fu_172_p3 = ((sel_tmp7_reg_219[0:0] === 1'b1) ? p_s_fu_164_p3 : ap_const_lv3_2);

assign sel_tmp_fu_130_p2 = (tmp22_fu_124_p2 | tmp_155_fu_82_p2);

assign tmp20_fu_106_p2 = (tmp_157_fu_94_p2 | tmp_158_fu_100_p2);

assign tmp22_fu_124_p2 = (tmp_s_fu_44_p2 | tmp_153_fu_66_p2);

assign tmp_152_fu_60_p2 = ($signed(nx) + $signed(ap_const_lv32_FFFFFFFF));

assign tmp_153_fu_66_p2 = ((tmp_152_fu_60_p2 == y) ? 1'b1 : 1'b0);

assign tmp_154_fu_76_p2 = ($signed(ny) + $signed(ap_const_lv32_FFFFFFFF));

assign tmp_155_fu_82_p2 = ((tmp_154_fu_76_p2 != x) ? 1'b1 : 1'b0);

assign tmp_156_fu_88_p2 = ((y != ap_const_lv32_0) ? 1'b1 : 1'b0);

assign tmp_157_fu_94_p2 = ((x == ap_const_lv32_0) ? 1'b1 : 1'b0);

assign tmp_158_fu_100_p2 = ((tmp_154_fu_76_p2 == x) ? 1'b1 : 1'b0);

assign tmp_159_fu_118_p2 = ((tmp_152_fu_60_p2 != y) ? 1'b1 : 1'b0);

assign tmp_fu_38_p2 = ((x != ap_const_lv32_0) ? 1'b1 : 1'b0);

assign tmp_s_fu_44_p2 = ((y == ap_const_lv32_0) ? 1'b1 : 1'b0);

endmodule //on_edge
