NPCINFO = { 
serial="17" ,
base_name="mengtiejiang",
icon=2517,
NpcMove=2517,
name="������" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="��ֲ�ɼ����Ի��������",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0	--��ɫ�ʺ�

	local level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T61") ==1)then
		AddTopSayMenuItem("@2�ɳ�֮·2�����顿@0","T61")
		havetask2 =1
	end
	if(LuaQueryTask("T50") ==1)then
		AddTopSayMenuItem("@2�ɼ����̡̳�@0","T50")
		havetask2 =1
	end
	if(LuaQueryTask("T51") ==1)then
		AddTopSayMenuItem("@2�Ӿ������顿@0","T51")
	end
	if((LuaQueryTask("Tsnpc_4")==1 or LuaQueryTask("Tsnpc_4")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_4")
		if(LuaQueryTask("Tsnpc_4")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_4")==1 or LuaQueryTask("Tenpc_4")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_4")
		if(LuaQueryTask("Tenpc_4")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tfkdcg")>=9 and LuaQueryTask("Tfkdcg")<13 and GetCurrentDay()==LuaQueryStrTask("fkdcgday"))then
		AddTopSayMenuItem("@2����ɹ������","Tfkdcg")			--����ɹ�
		if(LuaQueryTask("Tfkdcg")==9)then
			if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
				havetask2 =1
			else
				havetask4 =1
			end
		else
			havetask2 =1
		end
	end
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2���̡�ÿ�ա�","TPaoShang")          ----------����
		havetask2 =1
	end

        if(LuaQueryTask("T302")==1 and LuaQueryTask("T302A")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302A")
		havetask2 =1
	end
-----------------------�����----------------------------------	
	if(LuaQueryTask("Tjianguodaye")>=9 and LuaQueryTask("Tjianguodaye")<13)then
			AddTopSayMenuItem("@2������ҵ�����","Tjianguodaye")			--����
			havetask2 =1
	end

--��Ϊ��ɫ�ʺŲ���

	if(LuaQueryTask("T50") ==0 and LuaQueryTask("T61") ==99)then
		AddTopSayMenuItem("�ɼ����̡̳�","T50")
		havetask1 =1
	end
	if(LuaQueryTask("T51") == 0 and LuaQueryTask("T50")~=0)  then
		AddTopSayMenuItem("�Ӿ������顿","T51")
		havetask1 =1
	end
	
--��Ϊ��ɫ��̾�Ų���	
	

	if(LuaQueryTask("T50")==99 and level<20)  then
		AddTopSayMenuItem("@9�ɼ����̡̳�","T50")--����һ��ʱ����ʾ
	end
			
--��Ϊ�޷��Ų���       

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
	
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
-----------------------�����-------------------------
elseif(answer=="Tjianguodaye")then			--����
	if(LuaQueryTask("Tjianguodaye")==9)then
		LuaSay(""..LuaQueryStr("name")..":����ʦ���������������˫����֪�ǲ�����ģ�")
		LuaSay("��������������˫�ɲ��ҵ����Ἰ���Ӷ��ѣ�")
		LuaSay(""..LuaQueryStr("name")..":�����ǹ�ǫ�ˣ������������Ҵ���һ��@3�����ý�@0����֪���Ƿ�Ը�⣿")
		LuaSay("������������õı������ף�Ѱ�ҺõĲ����Ѱ�����ȥ�����ռ�@3һ���������һ��������@0���ҾͰ��������Ҫ�ı�����")
		LuaSetTask("Tjianguodaye",10)
	elseif(LuaQueryTask("Tjianguodaye")==10)then
		if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
		LuaSay("����������ô����ռ�������������ô�õĽ�����Ҫ����ʱ�䣬10���Ӻ��������Ұɣ�")
		time=GetCurrentTime()
		LuaSetTask("jianguodayetime",time)
		LuaSetTask("Tjianguodaye",11)
		DelItem("o_material_48",1)
		DelItem("o_material_58",1)
		else
		LuaSay("���������㻹û���ռ���@3һ���������һ��������@0�أ�")
		end
	elseif(LuaQueryTask("Tjianguodaye")==11)then
		a=GetCurrentTime()-LuaQueryTask("jianguodayetime")
		if(a>600)then
			LuaGive("o_mission250",1)
			LuaSetTask("Tjianguodaye",12)
		else
		LuaSay("��������ʱ�仹û��@310����@0�أ��ڵȵȰɣ�")
		end
	elseif(LuaQueryTask("Tjianguodaye")==12)then
		LuaSay("���������Ѿ�������ˣ�����ȥ����@3�ʹ��@0�ɣ�")
	end	
------------------------------------------------------- 
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("�����������@2�˵�@0����@2����@0���ɽ��뱳�����ˣ�ѡ��@2ҩ��@0����ֱ��ѡ��@31ʹ��@0���ɡ�") 
	else
		LuaSay("����������@2ȷ����@0���@23����@0���ɽ���@3����@0�ˣ�ѡ��@2ҩ��@0��ɰ�@2ȷ����@0ֱ��@3ʹ��@0��Ҳ�ɰ�@21/3/7/9���ÿ�ݼ�@0��")
	end
 elseif(answer=="Txl_mwzl")then
	AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4����֮�ַ���","lu_tyc")
	
elseif(answer=="T302A") then
	if(LuaQueryTask("T302A")==0) then
		LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż�")
		LuaSay("���������ѵ�������ϡ���Ҵ���������ˣ�")
		DelItem("o_mission076",1)
		LuaSetTask("T302A",99)
		UpdateMenu()
	end
		       
elseif(answer=="T50") then
	if(LuaQueryTask("T60")==99)then
		if(LuaQueryTask("T50")==0)then
			LuaSay("�������������ʯ��ȱ����ȥ���Ҳ�Щ�����ɡ�����ò��������߾���һ����ȥ@2�ɼ�һ����ʯ@0�����Ұɡ�")
			LuaSetTask("T50",1)
			AddLog("�ɼ����̡̳�",50)
			UpdateMenu()
			AddMenuItem("@7�˽��ÿ�ݼ��ɼ�","")
			AddMenuItem("����ÿ�ݼ�","caiji")
			AddMenuItem("����ˣ������˽�","fangqi")
		elseif(LuaQueryTask("T50")==1)then
			if(LuaItemCount("o_mission021")==0)then
				LuaSay("�����������챾���ۻ������㻹û�вɼ���@2��ʯ@0�أ��ɼ�@2����ߵĿ�@0���ܵõ��ˡ�")
				AddMenuItem("@7�˽��ÿ�ݼ��ɼ�","")
				AddMenuItem("����ÿ�ݼ�","caiji")
				AddMenuItem("����ˣ������˽�","fangqi")
			else
				LuaSay("��������ԭ�������Ӻ���һ����ʹ�������Ѿ���������βɼ�������������ο����")
				LuaSay("��������@2�ɼ���@0�ɲ���ֻ�п���Ŷ�����кܶ�@3����ֲ��Ҳ�ɲɼ�@0��")
				if(LuaQueryStr("MobieType") ~= "S20") then
					LuaSay("����������ס��@3���м��ܺ�ҩƷ@0������@2���ÿ�ݼ�@0����ݼ����������������Ͻǵ�@2�л�@0���л�����һ��Ԫ�Ŀ�ݼ���@!�����԰ɡ�")
				else
					LuaSay("����������ס��@3���м��ܺ�ҩƷ@0������@2���ÿ�ݼ�@0����ݼ�������������@39�ż�@0�л���@!�����԰ɡ�")
				end
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T50jl")
			end
		elseif(LuaQueryTask("T50")==99)then
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("�����������@2�˵�@0���ٵ��@2����@0�������������@2�����@0���ֵ�@2��һ������@0����@2�ɼ�����@0��")
				LuaSay("��������@2ѡ�вɼ�����@0���ٵ��@������е��κ�һ����ݼ�С��@0���ͽ�@2�ɼ�����@0����@2��ݼ���@0�ˡ�")
				LuaSay("��������@2�ڿ������ֲ�︽��@0�����úõĲɼ���ݼ���@2ʹ�òɼ�����@0�Ϳ��Խ��вɼ��ˡ�")
				LuLuaSay("����������ס��@3���м��ܺ�ҩƷ@0������@2���ÿ�ݼ�@0����ݼ����������������Ͻǵ�@2�л�@0���л�����һ��Ԫ�Ŀ�ݼ���@!�����԰ɡ�")

			else
				LuaSay("����������@2ȷ�ϼ�@0���ٰ�@24��@0�������������@2�����@0���ֵ�@2��һ������@0����@2�ɼ�����@0��")
				LuaSay("��������@2ѡ�вɼ�����@0���ٰ�@21��2��3��4��6��7@0�е�����һ�������ͽ�@2�ɼ�����@0����@2��ݼ�@0�ˡ�")
				LuaSay("��������@2�ڿ������ֲ�︽��@0�����úõĲɼ���ݼ���@2ʹ�òɼ�����@0�Ϳ��Խ��вɼ��ˡ�")
				LuaSay("��������@3���м��ܺ�ҩƷ@0������@2���ÿ�ݼ�@0����ݼ�������������@39�ż�@0�л���@!�����԰ɡ�")
			end
			LuaSay("��ʾ�������������")
		end
	else
		LuaSay("�������������������@5�����@0����@3ʹ����Ʒ���̡̳�@0������ܼ���ǰ�У�ʹ����Ʒ��������Ĳ���Ŷ@!")
	end
elseif(answer=="caiji") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		SendCommand("call=�����������@2�˵�@0���ٵ��@2����@0�������������@2�����@0���ֵ�@2��һ������@0����@2�ɼ�����@0����|0|12|3|5|180")
		LuaSay("��������@2ѡ�вɼ�����@0���ٵ��@������е��κ�һ����ݼ�С��@0���ͽ�@2�ɼ�����@0����@2��ݼ���@0�ˡ�")
		LuaSay("��������@2�ڿ������ֲ�︽��@0�����úõĲɼ���ݼ���@2ʹ�òɼ�����@0�Ϳ��Խ��вɼ��ˡ�")

	else
		SendCommand("call=����������@2ȷ�ϼ�@0���ٰ�@24��@0�������������@2�����@0���ֵ�@2��һ������@0����@2�ɼ�����@0��|0|12|3|5|180")
		LuaSay("��������@2ѡ�вɼ�����@0�Ժ��ٰ�@21��3��7��9@0�е�����һ�������ͽ�@2�ɼ�����@0����@2��ݼ�@0�ˡ�")
		LuaSay("��������@2�ڿ������ֲ�︽��@0�����úõĲɼ���ݼ���@2ʹ�òɼ�����@0�Ϳ��Խ��вɼ��ˡ�")
	end
	LuaSay("��������@2�����ļ�����Ʒ�Ŀ�ݼ�����Ҳ�����@0���������ǻۣ�һ�����úܼ򵥰ɡ������Ұ���������Ŷ@!")
elseif(answer=="fangqi") then
        LuaSay("���������ţ����У���Ȼ�Ѿ�֪����βɼ����ҾͲ������ˡ�@!")
elseif(answer=="T50jl") then
	if(LuaQueryTask("T50")==1)then
		if(LuaItemCount("o_mission021")>=1)then
			LuaSetTask("T50",99)
			DelLog("50")
			DelItem("o_mission021",LuaItemCount("o_mission021"))
			LuaAddJx("combat_exp",7700,"T50")
			LuaGive("e_head003",1,1,"T50")   --7��ñ��
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end
	end

elseif(answer=="T61") then              ------------------------�ɳ�֮· 
		if(LuaQueryTask("T61")==1) then
			LuaSay("��������"..LuaQueryStr("name").."����Ҫȥ���������𣿺ã��ã�Ӣ�۵�־���ķ���")
			LuaSay("�����������������Ⱳ�ӾͺͿ���򽻵��ˣ����������������������˽�һ���ɡ�@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T61jl")
		end 
		elseif(answer=="T61jl")then	            
		       if(LuaQueryTask("T61")==1)then
				LuaSetTask("T61",99) 
				LuaAddJx("combat_exp",5300,"T61") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_pants002",1,1,"T145")         --7���ľ�����
				DelLog("61") 
				UpdateMenu() 
				UpdateNPCMenu("huanyiniang")
				AddMenuItem("@7�������","")
				AddMenuItem("�ɼ����̡̳�","T50")
			end

elseif(answer=="T51") then              ------------------------�Ӿ� 
	if(LuaQueryTask("T50")==99)then
		if(LuaQueryTask("T51")==0) then
			SendCommand("call=���������ҵļ��ɶ�����ѧ���ˣ���ȥ��@3������@0���������ͳһ��ҵ�ɣ�|0|100")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("������������������������Ŀ�ݼ�������Ŷ����һ�¾��ܴ����ܽ��㴫�͵������Ӧ��NPC����ȥ��")
				LuaSay("������������ɣ������Ұ���������������ѡ��������ٴε�����ܴ��͵�@4������@0��Ŷ@!")
			else
				LuaSay("������������������������Ŀ�ݼ�����1��Ŷ����һ�¾��ܴ����ܽ��㴫�͵������Ӧ��NPC����ȥ��")
				LuaSay("������������ɣ������Ұ���������������ѡ��������ȷ�������ܴ��͵�@4������@0��Ŷ@!")
			end
			LuaSetTask("T51",1)
			UpdateTopSay("ȥ������֮�ֵ�������̸��")
			AddLog("�Ӿ������顿",51)
			UpdateMenu()
			UpdateNPCMenu("mubingshi")
			--if(LuaQueryTask("T50")==99)then
			--		AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4����֮�ַ���","lu_tyc")
			--end
		elseif(LuaQueryTask("T51")==1) then
			SendCommand("call=����������ȥ��@3������@0��̤�����ͳһ֮;�ɡ�������@2�ұߵĴ�����@0��|0|100") 
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("������������������������Ŀ�ݼ�������Ŷ����һ�¾��ܴ����ܽ��㴫�͵������Ӧ��NPC����ȥ��")
				LuaSay("������������ɣ������Ұ���������������ѡ��������ٴε�����ܴ��͵�@4������@0��Ŷ@!")
			else
				LuaSay("������������������������Ŀ�ݼ�����1��Ŷ����һ�¾��ܴ����ܽ��㴫�͵������Ӧ��NPC����ȥ��")
				LuaSay("������������ɣ������Ұ���������������ѡ��������ȷ�������ܴ��͵�@4������@0��Ŷ@!")
			end
		end
	else
		LuaSay("���������ɼ����õĲ���������װ��������һ����Ҫ��ʽ��Ӣ����Ҫ���@3�ɼ����̡̳�@0���ܼ�������ͳһ��ҵ@!")
	end
elseif(answer=="TPaoShang") then------------����
    if((GetCurrentTime()-LuaPublicQuery("PSshuaxin_CD"))>=300) 	 then     -------��Ʒ�۸񣬹���һ��ˢ��ʱ������
        LuaPublicSet("PSshuaxin_CD",GetCurrentTime())   ----------���ù���ˢ��ʱ��
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(35)+90)/100)     -------��Ʒ�۸񲨶���Χ��-10%~25%   ���ݶ�
		LuaPublicSet("PS_FCS_price1",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price1",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price1",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price1",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price2",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price2",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price2",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price2",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price2",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price3",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price3",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price3",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price3",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price3",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price4",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price4",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price4",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price4",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price4",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price5",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price5",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price5",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price5",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price5",1000*(LuaRandom(20)+90)/100)
		UpdateMenu()
	end
   -------------------------
   
   
	if(LuaQueryTask("TPaoShang")==1) then
	if(LuaCheckBuff("518")==1)then      --------���̱������
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 )then   -----��ʱ�����̽��������ж� 
		LuaSay("�������������´���Ʒ�۸�ˢ�»���@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."�룡@0��Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
		LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("���5�������̱���״̬")
    		FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----������ʱ����
		LuaSay("���������������������޲���@55����@0�ˣ���@3�Ѷ�������@0�ɣ���Ȼ�������ģ�")
		end
		AddMenuItem("@7��Ʒ�б�","")                  -----------��Ʒ�б��Լ������ڲ˵��ĸ��� 
			AddMenuItem("@3���,����@3"..LuaPublicQuery("PS_MN_price2").."ͭ��@0","PS_MN")
			AddMenuItem("@3���ʯ,����@3"..LuaPublicQuery("PS_FCS_price2").."ͭ��@0","PS_FCS")
			AddMenuItem("@3ˮ��,����@3"..LuaPublicQuery("PS_SJ_price2").."ͭ��@0","PS_SJ")
			AddMenuItem("@3����,����@3"..LuaPublicQuery("PS_ZZ_price2").."ͭ��@0","PS_ZZ")
			AddMenuItem("@3ҹ����,����@3"..LuaPublicQuery("PS_YMZ_price2").."ͭ��@0","PS_YMZ")
		else
		LuaSay("�������������������Ѿ��������޻������̽����������ظ�@4������@0��@3�н�����@0�ɣ�")
		UpdateTopSay("��ظ������ǵ��н����˰�")
		end 
    else
    LuaSay("�������������ϵ�@3���̱���״̬@0�Ѿ���ʧ����·���������ܹ������޷��������̣�")
    LuaSay("@1��ʾ@0�����н�����������������ܻ�ö��⽱�����л��ᴥ�����ؽ���������ȷ������������")
    AddMenuItem("@7�����б�","")
	AddMenuItem("@3��������","PS_over")
    end
	end
elseif(answer=="PS_over")then
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
	if(LuaItemCount("o_mission414")~=0) then         ----ɾ�����̽�����
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	UpdateMenu()
elseif(answer=="PS_MN")then                 ---------------������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_MN_buy_1")
	AddMenuItem("@3��10��","PS_MN_buy_10")
	AddMenuItem("@3��1��","PS_MN_sell_1")
	AddMenuItem("@3��10��","PS_MN_sell_10")
	AddMenuItem("@3ȫ����","PS_MN_sell_all")
elseif(answer=="PS_MN_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price2"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price2"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price2"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("����������������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("����������������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("����������������觲����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_FCS")then                 ---------------���ʯ���� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_FCS_buy_1")
	AddMenuItem("@3��10��","PS_FCS_buy_10")
	AddMenuItem("@3��1��","PS_FCS_sell_1")
	AddMenuItem("@3��10��","PS_FCS_sell_10")
	AddMenuItem("@3ȫ����","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price2"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price2"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price2"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_SJ")then                 ---------------ˮ������ 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_SJ_buy_1")
	AddMenuItem("@3��10��","PS_SJ_buy_10")
	AddMenuItem("@3��1��","PS_SJ_sell_1")
	AddMenuItem("@3��10��","PS_SJ_sell_10")
	AddMenuItem("@3ȫ����","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price2"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price2"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��������������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��������������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("��������������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_ZZ_buy_1")
	AddMenuItem("@3��10��","PS_ZZ_buy_10")
	AddMenuItem("@3��1��","PS_ZZ_sell_1")
	AddMenuItem("@3��10��","PS_ZZ_sell_10")
	AddMenuItem("@3ȫ����","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price2"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price2"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("�����������������鲻���������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------ҹ�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_YMZ_buy_1")
	AddMenuItem("@3��10��","PS_YMZ_buy_10")
	AddMenuItem("@3��1��","PS_YMZ_sell_1")
	AddMenuItem("@3��10��","PS_YMZ_sell_10")
	AddMenuItem("@3ȫ����","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price2") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price2")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price2"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price2") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price2")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price2"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("�������������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price2"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��������������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price2")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price2"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price2"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��������������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price2")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�������������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("��������������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
--------------------------------------------------------------------------------
elseif(answer=="Tfkdcg")then	
	if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
	if(LuaQueryTask("Tfkdcg")==9)then
		LuaSay(""..LuaQueryStr("name")..":����ʦ���������������˫����֪�ǲ�����ģ�")
		LuaSay("��������������˫�ɲ��ҵ����Ἰ���Ӷ��ѣ�")
		LuaSay(""..LuaQueryStr("name")..":�����ǹ�ǫ�ˣ������������Ҵ���һ��@3�������@0����֪���Ƿ�Ը�⣿")
		LuaSay("������������õı������ף�Ѱ�ҺõĲ����Ѱ�����ȥ�����ռ�@3һ���������һ��������@0���ҾͰ��������Ҫ�ı�����")
		LuaSetTask("Tfkdcg",10)
		UpdateMenu()
	elseif(LuaQueryTask("Tfkdcg")==10)then
		if(LuaItemCount("o_material_48")>0 and LuaItemCount("o_material_58")>0)then
			LuaSay("����������ô����ռ�������������ô�õı�������Ҫ����ʱ�䣬10���Ӻ��������Ұɣ�")
			LuaSetTask("fkdcgtime",GetCurrentTime())
			LuaSetTask("Tfkdcg",11)
			DelItem("o_material_48",1)
			DelItem("o_material_58",1)
		else
			LuaSay("���������㻹û���ռ���@3һ���������һ��������@0�أ�")
		end
	elseif(LuaQueryTask("Tfkdcg")==11)then
		local a=GetCurrentTime()-LuaQueryTask("fkdcgtime")
		if(a>600)then
			LuaSay("������������Ѿ�������ˣ�����ȥ����@3�ʹ��@0�ɣ�")
			LuaGive("o_mission424",1)
			LuaSetTask("Tfkdcg",12)
		else
			local b = 10 - floor(a/60)
			LuaSay("��������������ô�õı�������Ҫ����ʱ�䣬ʱ�仹û��@310����@0�أ��ٵ�"..b.."���Ӿ����õ���Ŷ@!")
		end
	elseif(LuaQueryTask("Tfkdcg")==12)then
		LuaSay("������������Ѿ�������ˣ�����ȥ����@3�ʹ��@0�ɣ�")
	end
	else
		LuaSay("���������û�Ѿ������ˣ�������������ɣ�")
		LuaDelTask("Tfkdcg")
		UpdateMenu()
	end
---------------------------------------------------------------------------------
elseif(answer=="Tsnpc_4")then
	if(LuaQueryTask("Tsnpc_4")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���������ż�����Ҫ�����Խ�����")
		LuaSay("�����������ʲô��Ҫ��������ô��")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_4",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_4")==2)then
		LuaSay("�����������ȥ�����Ǵ���˵���յ�����@!")
	end
elseif(answer=="Tenpc_4")then
	if(LuaQueryTask("Tenpc_4")==1)then
		LuaSay(""..LuaQueryStr("name").."������������˵�ż���͸¶���ܣ����Ҹ��㴫�������ҽ���С��Ϊ��")
		LuaSay("�������������ǿ���ô��")
		LuaSetTask("Tenpc_4",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_4")==2)then
		LuaSay("����������ȥ�������Ǵ��ˣ���˵��֪����")
	end

end
LuaSendMenu()
return 1
end 

