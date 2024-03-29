// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module minizedVGA_v_tpg_0_0_tpgPatternColorBars (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        x,
        width,
        color,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] x;
input  [15:0] width;
input  [7:0] color;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] hBarSel_4_0;
wire   [2:0] tpgBarSelRgb_r357_address0;
reg    tpgBarSelRgb_r357_ce0;
wire   [0:0] tpgBarSelRgb_r357_q0;
wire   [2:0] tpgBarSelYuv_y354_address0;
reg    tpgBarSelYuv_y354_ce0;
wire   [7:0] tpgBarSelYuv_y354_q0;
wire   [2:0] tpgBarSelRgb_g360_address0;
reg    tpgBarSelRgb_g360_ce0;
wire   [0:0] tpgBarSelRgb_g360_q0;
wire   [2:0] tpgBarSelYuv_v348_address0;
reg    tpgBarSelYuv_v348_ce0;
wire   [7:0] tpgBarSelYuv_v348_q0;
wire   [2:0] tpgBarSelYuv_u351_address0;
reg    tpgBarSelYuv_u351_ce0;
wire   [7:0] tpgBarSelYuv_u351_q0;
wire   [2:0] tpgBarSelRgb_b363_address0;
reg    tpgBarSelRgb_b363_ce0;
wire   [0:0] tpgBarSelRgb_b363_q0;
reg   [10:0] xBar_V_0;
wire   [0:0] tmp_92_fu_186_p2;
wire   [0:0] sel_tmp4_fu_308_p2;
reg   [0:0] sel_tmp4_reg_422;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6;
wire   [2:0] ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_reg_148;
wire   [0:0] tmp_91_fu_180_p2;
wire   [0:0] tmp_95_fu_215_p2;
wire   [2:0] tmp_99_fu_239_p2;
wire   [63:0] tmp_100_fu_276_p1;
wire   [10:0] tmp_98_fu_227_p2;
wire   [10:0] tmp_96_fu_252_p2;
wire  signed [15:0] tmp_102_fu_160_p0;
wire   [13:0] tmp_102_fu_160_p1;
wire   [13:0] tmp_s_fu_164_p2;
wire  signed [15:0] tmp_91_fu_180_p0;
wire   [10:0] barWidth_V_fu_170_p4;
wire   [11:0] lhs_V_cast_fu_205_p1;
wire   [11:0] r_V_fu_209_p2;
wire   [11:0] tmp_94_cast_fu_192_p1;
wire   [10:0] tmp_97_fu_221_p2;
wire  signed [15:0] tmp_103_fu_286_p0;
wire   [0:0] tmp_103_fu_286_p1;
wire   [0:0] sel_tmp1_fu_290_p2;
wire   [0:0] tmp_fu_302_p2;
wire   [0:0] sel_tmp2_fu_296_p2;
wire   [7:0] tpgBarSelRgb_r_load_s_fu_314_p3;
wire   [7:0] tpgBarSelRgb_g_load_s_fu_329_p3;
wire   [7:0] sel_tmp_fu_337_p3;
wire   [7:0] tpgBarSelRgb_b_load_s_fu_351_p3;
wire   [7:0] Scalar_val_0_V_writ_fu_322_p3;
wire   [7:0] Scalar_val_1_V_writ_fu_344_p3;
wire   [7:0] Scalar_val_2_V_writ_fu_359_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_25;
reg    ap_condition_48;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 hBarSel_4_0 = 3'd0;
#0 xBar_V_0 = 11'd0;
end

minizedVGA_v_tpg_0_0_tpgPatternDPColorcud #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_r357_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_r357_address0),
    .ce0(tpgBarSelRgb_r357_ce0),
    .q0(tpgBarSelRgb_r357_q0)
);

minizedVGA_v_tpg_0_0_tpgPatternCheckerqcK #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_y354_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_y354_address0),
    .ce0(tpgBarSelYuv_y354_ce0),
    .q0(tpgBarSelYuv_y354_q0)
);

minizedVGA_v_tpg_0_0_tpgPatternDPColordEe #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_g360_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_g360_address0),
    .ce0(tpgBarSelRgb_g360_ce0),
    .q0(tpgBarSelRgb_g360_q0)
);

minizedVGA_v_tpg_0_0_tpgPatternCheckersc4 #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_v348_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_v348_address0),
    .ce0(tpgBarSelYuv_v348_ce0),
    .q0(tpgBarSelYuv_v348_q0)
);

minizedVGA_v_tpg_0_0_tpgPatternCheckertde #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_u351_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_u351_address0),
    .ce0(tpgBarSelYuv_u351_ce0),
    .q0(tpgBarSelYuv_u351_q0)
);

