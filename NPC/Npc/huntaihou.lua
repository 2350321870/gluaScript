NPCINFO = { 
serial="77" ,
base_name="huntaihou",
icon=2562,
NpcMove=2562,
name="��̫��" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="�ߣ����ҵò����ģ�����Ҳ����õ�",
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
		if((LuaQueryTask("Tsnpc_62")==1 or LuaQueryTask("Tsnpc_62")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_62")
		if(LuaQueryTask("Tsnpc_62")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_62")==1 or LuaQueryTask("Tenpc_62")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_62")
		if(LuaQueryTask("Tenpc_62")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T661")<99 and LuaQueryTask("T661")>0)then
		AddTopSayMenuItem("@2ʧ�ܵ��׼������顿","T661")
		if(LuaQueryTask("T661")==2 and LuaItemCount("o_mission358")==0)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T662")>0 and LuaQueryTask("T662")<99)then
		AddTopSayMenuItem("@2��Ѫ��ĸ�����顿","T662")
		if(LuaItemCount("o_mission360")==1)then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T672")==2) then
		AddTopSayMenuItem("@2����2�����顿","T672")
		havetask2=1
	end		
	if(LuaQueryTask("T712")==2)then
		AddTopSayMenuItem("@2սǰ���顾���顿","T712")
		if(LuaItemCount("o_mission039")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end

	if(LuaQueryTask("T665")==1)then
		AddTopSayMenuItem("@2�ռ���֦��ѭ����","T665")
		if(LuaItemStatusNormalCount("o_mission153") >= 1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	
	if(LuaQueryTask("T302")==21 and LuaQueryTask("T302U")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302U")
		havetask2 =1
	end 
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T664")==1 )then
		AddTopSayMenuItem("@2�������ѡ�ѭ����","T664")
		havetask4=1
	end
	if(LuaQueryTask("T663")==1 )then
		AddTopSayMenuItem("@2�������������顿","T663")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T665")==0 and level>51 and level<53)then
		AddTopSayMenuItem("�ռ���֦��ѭ����","T665")
		havetask1=1
	end
	if(LuaQueryTask("T663")==0 and level>=51)then
		AddTopSayMenuItem("�������������顿","T663")
		havetask1=1
	end	

	if(LuaQueryTask("T661")==0 and level>=50)then
		AddTopSayMenuItem("ʧ�ܵ��׼������顿","T661")
		havetask1=1
	end
	if(LuaQueryTask("T662")==0 and LuaQueryTask("T661")==99)then
		AddTopSayMenuItem("��Ѫ��ĸ�����顿","T662")
		havetask1=1
	end
	if(LuaQueryTask("T664")==0 and level>=50 and level<55)then
		AddTopSayMenuItem("�������ѡ�ѭ����","T664")
		havetask1=1
	end
	---------------------------------------------

	---------------------------------------------

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

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("��̫��������岻�ѣ����ɰ��Һúô���������") 
	
elseif(answer=="T302U") then
	   if(LuaQueryTask("T302U")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("��̫��Ŷ�ǺǺǣ��벻�����в������������ű��԰��ҵ���Ľ֮�飡")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302U",99)
	   UpdateMenu()
	   end
	
 ------------------------------------------------  ����2�����顿
elseif(answer=="T672")then
	if(LuaQueryTask("T672")==2)then
		LuaSay(""..LuaQueryStr("name").."��̫��С�������ˣ���Щ������ζ�����̫���ܷ�ָ��һ����")
		LuaSay("��̫��@3Ľ�ݴ�@0�ñ�����Ѱ��ʿ�����ֿܵ�������������������������׼������ġ�")
	  	AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T672jl")
	end
	
	elseif(answer=="T672jl")then
	if(LuaQueryTask("T672")==2)then
			LuaSetTask("T672",99)
			LuaAddJx("combat_exp",1052000,"T672")
			LuaGive("coin",3500,"T672")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("672") 
			LuaDelTask("task_kill/mon_040/T672")
			UpdateMenu()
	end
-------------------------------------------------- ʧ�ܵ��׼������顿
elseif(answer=="T661")then
	if(LuaQueryTask("T661")==0)then
		LuaSay("��̫�������������ʿ����û���֣������ٻ����ᣬ�㵽@3�κ���@0ȥʹ�ã�ʹ�ú���������������")
		LuaSetTask("T661",1)
		AddLog("ʧ�ܵ��׼������顿",661)
		LuaGive("o_mission358")  --o_mission358       а����ٻ�����
		UpdateMenu()
	elseif(LuaQueryTask("T661")==1)then
	    LuaSay("��̫�󣺸���Ķ������ù�����")
	elseif(LuaQueryTask("T661")==2 and LuaItemCount("o_mission358")==0)then
		LuaSay(""..LuaQueryStr("name").."������̫��ʹ��֮��û��ʲô������֡�")
		LuaSay("��̫���ѵ����׼�����Ѫ�����ˣ�������")
	  	AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T661jl")
	end
    elseif(answer=="T661jl")then
		if(LuaQueryTask("T661")==2)then
			LuaSetTask("T661",99)
			LuaAddJx("combat_exp",898000,"T661")
			LuaGive("coin",3520,"T661")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("661")
			UpdateMenu()
		end
-------------------------------------------------------- ��Ѫ��ĸ�����顿
elseif(answer=="T662")then
	if(LuaQueryTask("T662")==0) then
	    LuaSay("��̫���׼�û�ܳɹ�����ȥ@4��ɽ��@0��@2����@0��ȡ@2������Ѫ����@0���ҡ�")
	    LuaSetTask("T662",1)
	    AddLog("��Ѫ��ĸ�����顿",662)
	    UpdateMenu()
	    UpdateNPCMenu("yanwang")
	elseif(LuaQueryTask("T662")==1)then
	    LuaSay("��̫��ȡ�����İ���Ѫ�������ҡ�")
    elseif(LuaQueryTask("T662")==2)then
		if(LuaItemCount("o_mission360")==1)then
			DelItem("o_mission360",1)
			LuaSay("��̫�󣺺ܺã������Ҹ���������Ѫ�������µ��ٻ����ᣬ�����õ�@4�κ���@0ȥʹ�á�")
			LuaGive("o_mission358",1)
			LuaSetTask("T662",3)
			UpdateMenu()
		else
			LuaSay("��̫���Ҳ�������ȡ������Ѫ����")
		end
	elseif(LuaQueryTask("T662")==3)then
		LuaSay("��̫�󣺵��κ���ȥʹ���Ҹ���ľ��ᰡ��")
	elseif(LuaQueryTask("T662")==4)then
		LuaSay(""..LuaQueryStr("name").."��̫���콵�����@3��˧@0���֡�")
		LuaSay("��̫�󣺹�������������ǵ������")
	  	AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T662jl")		 
	end 
	
	elseif(answer=="T662jl")then
		if(LuaQueryTask("T662")==4)then
			LuaSetTask("T662",99)
			LuaAddJx("combat_exp",898000,"T662")
			LuaGive("coin",3320,"T662")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("662")
			UpdateMenu()
		end
		---------------------------------------------- ��������
elseif(answer=="T663")then
	if(LuaQueryTask("T663")==0)then
		LuaSay("��̫������̽һ����Щ�������������@4�κ���@0����@2��˧35��@0��")
		LuaSetTask("T663",1)
		AddLog("�������������顿",663)
		LuaSetTask("task_kill/mon_041/T663",1)
		UpdateMenu()
	elseif(LuaQueryTask("T663")==1)then
		if(LuaQueryTask("task_kill/mon_041/T663")>=36) then
			LuaSay("��̫��С���Ӳ�������ʵ����")
	  		AddMenuItem("@7�������","")
	    		AddMenuItem("��ȡ����","T663jl")
		else
	    	LuaSay("��̫���������@235ֻ��˧@0����")
		end	
	end
	
	elseif(answer=="T663jl")then
		if(LuaQueryTask("T663")==1)then
		if(LuaQueryTask("task_kill/mon_041/T663")>=36) then
		LuaSetTask("T663",99)
		LuaAddJx("combat_exp",972000,"T663")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("663")
		LuaDelTask("task_kill/mon_041/T663")
		UpdateMenu()
		end
		end
		 
     
------------------------------------------------ սǰ���顾���顿
elseif(answer=="T712") then
	if(LuaQueryTask("T712")==2)then
		LuaSay(""..LuaQueryStr("name").."��̫��,С���ش���@2��������@0��Т���㣬˳������ȥ̽��һ���������ֳ���")
	    if(LuaItemCount("o_mission039")>=1) then
			LuaSay("��̫���������ֺð��ң����������⣬��ȥ�ɣ���Ҫ���ܣ�ֻ��������ݣ�") 
		    AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T712jl")
	    else
	        LuaSay("��̫��С�������ں�Ū�Ұɣ����������")
	    end 
	end
	
	elseif(answer=="T712jl")then
	if(LuaQueryTask("T712")==2)then
	    if(LuaItemCount("o_mission039")>=1) then
		DelItem("o_mission039",1)
		LuaSetTask("T712",99)
		LuaAddJx("combat_exp",1493000,"T712")
		LuaGive("coin",3600,"T712")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("712")
		UpdateMenu()
		end
		end
		 
		---------------------------------------------- ��������
elseif(answer=="T664")then
	if(LuaQueryStrTask("664day")~=GetCurrentDay())then
		LuaDelTask("T664num")
	end
	if(LuaQueryTask("T664")==0)then
		LuaSay("��̫�󣺺ߺߣ����������������һ���˭������������ľ���������һ�����ǵ�ǿ��ɡ�")
		LuaSay("��̫������@4�κ���@0��@2���35ֻ@0�����ظ��ң�С�ı𱻳���Ŷ��������")
		LuaSetTask("T664",1)
		LuaAddTask("T664num",1)
		LuaSetTask("664day",GetCurrentDay())
		AddLog("�������ѡ�ѭ����",664)
		LuaSetTask("task_kill/mon_040/T664",1)
		UpdateMenu()
	elseif(LuaQueryTask("T664")==1)then
		if(LuaQueryTask("task_kill/mon_040/T664")>=36) then
			LuaSay("��̫��С���Ӳ�������ʵ��������Ͷ������ɡ�")
	  		AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T664jl")
		else
	    	LuaSay("��̫���㻹û������@235ֻ���@0�������㹻�����������ظ��ҡ�")
		end	
	end
	
	elseif(answer=="T664jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T664")==1)then
		if(LuaQueryTask("task_kill/mon_040/T664")>=36) then
		LuaDelTask("T664")
		local jingyan
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
	

		if(LuaQueryTask("T664num")<=30)then
			jingyan=(134341+level^2*20)
			LuaGive("coin",money,"T980")
		else
		LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jingyan=(134341+level^2*20)/2
		end
		LuaAddJx("combat_exp",jingyan,"T664")
		if(LuaQueryTask("T664_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T664_a",99)
		end
		DelLog("664")
		LuaDelTask("task_kill/mon_040/T664")
		UpdateMenu()
		end
		end	

----------------------------------�ռ���֦
elseif(answer=="T665")then
	if(LuaQueryTask("T665")==0)then
		LuaSay("��̫�����������֬��ζǷ�ѣ��������������ռ�@21����֦@0������")
	        LuaSay("��̫�󣺽�֦�ڲɼ����ɼ���һ�����ʵõ���Ҳ��������Ҵ�����")
		LuaSetTask("T665",1)
		AddLog("�ռ���֦��ѭ����",665)
		UpdateMenu()
		UpdateMenu("�ﱾ���ռ�1����֦��������������")
	elseif(LuaQueryTask("T665")==1)then
		if(LuaItemStatusNormalCount("o_mission153") >= 1) then
			LuaSay("��̫�����ֿ��Իָ����յ�Ũ���ˡ�")
			LuaSay("��̫�󣺰������ͣ�������Ӧ�õġ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T665jl")
		else
			LuaSay("��̫������ϷŪ�����𣿽�֦�����")
		end
	end
	elseif(answer=="T665jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission153") >= 1 ) then
			LuaSetTask("T665",0)
			LuaGive("coin",4000,"T665")
			local jingyan=(63000+level^2*20)
			LuaAddJx("combat_exp",jingyan,"T665")
			if(LuaQueryTask("T665_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T665_a",99)
			end

			DelItem("o_mission153",1)
			DelLog(665)
			UpdateMenu()
		end
elseif(answer=="Tsnpc_62")then
	if(LuaQueryTask("Tsnpc_62")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��̫�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_62",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_62")==2)then
		LuaSay("��̫�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_62")then
	if(LuaQueryTask("Tenpc_62")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��̫���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_62",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_62")==2)then
		LuaSay("��̫�󣺻��Ѿ������ˣ����ȥ��ȡ������")
	end	
		     
end
LuaSendMenu()
return 1
end 

