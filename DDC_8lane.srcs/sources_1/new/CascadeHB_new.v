
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: CascadeHB_new
//
// 8路并行三级Halfband抽取
//
// 输入: 8 x 16bit = 128bit
// HB1 : 8 -> 4
// HB2 : 4 -> 2
// HB3 : 2 -> 1
// 输出: 1 x 16bit
//
// 时钟: 200MHz
// 总抽取: 8倍
//
// 目前仅支持 HB_Switch = 3'b110
//////////////////////////////////////////////////////////////////////////////////

module CascadeHB_new
    #(parameter BitWidth = 16)
    (
    input wire clk,
    input wire clken,
    input wire rst,

    input wire [2:0] HB_Switch,

    input wire [8*BitWidth-1:0]
        CascadeHB_DataIn_Tdata,

    input wire CascadeHB_DataIn_Tvalid,
    input wire CascadeHB_DataOut_Tready,

    output wire [BitWidth-1:0]
        CascadeHB_DataOut_Tdata,

    output wire CascadeHB_DataOut_Tvalid,
    output wire CascadeHB_DataIn_Tready
    );

    //==================================================
    // 1. 仅使用三级半带模式
    //==================================================

    wire mode_3hb;

    assign mode_3hb = (HB_Switch == 3'b110);


    //==================================================
    // 2. 三级半带之间的数据
    //==================================================

    wire [4*BitWidth-1:0] HBLevel1_DataOut;
    wire [2*BitWidth-1:0] HBLevel2_DataOut;
    wire [BitWidth-1:0]   HBLevel3_DataOut;

    wire HBLevel1_DataOut_Tvalid;
    wire HBLevel2_DataOut_Tvalid;
    wire HBLevel3_DataOut_Tvalid;

    wire HBLevel1_DataIn_Tready;
    wire HBLevel2_DataIn_Tready;
    wire HBLevel3_DataIn_Tready;


    //==================================================
    // 3. 第一级半带
    //
    // 输入8路，每路16bit
    // 输出4路，每路16bit
    //==================================================

    HB_Parallel_Decim2 #(
        .LANES(8),
        .BitWidth(BitWidth)
    ) Halfband_Filter_Level1 (
        .clk(clk),
        .clken(clken),
        .rst(rst),

        .s_data(CascadeHB_DataIn_Tdata),

        .s_valid(
            CascadeHB_DataIn_Tvalid && mode_3hb
        ),

        .s_ready(HBLevel1_DataIn_Tready),

        .m_data(HBLevel1_DataOut),

        .m_valid(HBLevel1_DataOut_Tvalid),

        .m_ready(HBLevel2_DataIn_Tready)
    );


    //==================================================
    // 4. 第二级半带
    //
    // 输入4路，每路16bit
    // 输出2路，每路16bit
    //==================================================

    HB_Parallel_Decim2 #(
        .LANES(4),
        .BitWidth(BitWidth)
    ) Halfband_Filter_Level2 (
        .clk(clk),
        .clken(clken),
        .rst(rst),

        .s_data(HBLevel1_DataOut),

        .s_valid(HBLevel1_DataOut_Tvalid),

        .s_ready(HBLevel2_DataIn_Tready),

        .m_data(HBLevel2_DataOut),

        .m_valid(HBLevel2_DataOut_Tvalid),

        .m_ready(HBLevel3_DataIn_Tready)
    );


    //==================================================
    // 5. 第三级半带
    //
    // 输入2路，每路16bit
    // 输出1路16bit
    //==================================================

    HB_Parallel_Decim2 #(
        .LANES(2),
        .BitWidth(BitWidth)
    ) Halfband_Filter_Level3 (
        .clk(clk),
        .clken(clken),
        .rst(rst),

        .s_data(HBLevel2_DataOut),

        .s_valid(HBLevel2_DataOut_Tvalid),

        .s_ready(HBLevel3_DataIn_Tready),

        .m_data(HBLevel3_DataOut),

        .m_valid(HBLevel3_DataOut_Tvalid),

        .m_ready(CascadeHB_DataOut_Tready)
    );


    //==================================================
    // 6. 顶层输出
    //==================================================

    assign CascadeHB_DataIn_Tready =
        mode_3hb && HBLevel1_DataIn_Tready;

    assign CascadeHB_DataOut_Tdata =
        HBLevel3_DataOut;

    assign CascadeHB_DataOut_Tvalid =
        mode_3hb && HBLevel3_DataOut_Tvalid;

