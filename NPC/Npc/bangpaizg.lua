NPCINFO = { 
serial="111" ,
base_name="bangpaizg" ,
icon=2567,
NpcMove=2567 ,
name="�����ܹ�" ,
iconaddr=1 ,
butt="10|15|63" ,
lastsay="�����������������꣡",
LuaType=1,
have_sell_item=1,
} 
tS_skill={
	--1��������  2����id  3��������  4��Ӧ1Сʱbuff  5��Ӧ6Сʱbuff  
	{1,185,"����",530,536},
	{2,186,"����",531,537},
	{3,187,"����",532,538},
	{4,188,"����",533,539},
	{5,189,"����",534,540},
	{6,190,"Ѫ����",535,541},
	}
addBuyitem={
	count=16,
	{"e_head153" , 20  , 9 },
	{"e_clothes153" , 20  , 9 },
	{"e_pants153" , 20  , 9 },
	{"e_shoes153" , 20  , 9 },
	{"e_earring153" , 20  , 9 },
	{"e_necklace153" , 20  , 9 },
	{"e_falchion153" , 20  , 9 },
	{"e_shield153" , 20  , 9 },
	{"e_sword153" , 20  , 9 },
	{"e_knife153" , 20  , 9 },
	{"e_pen153" , 20  , 9 },
	{"e_book153" , 20  , 9 },
	{"o_transmittal_01" , 500  , 9 },
	{"o_transmittal_02" , 500  , 9 },
	{"o_transmittal_03" , 500  ,9 },
	{"o_transmittal_04" , 500  , 9 },
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@7����","")
		if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1 or LuaQueryTask("bprx1")==3) then
			AddTopSayMenuItem("@2��ȡ����","bp4")
			havetask =2
		end
		if(LuaQueryTask("Tpt1")==1) then
			AddTopSayMenuItem("@2ÿ�ձ���","Tpt1")
			havetask =2
		end
		if(LuaQueryTask("Tpt4")==1) then
			AddTopSayMenuItem("@2����ʹ��","Tpt4")
			havetask =2
		end
		if(LuaQueryTask("Tpt3")==1) then
			AddTopSayMenuItem("@2ÿ�պϳ�","Tpt3")
			havetask =2
		end
		if(LuaQueryTask("Tpt5")==1 or LuaQueryTask("Tpt5")==2) then
			AddTopSayMenuItem("@2ս��Ѳ��(ÿ��)","Tpt5")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_1")==1) then
			AddTopSayMenuItem("@2һ�����ڻ���ѭ����","Tbptj_1")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_2")==1) then
			AddTopSayMenuItem("@2�������ڻ���ѭ����","Tbptj_2")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_3")==1) then
			AddTopSayMenuItem("@2�������ڻ���ѭ����","Tbptj_3")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_4")==1) then
			AddTopSayMenuItem("@2�ļ����ڻ���ѭ����","Tbptj_4")
			havetask =2
		end
		if(LuaQueryTask("Tbptj_5")==1) then
			AddTopSayMenuItem("@2�弶���ڻ���ѭ����","Tbptj_5")
			havetask =2
		end
		if(LuaQueryTask("Tbprw002")==1 or LuaQueryTask("Tbprw002")==2 or LuaQueryTask("Tbprw002")==3)then
			AddTopSayMenuItem("@2���Կ��顾���顿@0","Tbprw002")
			havetask=2
		end
		if(LuaQueryTask("Tbprw003")>=1 and LuaQueryTask("Tbprw003")<=9)then
			AddTopSayMenuItem("@2̽�����ơ�ÿ�ա�@0","Tbprw003")
			havetask=2
		end
		if(LuaQueryTask("Tbprw005")>=1 and LuaQueryTask("Tbprw005")<99)then
			AddTopSayMenuItem("@2�޾�Ȥζ��ÿ�ա�@0","Tbprw005")
			havetask=2
		end
		if(LuaQueryTask("Tbprw1")==1) then
			AddTopSayMenuItem("@2�˽��᡾���顿","Tbprw1")
			havetask=2
		end
		if(LuaQueryTask("Tbprw2")==1) then
			AddTopSayMenuItem("@2ǿʢ֮�������顿","Tbprw2")
			havetask=2
		end
		if(LuaQueryTask("Tbprw12")==1) then
			AddTopSayMenuItem("@2�������ڡ�ѭ����","Tbprw12")
			havetask=2
		end
		if(LuaQueryTask("Tbprw3")==1 or LuaQueryTask("Tbprw3")==2 ) then
			AddTopSayMenuItem("@2�����漱��ѭ����","Tbprw3")
			havetask=2
		end
		if(LuaQueryTask("Tbprw4")==1) then
			AddTopSayMenuItem("@2ְ�����ڡ�ѭ����","Tbprw4")
			havetask=2
		end
		if(LuaQueryTask("Tbprw5")==1) then
			AddTopSayMenuItem("@2�ռ�צ�ӡ�ѭ����","Tbprw5")
			havetask=2
		end
		if(LuaQueryTask("Tbprw6")==1 ) then
			AddTopSayMenuItem("@2��ħ������ѭ����","Tbprw6")
			havetask=2
		end
		if(LuaQueryTask("Tbprw7")==1 ) then
			AddTopSayMenuItem("@2��ҡֱ�ϡ�ѭ����","Tbprw7")
			havetask=2
		end
		if(LuaQueryTask("Tbprw8")==1) then
			AddTopSayMenuItem("@2@2�������ʡ�ÿ�ա�","Tbprw8")
			havetask=2
		end
		if(LuaQueryTask("Tbprw9")==1 or LuaQueryTask("Tbprw9")==2) then
			AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw9")
			havetask=2
		end
		if(LuaQueryTask("Tbprw10")==1 or LuaQueryTask("Tbprw10")==2) then
			AddTopSayMenuItem("@2������ʳ��ÿ�ա�","Tbprw10")
			havetask=2
		end
		if(LuaQueryTask("Tbprw11_1")==1) then
			AddTopSayMenuItem("@2���а�񡾻�һ��","Tbprw11_1")
			havetask=2
		end
		if(LuaQueryTask("Tbprw11_3")==2) then
			AddTopSayMenuItem("@2���ΰ취��������","Tbprw11_3")
			havetask=2
		end
		AddTopSayMenuItem("@5���ɽ���","bp7")
		AddTopSayMenuItem("@3��������","dhsw")
		AddTopSayMenuItem("@3�������","bp3")
		AddTopSayMenuItem("@7����������","partytask")
		AddTopSayMenuItem("@5���ɼ���","partyskill")
		AddTopSayMenuItem("@3����ս��","bpgl")
		AddTopSayMenuItem("@5�������������","pTkfx")
		AddTopSayMenuItem("@3�ﹱ","partyoffer")
		AddTopSayMenuItem("@1��������","thbz")
		AddTopSayMenuItem("@5��������","dlxx")
		AddTopSayMenuItem("����Ȩ��������˵��","partysm")
	else
		LuaSay("�Ǳ����˲��ܽ��а��ɲ���")
	end
	return 1
--------------------------------------------------------------------------------------------------------------------		
------------------���ɽ���
elseif(answer=="bp7") then
    AddMenuItem("@7���ɽ���","")
	AddMenuItem("@3��������@0","sjbp")
	AddMenuItem("@5���������������","bp2")
	if(LuaQueryRank() > 2) then
		AddMenuItem("@3���ɵ�ͼ","dtsm")
		--AddMenuItem("�޸��������","bp6")
		AddMenuItem("��������","xgxy")
	end
--------��������
elseif(answer=="dhsw")then  
	AddMenuItem("@7��������","")
	AddMenuItem("@5��������˵��","sw_sm")
	AddMenuItem("@3�һ�����","sw_dh")
elseif(answer=="sw_sm")then		--��������˵��  
	LuaSay("@2���������Ķ���������һ�������Ƿ�ǿʢ�ı�׼@0��@1�����������������ĵȼ�������@0")
	LuaSay("@3����������������@0��@2�����ʼ����ֵ@0��@510����@0��@22��[��]@0@5250����@0��@23��[��]@0@51000����@0��@24��[��]@0@54000����@0��@25��[��]@0@515000����@0.")
	LuaSay("@3������������@0��@21����@0��@51000����@0��@22����@0��@53000����@0��@23����@0��@515000����@0��@24����@0��@530000����@0��@25����@0��@540000����@0��")
	LuaSay("����������Դ���ܶ࣡����@2��������@0��@2��ս@0��")
elseif(answer=="sw_dh")then		--�һ���������
	AddMenuItem("@7�һ�����","")
	AddMenuItem("@3ͭ�һ�����1W:1","Tdh1")
	AddMenuItem("@3ͭ�һ�����10W:11","Tdh5")
	AddMenuItem("@3ͭ�һ�����100w:115","Tdh6")
	AddMenuItem("@3��Ʊ������1:1","Tdh2")
	AddMenuItem("@3��������1:120","Tdh3")
elseif(answer=="Tdh1")then		--ͭ�һ�����1W:1
	if(LuaItemCount("coin") >= 10000)then
		LuaGive("coin",-10000,"Tdh1")
		LuaPartyRepute(1,0,"Tdh1")
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaSay("@3"..LuaQueryStr("name").."@0��л��Ϊ��������֧�֣����@2������������1��@0") 
	else
		LuaSay("������@2��Ǯ����@0�����ܹ�����������������ͨ��@2����������ս@0������Ӱ���������")
	end
elseif(answer=="Tdh5")then		--ͭ�һ�����10W:11
	if(LuaItemCount("coin") >= 100000)then
		LuaGive("coin",-100000,"Tdh5")
		LuaPartyRepute(11,0,"Tdh5")
		LuaAddAchievementSchedule("PartyRepute_mun",11)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0����@510Wͭ@0��@2������������11��@0�����˰���֮�䷶��",0) 
	else
		LuaSay("������@2��Ǯ����@0�����ܹ�����������������ͨ��@2����������ս@0������Ӱ���������")
	end
elseif(answer=="Tdh6")then		--ͭ�һ�����100w:115
	if(LuaItemCount("coin")>=1000000)then
		LuaGive("coin",-1000000,"Tdh6")
		LuaPartyRepute(115,0,"Tdh6")
		LuaAddAchievementSchedule("PartyRepute_mun",115)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0����@5100Wͭ@0��������������115�㣬���˰���֮�䷶��",0) 
	else
		LuaSay("������@2��Ǯ����@0�����ܹ�����������������ͨ��@2����������ս@0������Ӱ���������")
	end
elseif(answer=="Tdh2")then		--��Ʊ������1:1
	if(LuaItemStatusNormalCount("o_gold2y") >=1) then 
		DelItem("o_gold2y",1)
		LuaPartyRepute(1,0,"Tdh2")
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɶһ�@2��Ʊ@0һ�ţ�@2������������1��@0�����˰���֮�䷶��",0)
	else
		LuaSay("������@2��Ʊ����@0��һ����Ʊ������һ��������������Ʊ����@7[Ԫ��-����]@0�й���")
	end
elseif(answer=="Tdh3")then		--��������1:120
	if(LuaItemStatusNormalCount("o_zhaiquan2y") >=1) then 
		DelItem("o_zhaiquan2y",1)
		LuaPartyRepute(120,0,"Tdh3")
		LuaAddAchievementSchedule("PartyRepute_mun",120)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɶһ�@2�����@0һ����@2������������120��@0�����˰���֮�䷶��",0)
	else
		LuaSay("������@2�������@0��һ������������100������������������@7[Ԫ��-����]@0�й���")
	end
--------��������
elseif(answer=="sjbp") then
	AddMenuItem("@7��������","")
	AddMenuItem("@5��������˵��","sjbp_sm")
	AddMenuItem("@3��������","sjbp_y")
elseif(answer=="sjbp_sm") then  --��������˵��
	LuaSay("@1������Ȼ��������@0��@22��[��]@0��@5����250@0��@5��������50w@0(�Ӱ������п۳�)��@23��[��]@0��@5����1000@0��@5��������200w@0��@24��[��]@0��@5����4000@0��@5��������450w@0��@25��[��]@0��@5����15000@0��@5��������800w@0")
	LuaSay("@1��ս��������@0����ս�У�@2ʤ�����ɵȼ�<�ܷ�����������>�ܷ�@0������@2ʤ�����������ﵽ�ܷ�������������@0����˫���ĵȼ�������ʤ�������Զ�����")
elseif(answer=="sjbp_y") then  --��������˵��	
	if(LuaPartyLevelUp() == 1) then
		LuaSay("Ӣ�������Ұ�֮���������ֱ�����£��绪����.....")
		LuaPartyMsg("@3���������ɹ�@0�������ȼ���Ŭ����",0)
	else
		LuaSay("�����ϰ��������������뷵��@2�ϼ��˵�@0����鿴@7��������˵��@0.")
		AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
		AddMenuItem("@7����","sjbp_fh")
		AddMenuItem("@3������","")
	end
elseif(answer=="sjbp_fh") then --���ذ��������˵�
	DoTalk("sjbp")
--------���������������
elseif(answer=="bp2") then
	LuaSay("�����ܹ�:�������������ǿʢ�Կ����,Ȼ����֮����¡,���ϲ��ò����ư��������...")
	LuaSay("�����ܹ�:������˼ҹ��,�������Щʵ��,����ͼ֮,��ɲ������Ӱ��������޶��Ը�⣿")	
	AddMenuItem("@7���������������","")
	AddMenuItem("@7������������˵��","bp2_sm")
	AddMenuItem("�Ϲ�@3��ɴȯ������������","bpme1")
elseif(answer=="bp2_sm") then
	LuaSay("���������������˵����@21������@0��@535��@0��@22������@0��@555��@0��@23������@0��@575��@0��@24������@0��@595��@0��@25������@0��@5115��@0��")
	LuaSay("�Ϲ�@5��ɴȯ@0������@2������������20��@0(�����ܳ��������������)������@1�������@0�ƺš�")
elseif(answer=="bpme1") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		if(LuaAddMembers(20) == 1) then
			DelItem("o_zhaiquan1y",1)
			LuaSay("�����ܹܣ�Ӣ�۹������,��֮����,�����书��")
			LuaNotice("����گ:��@2"..LuaQueryStr("name").."@0Ϊ���Ӱ�����������,������׳�@2��ɴȯ@0һ��,�ش�@1�������@0֮�ƺ�,��֮���£�")  
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0������@2������������20��@0��",0)
			SetTitleMeg(95)
		end
	else
		LuaSay("�����ܹܣ�������@2[��ɴȯ]@0,�ɵ�@7[�̳�-Ԫ��-����]@0�й���.��")  
	end
-----------���ɵ�ͼ
elseif(answer=="dtsm") then
	AddMenuItem("@7���ɵ�ͼ","")
	AddMenuItem("@7���ɵ�ͼ˵��","partydt_sm")
	AddMenuItem("@3��ͨ���ɵ�ͼ","partydt_y")
elseif(answer=="partydt_sm") then  --���ɵ�ͼ˵��
	LuaSay("������ɵ�ͼ�ķ�@2���������ʽ�@0,@1����[5��]��ũ��[5��]����ɽ[5��]��BOSS����[5��]���չ�����[5��]@0.")
	LuaSay("ֻ��ͨ��ӵ����կ��,���ܼ�����߼��İ�������,����ӵ�а��ɲֿ�,������Ҹ��˹��ʲŻ��500���ӵ�ÿ��2000,��ְλ�ĲŻ��и�����ֵ������ѽ���,���а��ɸ��˸߽�������.")	
	LuaSay("@3��կ@0����ͨ��կ���ܼ���@2��������@0,��ְλ�ĲŻ��и�����ֵ������ѽ���,���а��ɸ��˸߽�������.")
	LuaSay("@3����@0�����ܰ�������ɱ������ҡ��ͼ��Ρ������ɳ�Ա���������⴦�����ͼ����Ҳ�һ�����ʻ������Ʒ��Ȩ����")
	LuaSay("@3ũ��@0��ӵ�а����Լ�������@2��ֲ��ͼ@0��")
	LuaSay("@3��ɽ@0��ӵ�а����Լ�������@2��@0.")
	LuaSay("@3�չ�����@0��40�����°��ɳ�Ա���Զ���þ�������ɻ���֮��.")
	LuaSay("@3BOSS����@0��ӵ��ר�����ɵ�BOSS")
elseif(answer=="partydt_y") then
	if(LuaPartyLevel() > 1) then
		if(GetPartyMap() == 1) then
			LuaSay("�����鸣����,һͳ�����������µĵ�ͼ,һͳ������Զ�ӣ�")
		end
	elseif(LuaPartyLevel() == 1) then
		LuaSay("�����ڰ�����ȻΪ1��,��1���İ��ɷ���,�����ʹ�����.����������2�����ɰ�.")
	end
-----------�޸İ�������
elseif(answer=="xgxy") then
	AddMenuItem("@7��������","")
	AddMenuItem("@7��������˵��","partyxy_sm")
	AddMenuItem("@3�޸İ�������","partyxy_y")
elseif(answer=="partyxy_sm") then
	LuaSay("������������һ��֮���֣�������ǰ��ɵ���꣬��־���Ͽ��޸ĳ������Լ����ɵ����԰ɣ�")
	LuaSay("�޸İ���������Ҫ����@250000ͭ��@0��")
elseif(answer=="partyxy_y") then
	LuaModifyPartyInfo()
------------------��������
elseif(answer=="bp3") then
	AddMenuItem("@7���ɲƲ�����","")
	AddMenuItem("@7��������˵��","bpyh_sm")
	AddMenuItem("@3��Ǯ����������","bgsj")
	AddMenuItem("@1����ȡǮ","dm")
	AddMenuItem("�������������ѯ","bpyh")
elseif(answer=="bpyh_sm") then  --��������˵��
	LuaSay("���������Ǵ�����ɲƲ����ڰ��ɽ��裬����@2��������@0......�ȵ�")
	LuaSay("�������вƲ���Դ��@2��������@0��@2���ɳ�Աֱ�Ӵ���@0��@2��սʤ������@0")
	LuaSay("@2����ÿ24Сʱ@0����@4������կ@0@3�����ܹ�@0�������������ȡ@25%ͭ��(������10w��ֻ��ȡ10w)@0,@1ע�⣺��ȡͭ��24Сʱ������ٴ���ȡ@0")