minizedVGA_v_tpg_0_0_tpgPatternDPColoreOg #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_b363_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_b363_address0),
    .ce0(tpgBarSelRgb_b363_ce0),
    .q0(tpgBarSelRgb_b363_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_48)) begin
        if ((tmp_91_fu_180_p2 == 1'd1)) begin
            hBarSel_4_0 <= 3'd0;
        end else if (((tmp_95_fu_215_p2 == 1'd0) & (tmp_91_fu_180_p2 == 1'd0))) begin
            hBarSel_4_0 <= tmp_99_fu_239_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_48)) begin
        if ((tmp_91_fu_180_p2 == 1'd1)) begin
            xBar_V_0 <= 11'd0;
        end else if (((tmp_95_fu_215_p2 == 1'd1) & (tmp_91_fu_180_p2 == 1'd0))) begin
            xBar_V_0 <= tmp_96_fu_252_p2;
        end else if (((tmp_95_fu_215_p2 == 1'd0) & (tmp_91_fu_180_p2 == 1'd0))) begin
            xBar_V_0 <= tmp_98_fu_227_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sel_tmp4_reg_422 <= sel_tmp4_fu_308_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_25)) begin
        if (((tmp_95_fu_215_p2 == 1'd0) & (tmp_91_fu_180_p2 == 1'd0))) begin
            ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6 = tmp_99_fu_239_p2;
        end else if (((tmp_95_fu_215_p2 == 1'd1) & (tmp_91_fu_180_p2 == 1'd0))) begin
            ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6 = hBarSel_4_0;
        end else if ((tmp_91_fu_180_p2 == 1'd1)) begin
            ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6 = 3'd0;
        end else begin
            ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6 = ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_reg_148;
        end
    end else begin
        ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6 = ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_reg_148;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelRgb_b363_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_b363_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelRgb_g360_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_g360_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelRgb_r357_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_r357_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelYuv_u351_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_u351_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelYuv_v348_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_v348_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tpgBarSelYuv_y354_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_y354_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Scalar_val_0_V_writ_fu_322_p3 = ((tmp_92_fu_186_p2[0:0] === 1'b1) ? tpgBarSelRgb_r_load_s_fu_314_p3 : tpgBarSelYuv_y354_q0);

assign Scalar_val_1_V_writ_fu_344_p3 = ((sel_tmp4_reg_422[0:0] === 1'b1) ? tpgBarSelYuv_v348_q0 : sel_tmp_fu_337_p3);

assign Scalar_val_2_V_writ_fu_359_p3 = ((tmp_92_fu_186_p2[0:0] === 1'b1) ? tpgBarSelRgb_b_load_s_fu_351_p3 : tpgBarSelYuv_v348_q0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_25 = ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_48 = ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_reg_148 = 'bx;

assign ap_return_0 = Scalar_val_0_V_writ_fu_322_p3;

assign ap_return_1 = Scalar_val_1_V_writ_fu_344_p3;

assign ap_return_2 = Scalar_val_2_V_writ_fu_359_p3;

assign barWidth_V_fu_170_p4 = {{tmp_s_fu_164_p2[13:3]}};

assign lhs_V_cast_fu_205_p1 = xBar_V_0;

assign r_V_fu_209_p2 = (lhs_V_cast_fu_205_p1 + 12'd1);

assign sel_tmp1_fu_290_p2 = (tmp_92_fu_186_p2 ^ 1'd1);

assign sel_tmp2_fu_296_p2 = ((color != 8'd1) ? 1'b1 : 1'b0);

assign sel_tmp4_fu_308_p2 = (tmp_fu_302_p2 & sel_tmp2_fu_296_p2);

assign sel_tmp_fu_337_p3 = ((tmp_92_fu_186_p2[0:0] === 1'b1) ? tpgBarSelRgb_g_load_s_fu_329_p3 : tpgBarSelYuv_u351_q0);

assign tmp_100_fu_276_p1 = ap_phi_mux_hBarSel_4_0_loc_phi_fu_151_p6;

assign tmp_102_fu_160_p0 = width;

assign tmp_102_fu_160_p1 = tmp_102_fu_160_p0[13:0];

assign tmp_103_fu_286_p0 = x;

assign tmp_103_fu_286_p1 = tmp_103_fu_286_p0[0:0];

assign tmp_91_fu_180_p0 = x;

assign tmp_91_fu_180_p2 = ((tmp_91_fu_180_p0 == 16'd0) ? 1'b1 : 1'b0);

assign tmp_92_fu_186_p2 = ((color == 8'd0) ? 1'b1 : 1'b0);

assign tmp_94_cast_fu_192_p1 = barWidth_V_fu_170_p4;

assign tmp_95_fu_215_p2 = ((r_V_fu_209_p2 < tmp_94_cast_fu_192_p1) ? 1'b1 : 1'b0);

assign tmp_96_fu_252_p2 = (xBar_V_0 + 11'd1);

assign tmp_97_fu_221_p2 = (11'd1 - barWidth_V_fu_170_p4);

assign tmp_98_fu_227_p2 = (xBar_V_0 + tmp_97_fu_221_p2);

assign tmp_99_fu_239_p2 = (hBarSel_4_0 + 3'd1);

assign tmp_fu_302_p2 = (tmp_103_fu_286_p1 & sel_tmp1_fu_290_p2);

assign tmp_s_fu_164_p2 = (14'd7 + tmp_102_fu_160_p1);

assign tpgBarSelRgb_b363_address0 = tmp_100_fu_276_p1;

assign tpgBarSelRgb_b_load_s_fu_351_p3 = ((tpgBarSelRgb_b363_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign tpgBarSelRgb_g360_address0 = tmp_100_fu_276_p1;

assign tpgBarSelRgb_g_load_s_fu_329_p3 = ((tpgBarSelRgb_g360_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign tpgBarSelRgb_r357_address0 = tmp_100_fu_276_p1;

assign tpgBarSelRgb_r_load_s_fu_314_p3 = ((tpgBarSelRgb_r357_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign tpgBarSelYuv_u351_address0 = tmp_100_fu_276_p1;

assign tpgBarSelYuv_v348_address0 = tmp_100_fu_276_p1;

assign tpgBarSelYuv_y354_address0 = tmp_100_fu_276_p1;

endmodule //minizedVGA_v_tpg_0_0_tpgPatternColorBars