endmodule



//////////////////////////////////////////////////////////////////////////////////
// Module Name: HB_Parallel_Decim2
//
// 并行21抽头FIR，抽取2倍
//
// LANES=8 : 8输入 -> 4输出
// LANES=4 : 4输入 -> 2输出
// LANES=2 : 2输入 -> 1输出
//
// 当前采用偶数索引抽取相位：
// y[0], y[2], y[4] ...
//
// 利用FIR系数对称性，减少乘法运算。
//////////////////////////////////////////////////////////////////////////////////

module HB_Parallel_Decim2
    #(
        parameter LANES = 8,
        parameter BitWidth = 16
    )
    (
    input wire clk,
    input wire clken,
    input wire rst,

    input wire [LANES*BitWidth-1:0] s_data,
    input wire s_valid,
    output wire s_ready,

    output reg [(LANES/2)*BitWidth-1:0] m_data,
    output reg m_valid,
    input wire m_ready
    );

    //==================================================
    // 1. FIR参数
    //==================================================

    localparam integer TAPS = 21;
    localparam integer HIST = 20;
    localparam integer SHIFT = 7;


    //==================================================
    // 2. 历史采样点
    //
    // hist[0] 为上一组输入的最后一个样点
    // hist[19] 为向前第20个历史样点
    //
    // 用于跨时钟周期FIR计算
    //==================================================

    reg signed [BitWidth-1:0] hist [0:HIST-1];


    //==================================================
    // 3. FIR系数
    //
    // 完整系数：
    // 6,0,-4,-3,5,6,-6,-13,7,44,64,
    // 44,7,-13,-6,6,5,-3,-4,0,6
    //
    // 使用对称性，仅保存前11个系数
    //==================================================

    function signed [7:0] coeff;
        input integer i;
        begin
            case (i)
                 0: coeff =   6;
                 1: coeff =   0;
                 2: coeff =  -4;
                 3: coeff =  -3;
                 4: coeff =   5;
                 5: coeff =   6;
                 6: coeff =  -6;
                 7: coeff = -13;
                 8: coeff =   7;
                 9: coeff =  44;
                10: coeff =  64;
                default: coeff = 0;
            endcase
        end
    endfunction


    //==================================================
    // 4. 舍入及16bit饱和
    //
    // 暂定缩放: /128
    // 需要与原FIR Compiler的结果比对
    //==================================================

    function signed [BitWidth-1:0] round_sat;

        input signed [47:0] acc;

        reg signed [47:0] scaled;

        begin

            scaled =
                (acc + (48'sd1 <<< (SHIFT-1)))
                >>> SHIFT;

            if (scaled > 32767)
                round_sat = 16'sh7FFF;

            else if (scaled < -32768)
                round_sat = 16'sh8000;

            else
                round_sat = scaled[BitWidth-1:0];

        end

    endfunction


    //==================================================
    // 5. 并行FIR运算
    //==================================================

    wire [(LANES/2)*BitWidth-1:0] computed;

    genvar out_idx;
    genvar tap_idx;

    generate

        for (
            out_idx = 0;
            out_idx < LANES/2;
            out_idx = out_idx + 1
        ) begin : GEN_OUTPUT

            // 当前输出对应的输入样点位置
            localparam integer POS = 2*out_idx;

            // 对称滤波系数乘法结果
            wire signed [31:0] prod [0:9];

            for (
                tap_idx = 0;
                tap_idx < 10;
                tap_idx = tap_idx + 1
            ) begin : GEN_TAP

                wire signed [BitWidth-1:0] sample_l;
                wire signed [BitWidth-1:0] sample_r;

                wire signed [BitWidth:0] pair_sum;


                //--------------------------------------
                // 左侧样点
                //--------------------------------------

                if (POS >= tap_idx) begin : LEFT_NOW

                    assign sample_l =
                        $signed(
                            s_data[
                                BitWidth*(POS-tap_idx)
                                +: BitWidth
                            ]
                        );

                end
                else begin : LEFT_HIST

                    assign sample_l =
                        hist[tap_idx-POS-1];

                end


                //--------------------------------------
                // 右侧对称样点
                //--------------------------------------

                if (POS >= (20-tap_idx))
                    begin : RIGHT_NOW

                    assign sample_r =
                        $signed(
                            s_data[
                                BitWidth*(POS-(20-tap_idx))
                                +: BitWidth
                            ]
                        );

                end
                else begin : RIGHT_HIST

                    assign sample_r =
                        hist[(20-tap_idx)-POS-1];

                end


                //--------------------------------------
                // 对称样点先相加，再乘系数
                //--------------------------------------

                assign pair_sum =
                    $signed(sample_l) +
                    $signed(sample_r);

                assign prod[tap_idx] =
                    pair_sum * coeff(tap_idx);

            end


            //==========================================
            // 6. 中心抽头
            //==========================================

            wire signed [BitWidth-1:0] center;

            if (POS >= 10) begin : CENTER_NOW

                assign center =
                    $signed(
                        s_data[
                            BitWidth*(POS-10)
                            +: BitWidth
                        ]
                    );

            end
            else begin : CENTER_HIST

                assign center =
                    hist[10-POS-1];

            end


            //==========================================
            // 7. FIR加法树
            //==========================================

            wire signed [47:0] s0 =
                $signed(prod[0]) + $signed(prod[1]);

            wire signed [47:0] s1 =
                $signed(prod[2]) + $signed(prod[3]);

            wire signed [47:0] s2 =
                $signed(prod[4]) + $signed(prod[5]);

            wire signed [47:0] s3 =
                $signed(prod[6]) + $signed(prod[7]);

            wire signed [47:0] s4 =
                $signed(prod[8]) + $signed(prod[9]);

            wire signed [47:0] s5 = s0 + s1;
            wire signed [47:0] s6 = s2 + s3;

            wire signed [47:0] s7 = s5 + s6;

            wire signed [47:0] center_prod =
                $signed(center) * 48'sd64;

            wire signed [47:0] acc =
                s7 + s4 + center_prod;


            //==========================================
            // 8. 缩放后输出16bit
            //==========================================

            assign computed[
                BitWidth*out_idx +: BitWidth
            ] = round_sat(acc);

        end

    endgenerate


    //==================================================
    // 9. 输入Ready
    //
    // 输出未被接收时暂停更新
    //==================================================

    assign s_ready =
        clken && (!m_valid || m_ready);


    //==================================================
    // 10. 输出寄存与历史样点更新
    //==================================================

    integer i;

    always @(posedge clk) begin

        if (rst) begin

            m_data <=
                {((LANES/2)*BitWidth){1'b0}};

            m_valid <= 1'b0;

            for (
                i = 0;
                i < HIST;
                i = i + 1
            )
                hist[i] <= {BitWidth{1'b0}};

        end

        else if (s_ready) begin

            m_valid <= s_valid;

            if (s_valid) begin

                //--------------------------------------
                // 保存本拍FIR计算结果
                //--------------------------------------

                m_data <= computed;


                //--------------------------------------
                // 更新历史输入采样点
                //--------------------------------------

                for (
                    i = 0;
                    i < HIST;
                    i = i + 1
                ) begin

                    if (i < LANES) begin

                        hist[i] <=
                            s_data[
                                BitWidth*(LANES-1-i)
                                +: BitWidth
                            ];

                    end
                    else begin

                        hist[i] <= hist[i-LANES];

                    end

                end

            end

        end

    end

endmodule
