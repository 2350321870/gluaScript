NPCINFO = { 
serial="68" ,
base_name="zhangshi",
icon=2562,
NpcMove=2562,
name="张氏" ,
iconaddr=1 ,
butt="5|5|61" ,
name_color="CEFFCE" ,
lastsay="姚苌不是个好臣子是个好丈夫",
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
	local T561=LuaQueryTask("T561") --------姚苌    败将阴谋
	local T571=LuaQueryTask("T571")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_52")==1 or LuaQueryTask("Tsnpc_52")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_52")
		if(LuaQueryTask("Tsnpc_52")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_52")==1 or LuaQueryTask("Tenpc_52")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_52")
		if(LuaQueryTask("Tenpc_52")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T561")==1 or T561==2) then
		AddTopSayMenuItem("@2败将阴谋【剧情】","T561")
		if(LuaQueryTask("T561")==1) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T570")==1) then
		AddTopSayMenuItem("@2吃斋念佛【剧情】","T570")
		havetask2 =1
	end
--以上为黄色问号部分
	if(T571==1) then
		AddTopSayMenuItem("@2疯狂的战士【循环】","T571")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T570")==0 and level>=33) then
		AddTopSayMenuItem("吃斋念佛【剧情】","T570")
		havetask1 =1
	end
 	if(T571==0 and level>=31 and level <=35) then
		AddTopSayMenuItem("疯狂的战士【循环】","T571")
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

elseif(answer=="T571") then
	if(LuaQueryStrTask("571day")~=GetCurrentDay())then
		LuaDelTask("T571num")
	end
	
	if(LuaQueryTask("T571") == 0 ) then
		LuaSay("张氏：氐族战士残暴不仁，危害甚大。请少侠去斩杀@220个氐族战士@0。")
		if(TeamCount()<2)then
			LuaSay("张氏：一个人太无聊？一个人太寂寞？找个朋友一起做任务吧，不光能打发寂寞，还能获得海量经验哦@!")
		end
		LuaSetTask("T571",1)
		LuaSetTask("task_kill/mon_027/T571",1)
		AddLog("疯狂的战士【循环】",571)
		LuaAddTask("T571num",1)
		LuaSetTask("571day",GetCurrentDay())
		UpdateMenu()
		UpdateTopSay("在渭水之滨消灭20个氐族战士")

	elseif(LuaQueryTask("T571") == 1 ) then
     		if(LuaQueryTask("task_kill/mon_027/T571")>=21)then
            		LuaSay("乞伏国仁：多谢阁下帮忙了，如果阁下有心，就帮我多杀些吧。")
		    	AddMenuItem("@7任务完成","")
		    	AddMenuItem("领取奖励","T571jl")
			else
		    	LuaSay("张氏：你还没有杀够@220个氐族战士@0呢。")
            		UpdateTopSay("快去杀20个氐族战士")
          	end
	end
	

		elseif(answer=="T571jl")then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T571")==1) then
     				if(LuaQueryTask("task_kill/mon_027/T571")>=21)then
       		 			LuaDelTask("task_kill/mon_027/T571")
		    			LuaDelTask("T571")
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
					if(LuaQueryTask("T571num")<=30)then
						if(TeamCount()>=2)then
							LuaSay("@1提示：获得组队经验加成")
							jingyan=(80835+level^2*20)
						else
							jingyan=(43950+level^2*20)
						end
						LuaGive("coin",money,"T571")
					else
						LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
						jingyan=(43950+level^2*20)/2
					end

		    			LuaAddJx("combat_exp",jingyan,"T571")
					LuaGive("coin",500,"T571")
					DelLog("571")
						if(LuaQueryTask("T571_a")==0) then
							LuaAddAchievementSchedule("Task_num",1)
							LuaSetTask("T571_a",99)
						end
		    			UpdateMenu()
		    		end
			end
	-------------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("张氏：我丈夫自立为王，也是迫不得已!")

elseif(answer=="T561") then
    if(LuaQueryTask("T561")==1) then
	LuaSay("张氏：如今主公吃了败仗，夫君作为主将要付主要责任，让我想想该怎么办！")
	LuaSay("张氏：我交给你一把@2匕首@0，请英雄将@2匕首交给姚苌@0，姚苌自然会明白！")
       	LuaSay("张氏：多谢英雄帮助！")
       	LuaGive("o_mission304",1,"T561")
       	LuaSetTask("T561",2)
	AddLog("败将阴谋【剧情】",561)
	UpdateMenu()
    elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==0) then
        LuaSay("张氏：英雄,小女子把这么重要的物品交给你，你却把它弄丢了！")
        LuaSay("张氏：还好我有两把，这事关我夫君的将来，请英雄慎重！")
        LuaGive("0_mission304",1,"T561")
	UpdateMenu()
	UpdateTopSay("把匕首交给渭水之滨的姚苌")
    elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
        LuaSay("张氏：把@2匕首@0交给@4渭水之滨@0的@3姚苌@0")
        UpdateTopSay("把匕首交给渭水之滨的姚苌")
    end
	
	--------------------------------------------吃斋念佛
