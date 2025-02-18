NPCINFO = { 
serial="120" ,
base_name="shizhe",
icon=2512,
NpcMove=2512,
name="侍者" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="小人是负责照顾皇上起居的",
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
	if((LuaQueryTask("Tsnpc_64")==1 or LuaQueryTask("Tsnpc_64")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_64")
		if(LuaQueryTask("Tsnpc_64")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_64")==1 or LuaQueryTask("Tenpc_64")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_64")
		if(LuaQueryTask("Tenpc_64")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T692")==1) then
		AddTopSayMenuItem("@2忠心侍者【剧情】","T692")
		havetask2=1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T692")==2) then
		AddTopSayMenuItem("@2忠心侍者【剧情】","T692")
		havetask4=1
	end	
	if(LuaQueryTask("T681")==1)then
		AddTopSayMenuItem("@2消灭妖兵【循环】","T681")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T680")==0 and level>=55) then
		AddTopSayMenuItem("守墓老人【剧情】","T680")
		havetask1=1
	end
	if(LuaQueryTask("T681")==0 and level>=53 and level<=56)then
		AddTopSayMenuItem("消灭妖兵【循环】","T681")
		havetask1=1
	end
	if(LuaQueryTask("T680")==1) then
		AddTopSayMenuItem("@2守墓老人【剧情】","T680")
		havetask1=1
	end
--以上为黄色感叹号部分2011-11-24
		
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
	LuaSay("侍者：皇上身体不佳，需要多多歇息!") 
	--------------------------------------------------忠心侍者【剧情】
elseif(answer=="T692") then
	if(LuaQueryTask("T692")==1) then
		LuaSay("侍者：你去@4参合坡@0消灭@3龙兵@0获得@320个龙鳞@0，我才会告诉你实情")
		LuaSetTask("T692",2)      -------日志的添加
		AddLog("忠心侍者【剧情】",692)
		UpdateMenu()
	elseif(LuaQueryTask("T692")==2) then
	 	if(LuaItemCount("o_mission359")>=20) then
			LuaSay("侍者：浑太后为了消灭慕容垂不惜用自己的儿子献祭，燕王已经有一个兄长献祭在了陵墓里，现在轮到燕王了。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T692jl")
		else
		    LuaSay("侍者：你还没有凑齐@320个龙鳞@0，接着去@4参合坡@0消灭@3龙兵@0吧")
		end
	end
	
	elseif(answer=="T692jl") then
		if(LuaQueryTask("T692")==2) then
			LuaSetTask("T692",99)
			DelLog("692")
			LuaAddJx("combat_exp",1126000,"T692")
			LuaGive("coin",3600,"T692")
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission359",20)
			UpdateMenu()
		end                   
--------------------  守墓老人【剧情】
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==0) then
		LuaSay("侍者：我对浑太后的行为看不过去，我想拜托英雄帮助燕王，破坏浑太后的恶行。")
		LuaSay("侍者：只要消灭地下陵穴中的王陵将军就可以让这些妖兵消失，我建议英雄先去@4燕王陵@0找@3守墓老人@0。")
		LuaSetTask("T680",1)      -------日志的添加
		AddLog("守墓老人【剧情】",680)
		UpdateMenu()
		UpdateNPCMenu("smlaoren")
	elseif(LuaQueryTask("T680")==1) then
		LuaSay("到燕王陵找守墓老人")
	end
------------------------------------  消灭妖兵【循环】
elseif(answer=="T681")then
		if(LuaQueryStrTask("681day")~=GetCurrentDay())then
			LuaDelTask("T681num")
		end
		if(LuaQueryTask("T681")==0)then
			LuaSay("侍者：让我们共同对抗妖兵吧，去杀@335只象帅@0，对抗@3浑太后@0的恶行")
     			LuaSetTask("T681",1)
			LuaSetTask("681day",GetCurrentDay())
      			LuaSetTask("task_kill/mon_041/T681",1)
			LuaAddTask("T681num",1)
     			AddLog("消灭妖兵【循环】",681)
     			UpdateMenu()
		elseif(LuaQueryTask("T681")==1)then
			if(LuaQueryTask("task_kill/mon_041/T681")>=36) then
				LuaSay("侍者：你的行动让我看到了你的决心，这是对你的一点小小的奖励！")
				AddMenuItem("@7任务完成","")
	    			AddMenuItem("领取奖励","T681jl")
			else
				LuaSay("侍者：去消灭妖兵，咱们一起对抗浑太后的邪恶势力")
			end
		end

	elseif(answer=="T681jl") then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T681")==1)then
		local jinyan
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
		if(LuaQueryTask("T681num")<=30)then
			jinyan=(level^2*20+151629)
			LuaGive("coin",money,"T681")
		else
		LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
		jinyan=(level^2*20+151629)/2
		end
		LuaAddJx("combat_exp",jinyan,"T681")
		if(LuaQueryTask("T681_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T681_a",99)
		end
	
		DelLog("681")
		LuaSetTask("T681",0)
		LuaDelTask("task_kill/mon_041/T681")
		UpdateMenu()
		end

elseif(answer=="Tsnpc_64")then
	if(LuaQueryTask("Tsnpc_64")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("侍者：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_64",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_64")==2)then
		LuaSay("侍者：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_64")then
	if(LuaQueryTask("Tenpc_64")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("侍者：这都是大人的功劳啊")
		LuaSetTask("Tenpc_64",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_64")==2)then
		LuaSay("侍者：话已经带到了，快回去领取奖励吧")
	end	

end    	
LuaSendMenu()
return 1
end 

