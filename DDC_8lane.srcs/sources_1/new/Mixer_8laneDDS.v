
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: Mixer_DDS
//
// 8路并行DDS数字混频
//
// ADC Sample Rate : 1.6 GSPS
// PL Clock        : 200 MHz
// LO Frequency    : 500 MHz
//
// Input  : 8 x 16bit = 128bit
// Output : 8 x 16bit I + 8 x 16bit Q
//
// DDS Compiler:
// Configuration : SIN COS LUT only
// Phase Width   : 4
// Output Width  : 16
// Latency       : 6
// Output        : Sine and Cosine
//////////////////////////////////////////////////////////////////////////////////

module Mixer_8laneDDS (
    input  wire         clk,
    input  wire         rst,

    input  wire [127:0] data_in,
    input  wire         data_valid,

    output reg  [127:0] mix_i,
    output reg  [127:0] mix_q,
    output reg          mix_valid
);

    //==================================================
    // 1. DDS相位参数
    //==================================================

    // 500MHz / 1.6GHz * 16 = 5
    localparam [3:0] PHASE_STEP_SAMPLE = 4'd5;

    // 每拍8个ADC样点
    // (8 * 5) mod 16 = 8
    localparam [3:0] PHASE_STEP_WORD = 4'd8;

    // DDS延迟：按IP Summary中的6拍配置
    localparam integer DDS_LATENCY = 6;

    reg [3:0] phase_base;

    always @(posedge clk) begin
        if (rst) begin
            phase_base <= 4'd0;
        end
        else if (data_valid) begin
            phase_base <= phase_base + PHASE_STEP_WORD;
        end
    end


    //==================================================
    // 2. DDS输出信号
    //==================================================

    wire [7:0] dds_valid;

    // 每路DDS输出32bit：
    // [15:0]  = Cosine
    // [31:16] = Sine
    wire [31:0] dds_data [0:7];


    //==================================================
    // 3. ADC输入延迟
    //
    // 延迟6拍，匹配DDS的Latency=6
    // 每一级保存8个16bit ADC样点
    //==================================================

    reg [127:0] data_delay [0:DDS_LATENCY-1];
    reg [DDS_LATENCY-1:0] valid_delay;

    integer d;

    always @(posedge clk) begin
        if (rst) begin

            for (d = 0; d < DDS_LATENCY; d = d + 1)
                data_delay[d] <= 128'd0;

            valid_delay <= {DDS_LATENCY{1'b0}};

        end
        else begin

            data_delay[0] <= data_in;

            for (d = 1; d < DDS_LATENCY; d = d + 1)
                data_delay[d] <= data_delay[d-1];

            valid_delay[0] <= data_valid;

            for (d = 1; d < DDS_LATENCY; d = d + 1)
                valid_delay[d] <= valid_delay[d-1];

        end
    end


    //==================================================
    // 4. 16bit饱和处理函数
    //==================================================

    function signed [15:0] sat16;

        input signed [31:0] value;

        begin
            if (value > 32'sd32767)
                sat16 = 16'sh7FFF;

            else if (value < -32'sd32768)
                sat16 = 16'sh8000;

            else
                sat16 = value[15:0];
        end

    endfunction


    //==================================================
    // 5. 8路并行DDS + 混频
    //==================================================

    genvar k;

    generate
        for (k = 0; k < 8; k = k + 1) begin : gen_mixer

            //------------------------------------------
            // 5.1 每路相位偏移
            //
            // Lane 0 : 0
            // Lane 1 : 5
            // Lane 2 : A
            // Lane 3 : F
            // Lane 4 : 4
            // Lane 5 : 9
            // Lane 6 : E
            // Lane 7 : 3
            //------------------------------------------

            localparam [3:0] PHASE_OFFSET =
                (k * 5) % 16;

            wire [3:0] phase_k;

            assign phase_k =
                phase_base + PHASE_OFFSET;


            //------------------------------------------
            // 5.2 DDS Compiler
            //
            // Phase Width = 4bit
            //
            // AXIS接口按8bit对齐：
            // 高4bit补0，低4bit放相位值
            //------------------------------------------

            wire [7:0] phase_tdata;

            assign phase_tdata =
                {4'b0000, phase_k};


            dds_500_phase u_dds_500_phase (
                .aclk                (clk),
                .aclken              (1'b1),
                .aresetn             (~rst),
                .s_axis_phase_tvalid (data_valid),
                .s_axis_phase_tdata  (phase_tdata),
                .m_axis_data_tvalid  (dds_valid[k]),
                .m_axis_data_tdata   (dds_data[k])

            );


            //------------------------------------------
            // 5.3 DDS正弦、余弦拆分
            //------------------------------------------

            wire signed [15:0] dds_cos;
            wire signed [15:0] dds_sin;

            assign dds_cos =
                $signed(dds_data[k][15:0]);

            assign dds_sin =
                $signed(dds_data[k][31:16]);


            //------------------------------------------
            // 5.4 取出对应的一路ADC样点
            //------------------------------------------

            wire signed [15:0] sample_d;

            assign sample_d =
                $signed(
                    data_delay[DDS_LATENCY-1][16*k +: 16]
                );


            //------------------------------------------
            //  数字混频
            //
            // I = x * cos
            // Q = -x * sin
            //
            // 16bit x 16bit = 32bit
            //------------------------------------------

            wire signed [31:0] mult_i;
            wire signed [31:0] mult_q;

            assign mult_i =
                sample_d * dds_cos;

            assign mult_q =
                sample_d * dds_sin;


            //------------------------------------------
            // 5.6 缩放至16bit
            //
            // DDS输出为Q1.15
            // 因此乘积右移15位
            //------------------------------------------

            wire signed [31:0] scaled_i;
            wire signed [31:0] scaled_q;

            assign scaled_i =
                mult_i >>> 15;

            assign scaled_q =
                -(mult_q >>> 15);


            //------------------------------------------
            // 5.7 每路I/Q输出寄存
            //------------------------------------------

            always @(posedge clk) begin

                if (rst) begin

                    mix_i[16*k +: 16] <= 16'd0;
                    mix_q[16*k +: 16] <= 16'd0;

                end

                else if (
                    valid_delay[DDS_LATENCY-1] &&
                    (&dds_valid)
                ) begin

                    mix_i[16*k +: 16] <=
                        sat16(scaled_i);

                    mix_q[16*k +: 16] <=
                        sat16(scaled_q);

                end

            end

        end
    endgenerate


    //==================================================
    // 6. 混频输出有效信号
    //==================================================

    always @(posedge clk) begin

        if (rst) begin
            mix_valid <= 1'b0;
        end

        else begin
            mix_valid <=
                valid_delay[DDS_LATENCY-1] &&
                (&dds_valid);
        end

    end

endmodule
