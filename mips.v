`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:07 01/03/2018 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
	 input clk,
	 input reset
    );
	 wire [31:0] data_sb_output,new_writedata_M,new_data_alu_M,data_3_E_E,data3_3,data_3_E,W_extpt,reresult_W,W_ext_output,mux_pc_1,pcout_im_add4_1,code_jicunqi_2,pcchu_jicunqi_2,instr,instr_D,imm32,yi32,pcchu_D,addimm,data32_rs_E,data32_rt_E,instr_E,imm32_E,pcout_E,result_W,pcout_D,data1,data2,data_alu_M,ya_bijiaoqi,yb_bijiaoqi,pcout_M,ya_alu,yb_alu,data_alu_E,writedata_M,data_dm_M,instr_W,mux_alu,data_dm_W,data_alu_W,instr_M,pcout_W,pc_jal,result_W_W,pcchu_E,pcchu_M,pcchu_W,pcchu_D_D,result_W_W_W,jfq_pc,result_W_W_W_W,data_alu_M_D_E,yp;
	 wire [15:0] imm16;
	 wire [4:0] rewritereg_E,s_E,s,rs,rt,rs_D,rt_D,rd_D,rtE,rdE,writereg_E,writereg_M,writereg_W,rsE,writereg_E_E,writereg_E_E_E;
	 wire [3:0] aluop;
	 wire sb,movz_W_output,movz_M_output,movz_regwrite_W,movz_W,movz_W_mux_input,movz_E_mux_input,movz_output,movz_E,bltzal_W,bltzal_M,bltzal_E,bltzalf,bltzal_D,bltz,yumen_bltz_output,bltz_output,yumen_blez_output,blez_output,blez,bgez,yumen_bgez_output,yumen_bgtz_output,bgtz,bgtz_output,lb_memtoreg_W,lb_memtoreg_M,lb_memtoreg_E,bijiaoqi_bne_wire,yumen_pc_bne,beq,jr,extop,regdst_E,alusrc_E,regwrite_E,memtoreg_E,regwrite_W,bijiaoqi_out,yumen_pc,memwrite_M,regwrite_M,memtoreg_M,memtoreg_W,flush_E,stall_F_pc,stall_D_ce,stall_F,stall_D,jal_D,j,jal_W,jal_E,jalr_D,jalr_E,jalr_M,jalr_W,bgezal_D,ya_bijiaoqi_one,bgezalf,bgezal_E,bgezal_W,bgezal_M,jal_M;
	 wire [1:0] two_adder_W,w_level_input,forward_AD,forward_BD,forward_AE,forward_BE; //two_adder_W
	 wire [25:0] imm26;
	 wire [7:0] imm_W_mux,data_one,data_two,data_three,data_four;
	 
	 mux32_1_2 mux32_1_2(
	 .a(addimm),/////////////////////////////////��beq��pc+4+imm��
	 .b(pcchu_jicunqi_2),////////////////////////pc+4��pc���¡�
	 .pcjr(ya_bijiaoqi),////////////////////////��datars���ӡ�mux32_3_2������
	 .pcjal(pc_jal),//////////////////////////////����Ҫpc+4+signext��չ��
	 .pcj(pc_jal),///////////////////////////////����Ҫpc+4+signext��չ��
	 .pcjalr(ya_bijiaoqi),
	 .pcbgezal(addimm),//////////////////////////////��bgezal��pc+imm��yb
	 .bgezal_mux(bgezalf),////////////////////////////��bgezal�źš�
	 .bltzal_mux(bltzalf),////////////////////////////��bltzal�źš�
	 .jr(jr),
	 .jal(jal_D),
	 .j(j),
	 .jalr(jalr_D),
	 .sel(yumen_pc||yumen_pc_bne||yumen_bgtz_output||yumen_bgez_output||yumen_blez_output||yumen_bltz_output),
	 .c(mux_pc_1)///////////////////////////////��mux32_1_2�Ľ����
	 );
	 
	 pc_1 pc_1(
	 .clk(clk),
	 .reset(reset),
	 .en(stall_F_pc),
	 .pc(mux_pc_1),///////////////////////////////��mux32_1_2�Ľ����
	 .pcout(pcout_im_add4_1)   //////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 );
	 
	 im im(
	 .pc(pcout_im_add4_1),////////////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 .code(code_jicunqi_2)     
	 );
	 
	 add4_1 add4_1(
	 .pcout(pcout_im_add4_1),////////////////////�����ӵ�im�ϡ����ߡ����ӵ�add4_1�ϡ�
	 .pcchu(pcchu_jicunqi_2)    
	 );
	 
	 add4_3 add4_3(
	 .pcchuD(pcchu_D),////////////////////////////��pc+4��ֵ��
	 .pcchu_D_D(pcchu_D_D)////////////////////////��pc+8-----����E,M,W�Ĵ�����
	 );
	 
	 pinjie pinjie(
	 .pc(pcchu_D),
	 .imm26(imm26),
	 .c(pc_jal)////////////////////////////////////����Ҫpc+4+signext��չ��
	 );
	 
	 jicunqigai jicunqigai(///////////////////////////////////////////////////////////////////////..D
	 .clk(clk),
	 .clr(reset),
	 .en(stall_D_ce), 
	 .code(code_jicunqi_2),
	 .pcchu(pcchu_jicunqi_2),////////pc+4
	 .pcout(pcout_im_add4_1),////////pc
	 .instr(instr), 
	 .instr_D(instr_D),////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .pcchu_D(pcchu_D),//////////////////////////�����ݵ�pc+4ֵ��
	 .pcout_D(pcout_D)//////////////////////////�����ݵ�pcֵ��
	 );
	 
	 
	 fenweiqigai fenweiqigai(
	 .instr(instr_D),//////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .s(s),
	 .rs(rs),
	 .rt(rt),
	 .rs_D(rs_D),
	 .rt_D(rt_D),
	 .rd_D(rd_D),
	 .imm16(imm16),
	 .imm26(imm26)
	 );
	 
	 control control(
	 .instr_D(instr_D),/////////////////////////�����ӵ�fenweiqigai�ϡ��͡�control�ϡ�����������������������
	 .bltz(bltz),
	 .blez(blez),
	 .bgez(bgez),
	 .bgtz(bgtz),
	 .bne(bne),
	 .beq(beq),
	 .jr(jr),
	 .extop(extop),   
	 .j(j),
	 .jalr_D(jalr_D),
	 .bgezal_D(bgezal_D),
	 .jal_D(jal_D),
	 .bltzal_D(bltzal_D),
	 .movz_D(movz_D)
	 );
	 
	 
	 regfile regfile(
	 .clk(clk),
	 .reset(reset),
	 .regwrite(movz_regwrite_W),	//ԭ����regwrite_W
	 .datars(rs),
	 .datart(rt),
	 .writerd(writereg_W),/////////////////��д��regfile�Ĵ�����------------ 
	 .writedata(result_W_W),//////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .pcout_W(pcout_W),
	 .data1(data1),    
	 .data2(data2)
	 );
	 
	 
	 signext signext(
	 .imm16(imm16),
	 .extop(extop),
	 .imm32(imm32)      ////////////////////����������չ��...............
	 );                                                 // ...........
	                                                   //
	 zuoyi zuoyi(
	 .imm32(imm32),
	 .yi32(yi32)     ///////////////////////��������������
	 );
	 
	 add4_2 add4_2(
	 .yi32(yi32),
	 .pcout_D(pcchu_D),
	 .addimm(addimm)   //////////////////////��pc+4+signext<<2��  
	 );
	 
	 add_3 add_3(
	 .yiwei(yi32),
	 .pc(pcout_D),
	 .yp(yp)												//��bgezal����pc���¡�
	 );
	 
	 mux32_3_2 mux32_3_2(
	 .a(data1),////////////////////////��datars_D��
	 .b(result_W_W),///////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),//////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_AD),////////////////��hushgai--AD��
	 .y(ya_bijiaoqi)       /////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ�                                 
	 );
	 
	 mux32xin mux32xin(
	 .a(data2),////////////////////////��datart_D��
	 .b(result_W_W),///////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),//////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_BD),/////////////////��hushgai--BD��
	 .y(yb_bijiaoqi)        /////////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ� 
	 );
	 
	 bijiaoqi bijiaoqi(//////////////////�����߽��бȽϡ�
	 .a(ya_bijiaoqi),
	 .b(yb_bijiaoqi),
	 .c(bijiaoqi_out)     //////////////��mux32_3_2�� �͡�mux32xin��  �����Ľ�����бȽ� ���Ƚϵ�һλ��������
	 );
	 
	 bijiaoqi_bne bijiaoqi_bne(
	 .a(ya_bijiaoqi),
	 .b(yb_bijiaoqi),
	 .c(bijiaoqi_bne_wire)
	 );
	 
	 bijiao_bgtz bijiao_bgtz(
	 .bgtz_data(ya_bijiaoqi),
	 .bgtz_dataout(bgtz_output)
	 );
	 
	 bijiao bijiao(//////////////////////��������бȽϡ�
	 .datatwo(ya_bijiaoqi),//---------------------------��ָ��ıȽ��ж�---------------------------------------
	 .dataone(ya_bijiaoqi_one)//////////////////////////////////���Ƚϵ�һλ��������
	 );
	 
	 bijiao_blez bijiao_blez(
	 .blez_data(ya_bijiaoqi),
	 .blez_dataout(blez_output)
	 );
	 
	 bijiaoqi_bltz bijiaoqo_bltz(
	 .bltz_data(ya_bijiaoqi),
	 .bltz_dataout(bltz_output)
	 );
	 
	 yumen yumen(//////////////////////////////���Ƚ��ź���ָ���ź����롿
	 .a(beq),
	 .b(bijiaoqi_out),///////////////////////////////////////////���Ƚϵ�һλ��������
	 .c(yumen_pc)       //��������һ��mux��///////////////��beq�źź�bijiaoqi�����Ľ�������룬��ͬ�����Ƿ���ת����pc��
	 );
	 
	 yumen_bne yumen_bne(
	 .a(bne),
	 .b(bijiaoqi_bne_wire),
	 .c(yumen_pc_bne)
	 );
	 
	 yumen_bgtz yumen_bgtz(
	 .a(bgtz),
	 .b(bgtz_output),
	 .c(yumen_bgtz_output)
	 );
	 
	 yumen_bgez yumen_bgez(
	 .a(bgez),
	 .b(ya_bijiaoqi_one),
	 .c(yumen_bgez_output)
	 );
	 
	 yumen_blez yumen_blez(
	 .a(blez),
	 .b(blez_output),
	 .c(yumen_blez_output)
	 );
	 
	 yumen_bltz yumen_bltz(
	 .a(bltz),
	 .b(bltz_output),
	 .c(yumen_bltz_output)
	 );
	 
	 yumen44 yumen44(
	 .a(ya_bijiaoqi_one),///////////////////////////////////////���Ƚϵ�һλ��������
	 .b(bgezal_D),
	 .c(bgezalf)//--------��������һ��mux��--------------��ָ��������ж�---------------------------------------
	 );
	 
	 yumen_bltzal yumen_bltzal(
	 .a(bltz_output),
	 .b(bltzal_D),
	 .c(bltzalf)
	 );
	 
	 jicunqi_E jicunqi_E(
	 .s_D(s),
	 .instr_D(instr_D),
	 .data32rs_D(ya_bijiaoqi),//////////////D������·ѡ�����������
	 .data32rt_D(yb_bijiaoqi),//////////////
	 .pcout_D(pcout_D),
	 .rsD(rs_D),
	 .rtD(rt_D),
	 .rdD(rd_D),
	 .pcchu_D(pcchu_D_D),  ///////////////////////////////��pc+8-----����E,M,W�Ĵ�����                                  
	 .imm32_D(imm32),
	 .clk(clk),
	 .clr(flush_E),
	 .rsE(rsE),     
	 .rtE(rtE),
	 .rdE(rdE),
	 .data32_rs_E(data32_rs_E),
	 .data32_rt_E(data32_rt_E),
	 .instr_E(instr_E),
	 .imm32_E(imm32_E),
	 .pcout_E(pcout_E),//////////////////////////////////�����ݵ�pcֵ��
	 .pcchu_E(pcchu_E), ///////////////////////////////////�����ݵ�pc+8ֵ�� 
	 .s_E(s_E)
	 );
	 
	 yimaqi_E yimaqi_E(
	 .instr_E(instr_E),
	 .regdst_E(regdst_E),
	 .alusrc_E(alusrc_E),
	 .aluop(aluop),
	 .regwrite_E(regwrite_E),
	 .memtoreg_E(memtoreg_E),
	 .jal_E(jal_E),
	 .jalr_E(jalr_E),
	 .bgezal_E(bgezal_E),
	 .lb_memtoreg_E(lb_memtoreg_E),
	 .bltzal_E(bltzal_E),
	 .movz_E(movz_E)
	 );
	 
	 mux32_xin mux32_xin(
	 .a(rdE),
	 .b(rtE),
	 .sel(regdst_E),//////////////////////ѡ��д��rd�Ĵ������������Ĵ���ֵ��ע����ָ���д��Ĵ�����
	 .c(rewritereg_E)     
	 );
	 
	 mux32_2 mux32_2(
	 .a(31),
	 .b(rewritereg_E),
	 .sel(jal_E||bgezal_E||bltzal_E),///////////////ѡ��д��31�żĴ������������Ĵ���ֵ��jal-bgezal��
	 .c(writereg_E_E)//////////////////////��ѡ���źŽ�M����ˮ�Ĵ���������������������������������������
	 );
	 
	 
	 mux32_3_2_3 mux32_3_2_3(
	 .a(data32_rs_E),///////////////��datars_E��
	 .b(result_W_W),////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_AE),///////////////��hushgai--AE��
	 .y(ya_alu)   //0
	 );
	 
	 mux32_3_2_4 mux32_3_2_4(
	 .a(data32_rt_E),////////////////��datart_E��
	 .b(result_W_W),/////////////////��mux222--W(alu(output))or(dm(output)) or W(pc+8)��
	 .c(data_alu_M_D_E),////////////��mux10--M(alu)(output) or M(pc+8)��
	 .sel(forward_BE),///////////////��hushgai--BE��
	 .y(yb_alu)   //0
	 );
	 
	 mux32_2_2 mux32_2_2(
	 .a(imm32_E),
	 .b(yb_alu),
	 .sel(alusrc_E),/////////////////��ѡ������������R�͡���ѡ������alu��
	 .c(mux_alu)   
	 );
	 
	 alu alu(
	 .data1_E(ya_alu),
	 .data2_E(mux_alu),///////////////////////////////��ѡ������alu��
	 .aluop(aluop),
	 .s_alu(s_E),
	 .data_alu_E(data_alu_E)  
	 );
	 
	 noequal_movz noequal_movz(
	 .movz_input(mux_alu),
	 .movz_output(movz_output)
	 );
	 
	 
	 mux_new mux_new(
	 .a(movz_W_output),
	 .b(regwrite_W),
	 .sel(movz_W),
	 .c(movz_regwrite_W)
	 );
	 
	 
	 jicunqi_M jicunqi_M(
	 .movz_M(movz_output),
	 .instr_E(instr_E),
	 .data_alu_E(data_alu_E),
	 .writedata_E(yb_alu),
	 .pcout_E(pcout_E),////////////////////////////////�����ݵ�pcֵ��
	 .pcchu_E(pcchu_E),    ///////////////////////////////�����ݵ�pc+8ֵ��                             
	 .writereg_E(writereg_E_E),//////////////////////��ѡ���źŽ�M����ˮ�Ĵ���������������������
	 .clk(clk),
	 .reset(reset),
	 .instr_M(instr_M),            
	 .data_alu_M(data_alu_M),
	 .writedata_M(writedata_M),
	 .writereg_M(writereg_M),//////////////////////////��д��W�Ĵ�����------------
	 .pcout_M(pcout_M),
	 .pcchu_M(pcchu_M),
	 .movz_M_output(movz_M_output)
	 );
	 
	 mux10 mux10(
	 .a(pcchu_M),///////////////////pc+8��M����
	 .b(data_alu_M),////////////////alu������
	 .sel(jal_M||bgezal_M||jalr_M||bltzal_M),///////////////////��Ҫpc+8ת���Ŀ����ź�
	 .c(data_alu_M_D_E)////M��ת��----�ĸ���·ѡ����--D��mux32_3_2���͡�mux32xin��--E�� mux32_3_2_3���͡�mux32_3_2_4��
	 );
	 
	 /*mux_sb mux_sb(
	 .sb_address(),
	 .common_address(data_alu_M),
	 .sb_switch(sb),
	 .new_address(new_data_alu_M)
	 );*/
	 
	 mux_sb_data mux_sb_data(
	 .sb_data(data_sb_output),
	 .common_data(writedata_M),
	 .sb_switch_data(sb),
	 .new_writedata(new_writedata_M)
	 );
	 
	 dmgai dmgai(
	 .clk(clk),
	 .reset(reset),
	 .memwrite_M(memwrite_M),
	 .data_alu_M(data_alu_M),	
	 .writedata_M(new_writedata_M),	//ԭ����writedata_M
	 .pcout_M(pcout_M),
	 .data_dm_M(data_dm_M)  
	 );
	 
	 fen_wei_qi fen_wei_qi(
	 .alu_m_level(data_alu_M),
	 .w_level_input(w_level_input)
	 );
	 
	 yimaqi_M yimaqi_M(
	 .instr_E(instr_M),
	 .jal_M(jal_M),
	 .jalr_M(jalr_M),
	 .bgezal_M(bgezal_M),
	 .memwrite_M(memwrite_M),  
	 .regwrite_M(regwrite_M),
	 .memtoreg_M(memtoreg_M),
	 .lb_memtoreg_M(lb_memtoreg_M),
	 .bltzal_M(bltzal_M),
	 .sb(sb)
	 );
	 
	 yimaqi_W yimaqi_W(
	 .instr_W(instr_W),
	 .memtoreg_W(memtoreg_W),
	 .regwrite_W(regwrite_W),
	 .jal_W(jal_W),
	 .jalr_W(jalr_W),
	 .bgezal_W(bgezal_W),
	 .lb_memtoreg_W(lb_memtoreg_W),
	 .bltzal_W(bltzal_W),
	 .movz_W(movz_W)
	 );
	 
	 jicunqi_W jicunqi_W(
	 .movz_W(movz_M_output),
	 .W_E_O(W_ext_output),
	 .instr_M(instr_M),
	 .data_dm_M(data_dm_M),
	 .data_alu_M(data_alu_M),
	 .pcchu_M(pcchu_M),    /////////////////////////////// �����ݵ�pc+8ֵ��                       
	 .writereg_M(writereg_M),//////////////////////////////��д��W�Ĵ�����------------
	 .pcout_M(pcout_M),/////////////////////////////////////�����ݵ�pcֵ��
	 .clk(clk),
	 .reset(reset),
	 .instr_W(instr_W),
	 .data_dm_W(data_dm_W),
	 .data_alu_W(data_alu_W),
	 .writereg_W(writereg_W), //////////////////////////////��д��regfile�Ĵ�����------------  
	 .pcout_W(pcout_W),
	 .pcchu_W(pcchu_W),
	 .W_extpt(W_extpt),
	 .movz_W_output(movz_W_output)
	 );
	 
	 fen_wei_qi_2 fen_wei_qi_2(
	 .data_dm_M_level(data_dm_M),
	 .data_one(data_one),
	 .data_two(data_two),
	 .data_three(data_three),
	 .data_four(data_four)
	 );
	 
	 M_mux_sb M_mux_sb(
	 .data_sb_input_alu(data_dm_M),
	 .data_sb_input_rt(writedata_M),
	 .data_sb_mux_two_adder(w_level_input),
	 .data_sb_output(data_sb_output)
	 );
	 
	 
	 
	 W_mux W_mux(
	 .data_one_mux(data_one),
	 .data_two_mux(data_two),
	 .data_three_mux(data_three),
	 .data_four_mux(data_four),
	 .two_adder_mux(w_level_input),
	 .imm_W_mux(imm_W_mux)
	 );
	 
	 
	 
	 W_sign_extence W_sign_extence(
	 .W_ext_input(imm_W_mux),
	 .W_ext_output(W_ext_output)
	 );
	 
	 mux32_2_5 mux32_2_5(
	 .a(data_dm_W),
	 .b(data_alu_W),
	 .sel(memtoreg_W),
	 .c(result_W)
	 );                    
	 
	 mux32_2_6 mux32_2_6(
	 .a(result_W),
	 .b(W_extpt),//gai-name
	 .sel(lb_memtoreg_W),
	 .c(reresult_W)
	 );
	 
	 mux222 mux222(
	 .a(pcchu_W),///////////////////////��W��pc+8��
	 .b(reresult_W),
	 .sel(jal_W||jalr_W||bgezal_W||bltzal_W),//////��pc+8�Ŀ����ź�--��pc+8д��Ĵ������źš�
	 .c(result_W_W)////W��ת��----�ĸ���·ѡ����--D��mux32_3_2���͡�mux32xin��--E�� mux32_3_2_3���͡�mux32_3_2_4��
	 );
	 
	 
	 hushgai hushgai(
	 .lb_memtoreg_M(lb_memtoreg_M),
	 .lb_memtoreg_E(lb_memtoreg_E),
	 .rs_E(rsE),
	 .rt_E(rtE),
	 .jal_E(jal_E),
	 .jr(jr),
	 .jalr_D(jalr_D),
	 .jalr_E(jalr_E),
	 .bgezal_D(bgezal_D),
	 .bgezal_E(bgezal_E),
	 .bltzal_D(bltzal_D),
	 .bltzal_E(bltzal_E),
	 .writereg_M(writereg_M),
	 .writereg_E_E(writereg_E_E),
	 .writereg_W(writereg_W),
	 .regwrite_E(regwrite_E),
	 .regwrite_M(regwrite_M),
	 .regwrite_W(regwrite_W),
	 .memtoreg_E(memtoreg_E),
	 .memtoreg_M(memtoreg_M),
	 .rs_D(rs_D),
	 .rt_D(rt_D),
	 .branch_D(beq||bne||bgtz||blez||bltz||bgez),
	 .flush_E(flush_E),    
	 .forward_AD(forward_AD),
	 .forward_BD(forward_BD),
	 .forward_AE(forward_AE),
	 .forward_BE(forward_BE),
	 .stall_F(stall_F),
	 .stall_D(stall_D)
	 );
	 
	 feimen feimen(
	 .a(stall_F),
	 .b(stall_F_pc)  
	 );
	  
	 feimen2 feimen2(
	 .a(stall_D),
	 .b(stall_D_ce)  
	 );
 

endmodule 
