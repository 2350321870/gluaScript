NPCINFO = { 
serial="120" ,
base_name="shizhe",
icon=2512,
NpcMove=2512,
name="����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="С���Ǹ����չ˻�����ӵ�",
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
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_64")==1 or LuaQueryTask("Tsnpc_64")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_64")
		if(LuaQueryTask("Tsnpc_64")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_64")==1 or LuaQueryTask("Tenpc_64")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_64")
		if(LuaQueryTask("Tenpc_64")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T692")==1) then
		AddTopSayMenuItem("@2�������ߡ����顿","T692")
		havetask2=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T692")==2) then
		AddTopSayMenuItem("@2�������ߡ����顿","T692")
		havetask4=1
	end	
	if(LuaQueryTask("T681")==1)then
		AddTopSayMenuItem("@2����������ѭ����","T681")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T680")==0 and level>=55) then
		AddTopSayMenuItem("��Ĺ���ˡ����顿","T680")
		havetask1=1
	end
	if(LuaQueryTask("T681")==0 and level>=53 and level<=56)then
		AddTopSayMenuItem("����������ѭ����","T681")
		havetask1=1
	end
	if(LuaQueryTask("T680")==1) then
		AddTopSayMenuItem("@2��Ĺ���ˡ����顿","T680")
		havetask1=1
	end
--����Ϊ��ɫ��̾�Ų���2011-11-24
		
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
else	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("���ߣ��������岻�ѣ���Ҫ���ЪϢ!") 
	--------------------------------------------------�������ߡ����顿
elseif(answer=="T692") then
	if(LuaQueryTask("T692")==1) then
		LuaSay("���ߣ���ȥ@4�κ���@0����@3����@0���@320������@0���ҲŻ������ʵ��")
		LuaSetTask("T692",2)      -------��־�����
		AddLog("�������ߡ����顿",692)
		UpdateMenu()
	elseif(LuaQueryTask("T692")==2) then
	 	if(LuaItemCount("o_mission359")>=20) then
			LuaSay("���ߣ���̫��Ϊ������Ľ�ݴ���ϧ���Լ��Ķ����׼��������Ѿ���һ���ֳ��׼�������Ĺ������ֵ������ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T692jl")
		else
		    LuaSay("���ߣ��㻹û�д���@320������@0������ȥ@4�κ���@0����@3����@0��")
		end
	end
	
	elseif(answer=="T692jl") then
		if(LuaQueryTask("T692")==2) then
			LuaSetTask("T692",99)
			DelLog("692")
			LuaAddJx("combat_exp",1126000,"T692")
			LuaGive("coin",3600,"T692")
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission359",20)
			UpdateMenu()
		end                   
--------------------  ��Ĺ���ˡ����顿
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==0) then
		LuaSay("���ߣ��ҶԻ�̫�����Ϊ������ȥ���������Ӣ�۰����������ƻ���̫��Ķ��С�")
		LuaSay("���ߣ�ֻҪ���������Ѩ�е����꽫���Ϳ�������Щ������ʧ���ҽ���Ӣ����ȥ@4������@0��@3��Ĺ����@0��")
		LuaSetTask("T680",1)      -------��־�����
		AddLog("��Ĺ���ˡ����顿",680)
		UpdateMenu()
		UpdateNPCMenu("smlaoren")
	elseif(LuaQueryTask("T680")==1) then
		LuaSay("������������Ĺ����")
	end
------------------------------------  ����������ѭ����
elseif(answer=="T681")then
		if(LuaQueryStrTask("681day")~=GetCurrentDay())then
			LuaDelTask("T681num")
		end
		if(LuaQueryTask("T681")==0)then
			LuaSay("���ߣ������ǹ�ͬ�Կ������ɣ�ȥɱ@335ֻ��˧@0���Կ�@3��̫��@0�Ķ���")
     			LuaSetTask("T681",1)
			LuaSetTask("681day",GetCurrentDay())
      			LuaSetTask("task_kill/mon_041/T681",1)
			LuaAddTask("T681num",1)
     			AddLog("����������ѭ����",681)
     			UpdateMenu()
		elseif(LuaQueryTask("T681")==1)then
			if(LuaQueryTask("task_kill/mon_041/T681")>=36) then
				LuaSay("���ߣ�����ж����ҿ�������ľ��ģ����Ƕ����һ��СС�Ľ�����")
				AddMenuItem("@7�������","")
	    			AddMenuItem("��ȡ����","T681jl")
			else
				LuaSay("���ߣ�ȥ��������������һ��Կ���̫���а������")
			end
		end

	elseif(answer=="T681jl") then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T681")==1)then
		local jinyan
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
		if(LuaQueryTask("T681num")<=30)then
			jinyan=(level^2*20+151629)
			LuaGive("coin",money,"T681")
		else
		LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
		jinyan=(level^2*20+151629)/2
		end
		LuaAddJx("combat_exp",jinyan,"T681")
		if(LuaQueryTask("T681_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T681_a",99)
		end
	
		DelLog("681")
		LuaSetTask("T681",0)
		LuaDelTask("task_kill/mon_041/T681")
		UpdateMenu()
		end

elseif(answer=="Tsnpc_64")then
	if(LuaQueryTask("Tsnpc_64")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���ߣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_64",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_64")==2)then
		LuaSay("���ߣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_64")then
	if(LuaQueryTask("Tenpc_64")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("���ߣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_64",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_64")==2)then
		LuaSay("���ߣ����Ѿ������ˣ����ȥ��ȡ������")
	end	

end    	
LuaSendMenu()
return 1
end 

