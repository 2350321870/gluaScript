NPCINFO = { 
serial="60" ,
base_name="furong",
icon=2581,
NpcMove=2581,
name="苻融" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="鞠躬尽瘁死而后已",
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
	local T470=LuaQueryTask("T470")
	local T490=LuaQueryTask("T490")
	local T499=LuaQueryTask("T499")
	AddTopSayMenuItem("@7任务列表","")
	if(T499==1) then
	        AddTopSayMenuItem("@2昔日枭雄【剧情】","T499")
		havetask2=1
	end
	if((LuaQueryTask("Tsnpc_44")==1 or LuaQueryTask("Tsnpc_44")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_44")
		if(LuaQueryTask("Tsnpc_44")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_44")==1 or LuaQueryTask("Tenpc_44")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_44")
		if(LuaQueryTask("Tenpc_44")==1)then
			havetask2=1
		end
	end
	if(T470==1)then
		AddTopSayMenuItem("@2启程北方【剧情】","T470")
		havetask2=1
	end

	
	if(LuaQueryTask("T302")==13 and LuaQueryTask("T302M")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302M")
		havetask2 =1
	end
--以上为黄色问号部分
	if(T490==1)then
		AddTopSayMenuItem("@2苻融的考验【剧情】","T490")
		havetask4=1
	end
--以上为灰色问号部分
	if(T490==0 and level>=31 )then
		AddTopSayMenuItem("苻融的考验【剧情】","T490")
		havetask1=1
	end
	if(T499==0 and level>=31) then
	        AddTopSayMenuItem("昔日枭雄【剧情】","T499")
	        havetask1=1
	end
--以上为黄色感叹号部分
	
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
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("苻融:符坚虽然败了，但是当尽力佐之!")
	
elseif(answer=="T302M") then
	   if(LuaQueryTask("T302M")==0) then
		   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
		   LuaSay("符融：怎么天天有人写信给我，着实奇怪！")
		   DelItem("o_mission076",1)
		   LuaSetTask("T302M",99)
		   UpdateMenu()
	   end
elseif(answer=="T470")then
  if(LuaQueryTask("T470")==1) then	
  	if(LuaItemCount("o_mission303")>=1) then 	
    		LuaSay("苻融:阁下就是朱序所举荐的勇士？") 
    		LuaSay(""..LuaQueryStr("name")..":融长老客气了，受朱序所托，来投靠长老！这是他老人家的信物")
    		DelItem("0_mission303",1) 
    		LuaSay("苻融:好，很好")
    		AddMenuItem("@7任务完成","")
   		AddMenuItem("领取奖励","T470jl")
   	else
   		LuaSay("苻融:哪里来的毛小子。")
   	end 
  end
	elseif(answer=="T470jl")then
		if(LuaQueryTask("T470")==1) then
		LuaSetTask("T470",99)
		DelLog("470")
		LuaAddJx("combat_exp",303000,"T470")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission303",LuaItemCount("o_mission303"))
		UpdateMenu()
		end	
-----------------------------------------------
elseif(answer=="T490")then
	local T490=LuaQueryTask("T490")
	if(T490==0)then
		LuaSay("苻融:阁下英勇神气可佳，可你这身材...不像是健壮之人...")
		LuaSay(""..LuaQueryStr("name")..":长老莫非见我身子骨矮小？")
		LuaSay("苻融:既然你对自己这么有信心，帮我消灭@230个氐族哨兵@0向我回报，以证明你的实力！")
		LuaSetTask("task_kill/mon_025/T490",1)
		LuaSetTask("T490",1)
		AddLog("苻融的考验【剧情】",490)
		UpdateMenu()
		UpdateTopSay("去消灭30个氐族哨兵")
  elseif(T490==1)then
	if(LuaQueryTask("task_kill/mon_025/T490")>=31)then
		LuaSay("苻融:年轻人，你很不错，有能力单独去征服北方")
    		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T490jl")
	else
		LuaSay("苻融:还没消灭掉@230个氐族哨兵@0吗？哎，你的实力还不行啊！")
	end
  end
	elseif(answer=="T490jl")then
	local T490=LuaQueryTask("T490")
 		if(T490==1)then
 			if(LuaQueryTask("task_kill/mon_025/T490")>=31)then
 				LuaDelTask("task_kill/mon_025/T490")
				LuaAddJx("combat_exp",303000,"T490")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",1000,"T490")
				LuaSetTask("T490",99)
				DelLog("490")
				UpdateMenu()
				end
  		end
	
elseif(answer=="T499") then
	local T499=LuaQueryTask("T499")
		if(T499==0) then
			LuaSay("苻融:我的兄长正需要你这样的人才，他也有一统天下的决心。")
			LuaSay(""..LuaQueryStr("name").."：不知长老能否引荐？")
			LuaSay("苻融:你去@3洛阳城@0找@3苻坚@0吧。他在那里等着你！")
        		LuaSetTask("T499",1)
        		AddLog("昔日枭雄【剧情】",499)
	    		UpdateMenu()
	    		UpdateNPCMenu("fujian")
	    	elseif(T499==1) then
	    		LuaSay("苻融:你去@3洛阳城@0找@3苻坚@0吧。他在那里等着你！")
	    		
	    	end 


elseif(answer=="Tsnpc_44")then
	if(LuaQueryTask("Tsnpc_44")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("苻融：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_44",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_44")==2)then
		LuaSay("苻融：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_44")then
	if(LuaQueryTask("Tenpc_44")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("苻融：这都是大人的功劳啊")
		LuaSetTask("Tenpc_44",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_44")==2)then
		LuaSay("苻融：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end 

