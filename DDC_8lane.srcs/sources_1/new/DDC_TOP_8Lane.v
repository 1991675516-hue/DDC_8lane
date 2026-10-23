`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/01 20:03:30
// Design Name: 
// Module Name: DDC_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DDC_Top_8Lane
    #(parameter BitWidth = 16)  
    (
   
    input 							clk								,
    input 							DDC_EN							,  //模块使能
    input 							rst								,
	input                           rst_fre_config                  ,
	input  [6:0					]	MD8G_Fre_Deci_Mode				,
	input 							SerialCIC_Config_Tvalid			,
    // input [2 : 0				]	SerialCIC_DecimationRate,         //串行CIC抽取倍率选择
    // input [1 : 0				]	CascadeHB_Switch,                 //级联半带�?关切�?
    input [BitWidth*8 - 1 : 0	] 	DDC_DataIn_TdataI				,   //8·����ԭʼ�������룬ÿ·16bit����128bit
    input [BitWidth - 1 : 0	] 	DDC_DataIn_TdataQ				,   //80路时域数据输�?
    input 							DDC_DataIn_Tvalid				,                        //数据输入有效标志
    input							rd_fifo							,
	input  [13:0				] 	ddc_prog_full_thresh			,
	input  [11:0				]	badpoints_num					,
	//输出端口
	output  [BitWidth*2 - 1 : 0]   	ParallelCIC_8Lane_DataOut_I		,
	output							ParallelCIC8Lane_DataOut_I_Tvalid	,
	output  [BitWidth*2 - 1 : 0]   	ParallelCIC_8Lane_DataOut_Q		,
	output							ParallelCIC8Lane_DataOut_Q_Tvalid	,
    output [BitWidth - 1 : 0	]	ddc_fifo_data_out_I				,    //DDC I路数据输�?
    output [BitWidth - 1 : 0	]	ddc_fifo_data_out_Q				,    //DDC Q路数据输�?
    output 							ddc_fifo_data_out_I_valid       ,                 //DDC I路数据valid标志
    output 							ddc_fifo_data_out_Q_valid                        //DDC I路数据valid标志
    // output [BitWidth - 1 : 0] DDC_DataOutQ_Tdata,    //DDC Q路数据输�?
    // output DDC_DataOutQ_Tvalid,                       //DDC Q路数据valid标志
    // output DDC_DataIn_Tready,                           //DDC数据输入ready标志
    // output SerialCIC_Config_Tready                      //串行CIC配置ready标志
    );

	(*max_fanout = "100" *)reg ddc_en_r;

	always @(posedge clk) begin
		ddc_en_r <= DDC_EN ;
	end
    //Mixing ��Ƶ��8·���У�ÿ·16bit
    wire signed [BitWidth*8-1:0] mixer_i;
    wire signed [BitWidth*8-1:0] mixer_q;
    wire           mixer_valid;
     

    Mixer_8laneDDS u_Mixer_DDS
    (
        .clk        ( clk                  ),
        .rst        ( rst | rst_fre_config ),

        .data_in    ( DDC_DataIn_TdataI    ), // 128bit��ÿ��8������������
        .data_valid ( DDC_DataIn_Tvalid    ),

        .mix_i      ( mixer_i              ), // 8·I��������128bit
        .mix_q      ( mixer_q              ), // 8·Q��������128bit
        .mix_valid  ( mixer_valid          )
    );

    //DecimFilter变量声明
    // wire DecimationFilter_EN;                               ////滤波抽取模块使能
    // wire [BitWidth*80 - 1 : 0] DecimFilterI_DataIn_Tdata; 
    // wire DecimFilterI_DataIn_Tvalid;
    // wire [BitWidth*8 - 1 : 0]  DecimFilterI_DataOut8Lane_Tdata;
    // wire DecimFilterI_DataOut8Lane_Tvalid;
    // wire [BitWidth - 1 : 0]  DecimFilterI_DataOut1Lane_Tdata;
    // wire DecimFilterI_DataOut1Lane_Tvalid;
    // wire [BitWidth - 1 : 0]  DecimFilterQ_DataOut1Lane_Tdata;
    // wire DecimFilterQ_DataOut1Lane_Tvalid;
    wire DecimFilterI_DataIn_Tready;
    wire SerialCICI_Config_Tready;
    
    // wire [BitWidth*80 - 1 : 0] DecimFilterQ_DataIn_Tdata; 
    // wire [BitWidth*8 - 1 : 0]  DecimFilterQ_DataOut8Lane_Tdata;
    // wire DecimFilterQ_DataOut8Lane_Tvalid;
    // wire [BitWidth - 1 : 0]  DecimFilterQ_DataOut1Lane_Tdata;
    // wire DecimFilterQ_DataOut1Lane_Tvalid;
    wire DecimFilterQ_DataIn_Tready;
    wire SerialCICQ_Config_Tready; 
    //混频赋�??
    // assign Mixing_EN = DDC_EN;
    // assign Mixing_DataIn_Tdata = DDC_DataIn_Tdata;
    // assign Mixing_DataIn_Tvalid = DDC_DataIn_Tvalid;
    //抽取滤波赋�??
    // assign DecimationFilter_EN = DDC_EN;
    // assign DecimFilterI_DataIn_Tdata = Mixing_DataOutI_Tdata;
    // assign DecimFilterQ_DataIn_Tdata = Mixing_DataOutQ_Tdata;
    // assign DecimFilterI_DataIn_Tvalid = Mixing_DataOut_Tvalid;
    //输出赋�??
    // assign DDC_DataIn_Tready = DecimFilterI_DataIn_Tready & DecimFilterQ_DataIn_Tready;
    // assign SerialCIC_Config_Tready = SerialCICI_Config_Tready & SerialCICQ_Config_Tready;
    
	
    wire    [2 : 0				] 	SerialCIC_DecimationRate		;
    wire    [2 : 0				] 	CascadeHB_Switch				; 
	wire    [0 : 0				]	SCIClevel1_DecimationRate		;
	assign SCIClevel1_DecimationRate = MD8G_Fre_Deci_Mode[6];//1:/10,0:*1
	assign SerialCIC_DecimationRate = MD8G_Fre_Deci_Mode[5:3];//000(*1),001(/4)��010(/10)��011(/40)��100(/100)��101(/400),110(/1000),111(/4000)
	assign CascadeHB_Switch = MD8G_Fre_Deci_Mode[2:0];//110�������,100�������,001\010һ�����,000��·

	
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  CascadeHB_DataOut_Tdata			;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  CascadeHB_DataOut_Tdata_ob		;
(* dont_touch="true" *)    wire 					   CascadeHB_DataOut_Tvalid			;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialCIC_DataOut_Tdata			;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialCIC_DataOutQ_Tdata			;
(* dont_touch="true" *)    wire 					   SerialCIC_DataOut_Tvalid			;
(* dont_touch="true" *)    wire 					   SerialCIC_DataOutQ_Tvalid		;
(* dont_touch="true" *)    wire 					   SerialDecim_DataOut_Tvalid		;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialDecim_DataOut_Tdata		;
(* dont_touch="true" *)    wire 					   SerialDecim_DataOutQ_Tvalid		;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialDecim_DataOutQ_Tdata		;
    
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  CascadeHB_DataOutQ_Tdata			;
(* dont_touch="true" *)    wire 					   CascadeHB_DataOutQ_Tvalid		;
	// I·
    DecimationFilter_8lane    #(.BitWidth(16) ,.ILA_EN(0))  DecimationFilter_Inphase(
    .clk(clk),
    .DecimationFilter_EN(DDC_EN),                      //抽取模块使能
    .rst(rst),
	.rst_fre_config(rst_fre_config),
	// .MD8G_Fre_Deci_Mode(MD8G_Fre_Deci_Mode),
    .SerialCIC_DecimationRate(SerialCIC_DecimationRate),         //串行CIC抽取倍率选择      [2 : 0]
    .CascadeHB_Switch(CascadeHB_Switch),                 //级联半带�?关切�?     [1 : 0]
    .DecimFilter_DataIn_Tdata(mixer_i),      //输入80路，16bit数据       [BitWidth*80 - 1 : 0]
    .DecimFilterI_DataIn_Tvalid(mixer_valid),        //输入数据Valid
    .SerialCIC_Config_Tvalid(SerialCIC_Config_Tvalid),
	.SCIClevel1_DecimationRate(SCIClevel1_DecimationRate),
	.badpoints_num(badpoints_num),
	//
	.rd_fifo(rd_fifo),
	.ddc_prog_full_thresh(ddc_prog_full_thresh),
	//输出端口
	.ParallelCIC_8Lane_DataOut(ParallelCIC_8Lane_DataOut_I),
	.ParallelCIC8Lane_DataOut_Tvalid(ParallelCIC8Lane_DataOut_I_Tvalid),
	.ddc_fifo_data_out(ddc_fifo_data_out_I),
	.ddc_fifo_data_out_valid(ddc_fifo_data_out_I_valid)
    // .DecimFilter_DataOut8Lane_Tdata(DecimFilterI_DataOut8Lane_Tdata),        //8路输�?          [BitWidth*8 - 1 : 0]
    // .DecimFilter_DataOut8Lane_Tvalid(DecimFilterI_DataOut8Lane_Tvalid),
    // .CascadeHB_DataOut_Tdata(CascadeHB_DataOut_Tdata),      //�?后一级半带输�?        [BitWidth - 1 : 0]
    // .CascadeHB_DataOut_Tvalid(CascadeHB_DataOut_Tvalid),
	// .SerialCIC_DataOut_Tdata(SerialCIC_DataOut_Tdata),
	// .SerialCIC_DataOut_Tvalid(SerialCIC_DataOut_Tvalid),
	// .SerialDecim_DataOut_Tvalid(SerialDecim_DataOut_Tvalid),
	// .SerialDecim_DataOut_Tdata(SerialDecim_DataOut_Tdata)
	 // .SerialCIC_Config_Tready(SerialCICI_Config_Tready),                      //串行CIC配置通道ready标志
    // .DecimFilter_DataIn_Tready(DecimFilterI_DataIn_Tready)                                 //抽取滤波器输入ready标志      
    );

// Q·
    DecimationFilter_8lane    #(.BitWidth(16))  DecimationFilter_Quadrature(
    //输入端口
    .clk(clk),
    .DecimationFilter_EN(DDC_EN),                      //抽取模块使能
    .rst(rst),
	.rst_fre_config(rst_fre_config),
	// .MD8G_Fre_Deci_Mode(MD8G_Fre_Deci_Mode),
    .SerialCIC_DecimationRate(SerialCIC_DecimationRate),         //串行CIC抽取倍率选择      [2 : 0]
    .CascadeHB_Switch(CascadeHB_Switch),                 //级联半带�?关切�?     [1 : 0]
	.SCIClevel1_DecimationRate(SCIClevel1_DecimationRate),
	.badpoints_num(badpoints_num),
    .DecimFilter_DataIn_Tdata(mixer_q),      //输入80路，16bit数据       [BitWidth*80 - 1 : 0]
    .DecimFilterI_DataIn_Tvalid(mixer_valid),        //输入数据Valid
    .SerialCIC_Config_Tvalid(SerialCIC_Config_Tvalid),
	.rd_fifo(rd_fifo),
	.ddc_prog_full_thresh(ddc_prog_full_thresh),
	//输出端口
	.ParallelCIC_8Lane_DataOut(ParallelCIC_8Lane_DataOut_Q),
	.ParallelCIC8Lane_DataOut_Tvalid(ParallelCIC8Lane_DataOut_Q_Tvalid),
	.ddc_fifo_data_out(ddc_fifo_data_out_Q),
	.ddc_fifo_data_out_valid(ddc_fifo_data_out_Q_valid)
    // .DecimFilter_DataOut8Lane_Tdata(DecimFilterI_DataOut8Lane_Tdata),        //8路输�?          [BitWidth*8 - 1 : 0]
    // .DecimFilter_DataOut8Lane_Tvalid(DecimFilterI_DataOut8Lane_Tvalid),
    // .CascadeHB_DataOut_Tdata(CascadeHB_DataOutQ_Tdata),      //�?后一级半带输�?        [BitWidth - 1 : 0]
    // .CascadeHB_DataOut_Tvalid(CascadeHB_DataOutQ_Tvalid),
	// .SerialCIC_DataOut_Tdata(SerialCIC_DataOutQ_Tdata),
	// .SerialCIC_DataOut_Tvalid(SerialCIC_DataOutQ_Tvalid),
	// .SerialDecim_DataOut_Tvalid(SerialDecim_DataOutQ_Tvalid),
	// .SerialDecim_DataOut_Tdata(SerialDecim_DataOutQ_Tdata)                    
    // .SerialCIC_Config_Tready(SerialCICI_Config_Tready),                      //串行CIC配置通道ready标志
    // .DecimFilter_DataIn_Tready(DecimFilterI_DataIn_Tready)                                 //抽取滤波器输入ready标志      
    );
	
//ila_DDC_de80_SCIC_3HB ila_DDC_de80_SCIC_3HB (
//	.clk(clk), // input wire clk


//	.probe0(CascadeHB_DataOut_Tvalid), // input wire [0:0]  probe0  
//	.probe1(CascadeHB_DataOut_Tdata), // input wire [15:0]  probe1 
//	.probe2(CascadeHB_DataOutQ_Tdata), // input wire [15:0]  probe2 
//	.probe3(SerialDecim_DataOut_Tvalid), // input wire [0:0]  probe3 
//	.probe4(SerialDecim_DataOut_Tdata), // input wire [15:0]  probe4 
//	.probe5(SerialDecim_DataOutQ_Tdata), // input wire [15:0]  probe5 
//	.probe6(SerialCIC_DataOut_Tvalid), // input wire [0:0]  probe6 
//	.probe7(SerialCIC_DataOutQ_Tdata), // input wire [15:0]  probe7 
//	.probe8(SerialCIC_DataOut_Tdata), // input wire [15:0]  probe8 
//	.probe9(Serial_Decim80_en), // input wire [0:0]  probe9 
//	.probe10(SerialCIC_DecimationRate), // input wire [2:0]  probe10 
//	.probe11(CascadeHB_Switch) // input wire [1:0]  probe11
//);
	
 (* dont_touch="true" *)    wire rd_SerialCIC_out;
 (* dont_touch="true" *)    wire rd_SerialCICQ_out;
 (* dont_touch="true" *)    wire SerialCIC_DataOutQ_Tdata_ob_valid;
 (* dont_touch="true" *)    wire SerialCIC_DataOut_Tdata_ob_valid;
 (* dont_touch="true" *)    wire rd_CascadeHBQ_out;
 (* dont_touch="true" *)    wire rd_CascadeHB_out;
 (* dont_touch="true" *)    wire CascadeHB_DataOut_Tdata_ob_valid;
 (* dont_touch="true" *)    wire CascadeHB_DataOutQ_Tdata_ob_valid;
//(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  CascadeHB_DataOut_Tdata_ob		;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialCIC_DataOut_Tdata_ob		;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  CascadeHB_DataOutQ_Tdata_ob		;
(* dont_touch="true" *)    wire [BitWidth - 1 : 0	]  SerialCIC_DataOutQ_Tdata_ob		;
 
 
// TEST_FIFO_16bit TEST_FIFO_SerialCIC_ob (
//  .clk(clk),                  // input wire clk
//  .srst(rst),                // input wire srst
//  .din(SerialCIC_DataOut_Tdata),                  // input wire [15 : 0] din
//  .wr_en(SerialCIC_DataOut_Tvalid),              // input wire wr_en
//  .rd_en(rd_SerialCIC_out),              // input wire rd_en
//  .dout(SerialCIC_DataOut_Tdata_ob),                // output wire [15 : 0] dout
//  .full(),                // output wire full
//  .empty(),              // output wire empty
//  .valid(SerialCIC_DataOut_Tdata_ob_valid),              // output wire valid
//  .wr_rst_busy(),  // output wire wr_rst_busy
//  .rd_rst_busy()  // output wire rd_rst_busy
//);

// TEST_FIFO_16bit TEST_FIFO_SerialCICQ_ob (
//  .clk(clk),                  // input wire clk
//  .srst(rst),                // input wire srst
//  .din(SerialCIC_DataOutQ_Tdata),                  // input wire [15 : 0] din
//  .wr_en(SerialCIC_DataOutQ_Tvalid),              // input wire wr_en
//  .rd_en(rd_SerialCIC_out),              // input wire rd_en
//  .dout(SerialCIC_DataOutQ_Tdata_ob),                // output wire [15 : 0] dout
//  .full(),                // output wire full
//  .empty(),              // output wire empty
//  .valid(SerialCIC_DataOutQ_Tdata_ob_valid),              // output wire valid
//  .wr_rst_busy(),  // output wire wr_rst_busy
//  .rd_rst_busy()  // output wire rd_rst_busy
//);
 
 
// TEST_FIFO_16bit TEST_FIFO_CascadeHB_ob (
//  .clk(clk),                  // input wire clk
//  .srst(rst),                // input wire srst
//  .din(CascadeHB_DataOut_Tdata),                  // input wire [15 : 0] din
//  .wr_en(CascadeHB_DataOut_Tvalid),              // input wire wr_en
//  .rd_en(rd_CascadeHB_out),              // input wire rd_en
//  .dout(CascadeHB_DataOut_Tdata_ob),                // output wire [15 : 0] dout
//  .full(),                // output wire full
//  .empty(),              // output wire empty
//  .valid(CascadeHB_DataOut_Tdata_ob_valid),              // output wire valid
//  .wr_rst_busy(),  // output wire wr_rst_busy
//  .rd_rst_busy()  // output wire rd_rst_busy
//);


// TEST_FIFO_16bit TEST_FIFO_CascadeHBQ_ob (
//  .clk(clk),                  // input wire clk
//  .srst(rst),                // input wire srst
//  .din(CascadeHB_DataOutQ_Tdata),                  // input wire [15 : 0] din
//  .wr_en(CascadeHB_DataOutQ_Tvalid),              // input wire wr_en
//  .rd_en(rd_CascadeHB_out),              // input wire rd_en
//  .dout(CascadeHB_DataOutQ_Tdata_ob),                // output wire [15 : 0] dout
//  .full(),                // output wire full
//  .empty(),              // output wire empty
//  .valid(CascadeHB_DataOutQ_Tdata_ob_valid),              // output wire valid
//  .wr_rst_busy(),  // output wire wr_rst_busy
//  .rd_rst_busy()  // output wire rd_rst_busy
//);


//vio_DDC_cascadeHB vio_DDC_cascadeHB (
//  .clk(clk),                // input wire clk
//  .probe_out0(rd_CascadeHB_out),  // output wire [0 : 0] probe_out0
//  .probe_out1(rd_SerialCIC_out),  // output wire [0 : 0] probe_out1
//  .probe_out2(rd_CascadeHBQ_out),  // output wire [0 : 0] probe_out2
//  .probe_out3(rd_SerialCICQ_out)  // output wire [0 : 0] probe_out3
//);







endmodule

////JM-lchy
