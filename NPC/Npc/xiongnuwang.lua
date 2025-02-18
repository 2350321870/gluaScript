NPCINFO = { 
serial="138" ,
base_name="xiongnuwang",
icon=2560,
NpcMove=2560 ,
name="匈奴王" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="出师未捷身先死，长使英雄泪满襟",
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
	level= LuaQuery("level")

	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("T960")==0 and LuaQuery("level")>=76)then
		AddTopSayMenuItem("匈奴力士【循环】","T960")
		havetask1=1
	end
	if(LuaQueryTask("T961")==0 and LuaQuery("level")>=77)then
		AddTopSayMenuItem("萨满必死【循环】","T961")
		havetask1=1
	end


	if(LuaQueryTask("T960")>0)then
		AddTopSayMenuItem("@2匈奴力士【循环】","T960")
		havetask4=1
	end
	if(LuaQueryTask("T961")>0)then
		AddTopSayMenuItem("@2萨满必死【循环】","T961")
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
	LuaSay("出师未捷身先死，长使英雄泪满襟，愁！愁！愁！") 
	
		       
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>匈奴力士【循环】
elseif(answer=="T960")then
	if(LuaQueryStrTask("960day")~=GetCurrentDay())then
			LuaDelTask("T960num")
	end
	if(LuaQueryTask("T960")==0)then
		LuaSay("匈奴王：@3匈奴力士@0乃是异界来客，请少侠速去消灭30只@3匈奴力士@0后向我汇报")
		LuaSetTask("task_kill/mon_067/T960",1)
		LuaSetTask("T960",1)
		LuaAddTask("T960num",1)
		LuaSetTask("960day",GetCurrentDay())
		AddLog("匈奴力士【循环】",960)
		UpdateMenu()
	elseif(LuaQueryTask("T960")==1)then
		local a = LuaQueryTask("task_kill/mon_067/T960") - 1
		if(a >= 30)then
			LuaSay("匈奴王：干掉他们，我就放心多了。")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T960jl")
		else
			LuaSay("匈奴王：少侠才杀掉@3匈奴力士@0@2"..a.."只@0，老夫还不能给你奖励")
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
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
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



-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>匈奴萨满【循环】
elseif(answer=="T961")then
	if(LuaQueryStrTask("961day")~=GetCurrentDay())then
			LuaDelTask("T961num")
	end
	if(LuaQueryTask("T961")==0)then
		LuaSay("匈奴王：这些@3匈奴萨满@0在背后支撑力士才得以这么强大，请少侠速去消灭30只@3匈奴萨满@0后向我汇报")
		LuaSetTask("task_kill/mon_068/T961",1)
		LuaSetTask("T961",1)
		LuaAddTask("T961num",1)
		LuaSetTask("961day",GetCurrentDay())
		AddLog("匈奴萨满【循环】",961)
		UpdateMenu()
	elseif(LuaQueryTask("T961")==1)then
		local a = LuaQueryTask("task_kill/mon_068/T961") - 1
		if(a >= 30)then
			LuaSay("匈奴王：这下看他们还怎么得意")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T961jl")
		else
			LuaSay("匈奴王：少侠才杀掉@3匈奴萨满@0@2"..a.."只@0，老夫还不能给你奖励")
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
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
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

