////////////////////////////////////////////////////////////////////////////////
// Company: <...>
// Engineer: <Libo Sun>
//
// Create Date: <2019 June 10>
// Design Name: <name_of_top-level_design>
// Module Name: <DeRateMatching_InputBufferWrapper>
// Target Device: <target device>
// Tool versions: <tool_versions>
// Description:
//    <DeRateMatching_InputBufferWrapper 2048 X 48 X 16>
// Dependencies:
//    <Dependencies here>
// Revision:
//    <V0.1>
// Additional Comments:
//    <Additional_comments>
////////////////////////////////////////////////////////////////////////////////
			
//`include "Parameter.v"	

			
module DeRateMatching_InputBufferWrapper
(
    i_rx_rstn, //Active low asynchronous signal to reset flip-flops of all submodules of bs_ul_rx 
    i_rx_fsm_rstn, //Active low asynchronous signal to reset flip-flops of all submodules (except bs_ul_cfg) of bs_ul_rx 				 
	i_core_clk, //Core clock of nr_lte_bs, 245.76 MHz clock when system bandwidth = 100MHz with 4T4R.  
    
	InputBufferWriteAddress_Common,
	InputBufferReadAddress_Common,
	
	InputBufferWriteData_U1,
	InputBufferWriteData_U2,
	InputBufferWriteData_U3,
	InputBufferWriteData_U4,
	InputBufferWriteData_U5,
	InputBufferWriteData_U6,
	InputBufferWriteData_U7,
	InputBufferWriteData_U8,
	InputBufferWriteData_U9,
	InputBufferWriteData_U10,
	InputBufferWriteData_U11,
	InputBufferWriteData_U12,
	InputBufferWriteData_U13,
	InputBufferWriteData_U14,
	InputBufferWriteData_U15,
	InputBufferWriteData_U16,

    InputBufferWriteEnable_U1,	
    InputBufferWriteEnable_U2,	
    InputBufferWriteEnable_U3,	
    InputBufferWriteEnable_U4,	
    InputBufferWriteEnable_U5,	
    InputBufferWriteEnable_U6,	
    InputBufferWriteEnable_U7,	
    InputBufferWriteEnable_U8,	
    InputBufferWriteEnable_U9,	
    InputBufferWriteEnable_U10,	
    InputBufferWriteEnable_U11,	
    InputBufferWriteEnable_U12,	
    InputBufferWriteEnable_U13,	
    InputBufferWriteEnable_U14,	
    InputBufferWriteEnable_U15,	
    InputBufferWriteEnable_U16,

    InputBufferReadDataCommon	
	
	//input/output/inout | reg/wire | signed/na | [7:0] | name,               
 
);
 
  parameter DeRateMatching_InputBuffer_DataW =    36;
  parameter DeRateMatching_InputBuffer_AddressW = 11;  

  input wire       i_rx_rstn;  
  input wire       i_rx_fsm_rstn;  			 
  input wire       i_core_clk;   
    
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteAddress_Common;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferReadAddress_Common;
	
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U1;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U2;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U3;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U4;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U5;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U6;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U7;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U8;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U9;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U10;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U11;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U12;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U13;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U14;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U15;
  input wire [DeRateMatching_InputBuffer_DataW-1:0]InputBufferWriteData_U16;

  input wire InputBufferWriteEnable_U1;	
  input wire InputBufferWriteEnable_U2;	
  input wire InputBufferWriteEnable_U3;	
  input wire InputBufferWriteEnable_U4;	
  input wire InputBufferWriteEnable_U5;	
  input wire InputBufferWriteEnable_U6;	
  input wire InputBufferWriteEnable_U7;	
  input wire InputBufferWriteEnable_U8;	
  input wire InputBufferWriteEnable_U9;	
  input wire InputBufferWriteEnable_U10;	
  input wire InputBufferWriteEnable_U11;	
  input wire InputBufferWriteEnable_U12;	
  input wire InputBufferWriteEnable_U13;	
  input wire InputBufferWriteEnable_U14;	
  input wire InputBufferWriteEnable_U15;	
  input wire InputBufferWriteEnable_U16;

  output wire [DeRateMatching_InputBuffer_DataW*16-1:0]InputBufferReadDataCommon;

  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U1;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U2;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U3;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U4;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U5;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U6;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U7;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U8;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U9;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U10;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U11;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U12;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U13;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U14;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U15;
  wire [DeRateMatching_InputBuffer_DataW-1:0] InputBufferReadData_U16;  
  
  assign InputBufferReadDataCommon = {
  
  InputBufferReadData_U16,
  InputBufferReadData_U15,
  InputBufferReadData_U14,
  InputBufferReadData_U13,
  InputBufferReadData_U12,
  InputBufferReadData_U11,
  InputBufferReadData_U10,
  InputBufferReadData_U9,
  InputBufferReadData_U8,
  InputBufferReadData_U7,
  InputBufferReadData_U6,
  InputBufferReadData_U5,
  InputBufferReadData_U4,
  InputBufferReadData_U3,
  InputBufferReadData_U2,
  InputBufferReadData_U1 
  
  };

   DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U1 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U1[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock  ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U1 ),
  .q  ( InputBufferReadData_U1[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U2 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U2[DeRateMatching_InputBuffer_DataW-1:0]),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U2 ),
  .q  ( InputBufferReadData_U2[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U3 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U3[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U3 ),
  .q  ( InputBufferReadData_U3[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U4 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U4[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U4 ),
  .q  ( InputBufferReadData_U4[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U5 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U5[DeRateMatching_InputBuffer_DataW-1:0]) ,
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U5 ),
  .q  ( InputBufferReadData_U5[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U6 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U6[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U6 ),
  .q  ( InputBufferReadData_U6[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U7 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U7[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U7 ),
  .q  ( InputBufferReadData_U7[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U8 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U8[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U8 ),
  .q  ( InputBufferReadData_U8[DeRateMatching_InputBuffer_DataW-1:0])
  );   

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U9 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U9[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U9 ),
  .q  ( InputBufferReadData_U9[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U10 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U10[DeRateMatching_InputBuffer_DataW-1:0] ) ,
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U10 ),
  .q  ( InputBufferReadData_U10[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U11 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U11[DeRateMatching_InputBuffer_DataW-1:0]) ,
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U11 ),
  .q  ( InputBufferReadData_U11[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U12 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U12[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U12 ),
  .q  ( InputBufferReadData_U12[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U13 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U13[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U13 ),
  .q  ( InputBufferReadData_U13[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U14 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U14[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U14 ),
  .q  ( InputBufferReadData_U14[DeRateMatching_InputBuffer_DataW-1:0])
  );  

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U15 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U15[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U15 ),
  .q  ( InputBufferReadData_U15[DeRateMatching_InputBuffer_DataW-1:0])
  );

  DualPort_SRAM_2048X48  DualPort_SRAM_2048X48_U16 (
  .wraddress    ( InputBufferWriteAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0] ),
  .data    ( InputBufferWriteData_U16[DeRateMatching_InputBuffer_DataW-1:0] ),
  .rdaddress ( InputBufferReadAddress_Common[DeRateMatching_InputBuffer_AddressW-1:0]  ),
  .clock   ( i_core_clk ),
  .wren   ( InputBufferWriteEnable_U16 ),
  .q  ( InputBufferReadData_U16[DeRateMatching_InputBuffer_DataW-1:0])
  );      
 
 
	
endmodule


