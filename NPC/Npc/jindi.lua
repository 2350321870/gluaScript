NPCINFO = { 
serial="39" ,
base_name="jindi" ,
icon=2525,
NpcMove=2525 ,
name="���ۡ������" ,
iconaddr=1 ,
butt="10|15|60" ,
name_color="CEFFCE",
LuaType=1,
have_sell_item=1,
} 
addBuyitem={
	count=14,
	{"e_head151" , 20  , 8 },
	{"e_clothes151" , 20  , 8 },
	{"e_pants151" , 20  , 8 },
	{"e_shoes151" , 20  , 8 },
	{"e_earring151" , 20  , 8 },
	{"e_necklace151" , 20  , 8 },
	{"e_falchion151" , 20  , 8 },
	{"e_shield151" , 20  , 8 },
	{"e_sword151" , 20  , 8 },
	{"e_knife151" , 20  , 8 },
	{"e_pen151" , 20  , 8 },
	{"e_book151" , 20  , 8 },
	{"o_drug_hp5" , 800  , 9 },
	{"o_drug_mp5" , 800  , 9 },
}
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1 or LuaQueryTask("bprx1")==3) then
			AddTopSayMenuItem("@2��ȡ����","bp4")
			havetask =2
		end
	if(LuaQueryTask("Tbptj_1")==1) then
		AddTopSayMenuItem("@2һ�����ڻ���ѭ����","Tbptj_1")
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
	if(LuaQueryTask("T290") ==1 or LuaQueryTask("T290") ==2) then
		AddTopSayMenuItem("@2���ӳ��������顿@0","T290")
		if(LuaQueryTask("T290")==1) then
			havetask =2
		end
	end
	if(LuaQueryTask("T750") ==2 or LuaQueryTask("T750") ==3)then
		AddTopSayMenuItem("@2������ս�����顿@0","T750")
		if(LuaQueryTask("T750")==2)then
			havetask=2
		end
	end
	if(LuaQueryTask("T268")==1 or LuaQueryTask("T268")==2) then
		AddTopSayMenuItem("@2���ɹ��ҡ����顿","T268")
		if(LuaQueryTask("T268") == 1 ) then
			havetask =2
		end
	end
	if(LuaQueryTask("cuontry811")==1)then
		AddTopSayMenuItem("@2��ƽ�Ѻ�","cuontry811")
	end
	if(LuaQueryTask("T280")==0 and LuaQueryTask("T850")==99 ) then
		AddTopSayMenuItem("����ͨ�桾���顿","T280")
		havetask =1
	end
	if(LuaQueryTask("T385")==1 and LuaQueryTask("T385")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ@0","T385")
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
	if((LuaQueryTask("Tsnpc_26")==1 or LuaQueryTask("Tsnpc_26")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_26")
		if(LuaQueryTask("Tsnpc_26")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_26")==1 or LuaQueryTask("Tenpc_26")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_26")
		if(LuaQueryTask("Tenpc_26")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T850")==1 ) then
		AddTopSayMenuItem("@2������顿","T850")
		havetask =2
	end		
	if(LuaQueryTask("T280")==1) then
		AddTopSayMenuItem("@2����ͨ�桾���顿","T280")
	end			
	if(LuaQueryTask("T115")==1 and LuaQueryTask("T115B")==0) then
		AddTopSayMenuItem("@2������С����顿","T115B")
		havetask =2
	end
	if(LuaQueryTask("pettask") ==9) then
		AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
		havetask=2
	end
	if(LuaQueryTask("Txinchun") == 2 or LuaQueryTask("Txinchun") == 3) then
		AddTopSayMenuItem("@2�����´�@0","Txinchun")
		havetask =2
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jind")==0)  then
		   AddTopSayMenuItem("@2���Ӵ���","Tduanwu")
		   havetask =2
	end
	AddTopSayMenuItem("@3����","bpgl")
	AddTopSayMenuItem("@3��������@0(�������ѹ�)","gjgl")
	AddTopSayMenuItem("@3�ɾ��Ĵ�ƺ�","Thdch_cj")
	--AddTopSayMenuItem("@5���ֲ��϶һ�","exchange")
	AddTopSayMenuItem("@5�޸�����","xgpd")	
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
---------------------------------------------���ɹ���
elseif(answer=="bpgl") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
		AddMenuItem("@7���ɹ���","")			
		if(LuaPartyLevel() == 0 and LuaQuery("partyid")==0) then --�ް��� 
			AddMenuItem("@5��������","bp1")			 
		else
			AddMenuItem("@5���ɽ���","bp7")
			AddMenuItem("@3��������","dhsw")
			AddMenuItem("@3�������","bp3")
			AddMenuItem("@7����������","partytask")
			AddMenuItem("@5�������������","pTkfx")
			AddMenuItem("@3�ﹱ","partyoffer")
			if(LuaQueryRank() > 3)then    --������Ȩ
				AddMenuItem("@1��ɢ����","jsbh")
			else						  --���������Լ��˰�
				AddMenuItem("@1��������","thbz")
				AddMenuItem("�˳�����","bp8")
			end
		end
		AddMenuItem("����Ȩ��������˵��","partysm")   
	else
		LuaSay("����:@2�Ǳ����˲��ܽ��а��ɲ���@0")
	end
------------------��������
elseif(answer=="bp1") then     ---����1��3��
	AddMenuItem("@7��������","")
	AddMenuItem("@5����˵��","bp1_sm")
	AddMenuItem("@3��������","bp1_y")
	AddMenuItem("�����","")
elseif(answer=="bp1_sm") then
	LuaSay("������1��@120������[����20]@0��2:@130��ͭ��@0��3��@1�ް���@0��4��@1ֻ���ڱ�����������@0��")
	LuaSay("@1���ɽ����ɹ���ʼֵ@0��@2��ʼ����@0��@510����@0��@2��ʼ��������@0��@510wͭ��@0��@2��ʼ���ɳ�Ա�����Ŀ@0��@515��@0��")
	--LuaSay("@2�½����ɱ�����@0��@510��@0�ڲ���ϵͳǿ�ƽ�ɢ��@57��@0�ڲ��ܱ���ս��@2���������˳����ɣ�ֻ��ת��@0")
	LuaSay("��ͨ������կ�󣬰���ÿ��@224Сʱ@0�ܴӰ���������ȡ@25%@0��Ϊ�Լ��ĸ��˲Ʋ���")
elseif(answer=="bp1_y") then
	if(LuaQuery("level")>=20) then                                                                      
		if(LuaItemCount("coin") >=300000) then                        
			LuaSay("����:�������к���,��׼�ཨ��,����,��ɵ����������ȡ��")  
			LuaCreateParty()
		else
			LuaSay("����:@2����Ҳ���30W@0,���ɽ���.")
		end
	else
		LuaSay("����:@2�ȼ��ﵽ20��@0���ɽ���.")
	end
------------------���ɽ���
elseif(answer=="bp7") then
    AddMenuItem("@7���ɽ���","")
	AddMenuItem("@5��������@0","sjbp")
	AddMenuItem("@6���������������","bp2")
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
	LuaSay("@2�����ʼ����ֵ@0��@510����@0��@3����������������@0��@22��[��]@0@5250����@0��@23��[��]@0@51000����@0��@24��[��]@0@54000����@0��@25��[��]@0@515000����@0.")
	LuaSay("@3������������@0��@21����@0��@51000����@0��@22����@0��@53000����@0��@23����@0��@515000����@0��@24����@0��@530000����@0��@25����@0��@540000����@0��")
	LuaSay("����������Դ���ܶ࣡����@2��������@0��@2��ս@0��")
elseif(answer=="sw_dh")then		--�һ���������
	AddMenuItem("@7�һ�����","")
	AddMenuItem("@3ͭ�һ�����10W:8","Tdh5")
	AddMenuItem("@3ͭ�һ�����100w:85","Tdh6")
	AddMenuItem("@3��������1:90","Tdh3")
elseif(answer=="Tdh5")then		--ͭ�һ�����10W:8
	if(LuaItemCount("coin") >= 100000)then
		LuaGive("coin",-100000,"Tdh5")
		LuaPartyRepute(8,0,"Tdh5")
		LuaAddAchievementSchedule("PartyRepute_mun",8)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0����@510Wͭ@0��@2������������8��@0�����˰���֮�䷶��",0) 
	else
		LuaSay("������@2��Ǯ����@0�����ܹ�����������������ͨ��@2����������ս@0������Ӱ���������")
	end
elseif(answer=="Tdh6")then		--ͭ�һ�����100w:85
	if(LuaItemCount("coin")>=1000000)then
		LuaGive("coin",-1000000,"Tdh6")
		LuaPartyRepute(85,0,"Tdh6")
		LuaAddAchievementSchedule("PartyRepute_mun",85)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0����@5100Wͭ@0��@2������������85��@0�����˰���֮�䷶��",0) 
	else
		LuaSay("������@2��Ǯ����@0�����ܹ�����������������ͨ��@2����������ս@0������Ӱ���������")
	end
elseif(answer=="Tdh3")then		--��������1:90
	if(LuaItemStatusNormalCount("o_zhaiquan2y") >=1) then 
		DelItem("o_zhaiquan2y",1)
		LuaPartyRepute(90,0,"Tdh3")
		LuaAddAchievementSchedule("PartyRepute_mun",90)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɶһ�@2�����@0һ����@2������������90��@0�����˰���֮�䷶��",0)
	else
		LuaSay("������@2�������@0������@7[Ԫ��-����]@0�й���")
	end
--------��������
elseif(answer=="sjbp") then
	AddMenuItem("@7��������","")
	AddMenuItem("@5��������˵��","sjbp_sm")
	AddMenuItem("@3��������","sjbp_y")
elseif(answer=="sjbp_sm") then  --��������˵��
	LuaSay("@1������Ȼ��������@0��@22��[��]@0��@5����250@0��@5��������50w@0(�Ӱ������п۳�)��@23��[��]@0��@5����1000@0��@5��������200w@0��@24��[��]@0��@5����4000@0��@5��������450w@0��@25��[��]@0��@5����15000@0��@5��������800w@0")
	LuaSay("@1��ս��������@0����ս�У�@2ʤ�����ɵȼ�С�ڰܷ��������������ڰܷ�@0������@2ʤ�����������ﵽ�ܷ�������������@0����˫���ĵȼ�������ʤ�������Զ�������")
elseif(answer=="sjbp_y") then  --��������˵��
	if(LuaPartyLevel() == 1) then
		if(LuaPartyLevelUp() == 1) then
			LuaSay("����:�������ǹ��Ҷ���,��֮�Źǰ���")
			LuaPartyRepute(50,0)
			LuaAddAchievementSchedule("PartyRepute_mun",50)
			LuaPartyMsg("@3���������ɹ�@0���ش�@2��������50��@0�������ȼ���Ŭ����",0)
		else
			LuaSay("�����ϰ��������������뷵��@2�ϼ��˵�@0����鿴@7��������˵��@0.")
			AddMenuItem("@7�Ƿ񷵻��ϼ��˵�","")
			AddMenuItem("@7����","sjbp_fh")
			AddMenuItem("@3������","")
		end
	else
		LuaSay("@22�����ϰ���@0��ر���@5������կ@0���н��裬û�а�����կ,��¹��򼴿�.")
	end
elseif(answer=="sjbp_fh") then --���ذ��������˵�
	DoTalk("sjbp")
--------���������������
elseif(answer=="bp2") then	
	LuaSay("����:�����������ǿʢ�Կ����,Ȼ����֮����¡,�²��ò����ư��������...")
	LuaSay("����:����˼ҹ��,�������Щʵ��,����ͼ֮,��ɲ������Ӱ��������޶��Ը�⣿")
	AddMenuItem("@7���������������","")
	AddMenuItem("@7������������˵��","bp2_sm")
	AddMenuItem("�Ϲ�@3��ɴȯ������������","bpme1")
elseif(answer=="bp2_sm") then
	LuaSay("���������������˵����@21������@0��@535��@0��@22������@0��@555��@0��@23������@0��@575��@0��@24������@0��@595��@0��@25������@0��@5115��@0��")
	LuaSay("�Ϲ�@5��ɴȯ@0������@2������������20��@0(�����ܳ��������������)������@1�������@0�ƺš�")
		--�������趨Ϊ  aΪ���ڰ�������  a<�����ɸü������������ֵ  �������� �������������   �������������>�����ɸü������������ֵ  �Ͳ���������
elseif(answer=="bpme1") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		if(LuaAddMembers(20) == 1) then
			DelItem("o_zhaiquan1y",1)
			LuaSay("����:�乫�����,��֮����,�����书��")
			LuaNotice("����گ:��@2"..LuaQueryStr("name").."@0Ϊ���Ӱ�����������,������׳�@2��ɴȯ@0һ��,�ش�@1�������@0֮�ƺ�,��֮���£�")  
			LuaPartyMsg("@3"..LuaQueryStr("name").."@0������@2������������20��@0��",0)
			SetTitleMeg(95)
		end
	else
		LuaSay("����:������@2[��ɴȯ]@0,�ɵ�@7[�̳�-Ԫ��-����]@0�й���.����ڲƭ�ڹ�,��ն֮��")  
	end
-----------���ɵ�ͼ
elseif(answer=="dtsm") then
	AddMenuItem("@7���ɵ�ͼ","")
	AddMenuItem("@7���ɵ�ͼ˵��","partydt_sm")
	AddMenuItem("@3��ͨ���ɵ�ͼ","partydt_y")
elseif(answer=="partydt_sm") then  --���ɵ�ͼ˵��
	LuaSay("������ɵ�ͼ�ķ�@2���������ʽ�@0,@1��կ[5��]������[5��]��ũ��[5��]����ɽ[5��]��BOSS����[5��]���չ�����[5��]@0.")
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
			LuaSay("���ۣ������鸣����,һͳ�����������µĵ�ͼ,һͳ������Զ�ӣ�")
		end
	elseif(LuaPartyLevel() == 1) then
		LuaSay("���ۣ����������ȻΪ1��,��1���İ��ɷ���,�����ʹ�����.����������2�����ɰ�.")
	end
-----------�޸��������	  --�˹��ܻ�δ��

-----------�޸İ�������
elseif(answer=="xgxy") then
	AddMenuItem("@7��������","")
	AddMenuItem("@7��������˵��","partyxy_sm")
	AddMenuItem("@3�޸İ�������","partyxy_y")
elseif(answer=="partyxy_sm") then
	LuaSay("������������һ��֮���֣�������ǰ��ɵ���꣬��־���Ͽ��޸ĳ������Լ����ɵ����԰ɣ�")
	LuaSay("�޸İ���������Ҫ����@25000ͭ��@0��")
elseif(answer=="partyxy_y") then
	LuaModifyPartyInfo()
------------------��������
elseif(answer=="bp3") then
	AddMenuItem("@7���ɲƲ�����","")
	AddMenuItem("@7��������˵��","bpyh_sm")
	AddMenuItem("@3��Ǯ����������","bgsj")
	AddMenuItem("�������������ѯ","bpyh")
elseif(answer=="bpyh_sm") then  --��������˵��
	LuaSay("���������Ǵ�����ɲƲ����ڰ��ɽ��裬����@2��������......�ȵ�")
	LuaSay("�������вƲ���Դ��@2��������@0��@2���ɳ�Աֱ�Ӵ���@0��@2��սʤ������@0")
	LuaSay("@2����ÿ24Сʱ@0����@4������կ@0@3�����ܹ�@0�������������ȡ@25%ͭ��(������10w��ֻ��ȡ10w)@0,@1ע�⣺��ȡͭ��24Сʱ������ٴ���ȡ@0")
elseif(answer=="bgsj") then  --��Ǯ����������
	if(PartyIsBuyMap() ==0) then  --δ��ͨ������կ
		AddMenuItem("@7��������","")
		AddMenuItem("1W","sgyw")
		AddMenuItem("10W","sgsw")
		AddMenuItem("50W","sgwsw")
		AddMenuItem("100w","sgybw")
	else
		LuaSay("��İ����Ѿ�������@2������կ@0���뵽������կ�н��в���")
	end
elseif(answer=="sgyw") then  --��1w
	if(LuaItemCount("coin")>=10000) then
		LuaSay("����:���Ϲ�@21wͭ��@0,����,���˹���Ҳ")
		LuaAddPartyMoney(10000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@21wͭ��@0,���֮����",0)
	else
		LuaSay("����:��@2ͭ�Ҳ���1w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgsw") then  --��10w
	if(LuaItemCount("coin")>=100000) then
		LuaSay("����:���Ϲ�ͭ��@210w@0,����,�������֮������")
		LuaAddPartyMoney(100000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@210wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("����:��@2ͭ�Ҳ���10w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgwsw") then  --��50w
	if(LuaItemCount("coin")>=500000) then
		LuaSay("����:���Ϲ�ͭ��@250w@0,����,�������֮������")
		LuaAddPartyMoney(500000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@250wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("����:��@2ͭ�Ҳ���50w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="sgybw")then  --��100w
	if(LuaItemCount("coin")>=1000000)then
		LuaSay("���ۣ�:���Ϲ�ͭ��@2100w@0,����,�������֮������")
		LuaAddPartyMoney(1000000,0)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0Ϊ���ɹ�����@2100wͭ��@0,���˹���Ҳ",0)
	else
		LuaSay("����:��@2ͭ�Ҳ���100w@0,�����Ŀɱ�,ȥ�ɣ�")
	end
elseif(answer=="bpyh") then  --�������������ѯ
	LuaSay("Ŀǰ������е�ͭ�ҿ��Ϊ@2"..LuaQueryPartyMoney().."@0��")
	if(LuaQueryRank() > 3)then    --������Ȩ ����ȡǮ
		LuaSay("��Ҫȡ��,��ص��Լ��İ��ɵ�ͼ,Ѱ�Ұ����ܹܣ�")
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
	if(PartyIsBuyMap() ==0) then  --δ��ͨ������կ
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
	else
		LuaSay("��İ����Ѿ�������@2������կ@0���뵽������կ����ȡ��")
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
	LuaSay("ע�⣺@1�ﹱ�̵�ĵ���ÿ��ȫ����������������@0���ȵ��ȵã�@2��������ÿ���ĵ�ˢ��@0")
elseif(answer=="offer_cx") then--��ѯ�ҵİﹱֵ
	if(LuaQueryRank()==0) then
		LuaSay("�㻹@2û�м������@0���Ͽ��Ҹ����ɼ����")
	elseif(LuaQueryRank()>=1) then
		LuaSay("��Ŀǰ�İﹱֵΪ��@3"..GetUserPartyOffer().."@0��")
	end
elseif(answer=="offer_shop") then--�ﹱ�̵�
	DoBuy()

------------------��������
elseif(answer=="partytask") then
	if(PartyIsBuyMap() ==1) then  --��ͨ�˰�����կ
		LuaSay("��İ����Ѿ�������@2������կ@0���뵽������կ�н�ȡ����")
	else
		AddMenuItem("@7ÿ��������","")
		if(LuaQueryTask("SYXT_bangpai_over")~=99)    then
			AddMenuItem("@3�������","RBSY")
		end
		AddMenuItem("@3��ȡ����","bp4")
		if(LuaPartyLevel()>= 1 ) then
			AddMenuItem("@3���ɶڻ���ѭ����","Tbptj")
		end
		if((LuaQueryTask("Tbprw003")==0 or LuaQueryTask("Tbprw003")==99) and LuaPartyLevel() >= 1 and LuaQuery("level")>=20)then
			AddMenuItem("@7̽�����ơ�ÿ�ա�","Tbprw003")
		end
		if(LuaQueryTask("Tbprw005")==0 or LuaQueryTask("Tbprw005")==99 and LuaQueryRank()>2)then
			AddMenuItem("@7�޾�Ȥζ��ÿ�ա�","Tbprw005")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=20 and LuaQuery("level")<30 and (LuaQueryTask("Tbprw8")==0 or LuaQueryTask("Tbprw8")==99)) then
			AddMenuItem("@7�������ʡ�ÿ�ա�","Tbprw8")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=30 and LuaQuery("level")<40 and (LuaQueryTask("Tbprw9")==0 or LuaQueryTask("Tbprw9")==99)) then
			AddMenuItem("@7�������ʡ�ÿ�ա�","Tbprw9")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=40 and LuaQuery("level")<50 and (LuaQueryTask("Tbprw10")==0 or LuaQueryTask("Tbprw10")==99)) then
			AddMenuItem("@7������ʳ��ÿ�ա�","Tbprw10")
		end
		if(LuaPartyLevel()>= 1 and LuaQueryTask("Tbprw1")==0) then
			AddMenuItem("�˽��᡾���顿","Tbprw1")
		end
		if(LuaQueryTask("Tbprw002")==0 and LuaQueryTask("Tbprw1")==99 and LuaQueryRank()>1)then
			AddMenuItem("���Կ��顾���顿","Tbprw002")
		end
		if(LuaPartyLevel()>= 1 and LuaQueryTask("Tbprw2")==0 and  LuaQueryTask("Tbprw1")==99 and LuaQuery("level")>=20) then
			AddMenuItem("ǿʢ֮�������顿","Tbprw2")
		end
		if(LuaPartyLevel() >= 1 and LuaQueryTask("Tbprw12")==0  and LuaQueryRank()>=2) then
			AddMenuItem("@5�������ڡ�ѭ����","Tbprw12")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=20 and LuaQuery("level")<30 and LuaQueryTask("Tbprw3")==0) then
			AddMenuItem("@5�����漱��ѭ����","Tbprw3")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=30 and LuaQuery("level")<40 and LuaQueryTask("Tbprw4")==0 ) then
			AddMenuItem("@5ְ�����ڡ�ѭ����","Tbprw4")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=40 and LuaQuery("level")<50 and LuaQueryTask("Tbprw5")==0 ) then
			AddMenuItem("@5�ռ�צ�ӡ�ѭ����","Tbprw5")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=50 and LuaQuery("level")<=60 and LuaQueryTask("Tbprw6")==0 ) then
			AddMenuItem("@5��ħ������ѭ����","Tbprw6")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>60 and LuaQueryTask("Tbprw7")==0 ) then
			AddMenuItem("@5��ҡֱ�ϡ�ѭ����","Tbprw7")
		end
		if(LuaPartyLevel() >= 1 and LuaQuery("level")>=50 and LuaQuery("level")<60 and LuaQueryTask("Tbprw11_1")==0) then
			AddMenuItem("���а�񡾻�һ��","Tbprw11_1")
		end
	end
