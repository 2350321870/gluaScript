NPCINFO = {
serial="134" ,
base_name="pz_mbdh",
icon=2521,
NpcMove=2521,
name="����Ԫ" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="������Ȼ��",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T841")==0 and level>=66 and level<=70) then
		AddTopSayMenuItem("ɳĮ��ˡ�ѭ����","T841")
		havetask1=1
	end
	if(LuaQueryTask("T840")==0 and level>=68 and level<=70) then
		AddTopSayMenuItem("ɳĮ֮����ѭ����","T840")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T841")==1)then
		AddTopSayMenuItem("@2ɳĮ��ˡ�ѭ����","T841")
		havetask4 =1
	end
	if(LuaQueryTask("T840")==1)then
		AddTopSayMenuItem("@2ɳĮ֮����ѭ����","T840")
		havetask4 =1
	end
	
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
-------------------------------------------------------------------------
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
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("����Ԫ������ɳĮ��������Ȼ����")
		

--------------------------------------------------------------------------����ѭ����
elseif(answer== "T841") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("841day")~=GetCurrentDay())then
		LuaDelTask("T841num")
	end
		if(LuaQueryTask("T841")==0) then
			LuaSay("����Ԫ: �����赲���ҵ�ȥ·������ȥ@3�ɵ�30������@0����ɺ�ظ���")
			LuaSetTask("T841",1)
			LuaAddTask("T841num",1)
			LuaSetTask("841day",GetCurrentDay())
			LuaSetTask("task_kill/mon_060/T841",1)
			UpdateTopSay("ɱ30������")
			AddLog("ɳĮ��ˡ�ѭ����",841)
   			UpdateMenu()
		elseif(LuaQueryTask("T841")==1)then
			if(LuaQueryTask("task_kill/mon_060/T841")>=31) then
				LuaSay(LuaQueryStr("name").."��@330������@0�ѱ�������")
				LuaSay("����Ԫ:����~...��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T841jl")
			else
				LuaSay("����Ԫ:�㻹û��ɱ��@4Į�����@0��@330������@0Ŷ��")
				UpdateTopSay("ɱ��30�������������Ұ�")
			end
		end

elseif(answer=="T841jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T841")==1) then
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<50)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
			LuaDelTask("T841")
			DelLog("841")
			LuaDelTask("task_kill/mon_060/T841")
			if(LuaQueryTask("T841num")<=30)then
				LuaGive("coin",money,"T841")
				LuaAddJx("combat_exp",202657+level^2*20,"T841")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(202657+level^2*20)/2,"T841")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------�ռ���ѭ����
elseif(answer== "T840") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("840day")~=GetCurrentDay())then
		LuaDelTask("T840num")
	end
	if(LuaQueryTask("T840num")<=30)then
		if(LuaQueryTask("T840")==0) then
			LuaSay("����Ԫ: �����Ϊ��ɳĮ�ļ��������������ƿɱ�����ɳĮ��֮ʹ���ˣ�����ɳĮ��Ҫ100��ſ�һ�λ� ��ޥ��10-20�� ���������� ÿ���ܿ�����䣡")
			LuaSay("����Ԫ�������Ҿ�����1�����������ӣ����ȥ��ֲ���ֳ�1�������ƣ�����Ƭ��Į��Ϊ���ĺ���ɣ�")
			LuaSetTask("T840",1)
			LuaAddTask("T840num",1)
			LuaGive("o_seed106",1)
			LuaSetTask("840day",GetCurrentDay())
			AddLog("ɳĮ֮����ѭ����",840)
   			UpdateMenu()
		elseif(LuaQueryTask("T840")==1)then
			if(LuaItemStatusNormalCount("o_mission423")>=1) then
				LuaSay("����Ԫ:�������ò�������Ҫ����Ƭ��Į������޻�ԶԶ����Ŷ��")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T840jl")
			else
				LuaSay("����Ԫ���㻹û�еõ�1���������أ�")
				if(LuaItemStatusNormalCount("o_seed106")<=0)then
					LuaGive("o_seed106",1)
				end
			end
		end
	else
		LuaSay("����Ԫ: ���Ϸ������Ӽ�Ϊ���ѣ����������������Ѿ����������ˣ����������ɣ�")
	end

elseif(answer=="T840jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T840")==1) then
			if(LuaItemStatusNormalCount("o_mission423")>=1) then
			local money
			if(LuaQuery("level")<20)then
				money=200
			elseif(LuaQuery("level")<30)then
				money=300
			elseif(LuaQuery("level")<40)then
				money=400
			elseif(LuaQuery("level")<50)then
				money=500
			elseif(LuaQuery("level")<100)then
				money=600
			end
			LuaDelTask("T840")
			DelLog("840")
			DelItem("o_mission423",1)
			if(LuaQueryTask("T840num")<=30)then
				LuaAddJx("combat_exp",234639+level^2*20,"T840")
				LuaGive("coin",money,"T840")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(234639+level^2*20)/2,"T840")
			end
			UpdateMenu()
			end
	end




end
LuaSendMenu()
return 1
end

