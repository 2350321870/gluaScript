NPCINFO = { 
serial="138" ,
base_name="xiongnuwang",
icon=2560,
NpcMove=2560 ,
name="��ū��" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ʦδ������������ʹӢ��������",
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
	level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T960")==0 and LuaQuery("level")>=76)then
		AddTopSayMenuItem("��ū��ʿ��ѭ����","T960")
		havetask1=1
	end
	if(LuaQueryTask("T961")==0 and LuaQuery("level")>=77)then
		AddTopSayMenuItem("����������ѭ����","T961")
		havetask1=1
	end


	if(LuaQueryTask("T960")>0)then
		AddTopSayMenuItem("@2��ū��ʿ��ѭ����","T960")
		havetask4=1
	end
	if(LuaQueryTask("T961")>0)then
		AddTopSayMenuItem("@2����������ѭ����","T961")
		havetask4=1
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
	LuaSay("��ʦδ������������ʹӢ�������󣬳��") 
	
		       
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��ū��ʿ��ѭ����
elseif(answer=="T960")then
	if(LuaQueryStrTask("960day")~=GetCurrentDay())then
			LuaDelTask("T960num")
	end
	if(LuaQueryTask("T960")==0)then
		LuaSay("��ū����@3��ū��ʿ@0����������ͣ���������ȥ����30ֻ@3��ū��ʿ@0�����һ㱨")
		LuaSetTask("task_kill/mon_067/T960",1)
		LuaSetTask("T960",1)
		LuaAddTask("T960num",1)
		LuaSetTask("960day",GetCurrentDay())
		AddLog("��ū��ʿ��ѭ����",960)
		UpdateMenu()
	elseif(LuaQueryTask("T960")==1)then
		local a = LuaQueryTask("task_kill/mon_067/T960") - 1
		if(a >= 30)then
			LuaSay("��ū�����ɵ����ǣ��Ҿͷ��Ķ��ˡ�")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T960jl")
		else
			LuaSay("��ū����������ɱ��@3��ū��ʿ@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T960jl")then
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T960")==1 and LuaQueryTask("task_kill/mon_067/T960")>=31)then
			local money
			local jy
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
			LuaDelTask("task_kill/mon_067/T960")
			if(LuaQueryTask("T960num")<=30)then
				LuaGive("coin",money,"T960")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T960")
			if(LuaQueryTask("T960_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T960_a",99)
			end
			LuaDelTask("T960")
			DelLog("960")
			UpdateMenu()
			
		end



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��ū������ѭ����
elseif(answer=="T961")then
	if(LuaQueryStrTask("961day")~=GetCurrentDay())then
			LuaDelTask("T961num")
	end
	if(LuaQueryTask("T961")==0)then
		LuaSay("��ū������Щ@3��ū����@0�ڱ���֧����ʿ�ŵ�����ôǿ����������ȥ����30ֻ@3��ū����@0�����һ㱨")
		LuaSetTask("task_kill/mon_068/T961",1)
		LuaSetTask("T961",1)
		LuaAddTask("T961num",1)
		LuaSetTask("961day",GetCurrentDay())
		AddLog("��ū������ѭ����",961)
		UpdateMenu()
	elseif(LuaQueryTask("T961")==1)then
		local a = LuaQueryTask("task_kill/mon_068/T961") - 1
		if(a >= 30)then
			LuaSay("��ū�������¿����ǻ���ô����")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T961jl")
		else
			LuaSay("��ū����������ɱ��@3��ū����@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T961jl")then
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T961")==1 and LuaQueryTask("task_kill/mon_068/T961")>=31)then
			local money
			local jy
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
			LuaDelTask("task_kill/mon_068/T961")
			if(LuaQueryTask("T961num")<=30)then
				LuaGive("coin",money,"T961")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T961")
			if(LuaQueryTask("T961_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T961_a",99)
			end
			LuaDelTask("T961")
			DelLog("961")
			UpdateMenu()
			
		end

		       
end
LuaSendMenu()
return 1
end 

