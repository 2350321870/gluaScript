NPCINFO = { 
serial="129" ,
base_name="haigu",
icon=2520,
NpcMove=2520 ,
name="����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��...��...��",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("Tbprw11_2")==99 and LuaQueryTask("Tbprw11_3")==0) then
		AddTopSayMenuItem("���ΰ취��������","Tbprw11_3")
		havetask=1
	end

	if(LuaQueryTask("Tbprw11_2")==1 or LuaQueryTask("Tbprw11_2")==2) then
		AddTopSayMenuItem("@2Ѱ�Ҹ�Դ��������","Tbprw11_2")
		havetask=2
	end
	if(LuaQueryTask("Tbprw11_3")==1 or LuaQueryTask("Tbprw11_3")==2) then
		AddTopSayMenuItem("@2���ΰ취��������","Tbprw11_3")
		havetask=2
	end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("���ǣ���ʲô����û������ͷ�㱼ô!")

elseif(answer=="Tbprw11_2")then                      
	if(LuaQueryTask("Tbprw11_2")==1)then
		LuaSay(""..LuaQueryStr("name").."���������Թ�������а�ﾡ������������̽��û�н��а��İ취��")
		LuaSay("���ǣ�Ҫ����а���Ҫ�˽����ı��ʣ���ȥ@4������Ĺ@0ɱ@3����ʬ@0�ռ�@310@0��@3��ʬ�Ĺ�ͷ@0���ҡ�")
		LuaSetTask("Tbprw11_2",2)
		UpdateTopSay("��������Ĺɱ����ʬ�ռ�10����ʬ�Ĺ�ͷ")
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_2")==2)then
		if(LuaItemCount("o_mission407")>=10) then
			LuaSay("���ǣ�����@3��ʬ�Ĺ�ͷ@0�о�һ����Ща������ԡ�")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","Tbprw11_2jl")
		elseif(LuaItemCount("o_mission407")<=10) then
			LuaSay("���ǣ�����ռ���"..LuaItemCount("o_mission407").."��@3��ʬ�Ĺ�ͷ@0��ɱ@3����ʬ@0�ռ���@310@0���������Ұɡ�")
		end
	end
elseif(answer=="Tbprw11_2jl")then  -----------------������
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw11_2")==2) then
		if(LuaItemCount("o_mission407")>=10) then
		local jinyan=level*2500+level*level*20
			LuaSetTask("Tbprw11_2",99)
			DelItem("o_mission407",10)
			LuaAddJx("combat_exp",jinyan,"Tbprw11_2")
			AddMoneyToPartyBank(3000)-------���Ӱ���Ǯ
			LuaPartyRepute(1,0)------------���Ӱ�������
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg(""..LuaQueryStr("name").."��ɰ�������Ϊ��������@21�����������1000ͭ��@0!",0)
			UpdateMenu() 
		end
	end
elseif(answer=="Tbprw11_3")then                      
	if(LuaQueryTask("Tbprw11_3")==0)then
		LuaSay(""..LuaQueryStr("name").."���������Թ�������а�ﾡ������������̽��û�н��а��İ취��")
		LuaSay("���ǣ��������о�@3��ʬ�Ĺ�ͷ@0�����@3������@0�������Ұɣ�")
		LuaSetTask("Tbprw11_3",1)
		local time=GetCurrentTime()
		LuaSetTask("bprw11_3ime",time)
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_3")==1)then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("bprw11_3ime"))
		if(shijiancha>=180) then
			LuaSay("���ǣ������ҵ��о����ҷ�����Щ��ʬ������Թ����ɣ����Ѱ�����������")
			LuaSay("���ǣ�����ֻ��ÿ�첻�ϵ�ɱ�����ǣ�ֱ��Թ����ʧ��")
			LuaSay(""..LuaQueryStr("name").."����л�������ȥ@4����@0��@3����@0����������а��İ취��")
			LuaSetTask("Tbprw11_3",2)
			UpdateMenu()
		elseif(shijiancha<180) then
			LuaSay("���ǣ��㼱ʲô�����ⲻ��û������������о���Ҫʱ��ġ�")
		end
	elseif(LuaQueryTask("Tbprw11_3")==2)then
		LuaSay("���ǣ���ȥ@4����@0��@3����@0�ɣ�")
	end
			
end
LuaSendMenu()
return 1
end 

