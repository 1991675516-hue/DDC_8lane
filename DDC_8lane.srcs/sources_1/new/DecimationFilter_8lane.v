`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/01 20:06:39
// Design Name: 
// Module Name: DecimationFilter
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


module DecimationFilter_8lane
    #(
        parameter BitWidth = 16,
        parameter ILA_EN = 0
    )   
    (
  
    input 							clk								,
    input 							DecimationFilter_EN				,                      
    input 							rst								,
	input 							rst_fre_config					,
	input	[0:0				]	SCIClevel1_DecimationRate		,
    input 	[2 : 0				] 	SerialCIC_DecimationRate		,         
    input 	[2 : 0				] 	CascadeHB_Switch				,                 
    input 	[BitWidth*8 - 1 : 0	] 	DecimFilter_DataIn_Tdata		,      
    input 							DecimFilterI_DataIn_Tvalid		,              
	input 							SerialCIC_Config_Tvalid			,
	//
	input 							rd_fifo							,
	input 	[13:0				] 	ddc_prog_full_thresh			,
	input  	[11:0				]	badpoints_num					,
	
	output  [BitWidth*2 - 1 : 0]   	ParallelCIC_8Lane_DataOut		,
	output							ParallelCIC8Lane_DataOut_Tvalid	,
	output	[BitWidth - 1 : 0	] 	ddc_fifo_data_out				,
	output 							ddc_fifo_data_out_valid			
    );

	reg							ddc_dataout_valid;
	
    wire [BitWidth*16 - 1 : 0]  ParallelCIC_80Lane_DataOut;
    wire 						ParallelCIC80Lane_DataOut_Tvalid;

    wire [BitWidth*16 - 1 : 0]  ParallelCIC_80Lane_PadOut;
 
    wire [BitWidth*8 - 1 : 0]   ParallelHB_16Lane_DataOut;
    wire 						ParallelHB16Lane_DataOut_Tvalid;
    wire 						ParallelHB16Lane_DataIn_Tready;

    wire [BitWidth - 1 : 0	]  	ParallelHB_2Lane_DataOut;
    wire 						ParallelHB2Lane_DataOut_Tvalid;
    wire 						ParallelHB2Lane_DataIn_Tready;
 
    wire 						SerialCIC_DataIn_Tready;
    wire [BitWidth - 1 : 0] SerialCIC_DataOut_Tdata;
    wire SerialCIC_DataOut_Tvalid;
 
    wire [BitWidth - 1 : 0]   CascadeHB_DataOut_Tdata;
    wire CascadeHB_DataOut_Tvalid;
    wire 						CascadeHB_DataIn_Tready;

	
	
	wire		SerialDecim_DataOut_Tvalid;
	wire		SerialDecim_DataIn_Tready;
	wire [15:0]	SerialDecim_DataOut_Tdata;
	

	
	wire	SerialCIC1_Config_Tready;
	

wire SerialCIC_Config_Tready;

assign SerialDecim_DataOut_Tvalid = 1'b0;
assign SerialDecim_DataOut_Tdata  = 16'd0;
assign SerialDecim_DataIn_Tready  = 1'b0;

assign SerialCIC_DataOut_Tvalid   = 1'b0;
assign SerialCIC_DataOut_Tdata    = 16'd0;
assign SerialCIC_DataIn_Tready    = 1'b0;
assign SerialCIC_Config_Tready    = 1'b0;

assign ParallelCIC_8Lane_DataOut       = {BitWidth*2{1'b0}};
assign ParallelCIC8Lane_DataOut_Tvalid = 1'b0;
   
    CascadeHB_new #(
        .BitWidth(BitWidth)
    ) CascadeHB_Inst
	(
   //????????¤??????
    .clk							( clk							),
    .clken							( DecimationFilter_EN			),                                
    .rst							( rst							),
    .HB_Switch						( 3'b110				),        //[1 : 0]     110    固定三级半带?     100两级?       000,010   一级?
    .CascadeHB_DataIn_Tdata			( DecimFilter_DataIn_Tdata		),        
    .CascadeHB_DataIn_Tvalid		( DecimFilterI_DataIn_Tvalid    ),                       
    .CascadeHB_DataOut_Tready		( 1'b1							),                 
    //é”??–¤??·é”??–¤??·???é”????                        
    .CascadeHB_DataOut_Tdata		( CascadeHB_DataOut_Tdata		),       
    .CascadeHB_DataOut_Tvalid		( CascadeHB_DataOut_Tvalid		),               
    .CascadeHB_DataIn_Tready		( CascadeHB_DataIn_Tready		)                  
    );
	
	reg [BitWidth - 1 : 0	] 	CascadeHB_DataOut_Tdata_reg;
	
	/*DDC_MUX
	#(
	.DATA_WIDTH(BitWidth),
    .ILA_EN(ILA_EN)
	)
	DDC_MUX_inst
	(
	.clk_in							( clk	                        ),
	.reset_in						( rst	                        ),
	.CascadeHB_DataOut_Tdata		( CascadeHB_DataOut_Tdata_reg	),
	.CascadeHB_DataOut_Tvalid		( ddc_dataout_valid     		),
	//.CascadeHB_DataOut_Tdata		( CascadeHB_DataOut_Tdata		),
	//.CascadeHB_DataOut_Tvalid		( CascadeHB_DataOut_Tvalid 		),
	.rd_fifo						( rd_fifo						),
	.prog_full_thresh				( ddc_prog_full_thresh			),
	
	.ddc_fifo_data_out				( ddc_fifo_data_out				),
	.ddc_fifo_data_out_valid	    ( ddc_fifo_data_out_valid       )
	);*/
	
	
	reg [11:0] counter;
	
	
	always @ ( posedge clk )
	begin
		CascadeHB_DataOut_Tdata_reg <= CascadeHB_DataOut_Tdata;
	end
	

	
	always @ ( posedge clk )
	begin
		if ( rst )
		begin
			counter <= 0;
		end
		else if (counter == badpoints_num )
		begin
			counter <= badpoints_num;
		end
		else if ( CascadeHB_DataOut_Tvalid )
		begin
			counter <= counter + 1;
		end
		else
		begin	
			counter <= counter;
		end
	end
	
	always @ ( posedge clk )
	begin
		if ( rst )
		begin
			ddc_dataout_valid <= 0;
		end
		else if ( counter == badpoints_num )
		begin
			ddc_dataout_valid <= CascadeHB_DataOut_Tvalid;
		end
		else 
		begin
			ddc_dataout_valid <= 0;
		end
	end




	





/*reg [19:0] ila_cnt_DecimFilterI_DataIn_Tvalid;
always@(posedge clk) begin
   if(rst) 
       ila_cnt_DecimFilterI_DataIn_Tvalid <= 0;
   else if(DecimFilterI_DataIn_Tvalid)
       ila_cnt_DecimFilterI_DataIn_Tvalid <= ila_cnt_DecimFilterI_DataIn_Tvalid+1;
   else 
       ila_cnt_DecimFilterI_DataIn_Tvalid<=ila_cnt_DecimFilterI_DataIn_Tvalid;
 
end

reg [19:0] ila_cnt_SerialDecim_DataOut_Tvalid;
always@(posedge clk) begin
   if(rst) 
       ila_cnt_SerialDecim_DataOut_Tvalid <= 0;
   else if(SerialDecim_DataOut_Tvalid)
       ila_cnt_SerialDecim_DataOut_Tvalid <= ila_cnt_SerialDecim_DataOut_Tvalid+1;
   else 
       ila_cnt_SerialDecim_DataOut_Tvalid<=ila_cnt_SerialDecim_DataOut_Tvalid;
 
end


reg [19:0] ila_cnt_SerialCIC_DataOut_Tvalid;
always@(posedge clk) begin
   if(rst) 
       ila_cnt_SerialCIC_DataOut_Tvalid <= 0;
   else if(SerialCIC_DataOut_Tvalid)
       ila_cnt_SerialCIC_DataOut_Tvalid <= ila_cnt_SerialCIC_DataOut_Tvalid+1;
   else 
       ila_cnt_SerialCIC_DataOut_Tvalid<=ila_cnt_SerialCIC_DataOut_Tvalid;
 
end



reg [19:0] ila_cnt_CascadeHB_DataOut_Tvalid;
always@(posedge clk) begin
   if(rst) 
       ila_cnt_CascadeHB_DataOut_Tvalid <= 0;
   else if(CascadeHB_DataOut_Tvalid)
       ila_cnt_CascadeHB_DataOut_Tvalid <= ila_cnt_CascadeHB_DataOut_Tvalid+1;
   else 
       ila_cnt_CascadeHB_DataOut_Tvalid<=ila_cnt_CascadeHB_DataOut_Tvalid;
 
end

generate
	if(ILA_EN==1) begin
ila_pro_x400 ila_ddc_datapath_cnt_inst(
    .clk(clk), // input wire c
   .probe0({400'd0  
,	rst
,ddc_fifo_data_out_valid
,ddc_fifo_data_out
,rd_fifo
,ddc_dataout_valid
,CascadeHB_DataOut_Tdata_reg
,CascadeHB_DataOut_Tvalid
,CascadeHB_DataIn_Tready
,counter
,SerialCIC_DataOut_Tvalid
,SerialCIC_DataOut_Tdata
,SerialCIC_DataIn_Tready
,DecimationFilter_EN
,SerialCIC_Config_Tready
,SerialCIC_DecimationRate
,rst_fre_config
,SerialDecim_DataIn_Tready
,SerialDecim_DataOut_Tvalid
,SerialDecim_DataOut_Tdata
,DecimFilterI_DataIn_Tvalid
,DecimFilter_DataIn_Tdata
,ila_cnt_DecimFilterI_DataIn_Tvalid
,ila_cnt_SerialDecim_DataOut_Tvalid
,ila_cnt_SerialCIC_DataOut_Tvalid
,ila_cnt_CascadeHB_DataOut_Tvalid
}));

end
endgenerate


generate
	if(ILA_EN==1) begin
ila_pro_x200_8192 ila_ddc_datapath_inst(
    .clk(clk), // input wire c
    
    .probe0({200'd0
,DecimFilterI_DataIn_Tvalid
,DecimFilter_DataIn_Tdata  
,SerialDecim_DataOut_Tvalid
,SerialDecim_DataOut_Tdata		
,SerialCIC_DataOut_Tdata
,SerialCIC_DataOut_Tvalid
,CascadeHB_DataOut_Tdata	
,CascadeHB_DataOut_Tvalid	
,CascadeHB_DataIn_Tready				
,ddc_fifo_data_out		
,ddc_fifo_data_out_valid
}));
end
endgenerate*/



endmodule

////JM-lchy