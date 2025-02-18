NPCINFO = { 
serial="137" ,
base_name="juqumengxun",
icon=2584,
NpcMove=2584,
name="沮渠蒙逊" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="昔我往矣,杨柳依依;今我来思,雨雪霏霏",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0

	if(LuaQuery("level")>=75 and LuaQueryTask("T950")==0)then
		AddTopSayMenuItem("消灭獠龙【循环】","T950")
		havetask1=1
	end
	if(LuaQuery("level")>=77 and LuaQueryTask("T951")==0)then
		AddTopSayMenuItem("变种剑蜥【循环】","T951")
		havetask1=1
	end
	
	if(LuaQueryTask("T950")>0)then
		AddTopSayMenuItem("@2消灭獠龙【循环】","T950")
		havetask4=1
	end
	
	
	if(LuaQueryTask("T951")>0)then
		AddTopSayMenuItem("@2变种剑蜥【循环】","T951")
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
	LuaSay("沮渠蒙逊：我的梦想是在美丽的云端，和一位少女%……&*又OO，你懂的!") 
	
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>消灭獠龙【循环】
elseif(answer=="T950")then
	if(LuaQueryStrTask("950day")~=GetCurrentDay())then
			LuaDelTask("T950num")
	end
	if(LuaQueryTask("T950")==0)then
		LuaSay("沮渠蒙逊：我在这里研究恐龙多年，如今找到一批凶猛的@3獠龙@0，少侠帮我消灭30只@3獠龙@0，试一试它们的威力")
		LuaSetTask("task_kill/mon_065/T950",1)
		LuaSetTask("T950",1)
		LuaAddTask("T950num",1)
		LuaSetTask("950day",GetCurrentDay())
		AddLog("消灭獠龙【循环】",950)
		UpdateMenu()
	elseif(LuaQueryTask("T950")==1)then
		local a = LuaQueryTask("task_kill/mon_065/T950") - 1
		if(a >= 30)then
			LuaSay("沮渠蒙逊：干掉这些偷金贼，我就放心多了。")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T950jl")
		else
			LuaSay("沮渠蒙逊：少侠才杀掉@3獠龙@0@2"..a.."只@0，老夫还不能给你奖励")
		end
	end
	
	elseif(answer=="T950jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T950")==1 and LuaQueryTask("task_kill/mon_065/T950")>=31)then
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
			LuaDelTask("task_kill/mon_065/T950")
			if(LuaQueryTask("T950num")<=30)then
				LuaGive("coin",money,"T950")
  				jy=(42025+level^2*20)
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T950")
			if(LuaQueryTask("T950_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T950_a",99)
			end
			LuaDelTask("T950")
			DelLog("950")
			UpdateMenu()
			
		end



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>变种剑蜥【循环】
elseif(answer=="T951")then
	if(LuaQueryStrTask("951day")~=GetCurrentDay())then
			LuaDelTask("T951num")
	end
	if(LuaQueryTask("T951")==0)then
		LuaSay("沮渠蒙逊：由獠龙变种的@3剑蜥@0已经相当的勇猛，已经危害到当地的民众，请少侠速去消灭30只@3剑蜥@0后向我汇报")
		LuaSetTask("task_kill/mon_066/T951",1)
		LuaSetTask("T951",1)
		LuaAddTask("T951num",1)
		LuaSetTask("951day",GetCurrentDay())
		AddLog("变种剑蜥【循环】",951)
		UpdateMenu()
	elseif(LuaQueryTask("T951")==1)then
		local a = (LuaQueryTask("task_kill/mon_066/T951")-1)
		if(a>=30)then
			LuaSay("沮渠蒙逊：干掉这些偷金贼，我就放心多了。")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T951jl")
		else
			LuaSay("沮渠蒙逊：少侠才杀掉@3剑蜥@0@2"..a.."只@0，老夫还不能给你奖励")
		end
	end
	
	elseif(answer=="T951jl")then
		local level=LuaQuery("level")
			if(level>80)then
				level=80
			end
		if(LuaQueryTask("T951")==1 and LuaQueryTask("task_kill/mon_066/T951")>=31)then
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
			LuaDelTask("task_kill/mon_066/T951")
			if(LuaQueryTask("T951num")<=30)then
				LuaGive("coin",money,"T951")
  				jy=(42025+level^2*20)
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T951")
			if(LuaQueryTask("T951_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T951_a",99)
			end
			LuaDelTask("T951")
			DelLog("951")
			UpdateMenu()
			
		end


		       
end
LuaSendMenu()
return 1
end 

