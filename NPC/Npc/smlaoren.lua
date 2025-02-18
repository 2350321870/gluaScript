NPCINFO = { 
serial="124" ,
base_name="smlaoren",
icon=2536,
NpcMove=2536,
name="守墓老人" ,
iconaddr=1 ,
butt="5|5|55" ,
name_color="CEFFCE" ,
lastsay="整天在这鬼地方呆着，不是一般人能做到的",
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
	if((LuaQueryTask("Tsnpc_67")==1 or LuaQueryTask("Tsnpc_67")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_67")
		if(LuaQueryTask("Tsnpc_67")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_67")==1 or LuaQueryTask("Tenpc_67")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_67")
		if(LuaQueryTask("Tenpc_67")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T680")==1 or LuaQueryTask("T680")==2 or LuaQueryTask("T680")==3) then
		AddTopSayMenuItem("@2守墓老人【剧情】","T680")
		if(LuaItemCount("o_mission357")>0 or LuaQueryTask("T680")==1) then
		havetask2=1
		end 
	end

	if(LuaQueryTask("T712")==1)then
		AddTopSayMenuItem("@2战前考验【剧情】","T712")
	end
	if(LuaQueryTask("T714")==1 or LuaQueryTask("T714")==2)then
 		AddTopSayMenuItem("@2地下的决战【BOSS】","T714")
		if(LuaQueryTask("T714")==1)then
		havetask2=1
		else
		havatask4=1
		end
 	end


	if(LuaQueryTask("Tbprw11_1")==1) then
		AddTopSayMenuItem("@2解决邪恶【环一】","Tbprw11_1")
		havetask2=1
	end

	if(LuaQueryTask("Tbprw11_2")==1) then
		AddTopSayMenuItem("@2寻找根源【环二】","Tbprw11_2")
	end

	if(LuaQueryTask("T716")==1 )then
		AddTopSayMenuItem("@2稀奇古怪【循环】","T716")
		if(LuaItemStatusNormalCount("o_mission018") >= 1) then
		havetask2=1
		end
	end
--以上为黄色问号部分
	if(LuaQueryTask("T715")==1)then
		AddTopSayMenuItem("@2消灭僵尸【循环】","T715")
		havetask4=1
	end
	if(LuaQueryTask("T710")==1)then
		AddTopSayMenuItem("@2王陵灭怪1【剧情】","T710")
		havetask4=1
	end
	if(LuaQueryTask("T711")==1 )then
		AddTopSayMenuItem("@2王陵灭怪2【剧情】","T711")
		havetask4=1
	end
	if(LuaQueryTask("T713")==1)then
		AddTopSayMenuItem("@2谨慎行事【剧情】","T713")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T716")==0 and level>=56 and level<=57)then
		AddTopSayMenuItem("稀奇古怪【循环】","T716")
		havetask1=1
	end
	if(LuaQueryTask("T710")==0 and level>=55)then
		AddTopSayMenuItem("王陵灭怪1【剧情】","T710")
		havetask1=1
	end	
	
	if(LuaQueryTask("T711")==0 and level>=56)then
		AddTopSayMenuItem("王陵灭怪2【剧情】","T711")
		havetask1=1
	end	
	if(LuaQueryTask("T712")==0 and level>=57)then
		AddTopSayMenuItem("战前考验【剧情】","T712")
		havetask1=1
	end
	if(LuaQueryTask("T714")==0 and level>=59)then
 		AddTopSayMenuItem("地下的决战【BOSS】","T714")
		havetask1=1
 	end	
 	if(LuaQueryTask("T713")==0 and level>=59)then
		AddTopSayMenuItem("谨慎行事【剧情】","T713")
		havetask1=1
	end
 	if(LuaQueryTask("T715")==0 and level>=55 and level<=65)then
		AddTopSayMenuItem("消灭僵尸【循环】","T715")
		havetask1=1
	end
	if(LuaQueryTask("Tbprw11_2")==0 and LuaQueryTask("Tbprw11_1")==99) then
		AddTopSayMenuItem("@2寻找根源【环二】","Tbprw11_2")
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
	LuaSay("守墓老人：过几年，我这一把老骨头也要进土了!") 
	----------------------------------守墓老人
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==1) then
	    LuaSay("守墓老人：你先到@4天涯海角@0的@3幸运老人@0那拿壶@2天涯之酒@0给我吧")
		LuaSetTask("T680",2)      -------日志的添加
		AddLog("守墓老人【剧情】",680)
		UpdateMenu()
    elseif(LuaQueryTask("T680")==2) then
        UpdateTopSay("到天涯海角的幸运老人那拿壶天涯之酒")
    elseif(LuaQueryTask("T680")==3) then
    	if(LuaItemCount("o_mission357")>0) then
        	LuaSay("守墓老人：哎，几年没喝过这么好的酒了（老人两眼放光的说道）。")
        	AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T680jl")
		else
			LuaSay("守墓老人：我要的酒呢？") 
		end
 	elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")==0) then
 	    LuaSay("守墓老人：你拿的@3天涯之酒@0呢，怎么会被你弄丢了，哎，败家子啊。")
 	    LuaSay("守墓老人：再去@4天涯海角@0的@3幸运老人@0那拿壶@2天涯之酒@0吧。")
	end
elseif(answer=="T680jl") then
	if(LuaQueryTask("T680")==3) then
        LuaSetTask("T680",99)
	    DelLog("680")
	    LuaAddJx("combat_exp",1306000,"T680")
	    LuaGive("coin",3000,"T680")
		LuaAddAchievementSchedule("Task_num",1)	
	    DelItem("o_mission357",1)
	    UpdateMenu()
	end
-------------------------------------------------------------------王陵灭怪1
elseif(answer=="T710")then
	if(LuaQueryTask("T710")==0) then
		LuaSay("守墓老人：我看你身子骨还不够硬朗，还得多加锻炼，你去消灭@4燕王陵@0中的@2鬼火35只@0")
		LuaSetTask("T710",1)
		AddLog("王陵灭怪1【剧情】",710)
		LuaSetTask("task_kill/mon_042/T710",1)
		UpdateMenu()
	elseif(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
			LuaSay("守墓老人：经过锻炼你能力已经得到很大的提升！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T710jl")
		else
			LuaSay("守墓老人：消灭@4燕王陵@0中的@2鬼火35只@0")
		end	
	end	
		
		
	elseif(answer=="T710jl")then
	if(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
		LuaSetTask("T710",99)
		DelLog("710")
		LuaAddJx("combat_exp",1306000,"T710")
		LuaGive("coin",3700,"T710")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaDelTask("task_kill/mon_042/T710")
		UpdateMenu()
		end
		end
-------------------------------------------------------------------王陵灭怪2
elseif(answer=="T711")then
	if(LuaQueryTask("T711")==0)then
		LuaSay("守墓老人：我看你实力还不错，为了保险，在@3十五分钟之内@0再消灭@2蝠灵35只@0")
		LuaSetTask("T711",1)
		AddLog("王陵灭怪2【剧情】",711)	
		local time=GetCurrentTime()
		LuaSetTask("711time",time)
		LuaSetTask("task_kill/mon_043/T711",1)
		UpdateMenu()
	elseif(LuaQueryTask("T711")==1)then
		local shijiancha=( GetCurrentTime()-LuaQueryTask("711time"))
		if(shijiancha<=900)then
			if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
				LuaSay("守墓老人：你的行动已经证明了你的实力！")	
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T711jl")
			else
				LuaSay("守墓老人：在@3十五分钟之内@0再消灭@2蝠灵@0@435只@0")
			end 
		elseif(LuaQueryTask("T711sum")==0)then
				LuaSay("守墓老人：时间已经过了很久了。我再重新给你一次机会，记住只有一次机会哦")
				AddMenuItem("@7请选择","")
				AddMenuItem("再来一次","T711yes")
				AddMenuItem("放弃任务","T711no")
			else
				LuaSay("守墓老人：你超时了！")
				LuaSetTask("T711",99)
				UpdateMenu()
		end
	end
	
	

	elseif(answer=="T711yes")then
		LuaSetTask("T711",0)
		LuaSetTask("T711sum",1)
	    UpdateMenu()
	elseif(answer=="T711no") then
		LuaSetTask("T711",99)
		UpdateMenu()
	elseif(answer=="T711jl") then
		if(LuaQueryTask("T711")==1)then
			if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
		LuaSetTask("T711",99)
	    DelLog("711")
	    LuaAddJx("combat_exp",1391000,"T711")
	    LuaGive("coin",4000,"T711")
		LuaAddAchievementSchedule("Task_num",1)	
	    LuaDelTask("task_kill/mon_043/T711")
	    UpdateMenu()
	    end
	    end
		
---------------------------------------------------战前考验【剧情】	
elseif(answer=="T712")then
	if(LuaQueryTask("T712")==0)	then
		LuaSay(""..LuaQueryStr("name").."：现在我可以去杀掉@2王陵将军@0了吧")
		LuaSay("守墓老人：地下陵墓让浑太后设了禁法，只要有人闯入她就会立刻知道，你去找燕王商量对策")
		LuaSetTask("T712",1)
		AddLog("战前考验【剧情】",712)
		UpdateMenu()
		UpdateNPCMenu("yanwang") 
	elseif(LuaQueryTask("T712")==1)then
		LuaSay("守墓老人：去找@3燕王@0商量对策")
	end 


---------------------------------------------------地下的决战
elseif(answer=="T714")then
	if(LuaQueryTask("T714")==0)then
	    LuaSay("守墓老人：最后的时刻已经到来，去消灭@3地下陵穴@0中的@2王陵将军@0。")
	    LuaSetTask("T714",1)
	    AddLog("地下的决战【BOSS】",714)
	    UpdateMenu()
	elseif(LuaQueryTask("T714")==1)then
        	LuaSay("守墓老人：还不快去消灭@3地下陵穴@0中的@2王陵将军@0，消灭它之后再来找我吧。")
	elseif(LuaQueryTask("T714")==2)then
        	LuaSay("守墓老人：果然不负重望，燕王得知这个好消息也会很开心的。")
                AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T714jl")
	end
    
    
    elseif(answer=="T714jl")then
	if(LuaQueryTask("T714")==2)then
		LuaSetTask("T714",99)
		DelLog("714")
		LuaAddJx("combat_exp",2400000,"T714")
		LuaGive("coin",12000,"T714")
		LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
	end
---------------------------------------------------------
elseif(answer=="T713")then                       ---------------------------谨慎行事【剧情】
	if(LuaQueryTask("T713")==0)then
		LuaSay("守墓老人：如今你已经得到了@3浑太后@0的允许，但不可太心急，先去击杀@4地下陵墓@0的@2毒僵尸和血僵尸各20个@0后回复！")
		LuaSetTask("T713",1)
		LuaSetTask("task_kill/mon_044/T713",1)
		LuaSetTask("task_kill/mon_045/T713",1)
		AddLog("谨慎行事【剧情】",713)
		UpdateMenu()
		UpdateTopSay("击杀毒僵尸和血僵尸各20个后回复守墓老人")
		

	elseif(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")>20 and LuaQueryTask("task_kill/mon_045/T713")>20)then
			LuaSay("守墓老人：年轻人果然不凡，期待你的进步！")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T713jl")
		else
			LuaSay("守墓老人：你才杀了@2"..LuaQueryTask("task_kill/mon_044/T713").."个毒僵尸和"..LuaQueryTask("task_kill/mon_045/T713").."个血僵尸@0，快去击杀@220个毒僵尸跟血僵尸@0吧！")
		end
	end

	elseif(answer=="T713jl")then               ----------------------------713奖励
		if(LuaQueryTask("T713")==1)then
			if(LuaQueryTask("task_kill/mon_044/T713")>20 and LuaQueryTask("task_kill/mon_045/T713")>20)then
				LuaSetTask("T713",99)
				DelLog("713")
				LuaDelTask("task_kill/mon_044/T713")
				LuaDelTask("task_kill/mon_045/T713") 
				LuaAddJx("combat_exp",1707000,"T713")
				LuaGive("coin",3500,"T713")
				LuaAddAchievementSchedule("Task_num",1)	
				UpdateMenu()
			end
		end		

elseif(answer=="T710")then
	if(LuaQueryTask("T710")==0) then
		LuaSay("守墓老人：我看你身子骨还不够硬朗，还得多加锻炼，你去消灭@4燕王陵@0中的@2鬼火35只@0")
		LuaSetTask("T710",1)
		AddLog("消灭鬼火【剧情】",710)
		LuaSetTask("task_kill/mon_042/T710",1)
		UpdateMenu()
	elseif(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
			LuaSay("守墓老人：经过锻炼你能力已经得到很大的提升！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T710jl")
		else
			LuaSay("守墓老人：交待你做的事情做完了吗？")
		end	
	end	
		
		
	elseif(answer=="T710jl")then
	if(LuaQueryTask("T710")==1)then
		if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
		LuaSetTask("T710",99)
		DelLog("710")
		LuaAddJx("combat_exp",1306000,"T710")
		LuaGive("coin",2000,"T710")
		LuaDelTask("task_kill/mon_042/T710")
		UpdateMenu()
		end
		end
 
elseif(answer=="T715")then  ---------------------------消灭僵尸【循环】
	if(LuaQueryStrTask("715day")~=GetCurrentDay())then
			LuaDelTask("T715num")
	end
	if(LuaQueryTask("T715")==0)then
		LuaSay("守墓老人：地下陵墓中的僵尸甚是凶猛，已经开始出来作恶了，还请英雄为民除害！去消灭@2毒僵尸与血僵尸各20个@0吧。")
		LuaSetTask("T715",1)
		LuaSetTask("task_kill/mon_044/T715",1)
		LuaSetTask("task_kill/mon_045/T715",1)
		LuaSetTask("715day",GetCurrentDay())
		LuaAddTask("T715num",1)
		AddLog("消灭僵尸【循环】",715)
		UpdateMenu()
		UpdateTopSay("击杀毒僵尸和血僵尸各20个后回复守墓老人")
		

	elseif(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")>20 and LuaQueryTask("task_kill/mon_045/T715")>20)then
			LuaSay("守墓老人：年轻人果然不凡，期待你的进步！")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T715jl")
		else
			local a=LuaQueryTask("task_kill/mon_044/T715")-1
			local b=LuaQueryTask("task_kill/mon_045/T715")-1
			LuaSay("守墓老人：你才杀了@2"..a.."个毒僵尸和"..b.."个血僵尸@0，快去击杀@220个毒僵尸跟血僵尸@0吧！")
		end
	end

	elseif(answer=="T715jl")then               ----------------------------715奖励
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T715")==1)then
			if(LuaQueryTask("task_kill/mon_044/T715")>20 and LuaQueryTask("task_kill/mon_045/T715")>20)then
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
				local jingyan
				LuaDelTask("T715")
				DelLog("715")
				LuaDelTask("task_kill/mon_044/T715")
				LuaDelTask("task_kill/mon_045/T715") 
				if(LuaQueryTask("T715num")<=30)then
				jingyan=(167000+level^2*20)
				LuaGive("coin",money,"T715")
				else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
				jingyan=(167000+level^2*20)/2
				end
				LuaAddJx("combat_exp",jingyan,"T715")
				if(LuaQueryTask("T715_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T715_a",99)
				end
	
				UpdateMenu()
			end
		end
elseif(answer=="Tbprw11_1") then
	if(LuaQueryTask("Tbprw11_1")==1) then
		LuaSay(""..LuaQueryStr("name").."：如今乱世怨念沉积，邪物尽出，我是来查探有没有解决邪物的办法。")
		LuaSay("守墓老人：虽说我守了一辈子墓，接触过不少邪物，但这好的解决之道我是没有。")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","Tbprw11_1jl")
	end
elseif(answer=="Tbprw11_1jl")then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tbprw11_1")==1)then
	local jinyan=level*1000+level*level*20
		LuaSetTask("Tbprw11_1",99)
		LuaAddJx("combat_exp",jinyan,"Tbprw11_1")
		AddMoneyToPartyBank(3000)-------增加帮库金钱
		LuaPartyRepute(1,0)------------增加帮派声望
		LuaAddAchievementSchedule("PartyTask_num",1)	
		LuaAddAchievementSchedule("PartyRepute_mun",5)
		LuaPartyMsg(""..LuaQueryStr("name").."完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
		UpdateMenu()
	end

elseif(answer=="Tbprw11_2")then                      
	if(LuaQueryTask("Tbprw11_2")==0)then
		LuaSay("守墓老人：我知道@4地下陵墓@0中有一个人就是被邪物浸逐而变成@3骸骨@0的。")
		LuaSay("守墓老人：你去问问他有没有办法。")
		LuaSetTask("Tbprw11_2",1)
		UpdateTopSay("到地下陵墓找骸骨")
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_2")==1)then
		LuaSay("守墓老人：快去找@4地下陵墓@0的@3骸骨@0问问吧。")
	end

elseif(answer=="T716")then
	if(LuaQueryTask("T716")==0)then
		LuaSay("守墓老人：年老喜欢弄些稀奇古怪的玩意，你去帮我找一个@2破旧古董@0来")
	        LuaSay("守墓老人：破旧古董在使用藏宝图、探宝器寻宝的时候，有一定几率获得，也可以从其他玩家处购买")
		LuaSetTask("T716",1)
		AddLog("稀奇古怪【循环】",716)
		UpdateMenu()
		UpdateMenu("帮我去收集一个破旧古董")
	elseif(LuaQueryTask("T716")==1)then
		if(LuaItemStatusNormalCount("o_mission018") >= 1) then
			LuaSay("守墓老人：我又有事情可做了，日子也不是那么的无聊了")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T716jl")
		else
			LuaSay("守墓老人：年老经不起你们这些年轻人的折腾了，破旧古董在哪里呢")
		end
	end
	elseif(answer=="T716jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission018") >= 1 ) then
			LuaSetTask("T716",0)
			LuaGive("coin",2000,"T716")
			local jingyan=(103000+level^2*20)
			LuaAddJx("combat_exp",jingyan,"T716")
			if(LuaQueryTask("T716_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T716_a",99)
			end

			DelItem("o_mission018",1)
			DelLog("716")
			UpdateMenu()
		end
elseif(answer=="Tsnpc_67")then
	if(LuaQueryTask("Tsnpc_67")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("守墓老人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_67",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_67")==2)then
		LuaSay("守墓老人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_67")then
	if(LuaQueryTask("Tenpc_67")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("守墓老人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_67",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_67")==2)then
		LuaSay("守墓老人：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end 

