NPCINFO = { 
serial="78" ,
base_name="murongping",
icon=2584,
NpcMove=2584 ,
name="Ľ����" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="˭˵�Ҳ���Ľ�ݴ�����һ�˾��ܶ������Ǹ���",
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
		if((LuaQueryTask("Tsnpc_63")==1 or LuaQueryTask("Tsnpc_63")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_63")
		if(LuaQueryTask("Tsnpc_63")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_63")==1 or LuaQueryTask("Tenpc_63")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_63")
		if(LuaQueryTask("Tenpc_63")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T670")==2 or LuaQueryTask("T670")==1 )then
		AddTopSayMenuItem("@2���Ӳ��š����顿","T670")
		if(LuaQueryTask("T670")==2)then
		havetask2=1
		end
	end	
	if(LuaQueryTask("T646")==1) then
		AddTopSayMenuItem("@2��ȡ���Ρ����顿","T646")
		havetask2=1
	end

	if(LuaQueryTask("T630")==2)then
		AddTopSayMenuItem("@2���׵Ľ��͡����顿","T630")
		havetask2=1             
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T671")==1) then
		AddTopSayMenuItem("@2����1�����顿","T671")
		havetask4=1
	end	
	if(LuaQueryTask("T672")==1) then
		AddTopSayMenuItem("@2����2�����顿","T672")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T670")==0 and level>=45)then
		AddTopSayMenuItem("���Ӳ��š����顿","T670")
		havetask1=1
	end             		
	if(LuaQueryTask("T672")==0 and LuaQueryTask("T671")==99) then
		AddTopSayMenuItem("����2�����顿","T672")
		havetask1=1
	end
	if(LuaQueryTask("T671")==0 and level>=52) then
		AddTopSayMenuItem("����1�����顿","T671")
		havetask1=1
	end
--����Ϊ��ɫ��̾��
	
	
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
	LuaSay("Ľ��������Ҫ֤������Ľ��������Ľ�ݼ���ܳ�����!") 
------------------------------------------------  ���׵Ľ���
elseif(answer=="T630")then
	if(LuaQueryTask("T630")==2)then
	  	LuaSay(""..LuaQueryStr("name").."�����ż�ɽ��˵�ɣ�����@3Ľ����@0�ǵ��ڻҵİɣ��������˼��ˡ�")
	  	LuaSay("Ľ������Ц���������������۵����ӣ�����ô������������")
	  	AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T630jl")
	end
	elseif(answer=="T630jl")then
	if(LuaQueryTask("T630")==2)then
		LuaSetTask("T630",99)
		LuaAddJx("combat_exp",548000,"T630")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaGive("coin",2000,"T630")
		DelLog("630") 
		UpdateMenu()
		end
	
------------------------------------------------    ���Ӳ���
elseif(answer=="T670")then
	if(LuaQueryTask("T670")==0)then
		LuaSay("Ľ������������˳·���Ұ���ƿ@4������@0����@3Ľ����@0��")
		LuaGive("o_mission352",1)
		LuaSetTask("T670",1)
		AddLog("���Ӳ��š����顿",670)
		UpdateMenu()
		UpdateNPCMenu("muronglin")
	elseif(LuaQueryTask("T670")==1)then
		LuaSay("Ľ����������ô��û�е�@4̫�йž�@0��@3Ľ����@0����ȥ����")
	elseif(LuaQueryTask("T670")==2)then
		LuaSay(""..LuaQueryStr("name").."���������ĺ��£�ΪʲôҪ����@3Ľ����@0")
		LuaSay("Ľ���������������Ѿ�û�п����õļ�ֵ�ˣ��������ã��������������������պ���ң�")
	  	AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T670jl")
	end
	elseif(answer=="T670jl")then
	if(LuaQueryTask("T670")==2)then	
		LuaSetTask("T670",99)
		LuaAddJx("combat_exp",1126000,"T670")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaGive("coin",3000,"T670")
		DelLog("670") 
		UpdateMenu()
		end
---------------------------------------------��ȡ���Ρ����顿
elseif(answer=="T646")then
	if(LuaQueryTask("T646")==1) then
		LuaSay(""..LuaQueryStr("name").."��С�����������������")
		if(LuaItemCount("o_mission356")==1)then
		AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T646jl")
		else
	    	LuaSay("Ľ�������㲻�����ǵ��˰ɣ������أ�")
		end
	end
	
	elseif(answer=="T646jl")then
		if(LuaItemCount("o_mission356")==1)then 
			LuaSetTask("T646",99)
			LuaAddJx("combat_exp",898000,"T646")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",3641,"T646")
			DelItem("o_mission356",1)
			DelLog("646") 
			UpdateMenu()
			end
			 
----------------------------------------------����1�����顿
elseif(answer=="T671")then
	if(LuaQueryTask("T671")==0)then
		LuaSay("Ľ���������˿���֮�ˣ����������㣬ȥ����@335������@0�ɣ��Զ����������")
		LuaSetTask("T671",1) 
		AddLog("����1�����顿",671) --mon_039 ����
		LuaSetTask("task_kill/mon_039/T671",1)--���� ���� ɱ�ּ�����
		UpdateMenu()
	elseif(LuaQueryTask("T671")==1)then
		if(LuaQueryTask("task_kill/mon_039/T671")>=36)then
		LuaSay("Ľ������С���ӹ�Ȼ��������")
		AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T671jl")
		else
		LuaSay("Ľ������͵�������ǲ�������ģ�")
		end
	end
	elseif(answer=="T671jl")then
		if(LuaQueryTask("task_kill/mon_039/T671")>=36)then
			LuaSetTask("T671",99)
			LuaAddJx("combat_exp",1052000,"T671")
			LuaGive("coin",2000,"T671")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("671") 
			LuaDelTask("task_kill/mon_039/T671")
			UpdateMenu()
			end			 
		
------------------------------------------------ ����2�����顿
elseif(answer=="T672")then
	if(LuaQueryTask("T672")==0)then
		LuaSay("Ľ������һ��һϦ�����Գɴ��£�����ȥ��ɱ@335�����@0���������������") 
		LuaSetTask("T672",1) 
		AddLog("����2�����顿",672) --mon_040 ���
		LuaSetTask("task_kill/mon_040/T672",1)--���� ��� ɱ�ּ�����
		UpdateMenu()
	elseif(LuaQueryTask("T672")==1)then
		if(LuaQueryTask("task_kill/mon_040/T672")>=36)then
			LuaSay("Ľ���������˿���֮�ţ�����ܶ���Щ�������������е��ɻ������ȥ��@3��̫��@0")
			LuaSetTask("T672",2)
			AddLog("����2�����顿",672)
			UpdateMenu()
			UpdateNPCMenu("huntaihou")
		else
			LuaSay("Ľ�������㻹ûɱ��@335�����@0����")
		end
	end				

elseif(answer=="Tsnpc_63")then
	if(LuaQueryTask("Tsnpc_63")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("Ľ���������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_63",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_63")==2)then
		LuaSay("Ľ���������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_63")then
	if(LuaQueryTask("Tenpc_63")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("Ľ�������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_63",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_63")==2)then
		LuaSay("Ľ���������Ѿ������ˣ����ȥ��ȡ������")
	end		       
		       
end
LuaSendMenu()
return 1
end 

