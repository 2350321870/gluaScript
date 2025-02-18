NPCINFO = { 
serial="78" ,
base_name="murongping",
icon=2584,
NpcMove=2584 ,
name="慕容评" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="谁说我不如慕容垂？我一人就能斗垮他们父子",
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
		if((LuaQueryTask("Tsnpc_63")==1 or LuaQueryTask("Tsnpc_63")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_63")
		if(LuaQueryTask("Tsnpc_63")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_63")==1 or LuaQueryTask("Tenpc_63")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_63")
		if(LuaQueryTask("Tenpc_63")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T670")==2 or LuaQueryTask("T670")==1 )then
		AddTopSayMenuItem("@2过河拆桥【剧情】","T670")
		if(LuaQueryTask("T670")==2)then
		havetask2=1
		end
	end	
	if(LuaQueryTask("T646")==1) then
		AddTopSayMenuItem("@2博取信任【剧情】","T646")
		havetask2=1
	end

	if(LuaQueryTask("T630")==2)then
		AddTopSayMenuItem("@2父亲的解释【剧情】","T630")
		havetask2=1             
	end
--以上为黄色问号部分
	if(LuaQueryTask("T671")==1) then
		AddTopSayMenuItem("@2栽培1【剧情】","T671")
		havetask4=1
	end	
	if(LuaQueryTask("T672")==1) then
		AddTopSayMenuItem("@2栽培2【剧情】","T672")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T670")==0 and level>=45)then
		AddTopSayMenuItem("过河拆桥【剧情】","T670")
		havetask1=1
	end             		
	if(LuaQueryTask("T672")==0 and LuaQueryTask("T671")==99) then
		AddTopSayMenuItem("栽培2【剧情】","T672")
		havetask1=1
	end
	if(LuaQueryTask("T671")==0 and level>=52) then
		AddTopSayMenuItem("栽培1【剧情】","T671")
		havetask1=1
	end
--以上为黄色感叹号
	
	
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
else	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1

------------------------------------------------
elseif(answer=="liaotian") then                   
	LuaSay("慕容评：我要证明，我慕容评才是慕容家最杰出的人!") 
------------------------------------------------  父亲的解释
elseif(answer=="T630")then
	if(LuaQueryTask("T630")==2)then
	  	LuaSay(""..LuaQueryStr("name").."：开门见山的说吧，你拿@3慕容麟@0是当炮灰的吧，别利用人家了。")
	  	LuaSay("慕容评；笑话，他是我最心疼的义子，我怎么可能利用他呢")
	  	AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T630jl")
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
	
------------------------------------------------    过河拆桥
elseif(answer=="T670")then
	if(LuaQueryTask("T670")==0)then
		LuaSay("慕容评；少侠你顺路帮我把这瓶@4琼花佳酿@0带给@3慕容麟@0吧")
		LuaGive("o_mission352",1)
		LuaSetTask("T670",1)
		AddLog("过河拆桥【剧情】",670)
		UpdateMenu()
		UpdateNPCMenu("muronglin")
	elseif(LuaQueryTask("T670")==1)then
		LuaSay("慕容评：你怎么还没有到@4太行古径@0的@3慕容麟@0那里去啊？")
	elseif(LuaQueryTask("T670")==2)then
		LuaSay(""..LuaQueryStr("name").."：看你做的好事，为什么要毒死@3慕容麟@0")
		LuaSay("慕容评；哈哈，他已经没有可利用的价值了，留他何用？不如现在消除，以免日后出乱！")
	  	AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T670jl")
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
---------------------------------------------博取信任【剧情】
elseif(answer=="T646")then
	if(LuaQueryTask("T646")==1) then
		LuaSay(""..LuaQueryStr("name").."：小弟特来交差，这是信物")
		if(LuaItemCount("o_mission356")==1)then
		AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T646jl")
		else
	    	LuaSay("慕容评；你不是我们的人吧，信物呢？")
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
			 
----------------------------------------------栽培1【剧情】
elseif(answer=="T671")then
	if(LuaQueryTask("T671")==0)then
		LuaSay("慕容评；你乃可信之人，决心栽培你，去消灭@335个龙兵@0吧，以锻炼你的能力")
		LuaSetTask("T671",1) 
		AddLog("栽培1【剧情】",671) --mon_039 龙兵
		LuaSetTask("task_kill/mon_039/T671",1)--开启 龙兵 杀怪计数器
		UpdateMenu()
	elseif(LuaQueryTask("T671")==1)then
		if(LuaQueryTask("task_kill/mon_039/T671")>=36)then
		LuaSay("慕容评；小伙子果然能力超凡")
		AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T671jl")
		else
		LuaSay("慕容评；偷工减料是不成气候的！")
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
		
------------------------------------------------ 栽培2【剧情】
elseif(answer=="T672")then
	if(LuaQueryTask("T672")==0)then
		LuaSay("慕容评；一朝一夕不足以成大事，你再去击杀@335个蟾卒@0，锻炼你的耐力。") 
		LuaSetTask("T672",1) 
		AddLog("栽培2【剧情】",672) --mon_040 蟾卒
		LuaSetTask("task_kill/mon_040/T672",1)--开启 蟾卒 杀怪计数器
		UpdateMenu()
	elseif(LuaQueryTask("T672")==1)then
		if(LuaQueryTask("task_kill/mon_040/T672")>=36)then
			LuaSay("慕容评；此乃可造之才，你可能对这些妖兵从哪里来感到疑惑，你可以去问@3浑太后@0")
			LuaSetTask("T672",2)
			AddLog("栽培2【剧情】",672)
			UpdateMenu()
			UpdateNPCMenu("huntaihou")
		else
			LuaSay("慕容评；你还没杀够@335个蟾卒@0啊！")
		end
	end				

elseif(answer=="Tsnpc_63")then
	if(LuaQueryTask("Tsnpc_63")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("慕容评；我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_63",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_63")==2)then
		LuaSay("慕容评；信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_63")then
	if(LuaQueryTask("Tenpc_63")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("慕容评；这都是大人的功劳啊")
		LuaSetTask("Tenpc_63",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_63")==2)then
		LuaSay("慕容评；话已经带到了，快回去领取奖励吧")
	end		       
		       
end
LuaSendMenu()
return 1
end 