--------------------------------��ȡ����
elseif(answer=="bp4") then
	local sKill_bp4={
		--1��ͼ��  2������  3ɱ�ּ�����  
		{1,"@4��������@0","@3����@0","task_kill/mon_008/Tbp4"},--10-20
		{2,"@4������Ӫ@0","@3��������@0","task_kill/mon_017/Tbp4"},--20-30
		{3,"@4��ˮ�԰�@0","@3��ˮ��@0","task_kill/mon_024/Tbp4"},--30-40
		{4,"@4�׹Ƕ�@0","@3���ޱ�@0","task_kill/mon_034/Tbp4"},--40-50
		{5,"@4̫��ɽ��@0","@3��ʯ��@0","task_kill/mon_037/Tbp4"},--50-60
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
		UpdateNPCMenu("jindi")
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
					UpdateNPCMenu("jindi")
				else
					LuaSay("����:��������Ҫ��Ū�ң����ɱ��"..(LuaQueryTask(sKill_bp4[n][4])-1).."��"..sKill_bp4[n][3].."��ɱ��@550��@0�������Ұɣ�")
				end
			end		
		elseif(LuaQueryTask("bprx1")==1) then  --������ɴȯ
			LuaSay("����:��������Ϊ��,���ֵ���[@2��ɴȯ@0]����,���@230����ÿ����ȡ8000ͭ������һ��@0���ٸ�����2000ͭ��,�Ա��֮����֮�ģ�")
			LuaAddTask("bprxTime",1)
			LuaGive("coin",8000,"Tbprx")
			AddMoneyToPartyBank(2000)
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
						UpdateNPCMenu("jindi")
					else
						LuaSay("����:��������Ҫ��Ū�ң�����Ҫɱ��"..sKill_bp4[n][2].."��"..sKill_bp4[n][3].."50���������ڲ�ɱ��@5"..(LuaQueryTask(sKill_bp4[n][4])-1).."����ɱ��@550��@0�������Ұɣ�")
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
	UpdateNPCMenu("jindi")		
elseif(answer=="dzqs") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>0) then
		DelItem("o_zhaiquan1y",1)
		LuaSetTask("bprx1",1)
		LuaSay("����:����֮��,����Ϊ����,Ȼ������,���ɴӹ´�,��@230����ÿ����ȡ8000ͭ������һ��@0��������2000���ɹ��ף�������˽�´�����")
	else
		LuaSay("����:������[��ɴȯ],��ȥ[�̳�-Ԫ��-����]����.����ڲƭ�ڹ�,��ն֮��")
	
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")	
elseif(answer=="10tb") then
	if(LuaItemCount("coin") >= 100000) then
		LuaSetTask("bprx1",2)
		LuaGive("coin",-100000,"Tbprx")
		LuaSay("����:����֮��,����Ϊ����,Ȼ������,���ɴӹ´�,��@230����ÿ����ȡ8000ͭ������һ��@0��������1000���ɹ��ף�������˽�´�����")
	else
		LuaSay("����:��ͭ�Ҳ���ʮ��,�����Ŀɱ�,ȥ�ɣ�")
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")	
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
			LuaSay("���ۣ�ÿ@220����@0����ȥ�ռ�@31��1��ë@0���Լ��ٰ��ɽ���Ϊ@3�������@0��")
			LuaSay("���ۣ�ÿ���@21�λ���2000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_1",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("���ۣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaSay("���ۣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_1jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1) then
			LuaSay("���ۣ��㻹û�ռ���@31��1��ë@0.")
		end
	end
elseif(answer=="Tbptj_2") then
	if(LuaQueryTask("Tbptj_2")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_2time"))
		if(shijiancha>=1200) then
			LuaSay("���ۣ�ÿ@220����@0����ȥ�ռ�@31��1��ë@0��@31��1����@0���Լ��ٰ��ɽ���Ϊ@3�������@0��")
			LuaSay("���ۣ�ÿ���@21�λ���2500����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_2",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("���ۣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_2")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")>=1 )then
			LuaSay("���ۣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_2jl")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("���ۣ��㻹û�ռ���@31��1��ë@0��@31��1����@0.")
		elseif(LuaItemStatusNormalCount("o_material_11")>=1 and LuaItemStatusNormalCount("o_material_29")<1) then
			LuaSay("���ۣ�@31��ë@0�ǹ��ˣ�@31��1����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_11")<1 and LuaItemStatusNormalCount("o_material_29")>=1) then
			LuaSay("���ۣ�@31����@0�ǹ��ˣ�@31��1��ë@0������.")
		end
	end

elseif(answer=="Tbptj_3") then
	if(LuaQueryTask("Tbptj_3")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_3time"))
		if(shijiancha>=1200) then
			LuaSay("���ۣ��������ڵİ��Ϊ@3�������@0��")
			LuaSay("���ۣ�ÿ@220����@0����ȥ�ռ�@31��2��ë@0���Լ��ٰ��ɽ���Ϊ@3�ļ����@0��")
			LuaSay("���ۣ�ÿ���@21�λ���3000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_3",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("���ۣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_3")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1)then
			LuaSay("���ۣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_3jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1) then
			LuaSay("���ۣ��㻹û�ռ���@31��2��ë.")
		end
	end

elseif(answer=="Tbptj_4") then
	if(LuaQueryTask("Tbptj_4")==0 ) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_4time"))
		if(shijiancha>=1200) then
			LuaSay("���ۣ��������ڵİ��Ϊ@3�ļ����@0��")
			LuaSay("���ۣ�ÿ@220����@0����ȥ�ռ�@31��2��ë@0��@31��2����@0���Լ��ٰ��ɽ���Ϊ@3�弶���@0��")
			LuaSay("���ۣ�ÿ���@21�λ���3500����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_4",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("���ۣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_4")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")>=1 )then
			LuaSay("���ۣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_4jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("���ۣ��㻹û�ռ���@31��2��ë@0��@31��2����@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=1 and LuaItemStatusNormalCount("o_material_30")<1) then
			LuaSay("���ۣ�@32��ë@0�ǹ��ˣ�@31��2����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_12")<1 and LuaItemStatusNormalCount("o_material_30")>=1) then
			LuaSay("���ۣ�@32����@0�ǹ��ˣ�@31��2��ë@0������.")
		end
	end
elseif(answer=="Tbptj_5") then
	if(LuaQueryTask("Tbptj_5")==0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbptj_5time"))
		if(shijiancha>=1200) then
			LuaSay("���ۣ��������ڵİ��Ϊ@3�弶���@0��")
			LuaSay("���ۣ�ÿ@220����@0����ȥ�ռ�@32��2��ë@0��@32��2����@0���Լ��ٰ��ɽ���Ϊ@3����@0��")
			LuaSay("���ۣ�ÿ���@21�λ���4000����Ǯ@0��@2�ۼ�10��@0��Ϊ���ɹ���@21���������@0��")
			LuaSetTask("Tbptj_4",1)
			LuaSetTask("Tbptj_5time",GetCurrentTime())
			UpdateMenu()
			UpdateNPCMenu("jindi")
		else
			LuaSay("���ۣ�@220���ӻ�û��@0���������ҿ�ԣ��ֻҪ�ڻ�һ��һ�������Ա���ʱֻ��Ϳ����ˡ�")
		end
	elseif(LuaQueryTask("Tbptj_5")==1) then
		if(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")>=2 )then
			LuaSay("���ۣ���лӢ��Ϊ���ɽ������������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbptj_5jl")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("���ۣ��㻹û�ռ���@32��2��ë@0��@32��2����@0.")
		elseif(LuaItemStatusNormalCount("o_material_12")>=2 and LuaItemStatusNormalCount("o_material_30")<2) then
			LuaSay("���ۣ�@32��2��ë@0�ǹ��ˣ�@32��2����@0������.")
		elseif(LuaItemStatusNormalCount("o_material_12")<2 and LuaItemStatusNormalCount("o_material_30")>=2) then
			LuaSay("���ۣ�@32��2����@0�ǹ��ˣ�@32��2��ë@0������.")
		end
	end
elseif(answer=="Tbptj_1jl") then
	if(LuaQueryTask("Tbptj_1")==1) then
		if(LuaItemStatusNormalCount("o_material_11")>=1)then
			LuaAddTask("Tbptj_cs",1)---------����������ɴ���
			local jinyan
			local level=LuaQuery("level")
			if(level>80)then
			level=80
		end
			if(LuaQuery("level")<=10) then  --С��10��
				jinyan=LuaQuery("level")*100+level^2*15
			elseif(LuaQuery("level")<=20) then  --10-20
				jinyan=LuaQuery("level")*350+level^2*15
			elseif(LuaQuery("level")<=30) then	--20-30
				jinyan=LuaQuery("level")*800+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*1800+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_1")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			DelItem("o_material_11",1)
			LuaDelTask("Tbptj_1")
			LuaSetTask("Tbptj_1time",GetCurrentTime())
			AddMoneyToPartyBank(2000)-------���Ӱ���Ǯ
			LuaSay("���ۣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_2jl") then
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
				jinyan=LuaQuery("level")*900+level^2*15
			elseif(LuaQuery("level")<=60) then	--30-60
				jinyan=LuaQuery("level")*2200+level^2*15
			else
				jinyan=level*3000+level^2*15
			end
			LuaAddJx("combat_exp",jinyan,"Tbptj_2")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
			LuaSay("���ۣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			AddMoneyToPartyBank(2500)-------���Ӱ���Ǯ
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_3jl") then
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
			LuaSay("���ۣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_4jl") then
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
			LuaSay("���ۣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
elseif(answer=="Tbptj_5jl") then
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
			LuaSay("���ۣ����������@2���ɶڻ���ѭ����@0����@2"..LuaQueryTask("Tbptj_cs").."@0��,10��ʱ������@21���������@0��@2�Զ���0@0.")
			if(LuaQueryTask("Tbptj_cs")==10) then
				LuaPartyRepute(1,0)------------���Ӱ�������
				LuaAddAchievementSchedule("PartyRepute_mun",1)
				LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@21�����������2000ͭ��@0!",0)
				LuaDelTask("Tbptj_cs")
			end
			LuaAddAchievementSchedule("PartyTask_num",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end		
--------------------------------�˽��᡾���顿
elseif(answer=="Tbprw1") then
	if(LuaQueryTask("Tbprw1")==0) then
		LuaSay("���ۣ�"..LuaQueryStr("name").."����ӭ��ĵ�����")
		LuaSay("���ۣ���Ϊ����֮�ۣ����°������������¼�������ǿʢ�Կ���𢣬�ʰ����˹���֮ϣ������Ƚ�����ҵ֮�ݾ���Խǿ��İ�ὫԽ�ù���������")
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
		UpdateNPCMenu("jindi")
    end
--------------------------------------------���Կ���
elseif(answer=="Tbprw002")then 
	if(LuaQueryTask("Tbprw002")==0)then
		LuaSay("���ۣ�������С�£����ǹ�������Ǵ��£����ھ������������㣬������԰��ɵ�֪ʶ�˽��ж��٣�")
		LuaSay("���ۣ�֪��������������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��Ǯ���ܽ���","NO_11")
		AddMenuItem("��100wͭ�ң��ȼ��ﵽ20�������ɽ���","N11_ANSWER")
		AddMenuItem("��100wͭ�Ҿ��ܽ���","NO_11")
		AddMenuItem("�ȼ��ﵽ20���Ϳ��Խ���","NO_11")
	elseif(LuaQueryTask("Tbprw002")==1)then
		LuaSay("���ۣ��������������ɣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���Ӱ��������������ﵽ250,��������","N21_ANSWER")
		AddMenuItem("��־�������","NO_21")
		AddMenuItem("��ͭ�Ҿ�������","NO_21")
		AddMenuItem("������������ɾ�������","NO_21")
	elseif(LuaQueryTask("Tbprw002")==2)then
		LuaSay("���ۣ�����������Ѷȵ����⣬֪���������ļ���ְλ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���ڡ�����������","NO_31")
		AddMenuItem("���ڡ�������Ԫ�ϡ�����","NO_31")
		AddMenuItem("���ڡ�Ⱥ����Ԫ�ϡ�����","NO_31")
		AddMenuItem("���ڡ����������ϡ�����","N31_ANSWER")
	elseif(LuaQueryTask("Tbprw002")==3)then
		LuaSay("���ۣ�����������ɣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����ͭ�Ҹ����ɣ����ɼ���","NO_41")
		AddMenuItem("�ȼ��ﵽ10���󣬰�����ļ�����󣬷��ɼ���","N41_ANSWER")
		AddMenuItem("�����������鸣���켴�ɼ���","NO_41")
		AddMenuItem("�ȼ��ﵽ10���Ϳɼ������","NO_41")
		end
-----------------------------------------------------------------����
elseif(answer=="NO_11")then
	LuaSay("���ۣ�����ɣ���ô�򵥵����ⶼ�������������")
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
		LuaSay("���ۣ���ô�򵥵�����������Ҳûʲôϡ��ģ���������")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_21")then
	LuaSay("���ۣ������ˣ������ٴ�")
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
		LuaSay("���ۣ������㻹���������ӵ����������")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_31")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
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
		LuaSay("���ۣ������Ǵ����������Ҳ֪������������һ�����⡣")
		DoTalk("Tbprw002")
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_41")then
	LuaSay("���ۣ��������ȷʵ�����ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw002",3)
	UpdateNPCMenu("jindi")
elseif(answer=="N41_ANSWER")then
	if(LuaQueryTask("Tbprw002")<99) then
		LuaSetTask("Tbprw002",99)
		LuaSay("���ۣ�������̫�����ˣ���Ȼȫ����֪����")
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
		UpdateNPCMenu("jindi")
end 
---------------------------------------------------ǿʢ֮�������顿
elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==0) then
		LuaSay("���ۣ�@4��Դ��@0��@3Ƚ��@0��@4������Ӫ@0��@3л��@0����һ���󽫣���ȿ�ȥ��̰��ɵ�ǿʢ֮����")
		LuaSetTask("Tbprw2",1)      -------��־�����
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw2")==1) then
		if(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("���ۣ���@4��Դ��@0��@3Ƚ��@0�͵�@4������Ӫ@0��@3л��@0�ɣ�")
		elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0 ) then
			LuaSay("���ۣ�����ȡ����ȡ��һ�룬��ȥ@4������Ӫ@0��@3л��@0�ɣ�")
		elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99 ) then 
			LuaSay("���ۣ�����ȡ����ȡ��һ�룬��ȥ@4��Դ��@0��@3Ƚ��@0�ɣ�")
		else
			LuaSay("���ۣ�������Ӧ��֪��������������ѽݾ��˰ɡ�")
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
		UpdateNPCMenu("jindi")
    end
---------------------------------------------------̽������
elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		-------------20----------29
		if(LuaQuery("level")>=20 and LuaQuery("level")<=29)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("���ۣ����ɳ��������Ʋ��ȣ�����Ѱ��ϰ��֮������˵��@4��������@0�и���@3����@0�ģ������м��⣡")
				LuaSay("���ۣ���ȥ̽��̽�֣�ȡ���澭��ظ��ң�")
				LuaSetTask("Tbprw003",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==1)then
				LuaSay("���ۣ��Ͻ�ȥ��@4��������@0��@3����@0��")
			elseif(LuaQueryTask("Tbprw003")==2)then
				LuaSay(LuaQueryStr("name").."��ϰ������ƽ���ͣ�ѭ�򽥽����������湦��")
				LuaSay("���ۣ���֮�����������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		--------------30---------39
		if(LuaQuery("level")>=30 and LuaQuery("level")<=39)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("���ۣ��⿿�����ΰ���Ǿ٣���˵��@4��ˮ�԰�@0�и���@3����@0�ģ���������֮�º��м��⣡")
				LuaSay("���ۣ���ȥ̽��̽�֣�ȡ���澭��ظ��ң�")
				LuaSetTask("Tbprw003",3)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==3)then
				LuaSay("���ۣ��Ͻ�ȥ��@4��ˮ�԰�@0��@3����@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay(LuaQueryStr("name").."��������ʵʩ�������ͷ����������������")
				LuaSay("���ۣ���֮�����������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		---------------40---------49
		if(LuaQuery("level")>=40 and LuaQuery("level")<=49)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("���ۣ���������Խ�����ٵ���սҲ��Խ�࣬ȥ��@4����ؿ�@0��@3��������@0�ֽ�һ�°�!")
				LuaSetTask("Tbprw003",5)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==5)then
				LuaSay("���ۣ��Ͻ�ȥ@4����ؿ�@0��@3��������@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==6)then
				LuaSay(LuaQueryStr("name").."����������������������ּ���ܶ�����")
				LuaSay("���ۣ���֮���������ˣ���ȡ������")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		--------------50----------59
		if(LuaQuery("level")>=50 and LuaQuery("level")<=59)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("���ۣ������������������������������Ŀ죬˥��Ҳ�찡��ȥ��@4��ɽ��@0��@3����@0���һ�°ɣ�")
					LuaSetTask("Tbprw003",7)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==7)then
				LuaSay("���ۣ��Ͻ�ȥ��@4��ɽ��@0��@3����@0�ɣ�")
			elseif(LuaQueryTask("Tbprw003")==8)then
				LuaSay(LuaQueryStr("name").."�������䲻��Ȩ����������ȴ���Ŷ԰��յ����£�Ҫ����ΪӪ����")
				LuaSay("���ۣ���֮���������ˣ���ȡ�����ɣ�")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","Tbprw003jl")
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
		------------------------60����
		if(LuaQuery("level")>=60)then
			if(LuaQueryTask("Tbprw003")==0)then
				LuaSay("���ۣ����ڰ���ҩƷ�����൱��ȱ������ȥ@4��������@0��@3ҩƷ����@0���ﹺ��һЩҩ�")
				LuaSay("���ۣ�����@2��ɢ����Ҷɢ��10��@0��ظ�����ʱ@2�����@0Ŷ")
				LuaSetTask("Tbprw003",9)
				LuaSetTask("Tbprw003time",GetCurrentTime())
				UpdateTopSay("��ҩ�����˴�����ҩƷ")
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(LuaQueryTask("Tbprw003")==9)then
				if(LuaItemCount("o_drug_hp1")>=10 and LuaItemCount("o_drug_hp2")>=10)then
					local tgtime=GetCurrentTime()-LuaQueryTask("Tbprw003time")
					if(tgtime<=300)then
						LuaSay("���ۣ�������ֵ�ñ����ȥ�콱���ɣ�")
						AddMenuItem("�������","")
						AddMenuItem("��ȡ����","Tbprw003jl")
					else
						LuaSay("���ۣ��Ѿ�����@2�����@0�ˣ������ٶ�@�������������ɣ�")
						LuaSetTask("Tbprw003",0)
						DelItem("o_drug_hp1",10)
						DelItem("o_drug_hp2",10)
					end
				else
					LuaSay("���ۣ��㻹û��@2��ɢ����Ҷɢ��10��@0�أ���ȥ@4��������@0��@3ҩƷ����@0����ɣ�")
				end
			elseif(LuaQueryTask("Tbprw003")==99)then
				LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
			end
		end
	else
		LuaSay("���ۣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaSetTask("Tbprw003",0)
		DoTalk("Tbprw003")
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
---------------------------------------------�޾�Ȥζ��ÿ�ա�
elseif(answer=="Tbprw005")then
	if(LuaQueryStrTask("Tbprw005day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw005")==0)then
			LuaSay("���ۣ���Ծһ�����գ���������Ȥ���Խת�俼��������̰ɣ�������Ŷ")
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
			LuaSay("���ۣ�����������Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("���ۣ��µ�һ�죬�µĿ�ʼ������Ŭ���ɣ�")
		LuaSetTask("Tbprw005day",GetCurrentDay())
		LuaSetTask("Tbprw005",0)
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
--------------------------------	����
elseif(answer=="NO_01")then
		LuaSay("���ۣ�����ɣ���ô�򵥵����ⶼ�������������")
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
			jinyan=level*60+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*180+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*320+level*level*2
		else
			jinyan=level*420+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ���ô�򵥵�����������Ҳûʲôϡ��ģ���������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_02")then
	LuaSay("���ۣ������ˣ������ٴ�")
	LuaSetTask("Tbprw005",1)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*60+level*level*2
		elseif(LuaQuery("level")<=30) then	--20-30
			jinyan=level*190+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*340+level*level*2
		else
			jinyan=level*430+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������㻹���������ӵ����������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_03")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��.")
	LuaSetTask("Tbprw005",2)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*200+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*350+level*level*2
		else
			jinyan=level*450+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������Ǵ����������Ҳ֪������������һ������.")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_04")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",3)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*210+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*360+level*level*2
		else
			jinyan=level*460+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������Ǵ����������Ҳ֪�����������㼸������ɡ�")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_05")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",4)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*230+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*380+level*level*2
		else
			jinyan=level*480+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="NO_06")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",5)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*240+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*390+level*level*2
		else
			jinyan=level*490+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_07")then
	LuaSay("���ۣ��������ȷʵ��һ���ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",6)
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			jinyan=level*245+level*level*2
		elseif(LuaQuery("level")<=60) then	--30-60
			jinyan=level*400+level*level*2
		else
			jinyan=level*500+level*level*2
		end
			LuaAddJx("combat_exp",jinyan,"Tbprw005")
			ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaSay("���ۣ������Ǵ����������Ҳ֪������������һ�����")
		DoTalk("Tbprw005")
	end
elseif(answer=="NO_08")then
	LuaSay("���ۣ��������ȷʵ�����ѶȰ��������������ѡ��")
	LuaSetTask("Tbprw005",7)
	UpdateMenu()
	UpdateNPCMenu("jindi")
elseif(answer=="N08_ANSWER")then
	if(LuaQueryTask("Tbprw005")<99) then
		if(LuaQueryTask("faction921")==1)then
			LuaSay("��ʾ����������ھŻ����")
			LuaSetTask("faction921",2)
		end
        LuaSetTask("Tbprw005",99)
		LuaSay("���ۣ�������̫�����ˣ���Ȼȫ����֪����")
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
		UpdateNPCMenu("jindi")
	end 
---------------------------------�������ڡ�ѭ����
elseif(answer=="Tbprw12") then	
	if(LuaQueryTask("Tbprw12")==0) then
		LuaSay("���ۣ�һ������Ҫ�뷢չΪ@3�������@0����Ҫ����ʲô���ǰ��ɵĺ��ĳ�Ա�������ǡ�")
		LuaSay("���ۣ���ˣ���Ҫ���ñ����Ǻ���Ҫ�ġ�")
		LuaSetTask("Tbprw12_Taskday",GetCurrentDay())
		if(LuaQuery("level")>=20 and LuaQuery("level")<30) then
			LuaSay("���ۣ�ȥ��@4�����@0��@3BOSS���а��@0���ϵ�@3ħ��@0�������ҡ�")
			LuaSetTask("Tbprw12_1",1)
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			LuaSay("���ۣ�ȥ��@4��ˮ�ӵ�@0��@3BOSS����@0���ϵ�@3�ߵ�@0�������ҡ�")
			LuaSetTask("Tbprw12_2",1)
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			LuaSay("���ۣ�ȥ��@4�׹Ƕ��@0��@3BOSS����ħ��@0���ϵ�@3���޾�˿@0�������ҡ�")
			LuaSetTask("Tbprw12_3",1)
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			LuaSay("���ۣ�ȥ��@4̫�йȵ�@0��@3BOSS������@0���ϵ�@3�����@0�������ҡ�")
			LuaSetTask("Tbprw12_4",1)
		elseif(LuaQuery("level")>=60) then
			LuaSay("���ۣ�ȥ��@4������Ѩ@0��@3BOSS���꽫��@0���ϵ�@3����ӡ@0�������ҡ�")
			LuaSetTask("Tbprw12_5",1)
		end
		LuaSetTask("Tbprw12",1)
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
			LuaSay("���ۣ�������@2������ǰ@0������@3�������ڡ�ѭ����@0��δ��ɣ������Զ�ɾ������")
			LuaSay("���ۣ������ڿ��Խ�����@3�������ڡ�ѭ����@0�ˣ�")
			UpdateMenu()
			UpdateNPCMenu("jindi")
			DoTalk("Tbprw12")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")<1) then
			LuaSay("���ۣ���ȥ@4�����@0��@5BOSS���а��@0ɱ�˰�@3ħ��@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")<1) then
			LuaSay("���ۣ���ȥ@4��ˮ�ӵ�@0��@5BOSS����@0ɱ�˰�@3�ߵ�@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")<1) then
			LuaSay("���ۣ���ȥ@4�׹Ƕ��@0��@5BOSS����ħ��@0ɱ�˰�@3���޾�˿@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")<1) then
			LuaSay("���ۣ���ȥ@4̫�йȵ�@0��@5BOSS������@0ɱ�˰�@3�����@0�������ҡ�")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")<1) then
			LuaSay("���ۣ���ȥ@4������Ѩ@0��@5BOSS���꽫��@0ɱ�˰�@3����ӡ@0�������ҡ�")
		end
		if(LuaQueryTask("Tbprw12_1")==1 and LuaItemCount("o_mission408")>=1) then
			LuaSay("���ۣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_1jl")
		elseif(LuaQueryTask("Tbprw12_2")==1 and LuaItemCount("o_mission409")>=1) then
			LuaSay("���ۣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_2jl")
		elseif(LuaQueryTask("Tbprw12_3")==1 and LuaItemCount("o_mission410")>=1) then
			LuaSay("���ۣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_3jl")
		elseif(LuaQueryTask("Tbprw12_4")==1 and LuaItemCount("o_mission411")>=1) then
			LuaSay("���ۣ��������и���ʵ֮����Ҳ��")
			LuaAddTask("Tbprw12_cs",1)---------����������ɴ���
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw12_4jl")
		elseif(LuaQueryTask("Tbprw12_5")==1 and LuaItemCount("o_mission412")>=1) then
			LuaSay("���ۣ��������и���ʵ֮����Ҳ��")
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
		LuaSay("���ۣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("���ۣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_1e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("���ۣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("���ۣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_2e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("���ۣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("���ۣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@7�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_3e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("���ۣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("���ۣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@3�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_4e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu() 
		UpdateNPCMenu("jindi")
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
		LuaSay("���ۣ�Ӣ�۽����������@3�������ڡ�ѭ����@0��@3����@0Ϊ��@3"..LuaQueryTask("Tbprw12_cs").."@0�Ρ�")
		if(LuaQueryTask("Tbprw12_cs")<3)then
			LuaSay("���ۣ�Ӣ��ֻҪ���������@3"..(3-LuaQueryTask("Tbprw12_cs")).."@0��@3�������ڡ�ѭ����@0������ȡ���⽱��Ŷ��")
		elseif(LuaQueryTask("Tbprw12_cs")==3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����3��@0��")
				LuaSetTask("Tbprw12_5e",1) -------���⽱���жϲ���
				AddMenuItem("��ȡ���⽱��","")
				AddMenuItem("��ȡ���⽱��","Tbprw12_ejl")
		elseif(LuaQueryTask("Tbprw12_cs")>3) then
			LuaSay("���ۣ�������Ѿ��������@3�������ڡ�ѭ����@3"..LuaQueryTask("Tbprw12_cs").."@0��@0��û�ж��⽱���ˡ�")
		end
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		LuaSetTask("Tbprw12_1e",0)
	elseif(LuaQueryTask("Tbprw12_2e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSetTask("Tbprw12_2e",0)
	elseif(LuaQueryTask("Tbprw12_3e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSetTask("Tbprw12_3e",0)
	elseif(LuaQueryTask("Tbprw12_4e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",2000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������	
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSetTask("Tbprw12_4e",0)
	elseif(LuaQueryTask("Tbprw12_5e")==1) then
		LuaAddJx("combat_exp",jinyan,"Tbprw12")
		ChangePartyTaskExp(LuaQuery("partyid"),jinyan) ---�ۻ��������������
		LuaGive("coin",4000,"Tbprw12")------����Ǯ
		AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
		LuaPartyRepute(2,0)------------���Ӱ�������
		LuaAddAchievementSchedule("PartyRepute_mun",2)
		LuaPartyMsg("@3"..LuaQueryStr("name").."@0��ɰ�������Ϊ��������@22�����������3000ͭ��@0!",0)
		LuaSetTask("Tbprw12_5e",0)
	end
-------------------------------------------------------�����漱��ѭ����
elseif(answer=="Tbprw3") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw3_Taskday")) then
		LuaSetTask("Tbprw3_cs",0)
	end
	if(LuaQueryTask("Tbprw3_cs")<5)then
		if(LuaQueryTask("Tbprw3")==0) then
			LuaSay("���ۣ������������ˡ�")
			LuaSay("���ۣ�����@4��Ӫǰ��@0���ִ���@3����@0����ȥ����@320������@0�Զ�����г��")
			LuaSay("���ۣ����˶Զ������ģ������겻�Ṽ������֮������")
			LuaSetTask("Tbprw3",1)      -------��־�����
			LuaSetTask("task_kill/mon_020/Tbprw3",1)--------����ɱ�ּ�����
			UpdateTopSay("ȥ��Ӫǰ��ɱ20������")
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")>=21 ) then
			LuaSay("���ۣ���лӢ��Ϊ�������ǽ��ѣ�ʵ�˹���֮�Ұ���")
			AddMenuItem("@7�������","")
			LuaAddTask("Tbprw3_cs",1)---------����������ɴ���
			AddMenuItem("��ȡ����","Tbprw3jl")
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw3")==1 and LuaQueryTask("task_kill/mon_020/Tbprw3")<21 ) then
			a=LuaQueryTask("task_kill/mon_020/Tbprw3")-1
			LuaSay("���ۣ����ɱ��@3"..a.."������@0����ȥ@4��Ӫǰ��@0����ɱ����ɣ�")
		end
	elseif(LuaQueryTask("Tbprw3_cs")>=5)then
		LuaSay("���ۣ�������Ѿ��������@3�����漱��ѭ����@0�����ˣ������������ɣ�")
	end
elseif(answer=="Tbprw3jl")then  -----------------������

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
			UpdateNPCMenu("jindi")
		end
    end
--------------------------------------------------ְ�����ڡ�ѭ����
elseif(answer=="Tbprw4") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw4_Taskday")) then
		LuaSetTask("Tbprw4_cs",0)
	end
	if(LuaQueryTask("Tbprw4_cs")<5)then
		if(LuaQueryTask("Tbprw4")==0) then
			LuaSay("���ۣ�������������У���������ŭ��")
			if(LuaQuery("level")<=35) then
				local r = LuaRandom(2)                       --------��������
				if(r==0)then
					LuaSay("���ۣ�@4μˮ֮��@0��@3����@0���У���ȥ��ɱ@325ֻ@0�Կ�µ��ġ�")
					LuaSay("���ۣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_0",1)
					LuaSetTask("task_kill/mon_028/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��μˮ֮������25ֻ����")
				elseif(r==1)then
					LuaSay("���ۣ���ȥ@4��������@0����@325ֻ��Ҷ��@0��οһ�¹µ��İɣ�")
					LuaSay("���ۣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_1",1)
					LuaSetTask("task_kill/mon_030/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��������������25ֻ��Ҷ��")
				end
			elseif(LuaQuery("level")>35) then
				local r = LuaRandom(3)
				if(r==0)then
					LuaSay("���ۣ���ȥ@4ʳ�˹�@0����@325ֻ����@0��οһ�¹µ��İɣ�")
					LuaSay("���ۣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_2",1)
					LuaSetTask("task_kill/mon_032/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				elseif(r==1)then
					LuaSay("���ۣ���ȥ@4�׹Ƕ�@0����@325ֻʬ��@0��οһ�¹µ��İɣ�")
					LuaSay("���ۣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_3",1)
					LuaSetTask("task_kill/mon_033/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("���׹Ƕ�����25ֻʬ��")
				elseif(r==2)then
					LuaSay("���ۣ���ȥ@4ʳ�˹�@0����@325ֻ����@0��οһ�¹µ��İɣ�")
					LuaSay("���ۣ�ֻҪ��@310������@0������@3�������@0,�Ϳ��Եõ�@2�����Ľ���@0Ŷ��@!")
					LuaSetTask("Tbprw4_4",1)
					LuaSetTask("task_kill/mon_031/Tbprw4",1)   -----------����ɱ�ּ�����
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				end
			end
			LuaSetTask("Tbprw4",1)
			local time=GetCurrentTime()
			LuaSetTask("Tbprw4time",time)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw4")==1) then
			if((LuaQueryTask("task_kill/mon_028/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_030/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_032/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_033/Tbprw4")-1)>=25 or (LuaQueryTask("task_kill/mon_031/Tbprw4")-1 )>=25) then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw4time"))
				if(shijiancha<=600) then
					LuaSay("����:��ô������������ˣ�Ӣ�۵��ٶ���죬�ҹ���û�п����ˡ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw4jl_1")
				elseif(shijiancha>600) then
					LuaSay("����:��˵�����������,�����ٶ�̫����,���¿�û��˫�������ˡ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw4jl_2")
				end
			else
				if(LuaQueryTask("Tbprw4_0")==1) then
					LuaSay("����:Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_028/Tbprw4")-1).."������@0����ȥ@4μˮ֮��@0����ɱ�ɣ�")
					UpdateTopSay("��μˮ֮������25ֻ����")
				elseif(LuaQueryTask("Tbprw4_1")==1) then
					LuaSay("����:Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_030/Tbprw4")-1).."����Ҷ��@0����ȥ@4��������@0����ɱ�ɣ�")
					UpdateTopSay("��������������25ֻ��Ҷ��")
				elseif(LuaQueryTask("Tbprw4_2")==1) then
					LuaSay("����:Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_032/Tbprw4")-1).."������@0����ȥ@4ʳ�˹�@0����ɱ�ɣ�")
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				elseif(LuaQueryTask("Tbprw4_3")==1) then
					LuaSay("����:Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_033/Tbprw4")-1).."��ʬ��@0����ȥ@4�׹Ƕ�@0����ɱ�ɣ�")
					UpdateTopSay("���׹Ƕ�����25ֻʬ��")
				elseif(LuaQueryTask("Tbprw4_4")==1) then
					LuaSay("����:Ӣ�۲�ɱ��@3"..(LuaQueryTask("task_kill/mon_031/Tbprw4")-1 ).."������@0����ȥ@4ʳ�˹�@0����ɱ�ɣ�")
					UpdateTopSay("��ʳ�˹�����25ֻ����")
				end
			end
		end
	elseif(LuaQueryTask("Tbprw4_cs")>=5)then
		LuaSay("���ۣ�������Ѿ��������@3ְ�����ڡ�ѭ����@0�����ˣ������������ɣ�")
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
			UpdateNPCMenu("jindi")
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
			UpdateNPCMenu("jindi")
		end
    end
-------------------------------------------------�ռ�צ�ӡ�ѭ����
elseif(answer=="Tbprw5") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw5_Taskday")) then
		LuaSetTask("Tbprw5_cs",0)
	end
	if(LuaQueryTask("Tbprw5_cs")<10)then
		if(LuaQueryTask("Tbprw5")==0) then
			LuaSay("���ۣ���˵@4����ؿ�@0��һ�ֹ����@3�Ի�@0��")
			LuaSay("���ۣ����ڼ���@3�Ի���צ��@0����һ��������Ӣ�ۿ�ȥ�ռ�@310���Ի���צ��@0���������ҡ�")
			LuaSetTask("Tbprw5",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw5")==1) then
			if(LuaItemCount("o_mission400")>=10) then -------o_mission400    �Ի���צ��
				if(LuaQueryTask("Tbprw5_cs")<5) then
					LuaSay("���ۣ����һ����һ���ռ���@350���Ի���צ��@0�����ж��⽱��Ŷ��")
				elseif(LuaQueryTask("Tbprw5_cs")>=5 and LuaQueryTask("Tbprw5_cs")<10) then
					LuaSay("���ۣ����һ����һ���ռ���@3100���Ի���צ��@0���и���ḻ�Ķ��⽱��Ŷ��")
				end
				AddMenuItem("@7�������","")
				LuaAddTask("Tbprw5_cs",1)---------����������ɴ���
				AddMenuItem("��ȡ����","Tbprw5jl")
			elseif(LuaItemCount("o_mission400")<10) then
				LuaSay("���ۣ��㻹û���ռ���@310���Ի���צ��@0����ȥ@4����ؿ�@0ɱ@3�Ի�@0�ɡ�")
				UpdateTopSay("�ռ�10���Ի���צ���������Ұɣ�")
			end
		end
	elseif(LuaQueryTask("Tbprw5_cs")>=10)then
		LuaSay("���ۣ�������Ѿ�����ʮ��@3�ռ�צ�ӡ�ѭ����@0�����ˣ������������ɣ�")
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
			UpdateNPCMenu("jindi")
		end
	end
	if(LuaQueryTask("Tbprw5_cs")==5)then
		LuaSay("���ۣ�Ӣ�۽����Ѿ��ռ���@350���Ի���צ��@0��")
		AddMenuItem("��ȡ���⽱��","")
		AddMenuItem("��ȡ���⽱��","Tbprw5jl_e1")
	elseif(LuaQueryTask("Tbprw5_cs")==10)then
		LuaSay("���ۣ�Ӣ�۽����Ѿ��ռ���@3100���Ի���צ��@0��")
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
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end
--------------------------------------------------
elseif(answer=="Tbprw6") then
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw6")==0) then
		LuaSay("���ۣ��������ʢ�У�@4������@0��@4������Ĺ@0�Ѿ�������@3���@0��@3����ʬ@0��")
		LuaSay("���ۣ���Ӣ����ȥ��ɱ@4������@0��@315�����@0��@4������Ĺ@0��@315������ʬ@0��")
		LuaSetTask("Tbprw6",1)
		LuaSetTask("task_kill/mon_042/Tbprw6",1)   -----------����ɱ�ּ�����
		LuaSetTask("task_kill/mon_044/Tbprw6",1)   -----------����ɱ�ּ�����
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw6")==1) then
		if(LuaQueryTask("task_kill/mon_042/Tbprw6") >= 16 and  LuaQueryTask("task_kill/mon_044/Tbprw6") >= 16) then
			LuaSay("���ۣ���лӢ�ۣ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw6jl")
		else
			local a1=LuaQueryTask("task_kill/mon_042/Tbprw6")-1
			local a2=LuaQueryTask("task_kill/mon_044/Tbprw6")-1
			if(a1<15 and a2<15) then
				LuaSay("���ۣ���Ҫ�����ˣ���@4������@0��@315�����@0��@4������Ĺ@0��@315������ʬ@0����ûɱ����")
				UpdateTopSay("��������͵�����Ĺ�ֱ��ɱ15������15������ʬ")
			elseif(a1>=15 and a2<15) then
				LuaSay("���ۣ�@3���@0�Ѿ�ɱ���ˣ���@3����ʬ@0��ɱ��"..a2.."��������ȥ@4������Ĺ@0ɱ@3����ʬ@0�ɡ�")
			elseif(a2>=15 and a1<15) then
				LuaSay("���ۣ�@3����ʬ@0�Ѿ�ɱ���ˣ���@3���@0��������"..a1.."��������ȥ@4������@0����@3���@0�ɡ�")
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
			UpdateNPCMenu("jindi")
		end
	end
--------------------------------------------------��ҡֱ�ϡ�ѭ����
elseif(answer=="Tbprw7") then
	if(GetCurrentDay()~=LuaQueryStrTask("Tbprw7_Taskday")) then
		LuaSetTask("Tbprw7_cs",0)
	end
	if(LuaQueryTask("Tbprw7_cs")<=30) then
		if(LuaQueryTask("Tbprw7")==0) then
			LuaSay("���ۣ������Ѿ�@3"..LuaQuery("level").."��@0�ˣ������ڵİ��ɵȼ���@3"..LuaPartyLevel().."@0�������������Է��Ÿ����ˡ�")
			LuaSay("���ۣ��������������⻼��������Ҫ���Ͱ�Ḩ���԰������ҡ�")
			LuaSay("���ۣ����ٵ�@4��ս��@0��ɱ@335���ʱ�����@0���ҽ�����ܷ���@3�������������͸��˽���@0Ŷ��")
			LuaSetTask("Tbprw7",1)
			LuaSetTask("task_kill/mon_052/Tbprw7",1)   -----------����ɱ�ּ�����
			UpdateTopSay("����ս��ɱ35���ʱ������������Ұ�")
			UpdateMenu()
			UpdateNPCMenu("bangpaizg")
		elseif(LuaQueryTask("Tbprw7")==1) then
			if(LuaQueryTask("task_kill/mon_052/Tbprw7") >= 36 ) then
				LuaSay("���ۣ���лӢ��Ϊ���Ҿ��ľ�����")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","Tbprw7jl")
			elseif(LuaQueryTask("task_kill/mon_052/Tbprw7") <36 ) then
				LuaSay("���ۣ��㻹û��ɱ��@235���ʱ�����@0����@4��ս��@0����ȥɱ�ɣ�")
			end
		end
	else
		LuaSay("���ۣ�ÿ��@5��ҡֱ��@0����ֻ�����30��,���Ѿ�������30�Σ�����������")
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
		LuaSay("���ۣ�����񽨿��Ǹ漱��ս�³Խ���")
		LuaSay("���ۣ�ǰ������˵���ʽ�ȱ�������ٰ�������@3ս������@0����@4������Ӫ@0��@3л��@0����@4��Ӫǰ��@0��@3л��@0����")
		LuaSetTask("Tbprw8",1)
		LuaGive("o_mission401",2)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		UpdateTopSay("��ս����������������������ڴ��;�Ӫǰ�ڵ�л������")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw8")==1) then
		if(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("���ۣ�������ô��û������@3ս������@0����@4������Ӫ@0��@3л��@0����@4��Ӫǰ��@0��@3л��@0���")
			LuaSay("���ۣ�ս�¿̲��ݻ������¿�����̰ɡ�")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==0)then
			LuaSay("���ۣ�������ôֻ��@3ս������@0����@4������Ӫ@0��@3л��@0������")
			LuaSay("���ۣ���ȥ������һ��@3ս������@0����@4��Ӫǰ��@0��@3л��@0���")
		elseif(LuaQueryTask("Tbprw8A")==0 and LuaQueryTask("Tbprw8B")==1)then
			LuaSay("���ۣ�������ôֻ��һ��@3ս������@0����@4��Ӫǰ��@0��@3л��@0������")
			LuaSay("���ۣ���ȥ������һ��@3ս������@0����@4������Ӫ@0��@3л��@0���")
		elseif(LuaQueryTask("Tbprw8A")==1 and LuaQueryTask("Tbprw8B")==1) then
			LuaSay("���ۣ��������ü�����лӢ�۹��Ĺ���ս�£�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw8jl")
		end
	elseif(LuaQueryTask("Tbprw8")==99) then
		LuaSay("���ۣ������@3�������ʡ�ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
	end
else
	LuaSay("���ۣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	DoTalk("Tbprw8")
	UpdateMenu()
	UpdateNPCMenu("jindi")
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
			UpdateNPCMenu("jindi")
		end
    end
----------------------------------------------------�������ʡ�ÿ�ա�
elseif(answer=="Tbprw9") then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9")==0) then
			LuaSay("���ۣ����������Ҫ�������ʡ�")
			local r=LuaRandom(4)
			if(r==0) then
				LuaSay("���ۣ�@4����@0��@3��������@0�����ǽ����ķ����ṩ�̡�")
				LuaSay("���ۣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3�������÷���@0�����ҡ�")
				LuaSetTask("Tbprw9_0",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==1) then
				LuaSay("���ۣ�@4����@0��@3��������@0���ҽ����������ṩ�̡�")
				LuaSay("���ۣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3������������@0�����ҡ�")
				LuaSetTask("Tbprw9_1",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==2) then
				LuaSay("���ۣ�@4����@0��@3��Ʒ����@0���ҽ�������Ʒ�ṩ�̡�")
				LuaSay("���ۣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3����������Ʒ@0�����ҡ�")
				LuaSetTask("Tbprw9_2",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			elseif(r==3) then
				LuaSay("���ۣ�@4����@0��@3ҩƷ����@0���ҽ�����ҩƷ�ṩ�̡�")
				LuaSay("���ۣ�����@35������@0ȥ��������@3�Ի�@0��Ȼ����һ��@3��������ҩƷ@0�����ҡ�")
				LuaSetTask("Tbprw9_3",1)
				UpdateMenu()
				UpdateNPCMenu("jindi")
			end
			LuaSetTask("Tbprw9",1)
			LuaSetTask("Tbprw9_Taskday",GetCurrentDay())
			time=GetCurrentTime()
			LuaSetTask("Tbprw9time",time)
		elseif(LuaQueryTask("Tbprw9")==1) then
			if(LuaQueryTask("Tbprw9_0")==1) then
				LuaSay("���ۣ�����ô��ûȥ@4����@0��@3��������@0����@3�������÷���@0")
				LuaSay("���ۣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_1")==1) then
				LuaSay("���ۣ�����ô��ûȥ@4����@0��@3��������@0����@3������������@0")
				LuaSay("���ۣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_2")==1) then
				LuaSay("���ۣ�����ô��ûȥ@4����@0��@3��Ʒ����@0����@3����������Ʒ@0")
				LuaSay("���ۣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			elseif(LuaQueryTask("Tbprw9_3")==1) then
				LuaSay("���ۣ�����ô��ûȥ@4����@0��@3ҩƷ����@0����@3��������ҩƷ@0")
				LuaSay("���ۣ���ȥ�ɣ�һ������û�к����ǲ��еΣ�")
			end
		elseif(LuaQueryTask("Tbprw9")==2) then
			if(LuaItemCount("o_mission402")>=1 or LuaItemCount("o_mission403")>=1 or LuaItemCount("o_mission404")>=1 or LuaItemCount("o_mission405")>=1 )then
				local shijiancha=(GetCurrentTime() - LuaQueryTask("Tbprw9time"))
				if(shijiancha<=300) then
					LuaSay("���ۣ���лӢ�ۣ�")
					AddMenuItem("@7�������","")
					AddMenuItem("��ȡ����","Tbprw9jl")
				elseif(shijiancha>300) then
					LuaSay("���ۣ����Ѿ�����������ʱ�䣬����ʧ�ܣ�")
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
						UpdateNPCMenu("jindi")
					end
				end
			end
		elseif(LuaQueryTask("Tbprw9")==99) then
			LuaSay("���ۣ������@3�������ʡ�ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("���ۣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
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
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end			
----------------------------------------------------������ʳ��ÿ�ա�
elseif(answer=="Tbprw10") then
	if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw10")==0) then
			LuaSay("���ۣ���˵@4����ؿ�@0��@3�ذ���@0�����������")
			LuaSay("���ۣ�һ���˵������Ͼ����ޣ�����֪�������@3������ʳ@0��@3�ذ���@0��")
			LuaSay("���ۣ���ȥ����Щ@3��ʳ@0����@4����ؿ�@0��@3�ذ���@0��")
			LuaSetTask("Tbprw10",1)
			LuaGive("o_mission406",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("Tbprw10")==1) then
			LuaSay("���ۣ�ȥ��@3��ʳ@0����@4����ؿ�@0��@3�ذ���@0�������Ұɡ�")
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay(""..LuaQueryStr("name").."��@3�ذ���@0���Ҵ���лл��")
			LuaSay("���ۣ�ֻҪ�����ܹ��İ��Ⱦ����ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tbprw10jl")
		elseif(LuaQueryTask("Tbprw10")==99) then
			LuaSay("���ۣ������@3������ʳ��ÿ�ա�@0���Ѿ������ˣ����������ɣ�")
		end
	else
		LuaSay("���ۣ��µ�һ�죬�µĿ�ʼ���������Ͱɣ���İ�������Խ�ߣ���õĽ�����Խ�ߣ�")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		DoTalk("Tbprw10")
		UpdateMenu()
		UpdateNPCMenu("jindi")
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
		UpdateNPCMenu("jindi")
	end
----------------------------------------------------���а�񡾻�һ��
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==0) then
		LuaSay("���ۣ����������Թ�������а�ﾡ������˵@4������@0������һλ���ص�@3��Ĺ����@0��")
		LuaSay("���ۣ�������ȥ������̽��û�н��а��İ취��")
		LuaSetTask("Tbprw11_1",1)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay("���ۣ�а�ﾡ��,Ѱ����֮���̲��ݻ�����ȥ��@4������@0��@3��Ĺ����@0��")
	end
elseif(answer=="Tbprw11_3") then
	if(LuaQueryTask("Tbprw11_3")==2) then
		LuaSay(""..LuaQueryStr("name").."�����ҵ�@4������Ĺ@0��@3����@0����˵��Ща�ﶼ����Թ����ɣ�ֻ��ÿ����������ֱ��Թ����ʧΪֹ��")
		LuaSay("���ۣ�������Ҳֻ�������ˡ�")
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
		UpdateNPCMenu("jindi")
	end
------------------------���ӳ��� 
elseif(answer=="T290") then             
	if(LuaQueryTask("T290")==1) then
		LuaSay("���ۣ�����˾������˹µ��常��˵�Ĳ���˾��ҵ����Ǹ����˶�λ��Ȩ�ء�������˾��Ԫ��Ϊ������")
		LuaSay("���ۣ����������Ϣȥ����@4������@0��@3˾��Ԫ��@0�ɡ�")
		LuaSetTask("T290",2)
		AddLog("���ӳ��������顿",290)
		UpdateMenu()
		UpdateNPCMenu("jindi")
		UpdateNPCMenu("simadaozi")
	elseif(LuaQueryTask("T290")==2) then
		LuaSay("���ۣ��ѹ·�˾��Ԫ��Ϊ������ĺ���Ϣȥ����@4������@0��@3˾��Ԫ��@0�ɡ�")
	end 
------------------------------������ս�����顿
elseif(answer=="T750")then                  
	if(LuaQueryTask("T750")==2)then
		LuaSay("���ۣ���˵��������ͣ�����һ����Ȼ�����������һ����������ڵľ����ˣ�ͳһ֮������ü�ޣ��Һ�֧���㣬�콫���������㣬���ǻᶦ�������ģ�")
		LuaSay(LuaQueryStr("name").."�����϶����µ�֧������û�����������Ṽ�����ģ�")
		LuaSetTask("T750",3)
		AddLog("������ս�����顿",750)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("T750")==3)then
		LuaSay("���ۣ�ȥ�ظ�@3�޺�@0�ɣ�")		
	end
------------------------------���ɹ���
elseif(answer=="T268") then    
	if(LuaQueryTask("T268") == 1 ) then
		LuaSay("����:�����������@2���а��ɺ͹��ҵĹ���@0,@3�ﵽ11���Ϳ��Լ�����ɣ��ﵽ20���Ϳ��Խ����Լ��İ���@0!")
		LuaSay("����:�������@3�����Լ��İ���@0����ô���ȥ@4�嶷ɽ���߸����ߵĵط�@0�����ȼ��ɡ�@!")
		LuaSay("����:�˽��˹��ҺͰ��ɵ�֪ʶ��ȥ�ظ�@4�嶷ɽ@0��@3����@0�ɡ�")
		LuaSetTask("T268",2)
		AddLog("���ɹ��ҡ����顿",268)
		UpdateMenu()
		UpdateNPCMenu("jindi")
		AddMenuItem("@7����������","")
		AddMenuItem("ȷ�ϴ���������","Tcs_hx")
	elseif(LuaQueryTask("T268") == 2 ) then
		LuaSay("����:�˽��˹��ҺͰ��ɵ�֪ʶ��ȥ�ظ�@4�嶷ɽ@0��@3����@0�ɡ�")
		AddMenuItem("@7����������","")
		AddMenuItem("ȷ�ϴ���������","Tcs_hx")
	end
elseif(answer=="Tcs_hx")then
	ChangeMap("lu_wds",134,339)
------------------------------��ƽ�Ѻ�
elseif(answer=="cuontry811")then
	if(LuaQueryTempStr("online")~=LuaQueryStr("line"))then
		LuaSay(""..LuaQueryStr("name").."�����ҳ�֮�У���������ʰ�")
		LuaSay("���ۣ��ܺúܺã���������һ������ദ")
		LuaSay("��ʾ���ڰ˻����")
		LuaSetTask("cuontry811",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	else
		LuaSay("���ۣ�ȥ�ʺ��ڹ��Ļʵۣ��㻹�ڱ�����")
	end
-------------------------����ͨ��
elseif(answer=="T280") then                 
	if(LuaQueryTask("T280") == 0 ) then
		LuaSay("���ۣ���Ȼ�´�Ӧ�����Ҫ�󣬹±ض���ʵ�֣�����ʥּ��ȥ�����ڽ������ǵĲ������ϰɡ�")
		LuaSay("���ۣ�@2�벼���ƶԻ�@0���Ϳ��Գɹ�������ʾ�ˡ�")		
		LuaGive("o_mission361",1)
		LuaSetTask("T280",1)
		AddLog("����ͨ�桾���顿",280)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("T280") == 1 ) then
		LuaSay("���ۣ��㻹û�н�@2ͨ��@0���ڽ������ǵ�@3������@0���ء�@2�벼���ƶԻ�@0���Ϳ��Գɹ�������ʾ�ˡ�")
	end
-------------------------��ڽ�ɽ
elseif(answer=="T385")then
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("T385_A")==1 and LuaQueryTask("T385_B")==0)then
			LuaSay("���ۣ��ܺã�лл����Ҵ����Ͼ����Ҽ�ʱ���˽⵽��ǰ���������")
			LuaSetTask("T385",98)
			AddLog("��ڽ�ɽ�����顿",385)
			DelItem("o_mission417",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T385_A")==0 and LuaQueryTask("T385_B")==1)then
			LuaSay("���ۣ��ܺã�лл����Ҵ����¾����Ҽ�ʱ���˽⵽��ǰ���������")
			LuaSetTask("T385",98)
			AddLog("��ڽ�ɽ�����顿",385)
			DelItem("o_mission418",1)
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	elseif(LuaQueryTask("T385")==98)then
		LuaSay("���ۣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȡ��л�����ȡ�����ɡ�")
	end
-------------------------��վС��
elseif(answer=="Tsnpc_26")then
	if(LuaQueryTask("Tsnpc_26")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���ۣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_26",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tsnpc_26")==2)then
		LuaSay("���ۣ����ҿ����ˣ����ȥ�����ɡ�")
	end
-------------------------ǧ�ﴫ��
elseif(answer=="Tenpc_26")then
	if(LuaQueryTask("Tenpc_26")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("���ۣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_26",2)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Tenpc_26")==2)then
		LuaSay("���ۣ����Ѿ������ˣ����ȥ��ȡ������")
	end
-------------------------������顿
elseif(answer=="T850")then        
	if(LuaQueryTask("T850") == 1)then
		LuaSay("���ۣ����������й��ڳ�͢�ķ��ϣ�������л��������������ͷ���ȥ������ͨ�棡")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T850jl")
	end
elseif(answer=="T850jl")then
	if(LuaQueryTask("T850") == 1)then
		LuaAddJx("combat_exp",70000,"T850")
		LuaSetTask("T850",99)
		DelLog("850")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
-------------------------������� 
elseif(answer=="T115B") then                       
	if(LuaQueryTask("T115B") ==0) then
		LuaSay("���ۣ�����˾�������������Ѹߣ��Ǹ������ˡ���׼��˾��Ԫ�Դ����丸��ְλ��")
		LuaSetTask("T115B",99)
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
-------------------------�ͻ�
elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==9) then
		LuaSay("����:�ź�,���ÿ���")
		LuaSetTask("pettask",10)
		LuaAddTask("ptnumber",1)
		DelItem("o_mission049",LuaItemCount("o_mission049"))
		LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
	UpdateNPCMenu("jindi")
-------------------------�����´� 
elseif(answer=="Txinchun") then           
	if(LuaQueryTask("Txinchun")==2) then
		LuaSay("���ۣ��������¹�Ȼ�����ܻ�ӭ�ġ�Ϊ����֮���ģ�����ʹ���Щѹ��Ǯ�ɡ�")
		LuaSay("���ۣ��¶�ǰ�������������Σ�����ȥ��@4��ˮ��@0��@3���г���@0�ݸ���ɡ�")
         LuaSetTask("Txinchun",3)
		LuaGive("coin",1000,"Txinchun")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	elseif(LuaQueryTask("Txinchun")==3) then
		LuaSay("���ۣ��¶�ǰ�������������Σ�����ȥ��@4��ˮ��@0��@3���г���@0�ݸ���ɡ�")
	end 
-------------------------------�����
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jind")==0)  then
        if(LuaItemStatusNormalCount("o_mission207")>=1) then
        LuaSay("�����ӣ��ѵ�������ܵ���ÿ����綼�����������ӣ����Ǵ������@32000ͭ��")
		DelItem("o_mission207",1)
		LuaGive("coin",2000,"Tduanwu")
		LuaSetTask("Tdwj_zzcq_jind",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."������֣̿���Ȼû��׼����@31����Ʒ����@0�����ȥ׼��")
        end
	end
--------�������
elseif(answer=="RBSY")then
	if(LuaQueryRank()~=0)  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(3,1,0))  then
			SYXT(3,0,1)
		else
		    LuaSay("��ʾ����ֻҪ�ڹ���Ƶ�����ģ���@3"..SYXT(3,1,0).."@0����Ȼ������콱")
		end
	else
		LuaSay("��ʾ����û�м�����ɣ��޷����д�����")
	end
--------��ɢ��� --����Ȩ��
elseif(answer=="jsbh") then
	AddMenuItem("@7��ɢ����","")
	AddMenuItem("@5���ɽ�ɢ˵��","jsbh_sm")
	AddMenuItem("@3ȷ����ɢ����","jsbh_y")
elseif(answer=="jsbh_sm")then   -------���ɽ�ɢ˵��
	LuaSay("��ɢ;����@1 �ֶ���ɢ����@0:@2����@0���@7ȷ����ɢ����@0��ɢ���ɣ�@12 ϵͳǿ�ƽ�ɢ����@0��@2ϵͳÿ�ܽ��а����������@0��@3��28/29/30λ�İ����Զ���ɢ(�½�����10�챣��������ɢ)@0����ϵͳ�Զ�ִ�С�")
elseif(answer=="jsbh_y")then
	LuaPublicDel(""..LuaQuery("partyid").."")
	DisBandParty()	
--------��������	
elseif(answer=="thbz") then
	AddMenuItem("@7��������","")
	AddMenuItem("@5��������˵��","thbz_sm")
	AddMenuItem("@3ȷ����������","thbz_y")
elseif(answer=="thbz_sm")then   -------��������˵��
	LuaSay("�����ɹ�������1��@2������������100@0��2��@2����������10�����10������@0��3�������е�@3����@0��@3����@0��Ȩ������������@2�����ɹ����200W����ͭ��@0")
elseif(answer=="thbz_y")then   -------��������
	if(PartyIsBuyMap() ==0) then  --δ��ͨ�˰�����կ
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
	else
		LuaSay("��İ����Ѿ�������@2������կ@0���뵽������կ�н��в���")
	end
--------�˳����� --���������˳�����
elseif(answer=="bp8") then
	AddMenuItem("@7�˳�����","")
	AddMenuItem("@5�˳�����˵��","bp8_sm")
	AddMenuItem("@3ȷ���˳�����","bp8_y")
elseif(answer=="bp8_sm")then   -------�˳�����˵��	
	LuaSay("�˳�����;����@11 ����@0:@2���ɹ�Ա@0�ɶ԰��ڽ���������@12 �Լ��˳�@0�����@7ȷ���˳�����@0���˳���")
	--LuaSay("������ù�ʽ��(���ɵȼ�+1)*20000���˰���ù�ʽ�� 10000*���ɵȼ�*(���ɵȼ�+1)")
elseif(answer=="bp8_y")then   -------�˳�����	
	if(LuaItemCount("coin")>=10000*LuaPartyLevel()*(LuaQueryRank()+1)) then
		LuaSay("����:�˳����ɸ���������˼����������ʧ,�����еİﹱ�಻�����ӣ���Ը֧��"..10000*LuaPartyLevel()*(LuaQueryRank()+1).."ͭ���뿪���ɣ�")
		AddMenuItem("@7�Ƿ��˰�","")
		AddMenuItem("Ը��","tb_y","")
		AddMenuItem("��Ը��","tb_n","")
	else
		LuaSay("�㲻��@2"..10000*LuaPartyLevel()*(LuaQueryRank()+1).."@0ͭ��,�����뿪����.")
	end
elseif(answer=="tb_y") then
	LuaGive("coin",-(10000*LuaPartyLevel()*(LuaQueryRank()+1)),"bptc")
	LuaLeaveParty()
elseif(answer=="tb_n") then
	LuaSay("��ʾ:��������˳�����Ҳ����.@!")
------------------����˵��
elseif(answer=="partysm")then
	AddMenuItem("@7����Ȩ��������˵��","") 
	AddMenuItem("@3��������˵��","party_numsm")
	AddMenuItem("@3����Ȩ������˵��","bpqlsm")

elseif(answer=="party_numsm") then  --��������˵��
	LuaSay("���ۣ�һ������ֻ��ͬʱ����@21������2���4������8���ɡ�15����@0��")
	LuaSay("���������������һ�ȼ��İ��ɣ�������һ�ȼ��İ��������ﵽ���ͣ���ô��ֻ��ͨ����ս�����е�һ�����ɴ�һ��������л�����������һ���İ��ɡ�")
elseif(answer=="bpqlsm")then
     LuaSay("��������������Ͱ���Ա����һ������Ȩ������ţB�ˣ���Ȩʹ�ô�������ɵȼ���ְλ��߶����ӡ�������һ��")
     LuaSay("Ȩ�����ֵ���@3���ɵȼ�@0��@3ְλ@0�����ɼ���Ϊ��1/2/3/4/5��ְȨ����Ϊ��Ա1����2����3����4")
     LuaSay("@5�Ĵ�Ȩ��ʹ��������Ȩ�����ִ��ڵ���5��С�ڵ���7�ɶԱ�����Լ�ְλ�ȼ��͵������ʹ�ã�Ȩ������Ϊ8�ɶ��ڱ�������������ڹ�����ͬ��������ʹ�ã�Ȩ������Ϊ9�ɶ��Լ������߶��κ������ʹ��")
     LuaSay("@1����@0��ÿ��ɶԱ������ϴ��һ��PKֵ��ѡ��������˽��@3/sm@0�������ڵ����PKֵ��������ô�죬�Ұ��ɹ�Ա��")
     LuaSay("@1ץ��@0���ɽ�Ŀ��ץ����������Σ���˽��������@3/zb@0������������ô�죬ץ���������ǰ���ǿ�ͨ���ɵ���")
     LuaSay("@1����@0��ץ���˽������ǲ��ǻ�����񫣬�У�����Զ����˽��@3/xx@0���������ܽ������ڵĵ������꣬���ܱ�װ��Ŷ���˹�����ͨ���ɵ���")
     LuaSay("@1����@0���Ա����������ߣ��ɾ������Ļ����������˽��@3/jy@0ֻ�ܶ԰���ʹ�ã�")
     LuaSay("@1��ʾ@0�����⣬ץ�������̣��������ĸ�������Ȩ@1�ָ�ʹ�ô�����Ҫ���ǣ�ʹ����һ����Ȩ24Сʱ��ſɻָ��㱾��ʹ�ô���Ȩ�Ĵ���@0���ſ��ٴ�ʹ�ô���Ȩ��Ҳ������@2ʹ�������Ȩ��24Сʱ�ڲ��������ʹ��@0������Ҫ����Ӧ�ĵ��ߡ�")
     
----------------------------------��������
elseif(answer=="gjgl")then  
	AddMenuItem("@7��������","") 
	AddMenuItem("@5����˵��","gj_sm")
	AddMenuItem("@3�ѹ�","qc")
	AddMenuItem("@3��������","bc")
	--AddMenuItem("����ȡǮ","dm")
	--AddMenuItem("�ֺ�","cbmc")
	--AddMenuItem("���뾺����","ea")
elseif(answer=="gj_sm")then ----------------����˵��
	LuaSay("@2��ɫ�������ڹ�@0Ϊ@1��ɫ��������@0���㵱ǰ���ڹ���Ϊ��@3"..GeGJMC().."@0������������Ϊ��"..LuaQueryStr("country").."")
	LuaSay("@115�����ϡ��ް��ɡ��й�����@0��ͨ��@3�ѹ�@0ϵͳ�����������ҡ�")
	LuaSay("@1����20�����ϵ��弶���ɵİ�������һ���ľ���ʵ��@0���ܽ������ҡ�")
--------------------------�ѹ�
elseif(answer=="qc")then
	AddMenuItem("@7�ѹ�","")
	--LuaSay("@5��ܰ��ʾ���ѹ�֮�󽫲�����ȡ������������񴦵�40������������Ҫ��˼����Ŷ@!")
	AddMenuItem("@5�ѹ�˵��","qc_sm")
	AddMenuItem("@3�����ѹ�","qc_y")
	AddMenuItem("�����","")
elseif(answer=="qc_sm")then  ----------�ѹ�˵��
	LuaSay("������@115�����ϣ�ֻ���������ڹ����ް��ɣ��й���0��@2�ѹ��ɱ�������������ѹ��������Ӷ�����@0��")
elseif(answer=="qc_y")then  ----------�ѹ�
	if(GetCurrentHour()==12 or GetCurrentHour()==11 or GetCurrentHour()==13)then
		LuaSay("@5��ʾ��ÿ��11��12��13�㲻���ѹ���")
	else
		QuisleCountry()
	end
--------------------------����
elseif(answer=="bc")then
	AddMenuItem("@7����","")
	AddMenuItem("@5����˵��","bc_sm")
	AddMenuItem("@3��������","bc_y")
	AddMenuItem("�����","")
elseif(answer=="bc_sm")then  ----------����˵��
	LuaSay("������@1����20�����ϵ��弶���ɣ���һ���ľ���ʵ����")
elseif(answer=="bc_y")then  ----------����
	BuildCountry()	
----------------------------------------------��óɾͳƺ�
elseif(answer=="Thdch_cj")then
	AddMenuItem("@7��óɾͳƺ�","")
	AddMenuItem("@3��ȡ@3�ۺ���ɾͳƺ�@0@4��ţB��ʿ��@0","Tch_zh")
	AddMenuItem("@3��ȡ@3������ɾͳƺ�@0@4����������@0","Tch_rw")
	AddMenuItem("@3��ȡ@3̽����ɾͳƺ�@0@4��������֪��@0","Tch_ts")
	AddMenuItem("@3��ȡ@3�¼���ɾͳƺ�@0@4������Ӣ�ۡ�@0","Tch_sj")
	----------------���ɾͳƺ�
elseif(answer=="Tch_zh") then   ------�ۺ���ƺ�
	if(LuaQueryAchievementType(0)==0) then -----------δȫ������ۺ���ɾ�
		LuaSay("ֻ��@3��������ۺ���ɾ�@0������ȡ�óƺ�Ŷ")
		LuaSay("�������ͣ�Ŀ�����ǰ����")
	elseif(LuaQueryAchievementType(0)==1) then
		if(LuaQueryTask("Tch_zh_a")==99) then    -------------�ж��Ƿ���ȡ���ĳƺ�  ��ȡ
			LuaSay("���Ѿ���ȡ���ƺ�@3ţB��ʿ@0��")
			AddMenuItem("@7�Ƿ��滻Ϊ�ƺš�ţB��ʿ��","")
			AddMenuItem("�滻Ϊ�óƺ�","th_zh")
			AddMenuItem("���滻","bth")
		elseif(LuaQueryTask("Tch_zh_a")==0) then    -------------�ж��Ƿ���ȡ���ĳƺ�  δ��ȡ
			LuaSay("��ϲ���������@3�ۺ���ɾ�@0����óƺ�@3ţB��ʿ@0")
			SetTitleMeg(98)
			LuaSetTask("Tch_zh_a",99)     --------�����ж���ȡ�ƺŲ���
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
-------------------------------
elseif(answer=="Tch_rw") then   ------������ƺ�
	if(LuaQueryAchievementType(1)==0) then -----------δȫ�����������ɾ�
		LuaSay("ֻ��@3�������������ɾ�@0������ȡ�óƺ�Ŷ")
		LuaSay("�������ͣ�Ŀ�����ǰ����")
	elseif(LuaQueryAchievementType(1)==1) then
		if(LuaQueryTask("Tch_rw_a")==99) then    -------------�ж��Ƿ���ȡ���ĳƺ�  ��ȡ
			LuaSay("���Ѿ���ȡ���ƺ�@3������@0��")
			AddMenuItem("@7�Ƿ��滻Ϊ�ƺš���������","")
			AddMenuItem("�滻Ϊ�óƺ�","th_rw")
			AddMenuItem("���滻","bth")
		elseif(LuaQueryTask("Tch_rw_a")==0) then    -------------�ж��Ƿ���ȡ���ĳƺ�  δ��ȡ
			LuaSay("��ϲ���������@3������ɾ�@0����óƺ�@3������@0")
			SetTitleMeg(99)
			LuaSetTask("Tch_rw_a",99)     --------�����ж���ȡ�ƺŲ���
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
-----------------------------
elseif(answer=="Tch_ts") then   ------̽����ƺ�
	if(LuaQueryAchievementType(2)==0) then -----------δȫ�����̽����ɾ�
		LuaSay("ֻ��@3�������̽����ɾ�@0������ȡ�óƺ�Ŷ")
		LuaSay("�������ͣ�Ŀ�����ǰ����")
	elseif(LuaQueryAchievementType(2)==1) then
		if(LuaQueryTask("Tch_ts_a")==99) then    -------------�ж��Ƿ���ȡ���ĳƺ�  ��ȡ
			LuaSay("���Ѿ���ȡ���ƺ�@3������֪@0��")
			AddMenuItem("@7�Ƿ��滻Ϊ�ƺš�������֪��","")
			AddMenuItem("�滻Ϊ�óƺ�","th_ts")
			AddMenuItem("���滻","bth")
		elseif(LuaQueryTask("Tch_ts_a")==0) then    -------------�ж��Ƿ���ȡ���ĳƺ�  δ��ȡ
			LuaSay("��ϲ���������@3̽����ɾ�@0����óƺ�@3������֪@0")
			SetTitleMeg(100)
			LuaSetTask("Tch_ts_a",99)     --------�����ж���ȡ�ƺŲ���
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
---------------------------
elseif(answer=="Tch_sj") then   ------�¼���ƺ�
	if(LuaQueryAchievementType(3)==0) then -----------δȫ������¼���ɾ�
		LuaSay("ֻ��@3��������¼���ɾ�@0������ȡ�óƺ�Ŷ")
		LuaSay("�������ͣ�Ŀ�����ǰ����")
	elseif(LuaQueryAchievementType(3)==1) then
		if(LuaQueryTask("Tch_sj_a")==99) then    -------------�ж��Ƿ���ȡ���ĳƺ�  ��ȡ
			LuaSay("���Ѿ���ȡ���ƺ�@3����Ӣ��@0��")
			AddMenuItem("@7�Ƿ��滻Ϊ�ƺš�����Ӣ�ۡ�","")
			AddMenuItem("�滻Ϊ�óƺ�","th_sj")
			AddMenuItem("���滻","bth")
		elseif(LuaQueryTask("Tch_sj_a")==0) then    -------------�ж��Ƿ���ȡ���ĳƺ�  δ��ȡ
			LuaSay("��ϲ���������@3�¼���ɾ�@0����óƺ�@3����Ӣ��@0")
			SetTitleMeg(101)
			LuaSetTask("Tch_sj_a",99)     --------�����ж���ȡ�ƺŲ���
			UpdateMenu()
			UpdateNPCMenu("jindi")
		end
	end
------------------------------�滻�ɾͳƺ�
elseif(answer=="th_zh") then  -----�滻ţB��ʿ�ƺ�
	if(LuaQueryAchievementType(0)==1) then
		SetTitleMeg(98)
		LuaSay("�滻@3�ƺ�ţB��ʿ@0�ɹ�")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_rw") then  -----�滻�������ƺ�
	if(LuaQueryAchievementType(1)==1) then
		SetTitleMeg(99)
		LuaSay("�滻@3�ƺ�������@0�ɹ�")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_ts") then  -----�滻������֪�ƺ�
	if(LuaQueryAchievementType(2)==1) then
		SetTitleMeg(100)
		LuaSay("�滻@3�ƺ�������֪@0�ɹ�")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="th_sj") then  -----�滻����Ӣ�۳ƺ�
	if(LuaQueryAchievementType(3)==1) then
		SetTitleMeg(101)
		LuaSay("�滻@3�ƺŸ���Ӣ��@0�ɹ�")
		UpdateMenu()
		UpdateNPCMenu("jindi")
	end
elseif(answer=="bth") then ----���滻
	LuaSay("@3�ɾͿ�����ʱ�滻��Ŷ��@0")
---------------------------------�����޸� 
elseif(answer=="xgpd")then
	LuaSay("��ʾ��Ϊ�˷�ֹ���˶����޸�������룬@2�޸�һ����Ҫ�ķ�10000ͭ��@0����ȷ���޸���")
	AddMenuItem("@7�޸�����","")
	AddMenuItem("@8ȷ���޸�","pdYES")
	AddMenuItem("@8�ݲ��޸�","pdNO")
elseif(answer=="pdYES")then
		ChangePassWord()
elseif(answer=="pdNO")then
	LuaSay("��������������޸ģ��޸���������ע���¼�����ⶪʧ��")
elseif(answer=="sqyz") then
	LuaChangePasswordBind()
elseif(answer=="yzyz") then
	LuaCheckBindPhoneNum2()

elseif(answer=="liaotian") then
	LuaSay("����:����֮��Ī������,����֮��Ī��������")






elseif(answer=="exchange")then
	LuaSay("����:�����￪��@7��ɴȯ@0�һ�@5����ȯ@0��@3��ȯ@0�ķ�����������Ҫ�һ�ʲô��")
	AddMenuItem("@7�һ�ѡ��","")
	AddMenuItem("10��@7��ɴȯ@0�һ�1��@5����ȯ@0","ex_qsj")
	AddMenuItem("100@7��ɴȯ@0�һ�1��@3��ȯ@0","ex_jbj")

elseif(answer=="ex_qsj")then
	if(LuaItemCount("o_zhaiquan1y")>=10)then
		DelItem("o_zhaiquan1y",10)
		LuaSay("��ʾ����ϲ���ɹ��һ���һ��@5����ȯ@0")
		LuaGive("o_zhaiquan2y",1,"Texchange")
		
	else
		LuaSay("��ʾ�������ϵ�@7��ɴȯ@0����10�����ܶһ�һ��@5����ȯ@0")
	end
elseif(answer=="ex_jbj")then
	if(LuaItemCount("o_zhaiquan1y")>=100)then
		DelItem("o_zhaiquan1y",100)
		LuaSay("��ʾ����ϲ���ɹ��һ���һ��@3��ȯ@0")
		LuaGive("o_zhaiquan3y",1,"Texchange")
	else
		LuaSay("��ʾ�������ϵ�@7��ɴȯ@0����100�����ܶһ�һ��@3��ȯ@0")
	end
------------------------------------
--[[����������ļ�� LuaQueryRank()
elseif(answer=="part3")then
	LuaSay("������ǰ����������İ�ᷢչ��һ���̶�ʱ���ҽ�����������㹻�ľ�����������ɣ�")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		if(LuaQueryRank()>0)then
			AddMenuItem("@7�ʽ���ȡ","")
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==0)then
				if(LuaQueryMemberCount()>=10)then
					AddMenuItem("��������10�ˣ����Ҿ���","part3_10")
				else
					AddMenuItem("Ŭ������10�˰���","part3_10")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				if(LuaQueryMemberCount()>=40)then
					AddMenuItem("��������40�ˣ����Ҿ���","part3_40")
				else
					AddMenuItem("Ŭ������40�˰���","part3_40")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==40)then
				if(LuaQueryMemberCount()>=60)then
					AddMenuItem("��������60�ˣ����Ҿ���","part3_60")
				else
					AddMenuItem("Ŭ������60�˰���","part3_60")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==60)then
				if(LuaQueryMemberCount()>=80)then
					AddMenuItem("��������80�ˣ����Ҿ���","part3_80")
				else
					AddMenuItem("Ŭ������80�˰���","part3_80")
				end
			elseif(LuaPublicQuery(""..LuaQuery("partyid").."")==80)then
				if(LuaQueryMemberCount()>=100)then
					AddMenuItem("��������100�ˣ����Ҿ���","part3_100")
				else
					AddMenuItem("Ŭ������100�˰���","part3_100")
				end
			end
		else
			LuaSay("�˻��Ҫ��������ɰ��������Ҳμ�Ŷ,�Ͽ��齨�Լ��İ���ͳһ���°�@!")
		end
	else
		LuaSay("�˻ֻ�ܱ����˲μӣ�����Իص����Լ��Ĺ��ҲμӻŶ@!")
	end
	elseif(answer=="part3_10")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==0)then
				if(LuaQueryMemberCount()>=10)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ��������������ͭ��1000000")
						AddMoneyToPartyBank(1000000)  
						LuaGive("o_zhaiquan1y",5,"part3")   -- ��ɴ
						LuaGive("o_zhaiquan2y",3,"part3") -- ����
						LuaPublicSet(""..LuaQuery("partyid").."",10)
					else
						LuaSay("��ʾ���뱣������2��ı�����λ����ֹ�����������Ʒ��ʧ��")
					end
				else
					LuaSay("���ۣ����İ�������������10�ˣ����������������������ȡ�����ɣ�")
					--LuaSay("@9����ר�ã����İ�����������Ϊ��"..LuaQueryMemberCount().."")
				end
			else
				LuaSay("��ʾ����İ����Ѿ���ȡ��10�˹�ģ�Ľ����������ظ���ȡ��Ŷ��")
			end
		else
			LuaSay("���ۣ��������ϴ������̸̸���ҿ��ǽ��۰���")
		end
			--if(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				
	elseif(answer=="part3_40")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==10)then
				if(LuaQueryMemberCount()>=40)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ��������������ͭ��2000000")
						AddMoneyToPartyBank(2000000) --200W
						LuaGive("o_zhaiquan2y",9,"part3") -- ��
						LuaPublicSet(""..LuaQuery("partyid").."",40)
					else
						LuaSay("��ʾ���뱣������2��ı�����λ����ֹ�����������Ʒ��ʧ��")
					end
				else
					LuaSay("���ۣ����İ�������������40�ˣ����������������������ȡ�����ɣ�")
					--LuaSay("@9����ר�ã����İ�����������Ϊ��"..LuaQueryMemberCount().."")
				end
			else
				LuaSay("��ʾ����İ����Ѿ���ȡ��40�˹�ģ�Ľ����������ظ���ȡ��Ŷ��")
			end
		else
			LuaSay("���ۣ��������ϴ������̸̸���ҿ��ǽ��۰���")
		end
	elseif(answer=="part3_60")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==40)then
				if(LuaQueryMemberCount()>=60)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ��������������ͭ��4000000")
						AddMoneyToPartyBank(4000000) --400W
						LuaGive("o_zhaiquan2y",34,"part3") -- ��
						LuaPublicSet(""..LuaQuery("partyid").."",60)
					else
						LuaSay("��ʾ���뱣������2��ı�����λ����ֹ�����������Ʒ��ʧ��")
					end
				else
					LuaSay("���ۣ����İ�������������60�ˣ����������������������ȡ�����ɣ�")
					--LuaSay("@9����ר�ã����İ�����������Ϊ��"..LuaQueryMemberCount().."")
				end
			else
				LuaSay("��ʾ����İ����Ѿ���ȡ��60�˹�ģ�Ľ����������ظ���ȡ��Ŷ��")
			end
		else
			LuaSay("���ۣ��������ϴ������̸̸���ҿ��ǽ��۰���")
		end
	elseif(answer=="part3_80")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==60)then
				if(LuaQueryMemberCount()>=60)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ��������������ͭ��6000000")
						AddMoneyToPartyBank(6000000) 
						LuaGive("o_zhaiquan2y",123,"part3") -- ��
						LuaPublicSet(""..LuaQuery("partyid").."",80)
					else
						LuaSay("��ʾ���뱣������2��ı�����λ����ֹ�����������Ʒ��ʧ��")
					end
				else
					LuaSay("���ۣ����İ�������������80�ˣ����������������������ȡ�����ɣ�")
					--LuaSay("@9����ר�ã����İ�����������Ϊ��"..LuaQueryMemberCount().."")
				end
			else
				LuaSay("��ʾ����İ����Ѿ���ȡ��80�˹�ģ�Ľ����������ظ���ȡ��Ŷ��")
			end
		else
			LuaSay("���ۣ��������ϴ������̸̸���ҿ��ǽ��۰���")
		end
	elseif(answer=="part3_100")then
		local ID=LuaQuery("partyid")
		if(LuaQueryRank()==4)then
			if(LuaPublicQuery(""..LuaQuery("partyid").."")==80)then
				if(LuaQueryMemberCount()>=60)then
					LuaSay("��ʾ��������������ͭ��10000000")
					AddMoneyToPartyBank(10000000) 
					LuaPublicSet(""..LuaQuery("partyid").."",100)
				else
					LuaSay("���ۣ����İ�������������100�ˣ����������������������ȡ�����ɣ�")
					--LuaSay("@9����ר�ã����İ�����������Ϊ��"..LuaQueryMemberCount().."")
				end
			else
				LuaSay("��ʾ����İ����Ѿ���ȡ��100�˹�ģ�Ľ����������ظ���ȡ��Ŷ��")
			end
		else
			LuaSay("���ۣ��������ϴ������̸̸���ҿ��ǽ��۰���")
		end]]

end 
LuaSendMenu()
return 1
end 

shitu={}
shitu[1]={"һ��Ϊʦ����Ϊʦ"}
shitu[2]={"�һ��ʦ��һֱ��ͳһ����ȥ"}
shitu[3]={"һֱ��ʦ������ȥ"}
shitu[4]={"��Զ���뿪ʦ�����뿪ͳһ"}
shitu[5]={"��Զ������ʦ��������ͳһ"}
shitu[6]={"����Զ�����ҵ�ʦ��"}


hunyin={}
hunyin[1]={"�Ұ���ֱ����Զ"}
hunyin[2]={"�һ����һֱ��ͳһ����ȥ"}
hunyin[3]={"һֱ��������ȥ"}
hunyin[4]={"��Զ���뿪�㲻�뿪ͳһ"}
hunyin[5]={"��Զ�������㲻����ͳһ"}
hunyin[6]={"�Ұ��㵽����ʯ��"}
hunyin[7]={"��Ҫ������Զ��ͳһ����"}

bangpai={}
bangpai[1]={"��Ը׷�����ֱ����Զ"}
bangpai[2]={"�һ������һֱ��ͳһ����ȥ"}
bangpai[3]={"һֱ׷���������ȥ"}
bangpai[4]={"��Զ���뿪���ɲ��뿪ͳһ"}
bangpai[5]={"��Զ�����Ѱ��ɲ�����ͳһ"}
bangpai[6]={"�Ұ��Ұ�"}
bangpai[7]={"�������Ҽұ�ǿ�����"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1��ʾ����ʦͽģ�飬2��ʾ���� ��3��ʾ����
            yuju    1��ʾ������䣬�������0 2���������֣������κη���
            jiangli 1��ʾ���ý���������ֱ��ִ�У����κη��ء��������0 2���������֣������κη���
	]]
	--[[   LuaQueryStr("lassie")��ż
			LuaQueryStr("master")ʦ��
			LuaQueryRank() > 2��Ĭ�ϰ���=1������=2������=3������=4�����ΪLuaQueryRank()==0������û�Ӱ���

			ע�⣺�����´�ģ�飬Ҫ������ص�npc��ֻҪ��������¼���
			Ŀǰ�õ���ģ���npc��1�����鳤 tianwuzhan  ---ʦͽ
			                     2�����幫��jinqing   -����
			                     3������jindi      ----����

	]]
	if(leixing==1)then ----------------------------------------------------------------------------ʦͽ����
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end

		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return shitu[num][1]
		end

		------------------ʦͽ���ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------��������
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return hunyin[num][1]
		end

		------------------�������ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------���ɲ���
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return bangpai[num][1]
		end

		------------------���ɲ��ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end