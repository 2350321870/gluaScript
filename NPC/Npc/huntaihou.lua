NPCINFO = { 
serial="77" ,
base_name="huntaihou",
icon=2562,
NpcMove=2562,
name="浑太后" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="哼！哀家得不到的，别人也休想得到",
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
		if((LuaQueryTask("Tsnpc_62")==1 or LuaQueryTask("Tsnpc_62")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_62")
		if(LuaQueryTask("Tsnpc_62")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_62")==1 or LuaQueryTask("Tenpc_62")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_62")
		if(LuaQueryTask("Tenpc_62")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T661")<99 and LuaQueryTask("T661")>0)then
		AddTopSayMenuItem("@2失败的献祭【剧情】","T661")
		if(LuaQueryTask("T661")==2 and LuaItemCount("o_mission358")==0)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T662")>0 and LuaQueryTask("T662")<99)then
		AddTopSayMenuItem("@2冷血生母【剧情】","T662")
		if(LuaItemCount("o_mission360")==1)then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T672")==2) then
		AddTopSayMenuItem("@2栽培2【剧情】","T672")
		havetask2=1
	end		
	if(LuaQueryTask("T712")==2)then
		AddTopSayMenuItem("@2战前考验【剧情】","T712")
		if(LuaItemCount("o_mission039")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end

	if(LuaQueryTask("T665")==1)then
		AddTopSayMenuItem("@2收集金枝【循环】","T665")
		if(LuaItemStatusNormalCount("o_mission153") >= 1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	
	if(LuaQueryTask("T302")==21 and LuaQueryTask("T302U")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302U")
		havetask2 =1
	end 
--以上为黄色问号部分
	if(LuaQueryTask("T664")==1 )then
		AddTopSayMenuItem("@2浑后的责难【循环】","T664")
		havetask4=1
	end
	if(LuaQueryTask("T663")==1 )then
		AddTopSayMenuItem("@2亲试妖兵【剧情】","T663")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T665")==0 and level>51 and level<53)then
		AddTopSayMenuItem("收集金枝【循环】","T665")
		havetask1=1
	end
	if(LuaQueryTask("T663")==0 and level>=51)then
		AddTopSayMenuItem("亲试妖兵【剧情】","T663")
		havetask1=1
	end	

	if(LuaQueryTask("T661")==0 and level>=50)then
		AddTopSayMenuItem("失败的献祭【剧情】","T661")
		havetask1=1
	end
	if(LuaQueryTask("T662")==0 and LuaQueryTask("T661")==99)then
		AddTopSayMenuItem("冷血生母【剧情】","T662")
		havetask1=1
	end
	if(LuaQueryTask("T664")==0 and level>=50 and level<55)then
		AddTopSayMenuItem("浑后的责难【循环】","T664")
		havetask1=1
	end
	---------------------------------------------

	---------------------------------------------

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

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("浑太后：吾儿身体不佳，且由哀家好好打理大燕国！") 
	
elseif(answer=="T302U") then
	   if(LuaQueryTask("T302U")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("浑太后：哦呵呵呵！想不到还有不少男子用书信表达对哀家的倾慕之情！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302U",99)
	   UpdateMenu()
	   end
	
 ------------------------------------------------  栽培2【剧情】
elseif(answer=="T672")then
	if(LuaQueryTask("T672")==2)then
		LuaSay(""..LuaQueryStr("name").."：太后，小生有礼了，这些妖兵如何而来，太后能否指点一二。")
		LuaSay("浑太后：@3慕容垂@0用兵如神，寻常士兵不能抵抗，致于燕兵乃是向世代王陵献祭换来的。")
	  	AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T672jl")
	end
	
	elseif(answer=="T672jl")then
	if(LuaQueryTask("T672")==2)then
			LuaSetTask("T672",99)
			LuaAddJx("combat_exp",1052000,"T672")
			LuaGive("coin",3500,"T672")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("672") 
			LuaDelTask("task_kill/mon_040/T672")
			UpdateMenu()
	end
-------------------------------------------------- 失败的献祭【剧情】
elseif(answer=="T661")then
	if(LuaQueryTask("T661")==0)then
		LuaSay("浑太后：这里更厉害的士兵还没出现，这是召唤卷轴，你到@3参合坡@0去使用，使用后回来告诉我情况。")
		LuaSetTask("T661",1)
		AddLog("失败的献祭【剧情】",661)
		LuaGive("o_mission358")  --o_mission358       邪恶的召唤卷轴
		UpdateMenu()
	elseif(LuaQueryTask("T661")==1)then
	    LuaSay("浑太后：给你的东西你用过了吗？")
	elseif(LuaQueryTask("T661")==2 and LuaItemCount("o_mission358")==0)then
		LuaSay(""..LuaQueryStr("name").."：报告太后，使用之后没有什么情况出现。")
		LuaSay("浑太后：难道是献祭的鲜血不够了？。。。")
	  	AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T661jl")
	end
    elseif(answer=="T661jl")then
		if(LuaQueryTask("T661")==2)then
			LuaSetTask("T661",99)
			LuaAddJx("combat_exp",898000,"T661")
			LuaGive("coin",3520,"T661")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("661")
			UpdateMenu()
		end
-------------------------------------------------------- 冷血生母【剧情】
elseif(answer=="T662")then
	if(LuaQueryTask("T662")==0) then
	    LuaSay("浑太后：献祭没能成功，你去@4中山城@0找@2燕王@0，取@2燕王的血半碗@0给我。")
	    LuaSetTask("T662",1)
	    AddLog("冷血生母【剧情】",662)
	    UpdateMenu()
	    UpdateNPCMenu("yanwang")
	elseif(LuaQueryTask("T662")==1)then
	    LuaSay("浑太后：取燕王的半碗血回来给我。")
    elseif(LuaQueryTask("T662")==2)then
		if(LuaItemCount("o_mission360")==1)then
			DelItem("o_mission360",1)
			LuaSay("浑太后：很好，这是我刚用燕王的血制作的新的召唤卷轴，你再拿到@4参合坡@0去使用。")
			LuaGive("o_mission358",1)
			LuaSetTask("T662",3)
			UpdateMenu()
		else
			LuaSay("浑太后：我不是让你取燕王的血了吗？")
		end
	elseif(LuaQueryTask("T662")==3)then
		LuaSay("浑太后：到参合坡去使用我给你的卷轴啊。")
	elseif(LuaQueryTask("T662")==4)then
		LuaSay(""..LuaQueryStr("name").."：太后，天降奇兵，@3象帅@0出现。")
		LuaSay("浑太后：哈哈，这就是我们的神兵！")
	  	AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T662jl")		 
	end 
	
	elseif(answer=="T662jl")then
		if(LuaQueryTask("T662")==4)then
			LuaSetTask("T662",99)
			LuaAddJx("combat_exp",898000,"T662")
			LuaGive("coin",3320,"T662")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("662")
			UpdateMenu()
		end
		---------------------------------------------- 亲试妖兵
elseif(answer=="T663")then
	if(LuaQueryTask("T663")==0)then
		LuaSay("浑太后：你试探一下这些神兵的力量，到@4参合坡@0消灭@2象帅35个@0！")
		LuaSetTask("T663",1)
		AddLog("亲试妖兵【剧情】",663)
		LuaSetTask("task_kill/mon_041/T663",1)
		UpdateMenu()
	elseif(LuaQueryTask("T663")==1)then
		if(LuaQueryTask("task_kill/mon_041/T663")>=36) then
			LuaSay("浑太后：小伙子不错，很有实力！")
	  		AddMenuItem("@7任务完成","")
	    		AddMenuItem("领取奖励","T663jl")
		else
	    	LuaSay("浑太后：消灭掉了@235只象帅@0了吗？")
		end	
	end
	
	elseif(answer=="T663jl")then
		if(LuaQueryTask("T663")==1)then
		if(LuaQueryTask("task_kill/mon_041/T663")>=36) then
		LuaSetTask("T663",99)
		LuaAddJx("combat_exp",972000,"T663")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("663")
		LuaDelTask("task_kill/mon_041/T663")
		UpdateMenu()
		end
		end
		 
     
------------------------------------------------ 战前考验【剧情】
elseif(answer=="T712") then
	if(LuaQueryTask("T712")==2)then
		LuaSay(""..LuaQueryStr("name").."：太后,小子特带来@2优质鱼肉@0来孝敬你，顺便我想去探望一下燕王的兄长。")
	    if(LuaItemCount("o_mission039")>=1) then
			LuaSay("浑太后：你可真会讨好哀家，还带来鱼肉，你去吧，不要乱跑，只能烧香祭拜！") 
		    AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T712jl")
	    else
	        LuaSay("浑太后：小子你是在糊弄我吧，鱼肉在哪里？")
	    end 
	end
	
	elseif(answer=="T712jl")then
	if(LuaQueryTask("T712")==2)then
	    if(LuaItemCount("o_mission039")>=1) then
		DelItem("o_mission039",1)
		LuaSetTask("T712",99)
		LuaAddJx("combat_exp",1493000,"T712")
		LuaGive("coin",3600,"T712")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("712")
		UpdateMenu()
		end
		end
		 
		---------------------------------------------- 浑后的责难
elseif(answer=="T664")then
	if(LuaQueryStrTask("664day")~=GetCurrentDay())then
		LuaDelTask("T664num")
	end
	if(LuaQueryTask("T664")==0)then
		LuaSay("浑太后：哼哼，有妖兵助阵，天下我还怕谁？阁下如果有心就亲身体验一下它们的强大吧。")
		LuaSay("浑太后：消灭@4参合坡@0的@2蟾卒35只@0后来回复我，小心别被吃了哦，哈哈。")
		LuaSetTask("T664",1)
		LuaAddTask("T664num",1)
		LuaSetTask("664day",GetCurrentDay())
		AddLog("浑后的责难【循环】",664)
		LuaSetTask("task_kill/mon_040/T664",1)
		UpdateMenu()
	elseif(LuaQueryTask("T664")==1)then
		if(LuaQueryTask("task_kill/mon_040/T664")>=36) then
			LuaSay("浑太后：小伙子不错，很有实力，不如投靠本后吧。")
	  		AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T664jl")
		else
	    	LuaSay("浑太后：你还没有消灭@235只蟾卒@0，消灭足够的蟾卒后再来回复我。")
		end	
	end
	
	elseif(answer=="T664jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T664")==1)then
		if(LuaQueryTask("task_kill/mon_040/T664")>=36) then
		LuaDelTask("T664")
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
	

		if(LuaQueryTask("T664num")<=30)then
			jingyan=(134341+level^2*20)
			LuaGive("coin",money,"T980")
		else
		LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			jingyan=(134341+level^2*20)/2
		end
		LuaAddJx("combat_exp",jingyan,"T664")
		if(LuaQueryTask("T664_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T664_a",99)
		end
		DelLog("664")
		LuaDelTask("task_kill/mon_040/T664")
		UpdateMenu()
		end
		end	

----------------------------------收集金枝
elseif(answer=="T665")then
	if(LuaQueryTask("T665")==0)then
		LuaSay("浑太后：最近宫中胭脂香味欠佳，烦恼少侠帮我收集@21个金枝@0回来。")
	        LuaSay("浑太后：金枝在采集场采集有一定几率得到，也可以在玩家处购买。")
		LuaSetTask("T665",1)
		AddLog("收集金枝【循环】",665)
		UpdateMenu()
		UpdateMenu("帮本宫收集1个金枝回来，重重有赏")
	elseif(LuaQueryTask("T665")==1)then
		if(LuaItemStatusNormalCount("o_mission153") >= 1) then
			LuaSay("浑太后：我又可以恢复往日的浓香了。")
			LuaSay("浑太后：哀家重赏，这是你应得的。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T665jl")
		else
			LuaSay("浑太后：你在戏弄哀家吗？金枝在哪里。")
		end
	end
	elseif(answer=="T665jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission153") >= 1 ) then
			LuaSetTask("T665",0)
			LuaGive("coin",4000,"T665")
			local jingyan=(63000+level^2*20)
			LuaAddJx("combat_exp",jingyan,"T665")
			if(LuaQueryTask("T665_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T665_a",99)
			end

			DelItem("o_mission153",1)
			DelLog(665)
			UpdateMenu()
		end
elseif(answer=="Tsnpc_62")then
	if(LuaQueryTask("Tsnpc_62")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("浑太后：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_62",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_62")==2)then
		LuaSay("浑太后：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_62")then
	if(LuaQueryTask("Tenpc_62")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("浑太后：这都是大人的功劳啊")
		LuaSetTask("Tenpc_62",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_62")==2)then
		LuaSay("浑太后：话已经带到了，快回去领取奖励吧")
	end	
		     
end
LuaSendMenu()
return 1
end 

