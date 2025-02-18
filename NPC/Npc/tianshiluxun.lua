NPCINFO = { 
serial="136" ,
base_name="tianshiluxun",
icon=2555,
NpcMove=2555,
name="天师卢循" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="人生自古谁无死，留取丹心照汗青",
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
	if(LuaQuery("level")>=71 and LuaQueryTask("T900")==0)then
		AddTopSayMenuItem("邪恶拳将【循环】","T900")
		havetask1=1
	end
	if(LuaQuery("level")>=72 and LuaQueryTask("T901")==0)then
		AddTopSayMenuItem("天师邪灵【循环】","T901")
		havetask1=1
	end
	

	if(LuaQueryTask("T900")>0)then
		AddTopSayMenuItem("@2邪恶拳将【循环】","T900")
		havetask4=1
	end
	if(LuaQueryTask("T901")>0)then
		AddTopSayMenuItem("@2天师邪灵【循环】","T901")
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
	LuaSay("天师卢循：酷毙的人生，注定我要在这里埋没一生") 
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>邪恶拳将【循环】
elseif(answer=="T900")then
	if(LuaQueryStrTask("900day")~=GetCurrentDay())then
			LuaDelTask("T900num")
	end
	if(LuaQueryTask("T900")==0)then
		LuaSay("天师卢循：好邪恶的@3柔然拳将@0，我辛辛苦苦的训练他们，它们却将我的狗肉包子吃的一个不剩")
		LuaSay("天师卢循：但是它们可能还私藏的有，你去给我讨要20狗肉包子回来")
		LuaSetTask("T900",1)
		LuaAddTask("T900num",1)
		LuaSetTask("900day",GetCurrentDay())
		AddLog("邪恶拳将【循环】",900)
		UpdateMenu()
	elseif(LuaQueryTask("T900")==1)then
		local a = LuaItemCount("o_mission192")
		if(a >= 20)then
			LuaSay("天师卢循：我的狗肉包子啊，哇哈哈")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T900jl")
		else
			LuaSay("天师卢循：你才给我带回了"..a.."个狗肉包子，收集好20个一起带给我吧")
		end
	end
	
	elseif(answer=="T900jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T900")==1)then
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
			DelItem("o_mission192",LuaItemCount("o_mission192"))
			if(LuaQueryTask("T900num")<=30)then
				LuaGive("coin",money,"T900")
  				jy=(42025+level^2*20)
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T900")
			if(LuaQueryTask("T900_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T900_a",99)
			end
			LuaDelTask("T900")
			DelLog("900")
			UpdateMenu()
			
		end
	       
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>天师邪灵【循环】
elseif(answer=="T901")then
	if(LuaQueryStrTask("901day")~=GetCurrentDay())then
			LuaDelTask("T901num")
	end
	if(LuaQueryTask("T901")==0)then
		LuaSay("天师卢循：@3天师邪灵@0再度现身，我在此地训练打手正是为它们准备，少侠作为先锋先帮我消灭30只@3@天师邪灵@0")
		LuaSetTask("task_kill/mon_078/T901",1)
		LuaSetTask("T901",1)
		LuaAddTask("T901num",1)
		LuaSetTask("901day",GetCurrentDay())
		AddLog("天师邪灵【循环】",901)
		UpdateMenu()
	elseif(LuaQueryTask("T901")==1)then
		local a =(LuaQueryTask("task_kill/mon_078/T901")-1)
		if(a>=30)then
			LuaSay("天师卢循：这些可恶的@3天师邪灵@0，现在总算太平了一点")		
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T901jl")
		else
			LuaSay("天师卢循：少侠才杀掉@3天师邪灵"..a.."只@0，还不能领取奖励哦")
		end
	end
	
	elseif(answer=="T901jl")then
		local level=LuaQuery("level")
		if(LuaQueryTask("T901")==1 and LuaQueryTask("task_kill/mon_078/T901")>=31)then
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
			LuaDelTask("task_kill/mon_078/T901")
			if(LuaQueryTask("T901num")<=30)then
				LuaGive("coin",money,"T901")
  				jy=(42025+level^2*20)
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T901")
			if(LuaQueryTask("T901_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T901_a",99)
			end
			LuaDelTask("T901")
			DelLog("901")
			UpdateMenu()
			
		end
	
		       

end
LuaSendMenu()
return 1
end 

