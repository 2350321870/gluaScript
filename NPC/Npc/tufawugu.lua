NPCINFO = { 
serial="135" ,
base_name="tufawugu",
icon=2531,
NpcMove=2531,
name="ͺ���ڹ�" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="���������ѣ����������",
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
	if(level >=71 and LuaQueryTask("T860")==0)then
		AddTopSayMenuItem("͵������ѭ����","T860")
		havetask1=1
	end
	if(LuaQuery("level")>=72 and LuaQueryTask("T861")==0)then
		AddTopSayMenuItem("ȥ����в��ѭ����","T861")
		havetask1=1
	end


	if(LuaQueryTask("T860")>0)then
		AddTopSayMenuItem("@2͵������ѭ����","T860")
		havetask4=1
	end
	if(LuaQueryTask("T861")>0)then
		AddTopSayMenuItem("@2ȥ����в��ѭ����","T861")
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
	LuaSay("ͺ���ڹ£��Թ����������޾��ı���") 
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>͵������ѭ����		       
elseif(answer=="T860")then
	if(LuaQueryStrTask("860day")~=GetCurrentDay())then
			LuaDelTask("T860num")
	end
	if(LuaQueryTask("T860")==0)then
		LuaSay("ͺ���ڹ£�����ɳĮ�Թ��в��кܶ౦�أ���������ˣ���Щ@3ɳ��@0͵���ҵı��ء�")
		LuaSay("ͺ���ڹ£�������������30ֻ@3ɳ��@0���Ϸ���������")
		LuaSetTask("task_kill/mon_057/T860",1)
		LuaSetTask("T860",1)
		LuaAddTask("T860num",1)
		LuaSetTask("860day",GetCurrentDay())
		AddLog("͵������ѭ����",860)
		UpdateMenu()
	elseif(LuaQueryTask("T860")==1)then
		local a = LuaQueryTask("task_kill/mon_057/T860") - 1
		if(a >= 30)then
			LuaSay("ͺ���ڹ£��ɵ���Щ͵�������Ҿͷ��Ķ��ˡ�")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T860jl")
		else
			LuaSay("ͺ���ڹ£�������ɱ��@3ɳ��@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T860jl")then
		local level=LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T860")==1 and LuaQueryTask("task_kill/mon_057/T860")>=31)then
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
			LuaDelTask("task_kill/mon_057/T860")
			if(LuaQueryTask("T860num")<=30)then
				LuaGive("coin",money,"T860")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T860")
			if(LuaQueryTask("T860_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T860_a",99)
			end
			LuaDelTask("T860")
			DelLog("860")
			UpdateMenu()
			
		end

			
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ȥ����в��ѭ����
elseif(answer=="T861")then
	if(LuaQueryStrTask("861day")~=GetCurrentDay())then
			LuaDelTask("T861num")
	end
	if(LuaQueryTask("T861")==0)then
		LuaSay("ͺ���ڹ£�@4��ɳĮ�Թ�@0�е�@3ɳ��@0һֱ���Ϸ�ĲƱ������������������30ֻ@3ɳ��@0���Ż��Ż�����")
		LuaSetTask("task_kill/mon_058/T861",1)
		LuaSetTask("T861",1)
		LuaAddTask("T861num",1)
		LuaSetTask("861day",GetCurrentDay())
		AddLog("ȥ����в��ѭ����",861)
		UpdateMenu()
	elseif(LuaQueryTask("T861")==1)then
		local a = LuaQueryTask("task_kill/mon_058/T861") - 1
		if(a >= 30)then
			LuaSay("ͺ���ڹ£��ɵ���Щ�������Ҿͷ��Ķ��ˡ�")		
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T861jl")
		else
			LuaSay("ͺ���ڹ£�������ɱ��@3ɳ��@0@2"..a.."ֻ@0���Ϸ򻹲��ܸ��㽱��")
		end
	end
	
	elseif(answer=="T861jl")then
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T861")==1 and LuaQueryTask("task_kill/mon_058/T861")>=31)then
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
			LuaDelTask("task_kill/mon_058/T861")
			if(LuaQueryTask("T861num")<=30)then
				LuaGive("coin",money,"T861")
  				jy=(42025+level^2*20)
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T861")
			if(LuaQueryTask("T861_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T861_a",99)
			end
			LuaDelTask("T861")
			DelLog("861")
			UpdateMenu()
			
		end


end
LuaSendMenu()
return 1
end 