elseif(answer=="T570")  then
	--if(GetCurrentDay()~=LuaQueryStrTask("570Taskday")) then
	--LuaSetTask("T570",0)
	--end
	if(LuaQueryTask("T570")==0)then
		LuaSay("张氏：少侠，我曾经干了一件违背良心的事情，我现在很后悔，唉。。。。。。。。")
		LuaSay("张氏：我曾经和兵营里的一个士兵……%……&&*，我要忏悔我的罪过，你愿意陪我一起念佛@2十分钟@0么？")
		LuaSetTask("T570",1)
		AddLog("吃斋念佛【剧情】",570)
		local time1=GetCurrentTime()
		--LuaSetTask("570Taskday",GetCurrentDay())
		LuaSetTask("570time",time1)
		UpdateMenu()
	elseif(LuaQueryTask("T570")==1)then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("570time"))
	    if(shijiancha>=600)then
	        LuaSay("张氏：谢谢少侠。")
	        AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T570jl")
	    else
		LuaSay("张氏：静心闭目，融汇贯通，已经过了@3"..shijiancha.."@0秒")
		UpdateTopSay("少侠在这里陪我念佛10分钟")
	    end
	end
	elseif(answer=="T570jl")then
		if(LuaQueryTask("T570")==1)then
			if((GetCurrentTime() - LuaQueryTask("570time"))>=600)then
				if(LuaFreeBag()>=1)then
					LuaSay("张氏：老娘赐你一把黄金大砍刀，哈哈@!")
					LuaSay("温馨提示，想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装")
					if(LuaQueryStr("class")=="shen") then      --战士 --刺激点 35级黄金武器
						LuaGive("e_falchion010",1,3,"T570")	
						elseif(LuaQueryStr("class")=="wu") then       --侠客 36武器
						LuaGive("e_sword012",1,3,"T570")
						elseif(LuaQueryStr("class")=="xian") then       --谋士36
						LuaGive("e_pen006",1,3,"T570")
					end
					LuaSetTask("T570",99)
					LuaAddJx("combat_exp",261000,"T570")-- 原301000终173659
					LuaAddAchievementSchedule("Task_num",1)	
					DelLog("570")
					LuaDelTask("570time")
					UpdateMenu()
				else
					LuaSay("@5温馨提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉哦@!")
				end
			end
		end

elseif(answer=="Tsnpc_52")then
	if(LuaQueryTask("Tsnpc_52")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("张氏：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_52",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_52")==2)then
		LuaSay("张氏：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_52")then
	if(LuaQueryTask("Tenpc_52")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("张氏：这都是大人的功劳啊")
		LuaSetTask("Tenpc_52",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_52")==2)then
		LuaSay("张氏：话已经带到了，快回去领取奖励吧")
	end	

end
LuaSendMenu()
return 1
end 