elseif(answer=="bgsj") then  --��Ǯ����������
	AddMenuItem("@7��������","")
	AddMenuItem("1W","sgyw")
	AddMenuItem("10W","sgsw")
	AddMenuItem("50W","sgwsw")
	AddMenuItem("100w","sgybw")
elseif(answer=="sgyw") then  --��1w
	if(LuaItemCount("coin")>=10000) then
		LuaSay("�����ܹܣ�Ӣ���Ϲ�@21wͭ��@0,����,���˹���Ҳ")
		LuaAddPartyMoney(10000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@21wͭ��@0,���֮����",0)
	else
		LuaSay("�����ܹܣ�Ӣ��@2ͭ�Ҳ���1w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgsw") then  --��10w
	if(LuaItemCount("coin")>=100000) then
		LuaSay("�����ܹܣ�Ӣ���Ϲ�ͭ��@210w@0,����,�������֮������")
		LuaAddPartyMoney(100000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@210wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("�����ܹܣ�Ӣ��@2ͭ�Ҳ���10w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgwsw") then  --��50w
	if(LuaItemCount("coin")>=500000) then
		LuaSay("�����ܹܣ�Ӣ���Ϲ�ͭ��@250w@0,����,�������֮������")
		LuaAddPartyMoney(500000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@250wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("�����ܹܣ�Ӣ��@2ͭ�Ҳ���50w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgybw")then  --��100w
	if(LuaItemCount("coin")>=1000000)then
		LuaSay("�����ܹܣ�Ӣ���Ϲ�ͭ��@2100w@0,����,�������֮������")
		LuaAddPartyMoney(1000000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@2100wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("�����ܹܣ�Ӣ��@2ͭ�Ҳ���100w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="dm")then	--����ȡǮ
	AddMenuItem("@1����ȡǮ","")
	AddMenuItem("@7����ȡǮ˵��","dm_sm")
	AddMenuItem("@3����ȡǮ","dm_y")
elseif(answer=="dm_sm")then	--����ȡǮ˵��
	LuaSay("����ÿ��@224Сʱ@0�ܴӰ�������ȡ��@15%@0��Ϊ���˲Ʋ��Ա��ð���֮���ܣ�@1����ȡ����10w����ֻ����ȡ10w@0��")
elseif(answer=="dm_y")then	--����ȡǮ
	DrawMoney()	
elseif(answer=="bpyh") then  --�������������ѯ
	LuaSay("Ŀǰ������е�ͭ�ҿ��Ϊ@2"..LuaQueryPartyMoney().."@0��")
	if(LuaQueryRank() > 3)then    --������Ȩ ����ȡǮ
		LuaSay("��Ҫȡ��������@7����ȡǮ@0ѡ��")
	end
-----------������կ������
elseif(answer=="partytask") then 
	AddMenuItem("@7����������","")
	AddMenuItem("@5�ճ�������","partytask_1")
	AddMenuItem("��ͨ����������","partytask_2")
elseif(answer=="partytask_1") then
		AddMenuItem("@7�ճ�������","")
		AddMenuItem("@7��ȡ����","bp4")
		AddMenuItem("@3ÿ�ձ���","Tpt1")               -------ÿ����ȡ���������30���ӣ���ý�����ÿ��10�ˣ��������˴� 
		AddMenuItem("@3��ȡ�����Ǵ�","Tpt2")    ------��10�����ÿ�ձ�������������ȡ���������1000 	
		AddMenuItem("ÿ�պϳ�","Tpt3")               ----ÿ�ո���Ҫ���ռ���ͬ�Ķ����������ʺϳɺö��� 
		AddMenuItem("@5����ʹ��@0(ÿСʱ)","Tpt4")
		AddMenuItem("ս��Ѳ��(ÿ��)","Tpt5")
elseif(answer=="partytask_2") then 
	AddMenuItem("@7��ͨ����������","")
		AddMenuItem("@3���ɶڻ���ѭ����","Tbptj")
	if((LuaQueryTask("Tbprw003")==0 or LuaQueryTask("Tbprw003")==99) and LuaQuery("level")>=20)then
		AddMenuItem("@7̽�����ơ�ÿ�ա�","Tbprw003")
	end
	if(LuaQueryTask("Tbprw005")==0 or LuaQueryTask("Tbprw005")==99 and LuaQueryRank()>2)then
		AddMenuItem("@7�޾�Ȥζ��ÿ�ա�","Tbprw005")
	end
	if(LuaQuery("level")>=20 and LuaQuery("level")<30 and (LuaQueryTask("Tbprw8")==0 or LuaQueryTask("Tbprw8")==99)) then
		AddMenuItem("@7�������ʡ�ÿ�ա�","Tbprw8")
	end
	if(LuaQuery("level")>=30 and LuaQuery("level")<40 and (LuaQueryTask("Tbprw9")==0 or LuaQueryTask("Tbprw9")==99)) then			
		AddMenuItem("@7�������ʡ�ÿ�ա�","Tbprw9")
	end
	if(LuaQuery("level")>=40 and LuaQuery("level")<50 and (LuaQueryTask("Tbprw10")==0 or LuaQueryTask("Tbprw10")==99)) then
		AddMenuItem("@7������ʳ��ÿ�ա�","Tbprw10")
	end
	if(LuaQueryTask("Tbprw1")==0) then
		AddMenuItem("�˽��᡾���顿","Tbprw1")
	end
	if(LuaQueryTask("Tbprw002")==0 and LuaQueryTask("Tbprw1")==99)then
		AddMenuItem("���Կ��顾���顿","Tbprw002")
	end
	if(LuaQueryTask("Tbprw2")==0 and  LuaQueryTask("Tbprw1")==99 and LuaQuery("level")>=20) then
		AddMenuItem("ǿʢ֮�������顿","Tbprw2")
	end
	if(LuaQueryTask("Tbprw12")==0  and LuaQueryRank()>=2) then
		AddMenuItem("@5�������ڡ�ѭ����","Tbprw12")
	end
	if(LuaQuery("level")>=20 and LuaQuery("level")<30 and LuaQueryTask("Tbprw3")==0) then
		AddMenuItem("@5�����漱��ѭ����","Tbprw3")
	end
	if(LuaQuery("level")>=30 and LuaQuery("level")<40 and LuaQueryTask("Tbprw4")==0 ) then
		AddMenuItem("@5ְ�����ڡ�ѭ����","Tbprw4")
	end
	if(LuaQuery("level")>=40 and LuaQuery("level")<50 and LuaQueryTask("Tbprw5")==0 ) then
		AddMenuItem("@5�ռ�צ�ӡ�ѭ����","Tbprw5")
	end
	if(LuaQuery("level")>=50 and LuaQuery("level")<=60 and LuaQueryTask("Tbprw6")==0 ) then
		AddMenuItem("@5��ħ������ѭ����","Tbprw6")
	end
	if(LuaQuery("level")>60 and LuaQueryTask("Tbprw7")==0 ) then
		AddMenuItem("@5��ҡֱ�ϡ�ѭ����","Tbprw7")
	end
	if(LuaQuery("level")>=50 and LuaQuery("level")<60 and LuaQueryTask("Tbprw11_1")==0) then
		AddMenuItem("���а�񡾻�һ��","Tbprw11_1")
	end
----��ȡ����
elseif(answer=="bp4") then
	local sKill_bp4={
		--1��ͼ��  2������  3ɱ�ּ�����  
		{1,"@4��������@0","@3����@0","task_kill/mon_008/Tbp4"},--10-20
		{2,"@4������Ӫ@0","@3��������@0","task_kill/mon_017/Tbp4"},--20-30
		{3,"@4��ˮ�԰�@0","@3��ˮ��@0","task_kill/mon_024/Tbp4"},--30-40
		{4,"@4�׹Ƕ�@0","@3���ޱ�@0","task_kill/mon_034/Tbp4"},--40-50
		{5,"@4̫�йž�@0","@3��ʯ��@0","task_kill/mon_037/Tbp4"},--50-60
		{6,"@4������Ĺ@0","@3����ʬ@0","task_kill/mon_044/Tbp4"},--60����
		}
	if(GetCurrentDay()~=LuaQueryStrTask("bprxDay")) then--��ǰ�첻�ǽ�ȡ������
		LuaSetTask("bprx",0)  --����Ϊ����Ϊ������
		local n=LuaQueryTask("Tbprx_lv")  --ɱ�����������δ��0
		if(n>0) then
			LuaDelTask(sKill_bp4[n][4])---ɾ��ɱ�ּ�����
		end
		LuaDelTask("Tbprx_lv")
		LuaDelTask("bprx1_1") 
		LuaDelTask("bprx1_2")
		if(LuaQueryTask("bprx1")==3) then
			LuaSetTask("bprx1",0)
			LuaDelTask("Tbprxtime")
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end 
	if(LuaQueryTask("bprxTime")>30) then
		LuaDelTask("bprxTime")  --ɾ��������ɴȯ��10wͭ����ȡ����
		LuaDelTask("bprx1")  --����Ϊ0   û������ɴȯ��10wͭ��
	end
	if(LuaQueryTask("bprx")==0) then   --��������û��� 
		if(LuaQueryTask("Tbprx_lv")==0) then  --����տ�ʼ����
			local m=floor(LuaQuery("level")/10)
			if(m<=5) then --60��һ��(������60��)
				LuaSetTask("Tbprx_lv",m)
			else
				LuaSetTask("Tbprx_lv",6)
			end
		end
		if(LuaQueryTask("bprx1")==2) then  --������10wͭ��
			local n=LuaQueryTask("Tbprx_lv")
			if(LuaQueryTask("bprx1_1")==0) then
				LuaSay("����:��������Ϊ��,���ֵ���10��ͭ������,���@230����ÿ����ȡ8000ͭ������һ��@0���ٸ�����1000ͭ��,�Ա��֮����֮�ģ�")
				LuaSay("����:�������ڹ��һ��ң���Ҫ���ɵ�֧�֣��������ٵ�"..sKill_bp4[n][2].."��ɱ@550��@0"..sKill_bp4[n][3].."�Ա�����")
				LuaSetTask(sKill_bp4[n][4],1)-------����ɱ�ּ�����
				LuaSetTask("bprx1_1",1)
				LuaSetTask("bprxDay",GetCurrentDay())  --���õ�ǰ��Ϊ��ȡ������
			elseif(LuaQueryTask("bprx1_1")==1) then
				if(LuaQueryTask(sKill_bp4[n][4])>=51) then
					LuaSay("����:���ˣ�������һ������л�����ɡ�")
					LuaAddTask("bprxTime",1)
					LuaGive("coin",8000,"Tbprx")
					AddMoneyToPartyBank(1000)
					LuaSay("��ʾ:��ÿ����ȡ@58000ٺ»@0����������@2"..30-LuaQueryTask("bprxTime").."��@0��")
					if(LuaQueryTask("bprxTime")==30) then
						LuaSay("��ʾ����ÿ����ȡ@28000ٺ»��ʱ���Ѿ�����@0��")
					end
					LuaPartyMsg("����:�µð���@3"..LuaQueryStr("name").."@0��10��ͭ������,ÿ����ȡ@28000ٺ»@0���ش͹��1000ͭ�ң����,�������֮.",0)
					LuaSetTask("bprx",1)  --�������������
					LuaDelTask(sKill_bp4[n][4])---ɾ��ɱ�ּ�����
					LuaDelTask("Tbprx_lv")
					LuaDelTask("bprx1_1")
					UpdateMenu()
					UpdateNPCMenu("bangpaizg")
				else
					LuaSay("����:��������Ҫ��Ū�ң����ɱ��"..(LuaQueryTask(sKill_bp4[n][4])-1).."��"..sKill_bp4[n][3].."��ɱ��@550��@0�������Ұɣ�")
				end
			end		
		elseif(LuaQueryTask("bprx1")==1) then  --������ɴȯ
			LuaSay("����:��������Ϊ��,���ֵ���[@2��ɴȯ@0]����,���@230����ÿ����ȡ8000ͭ������һ��@0���ٸ�����2000ͭ��,�Ա��֮����֮�ģ�")
			LuaAddTask("bprxTime",1)
			LuaGive("coin",8000,"Tbprx")
			AddMoneyToPartyBank(2000)
			rb=LuaRandom(18)
			if(rb == 0) then
				LuaGive("o_state034y",1)
			elseif(rb == 1) then
				LuaGive("o_state008y",1)
			elseif(rb == 2) then
				LuaGive("o_state012y",1)
			elseif(rb == 3) then
				LuaGive("o_state017y",1)
			elseif(rb == 4) then
				LuaGive("o_state022y",1)
			elseif(rb == 5) then
				LuaGive("o_state027y",1)
			elseif(rb == 6) then
				LuaGive("o_state044y",1)
			elseif(rb == 7) then
				LuaGive("o_state047y",1)
			elseif(rb == 8) then
				LuaGive("o_state050y",1)
			elseif(rb == 9) then
				LuaGive("o_state053y",1)
			elseif(rb == 10) then
				LuaGive("o_state056y",1)
			elseif(rb == 11) then
				LuaGive("o_state065y",1)
			elseif(rb == 12) then
				LuaGive("o_state068y",1)
			end
			LuaSay("��ʾ:��ÿ����ȡ@58000ٺ»@0��ʱ�仹��@2"..30-LuaQueryTask("bprxTime").."��@0��")
			if(LuaQueryTask("bprxTime")==30) then
				LuaSay("��ʾ����ÿ����ȡ@28000ٺ»��ʱ���Ѿ�����@0��")
			end
			LuaPartyMsg("����:�µð���@2"..LuaQueryStr("name").."@0��[@2��ɴȯ@0]����,ÿ����ȡ@28000ٺ»@0���ش͹��1000ͭ�ң����,�������֮.",0)
			LuaSetTask("bprx",1)
			LuaSetTask("bprxDay",GetCurrentDay())
		elseif(LuaQueryTask("bprx1")==0) then
			LuaSay("��ʾ:����@2��ɴȯ@0����@210��ͭ��@0��,��@230����ÿ����ȡ8000ͭ������һ��@0����ȡʱͬʱ����ɹ���1000-3000ͭ��.")
			LuaSay("��ʾ:����@2��ɴȯ@0��,ÿ����ȡ���õ�ͬʱ,���л�����@2���ֵ���.")
			LuaSay("����֮��ÿ������@2��������������@0ֻ����ȡ@22000ͭ��@0��")
			AddMenuItem("@7��������","")
		    AddMenuItem("��ɴȯ","dzqs","")
			AddMenuItem("10��ͭ��","10tb","")
			AddMenuItem("����","fql","")
		elseif(LuaQueryTask("bprx1")==3) then
			local t=GetCurrentTime()-LuaQueryTask("Tbprxtime")--��ȡ��������ڵ�ʱ��
			if(t<900)then
				local f=floor((900-t)/60)  --������ٷ���
				local s=900-t-f*60
				LuaSay("����:�Ȼᣬ@215����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
			else
				local n=LuaQueryTask("Tbprx_lv")
				if(LuaQueryTask("bprx1_2")==0) then
					LuaSay("����:��������ҳϿɼ����������ڹ��һ��ң���Ҫ���ɵ�֧�֣��������ٵ�"..sKill_bp4[n][2].."��ɱ@550��@0"..sKill_bp4[n][3].."��֧Ԯ���Ұ�")
					LuaSetTask(sKill_bp4[n][4],1)-------����ɱ�ּ�����
					LuaSetTask("bprx1_2",1)
				elseif(LuaQueryTask("bprx1_2")==1) then
					if(LuaQueryTask(sKill_bp4[n][4])>=51) then
						LuaSetTask("bprx",1)
						LuaSetTask("bprx1",0)
						LuaSay("����:��ϲ�����@7ÿ������@0���񣬻��@22000ͭ��@0��")
						LuaGive("coin",2000,"Tbprx")
						LuaDelTask(sKill_bp4[n][4])---ɾ��ɱ�ּ�����
						LuaDelTask("Tbprx_lv")
						LuaDelTask("bprx1_2")
						LuaDelTask("Tbprxtime")
						UpdateMenu()
						UpdateNPCMenu("bangpaizg")
					else
						LuaSay("����:��������Ҫ��Ū�ң����ɱ��@5"..(LuaQueryTask(sKill_bp4[n][4])-1).."��"..sKill_bp4[n][3].."��ɱ��@550��@0�������Ұɣ�")
					end
				end
			end
		end
	else
		LuaSay("����:���Ѿ�����˽��յİ������@!���������̸��࣬������������Ŷ�������鸣���죬һͳ������")
	end
elseif(answer=="fql") then
	LuaSay("����:�����鸣���죬һͳ�������ö���ÿ��@2����������@0��ȡ@22000ͭ��@0����������һ�𺰣������鸣���죬һͳ������")
	LuaSay("����:���ȣ���Ҫ���ֳ��԰��ɵ��ҳϣ�@215���Ӻ�@0��������ɡ�")
	LuaSetTask("bprx1",3)
	LuaSetTask("Tbprxtime",GetCurrentTime())
	LuaSetTask("bprxDay",GetCurrentDay())
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")		
elseif(answer=="dzqs") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		DelItem("o_zhaiquan1y",1)
		LuaSetTask("bprx1",1)
		LuaSay("�����ܹ�:�����������[��ɴȯ]����Ϊ����,��������,���ɴ������ﴦ,��@230����ÿ����ȡ8000ͭ������һ��@0��������2000���ɹ��ף���Ӣ�۶��˽�´�����")
	else
		LuaSay("�����ܹ�:�㲢û��[��ɴȯ],��ȥ[�̳�-Ԫ��-����]����.����ڲƭ����,��ն֮��")
	
	end
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="10tb") then
	if(LuaItemCount("coin") >= 100000) then
		LuaSetTask("bprx1",2)
		LuaGive("coin",-100000,"Tbprx")
		LuaSay("�����ܹ�:�����������Ǯ��,��Ϊ����,��������,���ɴ�������,��@230����ÿ����ȡ8000ͭ������һ��@0��������1000���ɹ��ף���Ӣ�۶��˽�´�����")
	else
		LuaSay("�����ܹ�:��ͭ�Ҳ���ʮ��,�����Ŀɱ�,ȥ�ɣ�")
	end
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
----ÿ�ձ���
elseif(answer=="Tpt1")then
	local level=LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("Tpt1day") ) then
		Kill={
			--1��ͼ��  2������  3ɱ�ּ�����  
			{1,"@4��������@0","@3���@0","task_kill/mon_007/Tpt1"},--10-20
			{2,"@4������Ӫ@0","@3��������@0","task_kill/mon_016/Tpt1"},--20-30
			{3,"@4��ˮ�԰�@0","@3��ˮ��@0","task_kill/mon_023/Tpt1"},--30-40
			{4,"@4�׹Ƕ�@0","@3ʬ��@0","task_kill/mon_033/Tpt1"},--40-50
			{5,"@4̫�йž�@0","@3���ƾ���@0","task_kill/mon_036/Tpt1"},--50-60
			{6,"@4������Ĺ@0","@3Ѫ��ʬ@0","task_kill/mon_045/Tpt1"},--60����
			}
		if(LuaQueryTask("Tpt1")==0)then
			local m=floor(LuaQuery("level")/10)
			if(m<=5) then 
				LuaSetTask("Tpt1_lv",m)
			else
				LuaSetTask("Tpt1_lv",6)
			end
			local n=LuaQueryTask("Tpt1_lv")
			LuaSay("�����ܹܣ��������ڹ����Ᵽ���Ϊ����֧���İ���ҲӦ��Ϊ���Ҿ��Լ���һ������")
			LuaSay("�����ܹܣ��������ٵ�"..Kill[n][2].."��ɱ@550��@0"..Kill[n][3].."�Ա�����")
			LuaSay("�����ܹܣ�@1ÿ10����ɱ������ҽ���������ά����@0")
			LuaSetTask(Kill[n][4],1)-------����ɱ�ּ�����
			LuaAddTask("Tpt1",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tpt1")==1)then
			local n=LuaQueryTask("Tpt1_lv")
			if(LuaQueryTask(Kill[n][4])>=51) then --����ɱ����
				local i=GetPartyCurrentRepute()
				LuaSay("�����ܹܣ������˲������˾��黹�ܻ�ð�������2��ͭ�ҽ�������������Խ�߽���Խ�࣡���6000ͭ�Һͺ������顣")	     
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt1")
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---�ۻ��������������
				if(i<=3000)then
					LuaGive("coin",i*2,"Tpt1")                                                     ----��ڼ�
				else
					LuaGive("coin",6000,"Tpt1")
				end
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---�ۻ��������������
				LuaSetTask("Tpt1",99)
				LuaDelTask(Kill[n][4])---ɾ��ɱ�ּ�����
				LuaDelTask("Tpt1_lv")
				LuaPublicAdd("Partytask/"..LuaQuery("partyid").."/tp",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			else
				LuaSay("�����ܹܣ���������Ҫ��Ū�ң����ɱ��"..(LuaQueryTask(Kill[n][4])-1).."��"..Kill[n][3].."��ɱ��@550��@0�������Ұɣ�")
			end
		else
			LuaSay("�����ܹܣ��������Ѿ����˸������ˣ����������ɣ������������Ҳ�࣬��õĻر�Խ�ߣ�")
		end
	else

		Kill={
			--1��ͼ��  2������  3ɱ�ּ�����  
			{1,"@4��������@0","@3���@0","task_kill/mon_007/Tpt1"},--10-20
			{2,"@4������Ӫ@0","@3��������@0","task_kill/mon_016/Tpt1"},--20-30
			{3,"@4��ˮ�԰�@0","@3��ˮ��@0","task_kill/mon_023/Tpt1"},--30-40
			{4,"@4�׹Ƕ�@0","@3ʬ��@0","task_kill/mon_033/Tpt1"},--40-50
			{5,"@4̫�йž�@0","@3���ƾ���@0","task_kill/mon_036/Tpt1"},--50-60
			{6,"@4������Ĺ@0","@3Ѫ��ʬ@0","task_kill/mon_045/Tpt1"},--60����
			}
		LuaSay("�����ܹܣ��µ�һ�쿪ʼ�ˣ����ٴθ��ҶԻ��Ϳ��Խ��������ˡ����뵱����ɣ�������Ч���м��мǣ�")
		LuaSetTask("Tpt1day",GetCurrentDay())
		local n=LuaQueryTask("Tpt1_lv")
		if(n~=0) then --��������δ���
			LuaDelTask(Kill[n][4])---ɾ��ɱ�ּ�����
			LuaDelTask("Tpt1_lv")
		 end                                                          
		LuaSetTask("Tpt1",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
----��ȡ�����Ǵ�
elseif(answer=="Tpt2")then
	local level=LuaQuery("level")
	Tpt2t=LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp")%10
	if(LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp")<=100000)then
		if(Tpt2t==0)then
			i=GetPartyCurrentRepute()
			LuaSay("�����ܹܣ���ϲ�������д��ˡ�ÿ10�����ÿ�ձ�������������ȡһ�����˽�����")
			LuaSay("�����ܹܣ���������Խ�߽���Խ�ߣ����ɻ��5Wͭ���뺣�����顣")
			LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt2") 
			ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---�ۻ��������������
			AddMoneyToPartyBank(10000)
			LuaPartyRepute(1,0,"Tpt2")
			LuaAddAchievementSchedule("PartyRepute_mun",1)
		if(i<=5000)then
			LuaGive("coin",i*10,"Tpt2")
		else
			LuaGive("coin",50000,"Tpt2")
		end
			LuaPublicAdd("Partytask/"..LuaQuery("partyid").."/tp",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ȡ�˰������˽�,�������������˽�Ǯ@21w@0���Լ����@210�����������Ľ�Ǯ@0��@2��������1��@0",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ���ǰ����@3ÿ�ձ�������@3�Ĵ�����"..LuaPublicQuery("Partytask/"..LuaQuery("partyid").."/tp").."@0,������ֵΪ10�ı���ʱ�����ܻ�ý�����")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaPublicSet("Partytask/"..LuaQuery("partyid").."/tp",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
----ÿ�պϳ�
elseif(answer=="Tpt3")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryStrTask("Tpt3day")==GetCurrentDay())then
			if(LuaQueryTask("Tpt3")==0)then
				n1=LuaRandom(3)+1
				n2=LuaRandom(3)+5
				a1,b1=get(n1)
				a2,b2=get(n2)
				LuaSay("�����ܹܣ�������Ҫ�ռ��Ķ�����@3"..a1.."@0��@3"..a2.."@0��һ�����������ռ���ɣ��ҽ�����һЩ�߼�����")
				LuaSetTask("Tpt3a",n1)
				LuaSetTask("Tpt3b",n2)
				LuaSetTask("Tpt3",1)
			elseif(LuaQueryTask("Tpt3")==1)then
				num1=LuaQueryTask("Tpt3a")
				num2=LuaQueryTask("Tpt3b")
				c1,d1=get(num1)
				c2,d2=get(num2)
				c3,d3=get(4+num2)
				if(LuaItemCount(d1)>=1 and LuaItemCount(d2)>=1 )then
					if(LuaFreeBag()>=1)then
						LuaSay("�����ܹܣ���Щ�����㶼�����ˣ������˲���ѽ����Ҳ��ʳ�ԣ����Ǹ���Ľ�����")
						DelItem(d1,1)
						DelItem(d2,1)
						LuaGive(d3,1,"Tpt3")
						LuaSetTask("Tpt3",99)
						UpdateMenu()
						UpdateNPCMenu("bangpaizg")
					else
						LuaSay("@5��ܰ��ʾ���뱣����ı���������һ����λ����ֹ������Ʒ��ʧ�����@!")
					end
				else
					LuaSay("�����ܹܣ���������"..LuaItemCount(d1).."��"..c1.."��"..LuaItemCount(d2).."��"..c2.."!���ϲ��㣬�Ͻ�ȥ�ռ��ɣ�")	       		       
				end
			else 
				LuaSay("�����ܹܣ�������Ѿ������˸��������������ɣ�")
			end
		else
			LuaSetTask("Tpt3day",GetCurrentDay())
			LuaSetTask("Tpt3",0)
			LuaSay("�����ܹܣ��������껨���ƣ����������˲�ͬ������ĺϳɻ���Ϊ��򿪣��������ȡ�ϳ������ˡ�")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaSay("�����ܹܣ�������ֻ��30�����ϵİ��ɳ�Ա������ȡ���Ͽ���������Ϊ���ɵ����������ɡ�")
	end
----����ʹ��(ÿСʱ)
elseif(answer=="Tpt4")then   
	local level=LuaQuery("level")
	local tS_Tpt4_Kill={
			--1��ͼ��  2������  3ɱ�ּ�����  
			{1,"@4��������@0","@3���@0","task_kill/mon_007/Tpt4"},--10-20
			{2,"@4������Ӫ@0","@3��������@0","task_kill/mon_016/Tpt4"},--20-30
			{3,"@4��ˮ�԰�@0","@3��ˮ��@0","task_kill/mon_023/Tpt4"},--30-40
			{4,"@4�׹Ƕ�@0","@3ʬ��@0","task_kill/mon_033/Tpt4"},--40-50
			{5,"@4̫�йž�@0","@3���ƾ���@0","task_kill/mon_036/Tpt4"},--50-60
			{6,"@4������Ĺ@0","@3Ѫ��ʬ@0","task_kill/mon_045/Tpt4"},--60����
			}
	if(GetCurrentDay()~=LuaQueryStrTask("Tpt4day")) then
		LuaSetTask("Tpt4day",GetCurrentDay())
		local n=LuaQueryTask("Tpt4_lv")
		if(n~=0) then --��������δ���
			LuaDelTask(tS_Tpt4_Kill[n][4])---ɾ��ɱ�ּ�����
			LuaDelTask("Tpt4_lv")
		 end                                                          
		LuaSetTask("Tpt4",0)
		LuaDelTask("Tpt4times")
		LuaDelTask("Tpt4time")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
	if(GetCurrentDay()==LuaQueryStrTask("Tpt4day")) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tpt4time"))
		if(shijiancha>=3600) then
			if(LuaQueryTask("Tpt4")==0) then
				LuaSay("Ϊ����������Ա�İ���֮�ģ�@5ÿСʱ��������˿���ȡ���ɹ��ʺ;���@0������ȡ��������Ϊ3�ı���ʱ���������Ӷ����@2���������Ͱ�������ͭ��@0")		
				local m=floor(LuaQuery("level")/10)
				if(m<=5) then 
					LuaSetTask("Tpt4_lv",m)
				else
					LuaSetTask("Tpt4_lv",6)
				end
				local n=LuaQueryTask("Tpt4_lv")
				LuaSay("�����ܹܣ��������ٵ�"..tS_Tpt4_Kill[n][2].."��ɱ@550��@0"..tS_Tpt4_Kill[n][3].."���������Σ��")
				LuaSetTask(tS_Tpt4_Kill[n][4],1)-------����ɱ�ּ�����
				LuaSetTask("Tpt4",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tpt4")==1) then
				local n=LuaQueryTask("Tpt4_lv")
				if(LuaQueryTask(tS_Tpt4_Kill[n][4])<51) then --���ﲻ��
					LuaSay("�����ܹܣ���������Ҫ��Ū�ң����ɱ��"..(LuaQueryTask(tS_Tpt4_Kill[n][4])-1).."��"..tS_Tpt4_Kill[n][3].."��ɱ��@550��@0�������Ұɣ�")
				elseif(LuaQueryTask(tS_Tpt4_Kill[n][4])>=51) then --����ɱ����
					LuaSay("�����ܹܣ��������")
					LuaGive("coin",2000,"Tpt4")
					local jinyan
					if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*150+level*level*15
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*600+level*level*15
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*1200+level*level*15
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*2000+level*level*15
					else
						jinyan=level*3000+level*level*15
					end
					LuaAddJx("combat_exp",jinyan,"Tpt4")
					ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
					LuaSetTask("Tpt4time",GetCurrentTime())
					LuaSetTask("Tpt4day",GetCurrentDay())
					LuaAddTask("Tpt4times",1)
					LuaSetTask("Tpt4",0)
					LuaDelTask(tS_Tpt4_Kill[n][4])---ɾ��ɱ�ּ�����
					LuaDelTask("Tpt4_lv")
					if(LuaQueryTask("Tpt4times")%3==0)then
						LuaPartyRepute(1,0,"Tpt4")
						LuaAddAchievementSchedule("PartyRepute_mun",1)
						AddMoneyToPartyBank(1000)
						LuaPartyMsg("@3"..LuaQueryStr("name").."@0�������ɽ�@2����������1��@0,��������@2����1000ͭ��@0",0)
					end
					LuaSay("�����ܹܣ���@2��ǰ�����������"..LuaQueryTask("Tpt4times").."��@0��ÿ��@53�ı���@0���Ϳɶ������Ӱ�������1��Ͱ�������1000ͭ�ң�ÿ��һСʱ������ɴ�����һ�Σ�")
					UpdateMenu()
					UpdateNPCMenu("bangpaizg")
				end
			end
		else
			LuaSay("�����ܹܣ�@2��������1Сʱ���ܽ�ȡһ��@0.")
			local q=floor(shijiancha/60)-----����
			local s=shijiancha-q*60
			LuaSay("�����ܹܣ����ڲŹ���@2"..q.."����"..s.."��@0������@21Сʱ@0�������������ɣ�")
		end
	 end
----ս��Ѳ��(ÿ��)
elseif(answer=="Tpt5")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryStrTask("Tpt5day")==GetCurrentDay())then    
			if(LuaQueryTask("Tpt5")==0)then
				LuaSay("�����ܹܣ���ս��ͼ�ڵ��ֵ�@3������@0�Ϳ๦�ߣ��㲻�������һ��ο�������ɣ��������˻㱨����������Խ�߽�����Խ�ߣ����1Wͭ�Һͺ������飡")
				LuaSetTask("Tpt5",1)
			elseif(LuaQueryTask("Tpt5")==1)then
				LuaSay("�����ܹܣ�ע��Ҫ�����ս��ͼ���������İ���ս����ܽ��룡������22-23�����룡��սֻ���ɰ������������ҿ�����������ǰ�İ�����ս����Ͽ�ȥ�ɣ�")
			elseif(LuaQueryTask("Tpt5")==2)then 
				local i=GetPartyCurrentRepute()
				local level=LuaQuery("level")
				LuaSay("�����ܹܣ�������Ľ�����ע���������Խ�ߣ���õĽ�ǮԽ�࣡")
				LuaAddJx("combat_exp",floor(level/5-1)*10000,"Tpt5") 
				ChangePartyTaskExp(LuaQuery("partyid"),floor(level/5-1)*10000) ---�ۻ��������������
				if(i<=5000)then
					LuaGive("coin",i*2,"Tpt5")
				else
					LuaGive("coin",10000,"Tpt5")
				end 
				LuaSetTask("Tpt5",99)
			else
				LuaSay("�����ܹܣ��������Ѿ������˸��������������ɣ�")
			end	 
		else        
			LuaSay("�����ܹܣ��µ�һ����,��ս��ͼ�ڵ��ֵ�@3������@0�Ϳ๦�ߣ��㲻�������һ��ο���������������˻㱨����İ�������Խ�ߣ���õĽ���Խ�ߣ�")
			LuaSetTask("Tpt5",1)
			LuaSetTask("Tpt5day",GetCurrentDay()) 
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	else
		LuaSay("�����ܹܣ�������ֻ��30�����ϵİ��ɳ�Ա������ȡ���Ͽ���������Ϊ���ɵ����������ɡ�")
	end
--------------------------------���ɶڻ�
elseif(answer=="Tbptj") then
	AddMenuItem("@7���ɶڻ�","")
	if(LuaPartyLevel() == 1) then
		AddMenuItem("@3һ�����ڻ���ѭ����","Tbptj_1")
	end
	if(LuaPartyLevel() == 2) then
		AddMenuItem("@3�������ڻ���ѭ����","Tbptj_2")
	end
	if(LuaPartyLevel() == 3) then	
		AddMenuItem("@3�������ڻ���ѭ����","Tbptj_3")
	end
	if(LuaPartyLevel() == 4) then	
		AddMenuItem("@3�ļ����ڻ���ѭ����","Tbptj_4")
	end
	if(LuaPartyLevel() == 5) then
		AddMenuItem("@3�弶���ڻ���ѭ����","Tbptj_5")
	end
elseif(answer=="Tbptj_1") then
	if(LuaQueryTask("Tbptj_1")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_1time"))
		if(shijiancha>=1200) then
			LuaSay("�����ܹܣ�ÿ@210����@0����ȥ�ռ�@31��1��ë@0���Լ��ٰ��ɽ���Ϊ@3�������@0��")
			LuaSay("�����ܹܣ�ÿ���@21�λ���2000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_1",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaSay("�����ܹܣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_1jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1) then
			LuaSay("�����ܹܣ��㻹û�ռ���@31��1��ë@0.")
		end
	end
elseif(answer=="Tbptj_2") then
	if(LuaQueryTask("Tbptj_2")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_2time"))
		if(shijiancha>=1200) then
			LuaSay("�����ܹܣ�ÿ@210����@0����ȥ�ռ�@31��1��ë@0��@31��1����@0���Լ��ٰ��ɽ���Ϊ@3�������@0��")
			LuaSay("�����ܹܣ�ÿ���@21�λ���2500����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_2",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaSay("�����ܹܣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_2jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("�����ܹܣ��㻹û�ռ���@31��1��ë@0��@31��1����@0.")
		elseif(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("�����ܹܣ�@31��ë@0�ǹ��ˣ�@31��1����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")>=1) then
			LuaSay("�����ܹܣ�@31����@0�ǹ��ˣ�@31��1��ë@0������.")
		end
	end

elseif(answer=="Tbptj_3") then
	if(LuaQueryTask("Tbptj_3")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_3time"))
		if(shijiancha>=1200) then
			LuaSay("�����ܹܣ��������ڵİ��Ϊ@3�������@0��")
			LuaSay("�����ܹܣ�ÿ@210����@0����ȥ�ռ�@31��2��ë@0���Լ��ٰ��ɽ���Ϊ@3�ļ����@0��")
			LuaSay("�����ܹܣ�ÿ���@21�λ���3000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_3",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaSay("�����ܹܣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_3jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1) then
			LuaSay("�����ܹܣ��㻹û�ռ���@31��2��ë.")
		end
	end

elseif(answer=="Tbptj_4") then
	if(LuaQueryTask("Tbptj_4")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_4time"))
		if(shijiancha>=1200) then
			LuaSay("�����ܹܣ��������ڵİ��Ϊ@3�ļ����@0��")
			LuaSay("�����ܹܣ�ÿ@210����@0����ȥ�ռ�@31��2��ë@0��@31��2����@0���Լ��ٰ��ɽ���Ϊ@3�弶���@0��")
			LuaSay("�����ܹܣ�ÿ���@21�λ���3500����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_4",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaSay("�����ܹܣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_4jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("�����ܹܣ��㻹û�ռ���@31��2��ë@0��@31��2����@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("�����ܹܣ�@32��ë@0�ǹ��ˣ�@31��2����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")>=1) then
			LuaSay("�����ܹܣ�@32����@0�ǹ��ˣ�@31��2��ë@0������.")
		end
	end
elseif(answer=="Tbptj_5") then
	if(LuaQueryTask("Tbptj_5")==0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_5time"))
		if(shijiancha>=1200) then
			LuaSay("�����ܹܣ��������ڵİ��Ϊ@3�弶���@0��")
			LuaSay("�����ܹܣ�ÿ@210����@0����ȥ�ռ�@32��2��ë@0��@32��2����@0���Լ��ٰ��ɽ���Ϊ@3����@0��")
			LuaSay("�����ܹܣ�ÿ���@21�λ���4000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_4",1)
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		else
			LuaSay("�����ܹܣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaSay("�����ܹܣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_5jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("�����ܹܣ��㻹û�ռ���@32��2��ë@0��@32��2����@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("�����ܹܣ�@32��2��ë@0�ǹ��ˣ�@32��2����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")>=2) then
			LuaSay("�����ܹܣ�@32��2����@0�ǹ��ˣ�@32��2��ë@0������.")
		end
	end
elseif(answer=="Tbptj_1jl") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_1")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			DelItem("o_material_11",1)
			LuaDelTask("Tbptj_1")
			LuaSetTask("Tbptj_1time",GetCurrentTime())
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaSay("�����ܹܣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_2jl") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			DelItem("o_material_11",1)
			DelItem("o_material_29",1)
			LuaDelTask("Tbptj_2")
			LuaSetTask("Tbptj_2time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_2")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			LuaSay("�����ܹܣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			AddMoneyToPartyBank(2500)-------���Ӱ���Ǯ
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_3jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			DelItem("o_material_12",1)
			LuaDelTask("Tbptj_3")
			LuaSetTask("Tbptj_3time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_3")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(3000)-------���Ǯ
			LuaSay("�����ܹܣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_4jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			DelItem("o_material_12",1)
			DelItem("o_material_30",1)
			LuaDelTask("Tbptj_4")
			LuaSetTask("Tbptj_4time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(3500)-------���Ӱ���Ǯ
			LuaSay("�����ܹܣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
elseif(answer=="Tbptj_5jl") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			DelItem("o_material_12",2)
			DelItem("o_material_30",2)
			LuaDelTask("Tbptj_5")
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*110+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*550+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*1000+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2500+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(4000)-------���Ӱ���Ǯ
			LuaSay("�����ܹܣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end		
--------------------------------�˽��᡾���顿
elseif(answer=="Tbprw1") then
	if(LuaQueryTask("Tbprw1")==0) then
		LuaSay("�����ܹܣ�"..LuaQueryStr("name").."����ӭ��ĵ�����")
		LuaSay("�����ܹܣ����°������������¼�������ǿʢ�Կ���𢣬�ʰ����˹���֮ϣ������Ƚ�����ҵ֮�ݾ���Խǿ��İ�ὫԽ�û���������")
		LuaSetTask("Tbprw1",1)      -------��־�����
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Tbprw1jl")
	end
elseif(answer=="Tbprw1jl")then  -----------------������
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	local jinyan
	if(LuaQuery("level")<=10) then  --С��10��
		jinyan=level*150+level*level*15
	elseif(LuaQuery("level")<=20) then  --10-20
		jinyan=level*600+level*level*15
	elseif(LuaQuery("level")<=30) then	--20-30
		jinyan=level*1200+level*level*15
	elseif(LuaQuery("level")<=60) then	--30-60
		jinyan=level*2800+level*level*15
	else
		jinyan=level*3200+level*level*15
	end
	if(LuaQueryTask("Tbprw1")==1) then
		LuaSetTask("Tbprw1",99)
		LuaAddJx("combat_exp",jinyan,"Tbprw1")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
    end
--------------------------------------------���Կ���
elseif(answer=="Tbprw002")then 
	if(LuaQueryTask("Tbprw002")==0)then
		LuaSay("�����ܹܣ�������С�£����ǹ�������Ǵ��£����ھ������������㣬������԰��ɵ�֪ʶ�˽��ж��٣�")
		LuaSay("�����ܹܣ�֪��������������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��Ǯ���ܽ���","NO_11")
		AddMenuItem("��100wͭ�ң��ȼ��ﵽ20�������ɽ���","N11_ANSWER")
		AddMenuItem("��100wͭ�Ҿ��ܽ���","NO_11")
		AddMenuItem("�ȼ��ﵽ20���Ϳ��Խ���","NO_11")
	elseif(LuaQueryTask("Tbprw002")==1)then
		LuaSay("�����ܹܣ��������������ɣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���Ӱ��������������ﵽ250,��������","N21_ANSWER")
		AddMenuItem("��־�������","NO_21")
		AddMenuItem("��ͭ�Ҿ�������","NO_21")
		AddMenuItem("������������ɾ�������","NO_21")
	elseif(LuaQueryTask("Tbprw002")==2)then
		LuaSay("�����ܹܣ�����������Ѷȵ����⣬֪���������ļ���ְλ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���ڡ�����������","NO_31")
		AddMenuItem("���ڡ�������Ԫ�ϡ�����","NO_31")
		AddMenuItem("���ڡ�Ⱥ����Ԫ�ϡ�����","NO_31")
		AddMenuItem("���ڡ����������ϡ�����","N31_ANSWER")
	elseif(LuaQueryTask("Tbprw002")==3)then
		LuaSay("�����ܹܣ�����������ɣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����ͭ�Ҹ����ɣ����ɼ���","NO_41")
		AddMenuItem("�ȼ��ﵽ10���󣬰�����ļ�����󣬷��ɼ���","N41_ANSWER")
		AddMenuItem("�����������鸣���켴�ɼ���","NO_41")
		AddMenuItem("�ȼ��ﵽ10���Ϳɼ������","NO_41")
		end
-----------------------------------------------------------------����
elseif(answer=="NO_11")then
	LuaSay("�����ܹܣ�����ɣ���ô�򵥵����ⶼ�������������")
	LuaSetTask("Tbprw002",0)
	UpdateNPCMenu("jindi")
elseif(answer=="N11_ANSWER")then
	if(LuaQueryTask("Tbprw002")<1)then
		LuaSetTask("Tbprw002",1)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*30+level*level*4
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*110+level*level*4
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*270+level*level*4
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*600+level*level*4
		else
			jinyan=level*800+level*level*4
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ���ô�򵥵�����������Ҳûʲôϡ��ģ���������")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_21")then
	LuaSay("�����ܹܣ������ˣ������ٴ�")
	LuaSetTask("Tbprw002",1)
	UpdateNPCMenu("jindi")
elseif(answer=="N21_ANSWER")then
	if(LuaQueryTask("Tbprw002")<2)then
		LuaSetTask("Tbprw002",2)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*30+level*level*4
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*110+level*level*4
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*270+level*level*4
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*600+level*level*4
		else
			jinyan=level*800+level*level*4
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������㻹���������ӵ����������")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_31")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw002",2)
	UpdateNPCMenu("jindi")
elseif(answer=="N31_ANSWER")then
	if(LuaQueryTask("Tbprw002")<3)then
		LuaSetTask("Tbprw002",3)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
					if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*600+level*level*4
					else
						jinyan=level*800+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪������������һ�����⡣")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_41")then
	LuaSay("�����ܹܣ��������ȷʵ�����ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw002",3)
	UpdateNPCMenu("jindi")
elseif(answer=="N41_ANSWER")then
	if(LuaQueryTask("Tbprw002")<99) then
		LuaSetTask("Tbprw002",99)
		LuaSay("�����ܹܣ�������̫�����ˣ���Ȼȫ����֪����")
		LuaGive("coin",2000,"Tbprw002")
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
					if(LuaQuery("level")<=10) then  --С��10��
						jinyan=level*30+level*level*4
					elseif(LuaQuery("level")<=20) then  --10-20
						jinyan=level*110+level*level*4
					elseif(LuaQuery("level")<=30) then	--20-30
						jinyan=level*270+level*level*4
					elseif(LuaQuery("level")<=60) then	--30-60
						jinyan=level*600+level*level*4
					else
						jinyan=level*800+level*level*4
					end
		LuaAddJx("combat_exp",jinyan,"Tbprw002")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)
		LuaPartyRepute(1,0)
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������3000ͭ��@0!",0)
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
end 
---------------------------------------------------ǿʢ֮�������顿
elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==0) then
		LuaSay("�����ܹܣ�@4��Դ��@0��@3Ƚ��@0��@4������Ӫ@0��@3л��@0����һ���󽫣���ȿ�ȥ��̰��ɵ�ǿʢ֮����")
		LuaSetTask("Tbprw2",1)      -------��־�����
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw2")==1) then
		if(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("�����ܹܣ���@4��Դ��@0��@3Ƚ��@0�͵�@4������Ӫ@0��@3л��@0�ɣ�")
		elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("�����ܹܣ�����ȡ����ȡ��һ�룬��ȥ@4������Ӫ@0��@3л��@0�ɣ�")
		elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99 ) then 
			LuaSay("�����ܹܣ�����ȡ����ȡ��һ�룬��ȥ@4��Դ��@0��@3Ƚ��@0�ɣ�")
		else
			LuaSay("�����ܹܣ�������Ӧ��֪��������������ѽݾ��˰ɡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw2jl")			
		end
	end
elseif(answer=="Tbprw2jl")then  -----------------������
	if(LuaQueryTask("Tbprw2")==1) then
		LuaSetTask("Tbprw2",99)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2000+level*level*15
		else
			jinyan=level*3000+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw2")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		LuaDelTask("Tbprw2A")
		LuaDelTask("Tbprw2B")
        UpdateMenu()
		UpdateNPCMenu("bangpaizg")
    end
---------------------------------------------------̽������
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		-------------20----------29
		if(LuaQuery("level")>=20 and LuaQuery("level")<=29)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("�����ܹܣ����ɳ��������Ʋ��ȣ�����Ѱ��ϰ��֮������˵��@4��������@0�и���@3����@0�ģ������м��⣡")
				LuaSay("�����ܹܣ���ȥ̽��̽�֣�ȡ���澭��ظ��ң�")
				LuaSetTask("Tbprw003",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==1)then
				LuaSay("�����ܹܣ��Ͻ�ȥ��@4��������@0��@3����@0��")
			elseif(LuaQueryTask("Tbprw003")==2)then
				LuaSay(LuaQueryStr("name").."��ϰ������ƽ���ͣ�ѭ�򽥽����������湦��")
				LuaSay("�����ܹܣ���֮�����������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		--------------30---------39
		if(LuaQuery("level")>=30 and LuaQuery("level")<=39)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("�����ܹܣ��⿿�����ΰ���Ǿ٣���˵��@4��ˮ�԰�@0�и���@3����@0�ģ���������֮�º��м��⣡")
				LuaSay("�����ܹܣ���ȥ̽��̽�֣�ȡ���澭��ظ��ң�")
				LuaSetTask("Tbprw003",3)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==3)then
				LuaSay("�����ܹܣ��Ͻ�ȥ��@4��ˮ�԰�@0��@3����@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay(LuaQueryStr("name").."��������ʵʩ�������ͷ����������������")
				LuaSay("�����ܹܣ���֮�����������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		---------------40---------49
		if(LuaQuery("level")>=40 and LuaQuery("level")<=49)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("�����ܹܣ���������Խ�����ٵ���սҲ��Խ�࣬ȥ��@4����ؿ�@0��@3��������@0�ֽ�һ�°�!")
				LuaSetTask("Tbprw003",5)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==5)then
				LuaSay("�����ܹܣ��Ͻ�ȥ@4����ؿ�@0��@3��������@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==6)then
				LuaSay(LuaQueryStr("name").."����������������������ּ���ܶ�����")
				LuaSay("�����ܹܣ���֮���������ˣ���ȡ������")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		--------------50----------59
		if(LuaQuery("level")>=50 and LuaQuery("level")<=59)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("�����ܹܣ������������������������������Ŀ죬˥��Ҳ�찡��ȥ��@4��ɽ��@0��@3����@0���һ�°ɣ�")
					LuaSetTask("Tbprw003",7)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==7)then
				LuaSay("�����ܹܣ��Ͻ�ȥ��@4��ɽ��@0��@3����@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==8)then
				LuaSay(LuaQueryStr("name").."�������䲻��Ȩ����������ȴ���Ŷ԰��յ����£�Ҫ����ΪӪ����")
				LuaSay("�����ܹܣ���֮���������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		------------------------60����
		if(LuaQuery("level")>=60)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("�����ܹܣ����ڰ���ҩƷ�����൱��ȱ������ȥ@4��������@0��@3ҩƷ����@0���ﹺ��һЩҩ�")
				LuaSay("�����ܹܣ�����@2��ɢ����Ҷɢ��10��@0��ظ�����ʱ@2�����@0Ŷ")
				LuaSetTask("Tbprw003",9)
				LuaSetTask("Tbprw003time",GetCurrentTime())
				UpdateTopSay("��ҩ�����˴�����ҩƷ")
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(LuaQueryTask("Tbprw003")==9)then
				if(LuaItemCount("o_drug_hp1")>=10 and LuaItemCount("o_drug_hp2")>=10)then
					local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
					if(tgtime<=300)then
						LuaSay("�����ܹܣ�������ֵ�ñ����ȥ�콱���ɣ�")
						AddMenuItem("�������","")
						AddMenuItem("��ȡ����","Tbprw003jl")
					else
						LuaSay("�����ܹܣ��Ѿ�����@2�����@0�ˣ������ٶ�@�������������ɣ�")
						LuaSetTask("Tbprw003",0)
						DelItem("o_drug_hp1",10)
						DelItem("o_drug_hp2",10)
					end
				else
					LuaSay("�����ܹܣ��㻹û��@2��ɢ����Ҷɢ��10��@0�أ���ȥ@4��������@0��@3ҩƷ����@0����ɣ�")
				end
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
	else
		LuaSay("�����ܹܣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaSetTask("Tbprw003",0)
		DoTalk("Tbprw003")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
---------------------------------------------------------------------------������
	elseif(answer=="Tbprw003jl")then
		if(LuaQueryTask("faction920")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction920",2)
		end
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2000+level*level*15
		else
			jinyan=level*3000+level*level*15
		end
		if(LuaQuery("level")>=20 and LuaQuery("level")<=59)then
			LuaAddJx("combat_exp",jinyan,"Tbprw003")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			LuaPartyRepute(1,0)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21������@0!",0)
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
		elseif(LuaQuery("level")>=60)then
			local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
			if(tgtime<=300)then
				if(LuaItemCount("o_drug_hp1")>=5 and LuaItemCount("o_drug_hp2")>=5)then
					LuaAddJx("combat_exp",jinyan,"Tbprw003")
					ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
					LuaGive("coin",1000,"Tbprw003")
					LuaPartyRepute(1,0)
					LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21������@0!",0)
					LuaAddAchievementSchedule("PartyTask_num",1)	
					LuaAddAchievementSchedule("PartyRepute_mun",1)
					DelItem("o_drug_hp1",10)
					DelItem("o_drug_hp2",10)
				end
			end
		end
		LuaSetTask("Tbprw003",99)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
---------------------------------------------�޾�Ȥζ��ÿ�ա�
elseif(answer=="Tbprw005")then
	if(LuaQueryStrTask("Tbprw005day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw005")==0)then
			LuaSay("�����ܹܣ���Ծһ�����գ���������Ȥ���Խת�俼��������̰ɣ�������Ŷ")
			LuaSay("���⣺һͷ��ţ��һͷĸţ���������֣�")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("��ĸţ","NO_01")
			AddMenuItem("��ͷţ","N01_ANSWER")
			AddMenuItem("ţ��ͷ","NO_01")
			AddMenuItem("����ţ","NO_01")
		elseif(LuaQueryTask("Tbprw005")==1)then
			LuaSay("���⣺ʲô��������ֻת���ߣ�")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("���г�������","NO_02")
			AddMenuItem("�𳵵�����","NO_02")
			AddMenuItem("�糵������","N02_ANSWER")
			AddMenuItem("����������","NO_02")
		elseif(LuaQueryTask("Tbprw005")==2)then
			LuaSay("���⣺һ�������ʲô�ط���粻��ȥ��")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("����������","NO_03")
			AddMenuItem("��������","NO_03")
			AddMenuItem("����ǽ����","N03_ANSWER")
			AddMenuItem("���ڴ�̨��","NO_03")
		elseif(LuaQueryTask("Tbprw005")==3)then
			LuaSay("���⣺ ��Kiss����ʲô��? ")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("����","NO_04")
			AddMenuItem("���ݴ�","NO_04")
			AddMenuItem("����","NO_04")
			AddMenuItem("����","N04_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==4)then
			LuaSay("���棺Т��Ҫϰ�ģ�������ȥ�����˱����ģ��Ӹ��˶�����������Ҫ�ߣ���˼ֻһ�ģ���ŮԸ����")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("������β�����","N05_ANSWER")
			AddMenuItem("������β�����","NO_05")
			AddMenuItem("�������ܲ�����","NO_05")
			AddMenuItem("������β���˼","NO_05")
		elseif(LuaQueryTask("Tbprw005")==5)then
			LuaSay("���棺���һ���񲻼���һ�����ڰ���ǣ��˫ذ�����Ա�վ��ˮ�����������죬һ���б������㣬�����������������ľ��ʮ����Ծ�������϶������")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("����û����ž�","NO_06")
			AddMenuItem("������ʧȥ��ž�","NO_06")
			AddMenuItem("�Ҳ���û����ž�","N06_ANSWER")
			AddMenuItem("�Ҳ���û����Ŷ�","NO_06")
		elseif(LuaQueryTask("Tbprw005")==6)then
			LuaSay("���棺�ɶ��˻�����ţ�ѧ��������Ʋ�룬ż������һ����")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("������","NO_07")
			AddMenuItem("������","NO_07")
			AddMenuItem("�Ұ���","NO_07")
			AddMenuItem("�Ұ���","N07_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==7)then
			LuaSay("���棺������������֪�������棬���ڶ���վ������ȥ��ʳ���˹���������������Ҫ�ߣ�����Ҳ����")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("�������������","NO_08")
			AddMenuItem("��������������","NO_08")
			AddMenuItem("��������������","NO_08")
			AddMenuItem("��������������","N08_ANSWER")
		elseif(LuaQueryTask("Tbprw005")==99)then
			LuaSay("�����ܹܣ�����������Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("�����ܹܣ��µ�һ�죬�µĿ�ʼ������Ŭ���ɣ�")
		LuaSetTask("Tbprw005day",GetCurrentDay())
		LuaSetTask("Tbprw005",0)
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
--------------------------------	����
elseif(answer=="NO_01")then
		LuaSay("�����ܹܣ�����ɣ���ô�򵥵����ⶼ�������������")
		LuaSetTask("Tbprw005",0)
elseif(answer=="N01_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<1)then
		LuaSetTask("Tbprw005",1)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*20+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*80+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*200+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*350+level*level*2
		else
			jinyan=level*450+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ���ô�򵥵�����������Ҳûʲôϡ��ģ���������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_02")then
	LuaSay("�����ܹܣ������ˣ������ٴ�")
	LuaSetTask("Tbprw005",1)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N02_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<2)then
		LuaSetTask("Tbprw005",2)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*210+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*360+level*level*2
		else
			jinyan=level*460+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������㻹���������ӵ����������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_03")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��.")
	LuaSetTask("Tbprw005",2)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N03_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<3)then
		LuaSetTask("Tbprw005",3)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*220+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*370+level*level*2
		else
			jinyan=level*470+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪������������һ������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_04")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",3)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N04_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<4)then
		LuaSetTask("Tbprw005",4)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*230+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*380+level*level*2
		else
			jinyan=level*480+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪�����������㼸������ɡ�")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_05")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",4)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N05_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<5)then
		LuaSetTask("Tbprw005",5)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*390+level*level*2
		else
			jinyan=level*490+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="NO_06")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",5)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N06_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<6)then
		LuaSetTask("Tbprw005",6)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*400+level*level*2
		else
			jinyan=level*500+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_07")then
	LuaSay("�����ܹܣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",6)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N07_ANSWER")then
	local i=GetPartyCurrentRepute()
	if(LuaQueryTask("Tbprw005")<7)then
		LuaSetTask("Tbprw005",7)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		local jinyan
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*410+level*level*2
		else
			jinyan=level*510+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("�����ܹܣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_08")then
	LuaSay("�����ܹܣ��������ȷʵ�����ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",7)
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
elseif(answer=="N08_ANSWER")then
	if(LuaQueryTask("Tbprw005")<99) then
		if(LuaQueryTask("faction921")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction921",2)
		end
        LuaSetTask("Tbprw005",99)
		LuaSay("�����ܹܣ�������̫�����ˣ���Ȼȫ����֪����")
		LuaGive("coin",3000,"Tbprw005")
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*25+level*level*2
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*85+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*250+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*410+level*level*2
		else
			jinyan=level*510+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaPartyRepute(1,0)
		AddMoneyToPartyBank(2000)
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21������,���2000ͭ��@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end 
---------------------------------�������ڡ�ѭ����
elseif(answer=="Tbprw12") then	
	if(LuaQueryTask("Tbprw12")==0) then
		LuaSay("�����ܹܣ�һ������Ҫ�뷢չΪ@3�������@0����Ҫ����ʲô���ǰ��ɵĺ��ĳ�Ա�������ǡ�")
		LuaSay("�����ܹܣ���ˣ���Ҫ���ñ����Ǻ���Ҫ�ġ�")
		LuaSetTask("Tbprw12_Taskday",GetCurrentDay())
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then
			LuaSay("�����ܹܣ�ȥ��@4�����@0��@3BOSS���а��@0���ϵ�@3ħ��@0�������ҡ�")
			LuaSetTask("Tbprw12_1",1)
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			LuaSay("�����ܹܣ�ȥ��@4��ˮ�ӵ�@0��@3BOSS����@0���ϵ�@3�ߵ�@0�������ҡ�")
			LuaSetTask("Tbprw12_2",1)
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			LuaSay("�����ܹܣ�ȥ��@4�׹Ƕ��@0��@3BOSS����ħ��@0���ϵ�@3���޾�˿@0�������ҡ�")
			LuaSetTask("Tbprw12_3",1)
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			LuaSay("�����ܹܣ�ȥ��@4̫�йȵ�@0��@3BOSS������@0���ϵ�@3�����@0�������ҡ�")
			LuaSetTask("Tbprw12_4",1)
		elseif(LuaQuery("level")>=60) then
			LuaSay("�����ܹܣ�ȥ��@4������Ѩ@0��@3BOSS���꽫��@0���ϵ�@3����ӡ@0�������ҡ�")
			LuaSetTask("Tbprw12_5",1)
		end
		LuaSetTask("Tbprw12",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw12")==1) then
		if(GetCurrentDay()~=LuaQueryStrTask("Tbprw12_Taskday")) then
			LuaSetTask("Tbprw12",0)
			LuaSetTask("Tbprw12_cs",0)
			if(LuaQueryTask("Tbprw12_1")==1) then
				LuaSetTask("Tbprw12_1",0)
				DelItem("o_mission408",1)
			elseif(LuaQueryTask("Tbprw12_2")==1) then
				LuaSetTask("Tbprw12_2",0)
				DelItem("o_mission409",1)
			elseif(LuaQueryTask("Tbprw12_3")==1) then
				LuaSetTask("Tbprw12_3",0)
				DelItem("o_mission410",1)
			elseif(LuaQueryTask("Tbprw12_4")==1) then
				LuaSetTask("Tbprw12_4",0)
				DelItem("o_mission411",1)
			elseif(LuaQueryTask("Tbprw12_5")==1) then
				LuaSetTask("Tbprw12_5",0)
				DelItem("o_mission412",1)
			end
			LuaSay("�����ܹܣ�������@2������ǰ@0������@3�������ڡ�ѭ����@0��δ��ɣ������Զ�ɾ������")
			LuaSay("�����ܹܣ������ڿ��Խ�����@3�������ڡ�ѭ����@0�ˣ�")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
			DoTalk("Tbprw12")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")<1) then
			LuaSay("�����ܹܣ���ȥ@4�����@0��@5BOSS���а��@0ɱ�˰�@3ħ��@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")<1) then
			LuaSay("�����ܹܣ���ȥ@4��ˮ�ӵ�@0��@5BOSS����@0ɱ�˰�@3�ߵ�@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")<1) then
			LuaSay("�����ܹܣ���ȥ@4�׹Ƕ��@0��@5BOSS����ħ��@0ɱ�˰�@3���޾�˿@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")<1) then
			LuaSay("�����ܹܣ���ȥ@4̫�йȵ�@0��@5BOSS������@0ɱ�˰�@3�����@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")<1) then
			LuaSay("�����ܹܣ���ȥ@4������Ѩ@0��@5BOSS���꽫��@0ɱ�˰�@3����ӡ@0�������ҡ�")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
			LuaSay("�����ܹܣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_1jl")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
			LuaSay("�����ܹܣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_2jl")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
			LuaSay("�����ܹܣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_3jl")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
			LuaSay("�����ܹܣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_4jl")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
			LuaSay("�����ܹܣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_5jl")
		end
	end
elseif(answer=="Tbprw12_1jl") then
	if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_1",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_1")
		DelItem("o_mission408",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSay("�����ܹܣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("�����ܹܣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_1e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_2jl") then
	if(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_2",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_2")
		DelItem("o_mission409",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSay("�����ܹܣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("�����ܹܣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
			LuaSetTask("Tbprw12_2e",1) -------���⽱���жϲ���
			AddMenuItem("��ȡ���⽱��","")
			AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_3jl") then
	if(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_3",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_3")
		DelItem("o_mission410",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSay("�����ܹܣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("�����ܹܣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_3e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_4jl") then
	if(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_4",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_4")
		DelItem("o_mission411",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSay("�����ܹܣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("�����ܹܣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@3�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_4e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_5jl") then
	if(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
		LuaSetTask("Tbprw12",99)
		LuaSetTask("Tbprw12_5",99)
		LuaDelTask("Tbprw12")
		LuaDelTask("Tbprw12_5")
		DelItem("o_mission412",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSay("�����ܹܣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("�����ܹܣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@3�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_5e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("�����ܹܣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw12_ejl") then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2800+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
	if(LuaQueryTask("Tbprw12_1e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaDelTask("Tbprw12_1e")
	elseif(LuaQueryTask("Tbprw12_2e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaDelTask("Tbprw12_2e")
	elseif(LuaQueryTask("Tbprw12_3e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaDelTask("Tbprw12_3e")
	elseif(LuaQueryTask("Tbprw12_4e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaDelTask("Tbprw12_4e")
	elseif(LuaQueryTask("Tbprw12_5e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",4000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaDelTask("Tbprw12_5e")
	end
-------------------------------------------------------�����漱��ѭ����
elseif(answer=="Tbprw3") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw3_Taskday")) then
		LuaSetTask("Tbprw3_cs",0)
	end
	if(LuaQueryTask("Tbprw3_cs")<5)then
		if(LuaQueryTask("Tbprw3")==0) then
			LuaSay("�����ܹܣ�Ӣ���������ˡ�")
			LuaSay("�����ܹܣ�����@4��Ӫǰ��@0���ִ���@3����@0����ȥ����@320������@0�Զ�����г��")
			LuaSetTask("Tbprw3",1)      -------��־�����
			LuaSetTask("task_kill/mon_020/Tbprw3",1)--------����ɱ�ּ�����
			UpdateTopSay("ȥ��Ӫǰ��ɱ20������")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")>=21 ) then
			LuaSay("�����ܹܣ���лӢ��Ϊ�������ǽ��ѣ�ʵ�˹���֮�Ұ���")
			AddMenuItem("@7�������","")
			LuaAddTask("Tbprw3_cs",1)---------����������ɴ���
			AddMenuItem("��ȡ����","Tbprw3jl")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")<21 ) then
			a=LuaQueryTask("task_kill/mon_020/Tbprw3")-1
			LuaSay("�����ܹܣ����ɱ��@3"..a.."������@0����ȥ@4��Ӫǰ��@0����ɱ����ɣ�")
		end
	elseif(LuaQueryTask("Tbprw3_cs")>=5)then
		LuaSay("�����ܹܣ�������Ѿ��������@3�����漱��ѭ����@0�����ˣ������������ɣ�")
	end
elseif(answer=="Tbprw3jl")then  -----------------������
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw3")==1) then
		if(LuaQueryTask("task_kill/mon_020/Tbprw3")>=21) then
			if(LuaQueryTask("faction911")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction911",2)
			end
			LuaSetTask("Tbprw3",99)
			LuaSetTask("Tbprw3_Taskday",GetCurrentDay())
			LuaDelTask("Tbprw3")
			LuaDelTask("task_kill/mon_020/Tbprw3")
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=level*150+level*level*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=level*600+level*level*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=level*1200+level*level*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=level*2500+level*level*15
			else
				jinyan=level*3200+level*level*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbprw3")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
--------------------------------------------------ְ�����ڡ�ѭ����
elseif(answer=="Tbprw4") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw4_Taskday")) then
		LuaSetTask("Tbprw4_cs",0)
	end
	if(LuaQueryTask("Tbprw4_cs")<5)then
		if(LuaQueryTask("Tbprw4")==0) then
			LuaSay("�����ܹܣ�������������У���������ŭ��")
			if(LuaQuery("level")<=35) then
				local r = LuaRandom(2)                       --------��������
				if(r==0)then
					LuaSay("�����ܹܣ�@4μˮ֮��@0��@3����@0���У���ȥ��ɱ@325ֻ@0�Կ�µ��ġ�")
					LuaSay("�����ܹܣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_0",1)
					LuaSetTask("task_kill/mon_028/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��μˮ֮������25ֻ����")
				elseif(r==1)then
					LuaSay("�����ܹܣ���ȥ@4��������@0����@325ֻ��Ҷ��@0��οһ�¹µ��İɣ�")
					LuaSay("�����ܹܣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_1",1)
					LuaSetTask("task_kill/mon_030/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��������������25ֻ��Ҷ��")
				end
			elseif(LuaQuery("level")>35) then
				local r = LuaRandom(3)
				if(r==0)then
					LuaSay("�����ܹܣ���ȥ@4ʳ�˹�@0����@325ֻ����@0��οһ�¹µ��İɣ�")
					LuaSay("�����ܹܣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_2",1)
					LuaSetTask("task_kill/mon_032/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				elseif(r==1)then
					LuaSay("�����ܹܣ���ȥ@4�׹Ƕ�@0����@325ֻʬ��@0��οһ�¹µ��İɣ�")
					LuaSay("�����ܹܣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_3",1)
					LuaSetTask("task_kill/mon_033/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("���׹Ƕ�����25ֻʬ��")
				elseif(r==2)then
					LuaSay("�����ܹܣ���ȥ@4ʳ�˹�@0����@325ֻ����@0��οһ�¹µ��İɣ�")
					LuaSay("�����ܹܣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_4",1)
					LuaSetTask("task_kill/mon_031/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				end
			end
			LuaSetTask("Tbprw4",1)
			local time=GetCurrentTime()
			LuaSetTask("Tbprw4time",time)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw4")==1) then
			if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw4time"))
				if(shijiancha<=600) then
					LuaSay("�����ܹܣ���ô������������ˣ�Ӣ�۵��ٶ���죬�ҹ���û�п����ˡ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw4jl_1")
				elseif(shijiancha>600) then
					LuaSay("�����ܹܣ���˵�����������,�����ٶ�̫����,���¿�û��˫�������ˡ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw4jl_2")
				end
			else
				if(LuaQueryTask("Tbprw4_0")==1) then
					LuaSay("�����ܹܣ�Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_028/Tbprw4")-1).."������@0����ȥ@4μˮ֮��@0����ɱ�ɣ�")
					UpdateTopSay("��μˮ֮������25ֻ����")
				elseif(LuaQueryTask("Tbprw4_1")==1) then
					LuaSay("�����ܹܣ�Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_030/Tbprw4")-1).."����Ҷ��@0����ȥ@4��������@0����ɱ�ɣ�")
					UpdateTopSay("��������������25ֻ��Ҷ��")
				elseif(LuaQueryTask("Tbprw4_2")==1) then
					LuaSay("�����ܹܣ�Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_032/Tbprw4")-1).."������@0����ȥ@4ʳ�˹�@0����ɱ�ɣ�")
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				elseif(LuaQueryTask("Tbprw4_3")==1) then
					LuaSay("�����ܹܣ�Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_033/Tbprw4")-1).."��ʬ��@0����ȥ@4�׹Ƕ�@0����ɱ�ɣ�")
					UpdateTopSay("���׹Ƕ�����25ֻʬ��")
				elseif(LuaQueryTask("Tbprw4_4")==1) then
					LuaSay("�����ܹܣ�Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_031/Tbprw4")-1 ).."������@0����ȥ@4ʳ�˹�@0����ɱ�ɣ�")
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				end
			end
		end
	elseif(LuaQueryTask("Tbprw4_cs")>=5)then
		LuaSay("�����ܹܣ�������Ѿ��������@3ְ�����ڡ�ѭ����@0�����ˣ������������ɣ�")
	end
elseif(answer=="Tbprw4jl_1")then  -----------------������
	if(LuaQueryTask("Tbprw4")==1) then
		if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
			LuaAddTask("Tbprw4_cs",1)---------����������ɴ���
			LuaSetTask("Tbprw4_Taskday",GetCurrentDay())
			LuaSetTask("Tbprw4",99)
			LuaDelTask("Tbprw4")
			LuaDelTask("Tbprw4time")
			if(LuaQueryTask("Tbprw4_0")==1) then
				LuaDelTask("task_kill/mon_028/Tbprw4")
				LuaDelTask("Tbprw4_0")
			elseif(LuaQueryTask("Tbprw4_1")==1) then
				LuaDelTask("task_kill/mon_030/Tbprw4")
				LuaDelTask("Tbprw4_1")
			elseif(LuaQueryTask("Tbprw4_2")==1) then
				LuaDelTask("task_kill/mon_032/Tbprw4")
				LuaDelTask("Tbprw4_2")
			elseif(LuaQueryTask("Tbprw4_3")==1) then
				LuaDelTask("task_kill/mon_033/Tbprw4")
				LuaDelTask("Tbprw4_3")
			elseif(LuaQueryTask("Tbprw4_4")==1) then
				LuaDelTask("task_kill/mon_031/Tbprw4")
				LuaDelTask("Tbprw4_4")
			end
			if(LuaQueryTask("faction913")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction913",2)
			end
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			LuaGive("coin",800,"Tbprw4")
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
elseif(answer=="Tbprw4jl_2")then  -----------------������
	if(LuaQueryTask("Tbprw4")==1) then
		if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
			LuaAddTask("Tbprw4_cs",1)---------����������ɴ���
			LuaSetTask("Tbprw4_Taskday",GetCurrentDay())
			LuaSetTask("Tbprw4",99)
			LuaDelTask("Tbprw4")
			LuaDelTask("Tbprw4time")
			if(LuaQueryTask("Tbprw4_0")==1) then
				LuaDelTask("task_kill/mon_028/Tbprw4")
				LuaDelTask("Tbprw4_0")
			elseif(LuaQueryTask("Tbprw4_1")==1) then
				LuaDelTask("task_kill/mon_030/Tbprw4")
				LuaDelTask("Tbprw4_1")
			elseif(LuaQueryTask("Tbprw4_2")==1) then
				LuaDelTask("task_kill/mon_032/Tbprw4")
				LuaDelTask("Tbprw4_2")
			elseif(LuaQueryTask("Tbprw4_3")==1) then
				LuaDelTask("task_kill/mon_033/Tbprw4")
				LuaDelTask("Tbprw4_3")
			elseif(LuaQueryTask("Tbprw4_4")==1) then
				LuaDelTask("task_kill/mon_031/Tbprw4")
				LuaDelTask("Tbprw4_4")
			end
			if(LuaQueryTask("faction913")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction913",2)
			end
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*80+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*700+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1500+level*level*15
		else
			jinyan=level*2100+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw4")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
-------------------------------------------------�ռ�צ�ӡ�ѭ����
elseif(answer=="Tbprw5") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw5_Taskday")) then
		LuaSetTask("Tbprw5_cs",0)
	end
	if(LuaQueryTask("Tbprw5_cs")<10)then
		if(LuaQueryTask("Tbprw5")==0) then
			LuaSay("�����ܹܣ���˵@4����ؿ�@0��һ�ֹ����@3�Ի�@0��")
			LuaSay("�����ܹܣ����ڼ���@3�Ի���צ��@0����һ��������Ӣ�ۿ�ȥ�ռ�@310���Ի���צ��@0���������ҡ�")
			LuaSetTask("Tbprw5",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw5")==1) then
			if(LuaItemCount("o_mission400")>=10) then -------o_mission400    �Ի���צ��
				if(LuaQueryTask("Tbprw5_cs")<5) then
					LuaSay("�����ܹܣ����һ����һ���ռ���@350���Ի���צ��@0�����ж��⽱��Ŷ��")
				elseif(LuaQueryTask("Tbprw5_cs")>=5 and LuaQueryTask("Tbprw5_cs")<10) then
					LuaSay("�����ܹܣ����һ����һ���ռ���@3100���Ի���צ��@0���и���ḻ�Ķ��⽱��Ŷ��")
				end
				AddMenuItem("@7�������","")
				LuaAddTask("Tbprw5_cs",1)---------����������ɴ���
				AddMenuItem("��ȡ����","Tbprw5jl")
			elseif(LuaItemCount("o_mission400")<10) then
				LuaSay("�����ܹܣ��㻹û���ռ���@310���Ի���צ��@0����ȥ@4����ؿ�@0ɱ@3�Ի�@0�ɡ�")
				UpdateTopSay("�ռ�10���Ի���צ���������Ұɣ�")
			end
		end
	elseif(LuaQueryTask("Tbprw5_cs")>=10)then
		LuaSay("�����ܹܣ�������Ѿ�����ʮ��@3�ռ�צ�ӡ�ѭ����@0�����ˣ������������ɣ�")
	end
elseif(answer=="Tbprw5jl")then  -----------------������
	if(LuaQueryTask("Tbprw5")==1) then
		if(LuaItemCount("o_mission400")>=10) then
			if(LuaQueryTask("faction915")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction915",2)
			end
			LuaSetTask("Tbprw5",99)
			LuaSetTask("Tbprw5_Taskday",GetCurrentDay())
			DelItem("o_mission400",10)
			LuaDelTask("Tbprw5")
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
	end
	if(LuaQueryTask("Tbprw5_cs")==5)then
		LuaSay("�����ܹܣ�Ӣ�۽����Ѿ��ռ���@350���Ի���צ��@0��")
		AddMenuItem("��ȡ���⽱��","")
		AddMenuItem("��ȡ���⽱��","Tbprw5jl_e1")
	elseif(LuaQueryTask("Tbprw5_cs")==10)then
		LuaSay("�����ܹܣ�Ӣ�۽����Ѿ��ռ���@3100���Ի���צ��@0��")
		AddMenuItem("��ȡ���⽱��","")
		AddMenuItem("��ȡ���⽱��","Tbprw5jl_e2")
	end
elseif(answer=="Tbprw5jl_e1")then  -----------------������
	if(LuaQueryTask("Tbprw5_cs")==5) then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw5jl_e2")then  -----------------������
	if(LuaQueryTask("Tbprw5_cs")==10) then
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw5")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
--------------------------------------------------
elseif(answer=="Tbprw6") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw6")==0) then
		LuaSay("�����ܹܣ��������ʢ�У�@4������@0��@4������Ĺ@0�Ѿ�������@3���@0��@3����ʬ@0��")
		LuaSay("�����ܹܣ���Ӣ����ȥ��ɱ@4������@0��@315�����@0��@4������Ĺ@0��@315������ʬ@0��")
		LuaSetTask("Tbprw6",1)
		LuaSetTask("task_kill/mon_042/Tbprw6",1)   -----------����ɱ�ּ�����
		LuaSetTask("task_kill/mon_044/Tbprw6",1)   -----------����ɱ�ּ�����
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			LuaSay("�����ܹܣ���лӢ�ۣ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw6jl")
		else
			local a1=LuaQueryTask("task_kill/mon_042/Tbprw6")-1
			local a2=LuaQueryTask("task_kill/mon_044/Tbprw6")-1
			if(a1<15 and a2<15) then
				LuaSay("�����ܹܣ���Ҫ�����ˣ���@4������@0��@315�����@0��@4������Ĺ@0��@315������ʬ@0����ûɱ����")
				UpdateTopSay("��������͵�����Ĺ�ֱ��ɱ15������15������ʬ")
			elseif(a1>=15 and a2<15) then
				LuaSay("�����ܹܣ�@3���@0�Ѿ�ɱ���ˣ���@3����ʬ@0��ɱ��"..a2.."��������ȥ@4������Ĺ@0ɱ@3����ʬ@0�ɡ�")
			elseif(a2>=15 and a1<15) then
				LuaSay("�����ܹܣ�@3����ʬ@0�Ѿ�ɱ���ˣ���@3���@0��������"..a1.."��������ȥ@4������@0����@3���@0�ɡ�")
			end
		end
	end
elseif(answer=="Tbprw6jl")then  -----------------������
	if(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			if(LuaQueryTask("faction917")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction917",2)
			end
			LuaSetTask("Tbprw6",99)
			LuaDelTask("Tbprw6")
			LuaDelTask("task_kill/mon_042/Tbprw6")
			LuaDelTask("task_kill/mon_044/Tbprw6")
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*600+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*1200+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*2500+level*level*15
		else
			jinyan=level*3200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw6")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
			UpdateMenu() 
			UpdateNPCMenu("bangpaizg")
		end
	end
--------------------------------------------------��ҡֱ�ϡ�ѭ����
elseif(answer=="Tbprw7") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw7_Taskday")) then
		LuaSetTask("Tbprw7_cs",0)
	end
	if(LuaQueryTask("Tbprw7_cs")<=30) then
		if(LuaQueryTask("Tbprw7")==0) then
			LuaSay("�����ܹܣ������Ѿ�@3"..LuaQuery("level").."��@0�ˣ������ڵİ��ɵȼ���@3"..LuaPartyLevel().."@0�������������Է��Ÿ����ˡ�")
			LuaSay("�����ܹܣ��������������⻼��������Ҫ���Ͱ�Ḩ���԰������ҡ�")
			LuaSay("�����ܹܣ����ٵ�@4��ս��@0��ɱ@335���ʱ�����@0���ҽ�����ܷ���@3�������������͸��˽���@0Ŷ��")
			LuaSetTask("Tbprw7",1)
			LuaSetTask("task_kill/mon_052/Tbprw7",1)   -----------����ɱ�ּ�����
			UpdateTopSay("����ս��ɱ35���ʱ������������Ұ�")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw7")==1) then
			if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36 ) then
				LuaSay("�����ܹܣ���лӢ��Ϊ���Ҿ��ľ�����")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tbprw7jl")
			elseif(LuaQueryTask("task_kill/mon_052/Tbprw7") <36 ) then
				LuaSay("�����ܹܣ��㻹û��ɱ��@235���ʱ�����@0����@4��ս��@0����ȥɱ�ɣ�")
			end
		end
	else
		LuaSay("�����ܹܣ�ÿ��@5��ҡֱ��@0����ֻ�����30��,���Ѿ�������30�Σ�����������")
	end
elseif(answer=="Tbprw7jl")then  -----------------������
	if(LuaQueryTask("Tbprw7")==1) then
		if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36) then
			if(LuaQueryTask("faction919")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction919",2)
			end
			LuaAddTask("Tbprw7_cs",1)---------����������ɴ���  30�κ������
			LuaDelTask("Tbprw7")
			LuaDelTask("task_kill/mon_052/Tbprw7")
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=level*150+level*level*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=level*600+level*level*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=level*1200+level*level*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=level*2500+level*level*15
			else
				jinyan=level*3200+level*level*15
			end
			LuaSay("�㵱ǰ���@2��ҡֱ�ϡ�ѭ����@0����@3"..LuaQueryTask("Tbprw7_cs").."��@0")
			if(LuaQueryTask("Tbprw7_cs")<=30) then
				LuaAddJx("combat_exp",jinyan,"Tbprw7")
				LuaSetTask("Tbprw7_Taskday",GetCurrentDay())
				ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
				AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyTask_num",1)	
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
			end
			UpdateMenu() 
			UpdateNPCMenu("bangpaizg")
		end
	end			
--------------------------------------------------�������ʡ�ÿ�ա�
elseif(answer=="Tbprw8") then
	if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw8")==0) then
		LuaSay("�����ܹܣ�����񽨿��Ǹ漱��ս�³Խ���")
		LuaSay("�����ܹܣ�ǰ������˵���ʽ�ȱ�������ٰ�������@3ս������@0����@4������Ӫ@0��@3л��@0����@4��Ӫǰ��@0��@3л��@0����")
		LuaSetTask("Tbprw8",1)
		LuaGive("o_mission401",2)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		UpdateTopSay("��ս����������������������ڴ��;�Ӫǰ�ڵ�л������")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("�����ܹܣ�������ô��û������@3ս������@0����@4������Ӫ@0��@3л��@0����@4��Ӫǰ��@0��@3л��@0���")
			LuaSay("�����ܹܣ�ս�¿̲��ݻ������¿�����̰ɡ�")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("�����ܹܣ�������ôֻ��@3ս������@0����@4������Ӫ@0��@3л��@0������")
			LuaSay("�����ܹܣ���ȥ������һ��@3ս������@0����@4��Ӫǰ��@0��@3л��@0���")
		elseif(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==1)then
			LuaSay("�����ܹܣ�������ôֻ��һ��@3ս������@0����@4��Ӫǰ��@0��@3л��@0������")
			LuaSay("�����ܹܣ���ȥ������һ��@3ս������@0����@4������Ӫ@0��@3л��@0���")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			LuaSay("�����ܹܣ��������ü�����лӢ�۹��Ĺ���ս�£�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw8jl")
		end
	elseif(LuaQueryTask("Tbprw8")==99) then
		LuaSay("�����ܹܣ������@3�������ʡ�ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
	end
else
	LuaSay("�����ܹܣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	DoTalk("Tbprw8")
	UpdateMenu()
	UpdateNPCMenu("bangpaizg")
end
elseif(answer=="Tbprw8jl")then  -----------------������
	if(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			if(LuaQueryTask("faction912")==1)then
				LuaSay("��ʾ����������ھŻ����")
				LuaSetTask("faction912",2)
			end
			LuaSetTask("Tbprw8",99)
			LuaSetTask("Tbprw8A",99)
			LuaSetTask("Tbprw8B",99)
			local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw8")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		end
    end
----------------------------------------------------�������ʡ�ÿ�ա�
elseif(answer=="Tbprw9") then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9")==0) then
			LuaSay("�����ܹܣ����������Ҫ�������ʡ�")
			local r=LuaRandom(4)
			if(r==0) then
				LuaSay("�����ܹܣ�@4����@0��@3��������@0�����ǽ����ķ����ṩ�̡�")
				LuaSay("�����ܹܣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3�������÷���@0�����ҡ�")
				LuaSetTask("Tbprw9_0",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==1) then
				LuaSay("�����ܹܣ�@4����@0��@3��������@0���ҽ����������ṩ�̡�")
				LuaSay("�����ܹܣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3������������@0�����ҡ�")
				LuaSetTask("Tbprw9_1",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==2) then
				LuaSay("�����ܹܣ�@4����@0��@3��Ʒ����@0���ҽ�������Ʒ�ṩ�̡�")
				LuaSay("�����ܹܣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3����������Ʒ@0�����ҡ�")
				LuaSetTask("Tbprw9_2",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			elseif(r==3) then
				LuaSay("�����ܹܣ�@4����@0��@3ҩƷ����@0���ҽ�����ҩƷ�ṩ�̡�")
				LuaSay("�����ܹܣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3��������ҩƷ@0�����ҡ�")
				LuaSetTask("Tbprw9_3",1)
				UpdateMenu()
				UpdateNPCMenu("bangpaizg")
			end
			LuaSetTask("Tbprw9",1)
			LuaSetTask("Tbprw9_Taskday",GetCurrentDay())
			time=GetCurrentTime()
			LuaSetTask("Tbprw9time",time)
		elseif(LuaQueryTask("Tbprw9")==1) then
			if(LuaQueryTask("Tbprw9_0")==1) then
				LuaSay("�����ܹܣ�����ô��ûȥ@4����@0��@3��������@0����@3�������÷���@0")
				LuaSay("�����ܹܣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_1")==1) then
				LuaSay("�����ܹܣ�����ô��ûȥ@4����@0��@3��������@0����@3������������@0")
				LuaSay("�����ܹܣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_2")==1) then
				LuaSay("�����ܹܣ�����ô��ûȥ@4����@0��@3��Ʒ����@0����@3����������Ʒ@0")
				LuaSay("�����ܹܣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_3")==1) then
				LuaSay("�����ܹܣ�����ô��ûȥ@4����@0��@3ҩƷ����@0����@3��������ҩƷ@0")
				LuaSay("�����ܹܣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			end
		elseif(LuaQueryTask("Tbprw9")==2) then
			if(LuaItemCount("o_mission402")>=1 or LuaItemCount("o_mission403")>=1 or LuaItemCount("o_mission404")>=1 or LuaItemCount("o_mission405")>=1 )then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw9time"))
				if(shijiancha<=300) then
					LuaSay("�����ܹܣ���лӢ�ۣ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw9jl")
				elseif(shijiancha>300) then
					LuaSay("�����ܹܣ����Ѿ�����������ʱ�䣬����ʧ�ܣ�")
					if(LuaQueryTask("Tbprw9")==2) then
						if(LuaQueryTask("Tbprw9_0")==99) then					
							DelItem("o_mission402",1)
							LuaDelTask("Tbprw9_0")
						elseif(LuaQueryTask("Tbprw9_1")==99) then
							DelItem("o_mission403",1)
						elseif(LuaQueryTask("Tbprw9_2")==99) then
							DelItem("o_mission404",1)						
						elseif(LuaQueryTask("Tbprw9_3")==99) then
							DelItem("o_mission405",1)
						end
						LuaSetTask("Tbprw9",99)
						UpdateMenu() 
						UpdateNPCMenu("bangpaizg")
					end
				end
			end
		elseif(LuaQueryTask("Tbprw9")==99) then
			LuaSay("�����ܹܣ������@3�������ʡ�ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("�����ܹܣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
		LuaSetTask("Tbprw9",0)
		LuaSetTask("Tbprw9_0",0)
		LuaSetTask("Tbprw9_1",0)
		LuaSetTask("Tbprw9_2",0)
		LuaSetTask("Tbprw9_3",0)
		LuaSetTask("Tbprw9day",GetCurrentDay()) 
		if(LuaItemCount("o_mission402") >0) then
			DelItem("o_mission402",LuaItemCount("o_mission402"))
		elseif(LuaItemCount("o_mission403") >0) then
			DelItem("o_mission403",LuaItemCount("o_mission403"))
		elseif(LuaItemCount("o_mission404") >0) then
			DelItem("o_mission404",LuaItemCount("o_mission404"))
		elseif(LuaItemCount("o_mission405") >0) then
			DelItem("o_mission405",LuaItemCount("o_mission405"))
		end
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
		DoTalk("Tbprw9")
	end
elseif(answer=="Tbprw9jl")then  -----------------������
	if(LuaQueryTask("Tbprw9")==2) then
		if(LuaQueryTask("Tbprw9_0")==99) then
			DelItem("o_mission402",1)
		elseif(LuaQueryTask("Tbprw9_1")==99) then
			DelItem("o_mission403",1)
		elseif(LuaQueryTask("Tbprw9_2")==99) then
			DelItem("o_mission404",1)
		elseif(LuaQueryTask("Tbprw9_3")==99) then
			DelItem("o_mission405",1)
		end
		if(LuaQueryTask("faction914")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction914",2)
		end
		LuaSetTask("Tbprw9",99)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw9")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end			
----------------------------------------------------������ʳ��ÿ�ա�
elseif(answer=="Tbprw10") then
	if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw10")==0) then
			LuaSay("�����ܹܣ���˵@4����ؿ�@0��@3�ذ���@0�����������")
			LuaSay("�����ܹܣ�һ���˵������Ͼ����ޣ�����֪�������@3������ʳ@0��@3�ذ���@0��")
			LuaSay("�����ܹܣ���ȥ����Щ@3��ʳ@0����@4����ؿ�@0��@3�ذ���@0��")
			LuaSetTask("Tbprw10",1)
			LuaGive("o_mission406",1)
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw10")==1) then
			LuaSay("�����ܹܣ�ȥ��@3��ʳ@0����@4����ؿ�@0��@3�ذ���@0�������Ұɡ�")
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay(""..LuaQueryStr("name").."��@3�ذ���@0���Ҵ���лл��")
			LuaSay("�����ܹܣ�ֻҪ�����ܹ��İ��Ⱦ����ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw10jl")
		elseif(LuaQueryTask("Tbprw10")==99) then
			LuaSay("�����ܹܣ������@3������ʳ��ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("�����ܹܣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		DoTalk("Tbprw10")
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	end
elseif(answer=="Tbprw10jl")then  -----------------������
	if(LuaQueryTask("Tbprw10")==2) then
		if(LuaQueryTask("faction916")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction916",2)
		end
		LuaSetTask("Tbprw10",99)
		DelItem("o_mission406",1)
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw10")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
----------------------------------------------------���а�񡾻�һ��
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==0) then
		LuaSay("�����ܹܣ����������Թ�������а�ﾡ������˵@4������@0������һλ���ص�@3��Ĺ����@0��")
		LuaSay("�����ܹܣ�������ȥ������̽��û�н��а��İ취��")
		LuaSetTask("Tbprw11_1",1)
		UpdateMenu()
		UpdateNPCMenu("bangpaizg")
	elseif(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay("�����ܹܣ�а�ﾡ��,Ѱ����֮���̲��ݻ�����ȥ��@4������@0��@3��Ĺ����@0��")
	end
elseif(answer=="Tbprw11_3") then
	if(LuaQueryTask("Tbprw11_3")==2) then
		LuaSay(""..LuaQueryStr("name").."�����ҵ�@4������Ĺ@0��@3����@0����˵��Ща�ﶼ����Թ����ɣ�ֻ��ÿ����������ֱ��Թ����ʧΪֹ��")
		LuaSay("�����ܹܣ�������Ҳֻ�������ˡ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Tbprw11_3jl")
	end
elseif(answer=="Tbprw11_3jl")then  -----------------������
	if(LuaQueryTask("Tbprw11_3")==2) then
		if(LuaQueryTask("faction918")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction918",2)
		end
		LuaSetTask("Tbprw11_3",99)
		LuaDelTask("Tbprw11_1")
		LuaDelTask("Tbprw11_2")
		LuaDelTask("Tbprw11_3")
		local jinyan
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQuery("level")<=10) then  --С��10��
			jinyan=level*150+level*level*15
		elseif(LuaQuery("level")<=20) then  --10-20
			jinyan=level*400+level*level*15
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*800+level*level*15
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*1600+level*level*15
		else
			jinyan=level*2200+level*level*15
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw11")		
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			AddMoneyToPartyBank(1000)-------���Ӱ���Ǯ
		LuaPartyRepute(1,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",1)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
		UpdateMenu() 
		UpdateNPCMenu("bangpaizg")
	end
------------------�������������	pTkfx
elseif(answer=="pTkfx") then
	AddMenuItem("@7����������","")
	AddMenuItem("@5����������˵��","pTkfx_sm")
	AddMenuItem("@3��ȡ�������������","pTkfx_Y")
elseif(answer=="pTkfx_sm") then  --����������˵��
	LuaSay("����������Ϊ@2ÿ��00:00-24:00ʱ���@0��ʱ��00:00�Զ���0����@5�������@0��@2�����������ۻ��ľ���@0")
	LuaSay("���ɹ�Ա��@2���������ϡ�����@0����@5ÿ��һ��@0����һ�������İ��������飬@2����ְλԽ�ߡ����ɵȼ�Խ�ߣ�����ı���Ҳ��Խ��@0��")
	LuaSay("�����а���������������Խ�࣬������������ȻҲ��Խ�࣬Ŭ�������������@!")
elseif(answer=="pTkfx_Y") then  --��ȡ�������������
	if(LuaQueryRank()==0) then
		LuaSay("�㻹@2û�м������@0���Ͽ��Ҹ����ɼ����")
	elseif(LuaQueryRank()==1) then --����
		LuaSay("���ڱ����ְλ�ǣ�@2����@0��û�з�������������Ȩ��")
	elseif(LuaQueryRank()>=2) then --���ɹ�Ա
		if(GetCurrentDay()~=LuaQueryStrTask("pTkfx_Day")) then   --��ֹͬһ��һ����ȡ2������
			local tSpTk={
				--1���ɵȼ���2��������  3���ϱ���  4�����������     
				{1,0.5,1,2,"����","����","����"},
				{2,1,1.5,3,"����","����","����"},
				{3,1.5,2,4,"����","����","����"},
				{4,2,2.5,5,"����","����","����"},
				{5,2.5,3,6,"����","����","����"},
				}
			if(GetExpCountByRank()==0)  then --˵��������Ҷ�Ӧ�ĸù�ְ�İ�����������ȡ�����Ѿ�����
				LuaSay("�������@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0�İ����������Ѿ�������,��鿴�����Ƿ��а���ְλ�䶯")
			else
				LuaSay("�������ڰ���������Ϊ��@2"..GetPartyTaskExp().."����@0")
				if(GetPartyTaskExp()>0) then  --����������>0
					LuaSetTask("pTkfx_jy",floor(GetPartyTaskExp()*tSpTk[LuaPartyLevel()][LuaQueryRank()]/100))
					LuaSay("�������ڵȼ�Ϊ��@2"..LuaPartyLevel().."��@0�����ڱ����ְλ�ǣ�@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0���ֿɷ���@1"..tSpTk[LuaPartyLevel()][LuaQueryRank()].."%�İ���������@0��@3"..LuaQueryTask("pTkfx_jy").."����@0��")
					AddMenuItem("@7�Ƿ�������ȡ","")
					AddMenuItem("@3������","pTkfx_yes")
					AddMenuItem("@7����������","pTkfx_no")
				else
					LuaSay("��������@2û������ɰ�������@0���Ͽ���߱������@2����������@0�ɣ�")
				end
			end
		elseif(GetCurrentDay()==LuaQueryStrTask("pTkfx_Day")) then  --˵�����챾���Ѿ������
			LuaSay("����İ������������Ѿ�����ˣ�����������")
		end
	end
elseif(answer=="pTkfx_yes") then  --��ȡ
	local tSpTk={
		--1���ɵȼ���2��������  3���ϱ���  4�����������     
		{1,0.5,1,2,"����","����","����"},
		{2,1,1.5,3,"����","����","����"},
		{3,1.5,2,4,"����","����","����"},
		{4,2,2.5,5,"����","����","����"},
		{5,2.5,3,6,"����","����","����"},
		}
	if(ChangeExpCountByRank(1)==1) then --˵���������ӳɹ���
		LuaAddJx("combat_exp",LuaQueryTask("pTkfx_jy"),"pTkfx")
		LuaSetTask("pTkfx_Day",GetCurrentDay()) 
		if(GetExpCountByRank()~=0) then
			LuaSay("�������@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0����@5"..GetExpCountByRank().."λ@0������ȡ����������.�Ͽ�֪ͨ����"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."���쾭���")
		else 
			LuaSay("�����������@2"..tSpTk[LuaPartyLevel()][LuaQueryRank()+3].."@0�Ѿ�����ȡ�������������.")
		end
		LuaDelTask("pTkfx_jy")
	else
		LuaSay("@2��ȡʧ��@0����������ȡ")
	end
------------------�ﹱ
elseif(answer=="partyoffer") then
	AddMenuItem("@7�ﹱ","")
	AddMenuItem("@5�ﹱ˵��","offer_sm")
	AddMenuItem("@3��ѯ�ҵİﹱֵ","offer_cx")
	AddMenuItem("@6�ﹱ�̵�","offer_shop")
elseif(answer=="offer_sm") then--�ﹱ˵��
	LuaSay("�ﹱ��Դ��@1��ս@0������@2��ɱ����+1������+2������+3������+4����ɱboss+50@0")
	LuaSay("ע�⣺1��@2�˳�����@0��@5����������еİﹱֵ@0��2��ÿ�����Ӱﹱ@1����Ϊ100��@0������100�������İﹱֵ���������ӣ�")
	LuaSay("�ﹱ���ã��ﹱ�ﵽһ������ʱ������@5�ﹱ�̵�@0����@2��װ������@0������ֻ��۳���Ӧͭ�ң�@2����۳��ﹱ@0��")
elseif(answer=="offer_cx") then--��ѯ�ҵİﹱֵ
	if(LuaQueryRank()==0) then
		LuaSay("�㻹@2û�м������@0���Ͽ��Ҹ����ɼ����")
	elseif(LuaQueryRank()>=1) then
		LuaSay("��Ŀǰ�İﹱֵΪ��@3"..GetUserPartyOffer().."@0��")
	end
elseif(answer=="offer_shop") then--�ﹱ�̵�
	DoBuy()

--------��������	
elseif(answer=="thbz") then
	AddMenuItem("@7��������","")
	AddMenuItem("@5��������˵��","thbz_sm")
	AddMenuItem("@3ȷ����������","thbz_y")
elseif(answer=="thbz_sm")then   -------��������˵��
	LuaSay("�����ɹ�������1��@2������������100@0��2��@2����������10�����10������@0��3�������е�@3����@0��@3����@0��Ȩ������������@2�����ɹ����200W����ͭ��@0")
elseif(answer=="thbz_y")then   -------��������
	if(LuaQueryRank()==3 or LuaQueryRank()==2)then
		if(GetPartyCurrentRepute()>=100)then
			if(LuaItemCount("coin") >= 2000000) then
				ImpeachMaster()
				if(LuaQueryRank()==4 )then
					LuaGive("coin",-2000000,"thbz")
				else
					LuaSay("@1����ʧ��@0�����@2����10���������߼�¼@0")
				end
			else
				LuaSay("@1����ʧ��@0������������Ҫ@2200W����ͭ��@0�����û����ô��ǮŶ��")
			end
		else
			LuaSay("@1����ʧ��@0��ֻ��@2��������100����@0�İ��ɲſ���ʹ�õ����������ܡ�")
		end
	else
		LuaSay("@1����ʧ��@0��ֻ��@2���ϻ�����@0����Ȩ������������")
	end
----��������
elseif(answer=="dlxx") then
	LuaSay("���а��ɳ�Ա�������Զ�@2�ڵ��εķǱ�����Ա����@0��������̵ĺô���")
	GetUserInJail()
------------------����˵��
elseif(answer=="partysm")then
	AddMenuItem("@7����Ȩ��������˵��","") 
	AddMenuItem("��������˵��","party_numsm")
	AddMenuItem("@3����Ȩ������˵��","bpqlsm")
elseif(answer=="party_numsm") then  --��������˵��
	LuaSay("�����ܹܣ�һ������ֻ��ͬʱ����@21������2���4������8���ɡ�15����@0��")
	LuaSay("���������������һ�ȼ��İ��ɣ�������һ�ȼ��İ��������ﵽ���ͣ���ô��ֻ��ͨ����ս�����е�һ�����ɴ�һ��������л�����������һ���İ��ɡ�")
elseif(answer=="bpqlsm")then
     LuaSay("��������������Ͱ���Ա����һ������Ȩ������ţB�ˣ���Ȩʹ�ô�������ɵȼ���ְλ��߶����ӡ�������һ��")
     LuaSay("@1����@0��ÿ��ɶԱ������ϴ��һ��PKֵ��ѡ��������˽��@3/sm@0�������ڵ���Һ�������ô�죬�Ұ��ɹ�Ա��")
     LuaSay("@1ץ��@0���ɽ�Ŀ��ץ����������Σ���˽��������@3/zb@0������������ô�죬ץ���������ǰ���ǿ�ͨ���ɵ���")
     LuaSay("@1����@0��ץ���˽������ǲ��ǻ�����񫣬�У�����Զ����˽��@3/xx@0���������ܽ������ڵĵ������꣬���ܱ�װ��Ŷ���˹�����ͨ���ɵ���")
     LuaSay("@1����@0���Ա����������ߣ��ɾ������Ļ����������˽��@3/jy@0ֻ�ܶ԰���ʹ�ã�")
	 LuaSay("@1��ʾ@0�����⣬ץ�������̣��������ĸ�������Ȩ@1�ָ�ʹ�ô�����Ҫ���ǣ�ʹ����һ����Ȩ24Сʱ��ſɻָ��㱾��ʹ�ô���Ȩ�Ĵ���@0���ſ��ٴ�ʹ�ô���Ȩ��Ҳ������@2ʹ�������Ȩ��24Сʱ�ڲ��������ʹ��@0������Ҫ����Ӧ�ĵ��ߡ�")

--------���ɼ���
elseif(answer=="partyskill")then
	AddMenuItem("@7���ɼ���","") 
	AddMenuItem("@5���ɼ���˵��","partyskill_sm")
	AddMenuItem("@3������ɼ���","partyskill_y")
elseif(answer=="partyskill_sm")then   --------���ɼ���˵��
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("@3���ɼ�������@0��@5�˵�@0-->@54���ܼ�@0-->@5���ɼ���@0������������ɣ��ȼ�Խ�ߣ�������õ���Ӧ����Ҳ��Խ�ߡ�")
	else
		LuaSay("@3���ɼ�������@0��@5ȷ����@0-->@54����@0-->@5���ɼ���@0������������ɣ��ȼ�Խ�ߣ�������õ���Ӧ����Ҳ��Խ�ߡ�")
	end
	LuaSay("@1ע��@0�����ɼ���������@2����ʹ��@0���赽������կ@2�����ܹ�@0��@5����@0��ȿɻ����Ӧ���Լӳ�")
	LuaSay("@3���ʽ@0��@5ͭ�Ҽ���@0��@21Сʱ@0��Чʱ�䣻@5ͨ������@0��@26Сʱ@0��Чʱ��")
	LuaSay("@3������������@0��@1����ܼ���3��@0���ɼ��ܣ�����������@2���ܼ�������滻@0���ɼ��ܣ������ѡ��")
elseif(answer=="partyskill_y")then   --------������ɼ���
	if(LuaQueryRank()==0) then  --û�����
		LuaSay("�㻹@2û�м������@0�����ܼ�����ɼ���")
	else
		local buffnum=0  --���弤��buff����
		for i=1,6,1 do
			if(LuaCheckBuff(tS_skill[i][4])==1 or LuaCheckBuff(tS_skill[i][5])==1) then
				buffnum=buffnum+1--�Ѽ���buff����
			end
		end
		if(buffnum>=1) then  --˵������������м���buff
			local tS_jhbf="���Ѿ�����ļ�����@5"..buffnum.."��@0��"
			if(LuaCheckBuff("530")==1 or LuaCheckBuff("536")==1) then  --˵���������������buff��-->�Ѽ�������
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2����@0  "
				end
			end
			if(LuaCheckBuff("531")==1 or LuaCheckBuff("537")==1) then  --˵���������������buff��-->�Ѽ�������
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2����@0  "
				end
			end
			if(LuaCheckBuff("532")==1 or LuaCheckBuff("538")==1) then  --˵���������������buff��-->�Ѽ�������
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2����@0  "
				end
			end
			if(LuaCheckBuff("533")==1 or LuaCheckBuff("539")==1) then  --˵����������й���buff��-->�Ѽ����
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2����@0  "
				end
			end
			if(LuaCheckBuff("534")==1 or LuaCheckBuff("540")==1) then  --˵����������й�������buff��-->�Ѽ������
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2����@0  "
				end
			end
			if(LuaCheckBuff("535")==1 or LuaCheckBuff("541")==1) then  --˵����������й���Ѫ����buff��-->�Ѽ���Ѫ����
				if(buffnum==1) then  --ֻ������һ��
					tS_jhbf=tS_jhbf.."@2Ѫ����@0"
				else  --��������������
					tS_jhbf=tS_jhbf.."@2Ѫ����@0"
				end
			end
			LuaSay(""..tS_jhbf.."")
			if(buffnum>=3) then
				LuaSay("�㼤��İ��ɼ����Ѿ�@2�ﵽ����@0�ˣ������ٲ������ɼ���")
			end
		else
			LuaSay("�㻹û��@2������ɼ���@0���Ͽ켤���")
		end
		if(buffnum<3) then  --���������ﵽ����  ���ܲ���
			AddMenuItem("@7����򸲸ǰ��ɼ���","") 
			AddMenuItem("@3����","1")
			AddMenuItem("@3����","2")
			AddMenuItem("@3����","3")
			AddMenuItem("@3����","4")
			AddMenuItem("@3����","5")
			AddMenuItem("@3Ѫ����","6")
		end
	end
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then
	local n=answer+0  --���������  ��Ӧ�����һ��
	LuaSetTemp("jnzl",n)
	if(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])>0) then
		AddMenuItem("@7ѡ�񼤻ʽ","") 
		AddMenuItem("@5ͭ�Ҽ��1Сʱ��Ч��","11")
		AddMenuItem("@3ͨ�����6Сʱ��Ч��","12")
	else
		LuaSay("����ѡ��İ��ɼ���Ϊ@10��@0�����ܼ���")
		AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
		AddMenuItem("@3����","partyskill_fh")
		AddMenuItem("������","NO")
	end
elseif(answer=="11" or answer=="12")then
	local t=answer+0  --���ʽ  11Ϊͭ��  12Ϊͨ��
	LuaSetTemp("jnfs",t)
	if(LuaQueryTemp("jnfs")==11) then
		LuaSay("������ɼ���@51Сʱ@0��Ҫ����@25000ͭ��@0")
	else
		LuaSay("������ɼ���@56Сʱ@0��Ҫ����@1ͨ��@0")
	end
	if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1 or LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then --˵���������������ѡ����buff
		if(LuaQueryTemp("jnzl")<=5) then
			LuaSay("���������а��ɼ������ṩ��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."�ӳ�@0���Ƿ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."��@0")
		elseif(LuaQueryTemp("jnzl")==6) then
			LuaSay("���������а��ɼ������ṩ��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."�ӳ�@0���Ƿ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."��@0")
		end
		AddMenuItem("@7�Ƿ��滻","") 
		AddMenuItem("@5ȷ���滻","partyskill_th") 
		AddMenuItem("@3���滻","partyskill_bth") 
		AddMenuItem("@3�����ϼ��˵�","partyskill_fh")
	else
		AddMenuItem("@7�Ƿ񼤻�","") 
		AddMenuItem("@5ȷ������","partyskill_jh") 
		AddMenuItem("@3������","partyskill_bjh") 
		AddMenuItem("@3�����ϼ��˵�","partyskill_fh")
	end
elseif(answer=="partyskill_th")then   --�滻
	if(LuaQueryTemp("jnfs")==11) then  --ͭ�Ҽ���
		if(LuaItemCount("coin")>=5000) then
			if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1) then  --˵�����������ͭ�Ҽ���buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][4])
			elseif(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then  --˵�����������ͨ������buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][5])
			end
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][4],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --��buff
			FlushMyInfo(1)	--//ˢ�¹�����������MMP��MHP
			FlushMyInfo(3)	--//ˢ���������ǻۡ����� 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."��@0@61Сʱ@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."��@0@61Сʱ@0")
			end
			LuaGive("coin",-5000,"Tbpjn")
		else
			LuaSay("ͭ�����¼�����ɼ�����Ҫ����@25000ͭ��@0����û����ô��Ǯ")
		end
	elseif(LuaQueryTemp("jnfs")==12) then  --ͨ������
		if(LuaItemCount("o_gold1y") >=1) then
			if(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][4])==1) then  --˵�����������ͭ�Ҽ���buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][4])
			elseif(LuaCheckBuff(tS_skill[LuaQueryTemp("jnzl")][5])==1) then  --˵�����������ͨ������buff
				LuaDeleteBuff(tS_skill[LuaQueryTemp("jnzl")][5])
			end
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][5],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --��buff
			FlushMyInfo(1)	--//ˢ�¹�����������MMP��MHP
			FlushMyInfo(3)	--//ˢ���������ǻۡ����� 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."��@0@66Сʱ@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."��@0@66Сʱ@0")
			end
			DelItem("o_gold1y",1,"Tbpjn")
		else
			LuaSay("ͨ�����¼�����ɼ�����Ҫ����@21ͨ��@0����û����ô��ͨ�����ɵ�@5[�̳�][Ԫ��][����]@0�й���")
		end
	end
	AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
	AddMenuItem("@3����","partyskill_fh")
	AddMenuItem("@3������","NO")
elseif(answer=="partyskill_jh")then   --����
	if(LuaQueryTemp("jnfs")==11) then  --ͭ�Ҽ���
		if(LuaItemCount("coin")>=5000) then
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][4],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --��buff
			FlushMyInfo(1)	--//ˢ�¹�����������MMP��MHP
			FlushMyInfo(3)	--//ˢ���������ǻۡ����� 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("��ɹ�����@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."��@0@61Сʱ@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("��ɹ�����@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."��@0@61Сʱ@0")
			end
			LuaGive("coin",-5000,"Tbpjn")
		else
			LuaSay("ͭ�Ҽ�����ɼ�����Ҫ����@25000ͭ��@0����û����ô��Ǯ")
		end
	elseif(LuaQueryTemp("jnfs")==12) then  --ͨ������
		if(LuaItemCount("o_gold1y") >=1) then
			LuaGiveBuff(tS_skill[LuaQueryTemp("jnzl")][5],LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]))  --��buff
			FlushMyInfo(1)	--//ˢ�¹�����������MMP��MHP
			FlushMyInfo(3)	--//ˢ���������ǻۡ����� 
			if(LuaQueryTemp("jnzl")<=5) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*5).."��@0@66Сʱ@0")
			elseif(LuaQueryTemp("jnzl")==6) then
				LuaSay("��ɹ��滻Ϊ@5"..LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2]).."��@0��@2"..tS_skill[LuaQueryTemp("jnzl")][3].."@0���Լӳ�@1"..(LuaGetSkillLevel(tS_skill[LuaQueryTemp("jnzl")][2])*50).."��@0@66Сʱ@0")
			end
			DelItem("o_gold1y",1,"Tbpjn")
		else
			LuaSay("ͨ�����¼�����ɼ�����Ҫ����@21ͨ��@0����û����ô��ͨ�����ɵ�@5[�̳�][Ԫ��][����]@0�й���")
		end
	end
	AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
	AddMenuItem("@3����","partyskill_fh")
	AddMenuItem("@3������","NO")
elseif(answer=="partyskill_fh")then   --����
	DoTalk("partyskill_y")

--------����ս��
elseif(answer=="bpgl")then
	AddMenuItem("@7����ս��","")
	AddMenuItem("@3�����������","bhpm")
	if(LuaQueryRank() > 2 and LuaPartyLevel() > 0 and LuaPartyServer() == 1) then   ---LuaPartyServer()  ��ѯ��Ұ����Ƿ����ڵ�ǰ������������
		AddMenuItem("@7����ս��˵��","bzsm")
		AddMenuItem("@3����ս������","ptwar")
	end
elseif(answer=="bhpm") then  ---�����������
	LuaSay("�Ҹ�Ӣ�۶����°���ʵ��.�Լ�@2��ʾ����ʵ��ǰ10���İ���@0")
	PartyRanking()  
elseif(answer=="bzsm") then  ---��ս˵��
	AddMenuItem("@7����ս��˵��","")
	AddMenuItem("@5�����ս��������","ptwar_fq")
	AddMenuItem("@5����ս��������","ptwar_btz")
	AddMenuItem("@3���ð�ս��ͼ˵��","ptwar_zdt")
	AddMenuItem("@3��ս��Ӧս��Ͷ��˵��","ptwar_xyt")
	AddMenuItem("@5��սʤ���趨��������ͷ�˵��","ptwar_in")
elseif(answer=="ptwar_fq") then  ---�����ս��������
	LuaSay("��ս�����ˣ�@2����������@0�������ս�������̣�@1���ð�ս��ͼ@0-->@1��ս@0��9:00-17:00��-->���Է�@2Ͷ��@0��@1��սʤ��@0�����Է�@2Ӧս@0��@5ʱ��22:00-23:00@0@1�����ս��ͼ��ʼ��ս@0�������κ�һ��ʧ�����ܳɹ��������ս��")
elseif(answer=="ptwar_btz") then  ---����ս��������
	LuaSay("@1Ӧս��Ͷ��@0-->��@2Ͷ��@0��@1��սʧ��@0����@2Ӧս@0��@522:00-23:00@0@1�����ս��ͼ��ʼ��ս@0��")
elseif(answer=="ptwar_zdt") then  ---���ð�ս��ͼ˵��
	LuaSay("���ð�ս��ͼ����������@2��������-100@0�����İ�������@25wͭ��@0.ע�⣺��ս��ͼʹ��Ȩֻ��@2������Ч@0��@2ÿ������ÿ���ս����Ϊ5��@0���������5���������ð�ս��ͼ������������������")
elseif(answer=="ptwar_xyt") then  ---��ս��Ӧս��Ͷ��˵��
	LuaSay("��ս��������Ҫ��ս�İ��ɽ�����ս���½�����1���ڲ��ᱻ����������ս�������ɣ�������ս�İ��ɲ��ܱ���ս����ս���ã�@25w@0��")
	LuaSay("����ս���ɻ�Ӧ��ս���ɵķ�ʽ��@2Ӧս��Ͷ��@0��Ӧս��������������@21wͭ��@0��Ӧս��ʱ��@522:00-23:00@0���@3��������ս��ͼ@0��@4������@0@5������@0�� @4����@0@5ս��ʹ��@0�� @4������կ@0@5�����ܹ�@0������ʼ��ս��Ͷ�����������粻����սʱ����Ͷ��(һ�������1��)����Ӧս����Ͷ��������@1�۳���������20w������30��@0�������������û���㹻��Ǯ֧������ô@2����۳�����10��@0.")
elseif(answer=="ptwar_in") then  ---��ս����������ͷ�˵��
	LuaSay("��ս��@2ɱ��BOSS�ɻ��50��Դ@0��ɱ�Է����Ҳ��õ���Դ��������ڳ���@2���ŵ���ÿ������1��Դ@0��ս����������Դ��ö���ʤ����")
	LuaSay("������ͬ������ս��ʤ��˫������Ϊ0��ս��ʤ����սʤ�����õ�@2(50����ʧ�ܷ����ɵȼ�)�İ�������@0�����Է�����������һ����ͭ�ҡ�")
	LuaSay("@2��ս�ڼ�����@0�ٴν����ս��ͼ����@2�⵽����ʱ�����Ƴͷ�@0�����ߴ���Խ�࣬�ȴ�ʱ��Խ������սʱ��@2����10���Ӳ������ٽ����ս��ͼ@0��")
elseif(answer=="ptwar") then  ---����ս������
	AddMenuItem("@7����ս������","")
	AddMenuItem("@3���ð�ս��ͼ","fmap")
	AddMenuItem("@5��ս@0(ʱ��9:00-17:00)","faf")
	AddMenuItem("@5Ӧս��Ͷ��","foc")
	AddMenuItem("���ð�ս����ȼ�","szjrdj")
	AddMenuItem("@3������ս@0(��ķ�100W��3��ʱЧ)","mzp")
	AddMenuItem("@3��������ս��ͼ@0(ʱ��22:00-23:00)","ginfm")

elseif(answer=="fmap") then		---���ð�ս��ͼ
	if(GetPartyCurrentRepute()>-100)then
		EmployFightMap()
	else 
		LuaSay("�����ܹܣ�@2��������С��-100@0��ʵ��̫�����ǲ�Ҫȥ��������������ͼ������Խа�����ͨ����������������ʵ������������ս���٣�")
	end
elseif(answer=="faf") then	---��ս
	if(GetCurrentHour()<17)then
		FactionAnnounceFight()
	else
		LuaSay("�����ܹܣ���սʱ����9��00-17��00,���ڹ涨��ʱ�������������룡")
	end
elseif(answer=="foc") then	---Ӧս��Ͷ��
	FightOrCapitulate() 
elseif(answer=="szjrdj") then	---���ð�ս����ȼ�
	if(LuaQueryRank()> 2 )then
		LuaSay("�����ܹܣ��������ð�ս����ȼ�������ɵ���ҵȼ�������@2�õȼ�֮����@0�����Խ����ս��ͼ�������ս��")
		AddMenuItem("@7�ȼ��б�","")
		AddMenuItem("20��","szjrdj20")
		AddMenuItem("30��","szjrdj30")
		AddMenuItem("40��","szjrdj40")
		AddMenuItem("50��","szjrdj50")
		AddMenuItem("60��","szjrdj60")
		AddMenuItem("70��","szjrdj70")
	else
		LuaSay("�����ܹܣ�ֻ�а����볤�ϲ������ð�ս����ȼ���Ȩ�����ܱ�Ǹ����û��Ȩ����")
	end
elseif(answer=="szjrdj20") then		--���ð�ս����ȼ�Ϊ20��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�20����ֻ��20�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(20)
elseif(answer=="szjrdj30") then		--���ð�ս����ȼ�Ϊ30��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�30����ֻ��30�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(30)
elseif(answer=="szjrdj40") then		--���ð�ս����ȼ�Ϊ40��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�40����ֻ��40�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(40)
elseif(answer=="szjrdj50") then		--���ð�ս����ȼ�Ϊ50��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�50����ֻ��50�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(50)
elseif(answer=="szjrdj60") then		--���ð�ս����ȼ�Ϊ60��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�60����ֻ��60�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(60)
elseif(answer=="szjrdj70") then		--���ð�ս����ȼ�Ϊ70��
	LuaSay("�����ܹܣ����ѳɹ�����ս����ȼ����ó�70����ֻ��70�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(70)	
elseif(answer=="mzp") then	 --������ս(��ķ�100W��3��ʱЧ)
	AddMenuItem("@7������ս","")
	AddMenuItem("@5��ս˵��","mzp_SM")
	AddMenuItem("@3ȷ��������ս","mzp_Y")
elseif(answer=="mzp_SM") then	 --��ս˵��
	LuaSay("��ս�ڼ䲻�ܱ�����������ս��������ս��������")
	LuaSay("ֻ��@1����@0����������ս����սʱ�䣺@23��@0��������ս���ƣ�@2�ɹ�������ս��������ڽ������ٴ�������ս@0")
elseif(answer=="mzp_Y") then	 --ȷ��������ս
	if(LuaQueryRank()==4) then  --ֻ�а�������ս
		local shijiancha=604800-(GetCurrentTime()-LuaQueryTask("mzp_time"))
		if(GetCurrentTime()>LuaQueryTask("mzp_time")+604800) then
			if(LuaQueryPartyMoney()>=1000000) then
				LuaSetTask("mzp_time",GetCurrentTime())
				LuaSay("������ս�ɹ�")
				SetPartyProtectTime(259200,1000000)
			else
				LuaSay("����@2��սʧ��@0�����������ͭ��Ϊ@2"..LuaQueryPartyMoney().."@0,����100w")
			end
		else
			local d=floor(shijiancha/86400)  --��        
			local h=floor((shijiancha-d*86400)/3600)  --Сʱ
			local f=floor((shijiancha-d*86400-h*3600)/60)  --����
			if(d~=0) then
				if(h~=0) then
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..d.."��"..h.."Сʱ��"..f.."����@0�������ʱ���������������")
					else
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����"..h.."Сʱ@0�������ʱ���������������")
					end
				else
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����"..f.."����@0�������ʱ���������������")
					else	
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����@0�������ʱ���������������")
					end
				end
			else
				if(h~=0) then
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..h.."Сʱ��"..f.."����@0�������ʱ���������������")
					else
						LuaSay("������ս��@2ʱ������@0����@1"..h.."Сʱ��@0�������ʱ���������������")
					end
				else
					LuaSay("������ս��@2ʱ������@0����@1"..f.."������@0�������ʱ���������������")
				end
			end
		end	
	else
		LuaSay("�㲻�ǰ���������������ս")
	end

elseif(answer=="ginfm") then	--��������ս��ͼ(22:00-23:00)
	AddMenuItem("@5�����ս��ͼ","")
	AddMenuItem("@5�����ս��ͼʱ��ͷ�˵��","ginfm_SM")
	AddMenuItem("@3�����ս��ͼ","ginfm_Y")
elseif(answer=="ginfm_SM") then	--�����ս��ͼʱ��ͷ�˵��
	LuaSay("��ս�ڼ�������ߺ������ٴν����ս��ͼ������@2ʱ�����Ƴͷ�@0������ʱ��Խ�����ͷ�ʱ��Խ��")
	LuaSay("����@2һ������1���ӣ�����4���ӣ�����7���ӣ��Ĵλ��Ĵ�������ÿ������10����@0���ܽ����ս��ͼ����@5������Ͱ�ս��ͼ@0��ʼ��ʱ")
elseif(answer=="ginfm_Y") then	--�����ս��ͼ
	if(GetCurrentMinute()<50) then
		if(LuaQueryStrTask("ginfm_inday")~=GetCurrentDay())then  --�������첻Ϊ��ǰ��
			LuaDelTask("ginfm_inbj")  --������
			LuaDelTask("ginfm_inday")  --����ʱ����
			LuaDelTask("ginfm_incs")  --�������
			LuaDelTask("ginfm_intime")  --����ȴ�ʱ��
		end
		if(LuaQueryTask("ginfm_inbj")==1) then  --˵��������¹���  ���ǵ�һ�ε���˵�
			local time=GetCurrentTime()
			LuaSetTask("ginfm_intime",time)
			LuaSetTask("ginfm_inbj",2)  --������
			if(LuaQueryTask("ginfm_incs")<=4) then     --����ʱ������  1  4  7  10  10  ((LuaQueryTask("ginfm_incs")-1)*3+1)
				LuaSay("�����㱾�ΰ�ս�ڼ�@5����"..LuaQueryTask("ginfm_incs").."��@0����ȴ�@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."����@0�����ٴν����ս��ͼ") 
			else  
				LuaSay("�����㱾�ΰ�ս�ڼ�@5����"..LuaQueryTask("ginfm_incs").."��@0����ȴ�@210����@0�����ٴν����ս��ͼ") 
			end
		elseif(LuaQueryTask("ginfm_inbj")==2) then  --˵��Ҫ��һ��ʱ������ٴν���
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ginfm_intime"))
			if(LuaQueryTask("ginfm_incs")<=4) then
				if(shijiancha>=((LuaQueryTask("ginfm_incs")-1)*3+1)*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
					
				else
					local f=floor((((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha)/60)  --������ٷ���
					local s=((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha-f*60
					LuaSay("�Ȼᣬ@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
				end
			else
				if(shijiancha>=10*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((10*60-shijiancha)/60)  --������ٷ���
					local s=10*60-shijiancha-f*60
					LuaSay("����:�Ȼᣬ@210����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
				end
			end
		else
			if(LuaQueryTask("Ac13")==0)then
				LuaSetTask("Ac13_bg",GetUserPartyOffer())
				LuaSetTask("Ac13",99)
			end
			GetInFactionMap()
		end
	else
		LuaSay("�����ܹܣ���ս���10�����޷��ٽ����ս��ͼ�����Ż���ս�����ֵܣ��ȴ�ʤ�������ʧ�ܰɣ�")
	end
---------------
end 
LuaSendMenu()
return 1
end 
function get(n) ----------------����ռ���Ʒ�б�
tab={
{"1��ë","o_material_11"},
{"1��Ƥ","o_material_20"},
{"1��ľ","o_material_38"},
{"1����","o_material_47"},
{"��Կ��","o_key100"},
{"�ƾɹŶ�","o_mission018"},
{"2���ϳ���","o_mix_book021"},
{"3���ϳ���","o_mix_book022"},
{"3����","o_material_31"},
{"3��Ƥ","o_material_22"},
{"3��ľ","o_material_40"},
{"3����","o_material_58"},
}
local a=tab[n][1]
local b=tab[n][2]
return a,b
end
