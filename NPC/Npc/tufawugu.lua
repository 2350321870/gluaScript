NPCINFO = { 
serial="135" ,
base_name="tufawugu",
icon=2531,
NpcMove=2531,
name="秃发乌孤" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="捐躯赴国难，视死忽如归",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(level >=71 and LuaQueryTask("T860")==0)then
		AddTopSayMenuItem("偷金贼【循环】","T860")
		havetask1=1
	end
	if(LuaQuery("level")>=72 and LuaQueryTask("T861")==0)then
		AddTopSayMenuItem("去除威胁【循环】","T861")
		havetask1=1
	end


	if(LuaQueryTask("T860")>0)then
		AddTopSayMenuItem("@2偷金贼【循环】","T860")
		havetask4=1
	end
	if(LuaQueryTask("T861")>0)then
		AddTopSayMenuItem("@2去除威胁【循环】","T861")
		havetask4=1
	end

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("秃发乌孤：迷宫里面总有无尽的宝藏") 
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>偷金贼【循环】		       
elseif(answer=="T860")then
	if(LuaQueryStrTask("860day")~=GetCurrentDay())then
			LuaDelTask("T860num")
	end
	if(LuaQueryTask("T860")==0)then
		LuaSay("秃发乌孤：在这沙漠迷宫中藏有很多宝藏，如今我老了，这些@3沙虫@0偷走我的宝藏。")
		LuaSay("秃发乌孤：少侠帮我消灭30只@3沙虫@0，老夫重重有赏")
		LuaSetTask("task_kill/mon_057/T860",1)
		LuaSetTask("T860",1)
		LuaAddTask("T860num",1)
		LuaSetTask("860day",GetCurrentDay())
		AddLog("偷金贼【循环】",860)
		UpdateMenu()
	elseif(LuaQueryTask("T860")==1)then
		local a = LuaQueryTask("task_kill/mon_057/T860") - 1
		if(a >= 30)then
			LuaSay("秃发乌孤：干掉这些偷金贼，我就放心多了。")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T860jl")
		else
			LuaSay("秃发乌孤：少侠才杀掉@3沙虫@0@2"..a.."只@0，老夫还不能给你奖励")
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
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
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

			
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>去除威胁【循环】
elseif(answer=="T861")then
	if(LuaQueryStrTask("861day")~=GetCurrentDay())then
			LuaDelTask("T861num")
	end
	if(LuaQueryTask("T861")==0)then
		LuaSay("秃发乌孤：@4这沙漠迷宫@0中的@3沙魁@0一直对老夫的财宝虎视眈眈，你帮我消灭30只@3沙魁@0，吓唬吓唬它们")
		LuaSetTask("task_kill/mon_058/T861",1)
		LuaSetTask("T861",1)
		LuaAddTask("T861num",1)
		LuaSetTask("861day",GetCurrentDay())
		AddLog("去除威胁【循环】",861)
		UpdateMenu()
	elseif(LuaQueryTask("T861")==1)then
		local a = LuaQueryTask("task_kill/mon_058/T861") - 1
		if(a >= 30)then
			LuaSay("秃发乌孤：干掉这些蠢货，我就放心多了。")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T861jl")
		else
			LuaSay("秃发乌孤：少侠才杀掉@3沙魁@0@2"..a.."只@0，老夫还不能给你奖励")
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
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
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

