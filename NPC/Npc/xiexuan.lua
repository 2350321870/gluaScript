NPCINFO = {
serial="51" ,
base_name="xiexuan",
icon=2526,
NpcMove=2526,
name="谢玄" ,
iconaddr=1 ,
butt="5|5|58" ,
name_color="CEFFCE" ,
lastsay="大敌当前，就应奋勇杀敌",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local Tbprw2=LuaQueryTask("Tbprw2")
	AddTopSayMenuItem("@7任务列表","")

	if(LuaQueryTask("T400") == 0 and LuaQueryTask("T404") == 99)then
	AddTopSayMenuItem("谢玄的考验【剧情】","T400")
	havetask =1
	end
	--[[if(LuaQueryTask("T401") == 0 and LuaQueryTask("T400") == 99)then  ---此任务暂时屏蔽，因为涉及到的北府斧兵的任务数量太多，如果还要此任务，注意可接任务列表
	AddTopSayMenuItem("谢玄的考验2【剧情】","T401")
	havetask =1
	end]]
	if(LuaQueryTask("T406") == 0 and level>=21 and level<=25)then
	AddTopSayMenuItem("钢铁之师【循环】","T406")
	havetask =1
	end
--	if(LuaQueryTask("T402") == 0 and level>=22)then
--	AddTopSayMenuItem("报到【剧情】","T402")
--	havetask =1
--	end
	if(LuaQueryTask("T403") == 0 and level>=24 and LuaQueryTask("T404") == 99)then
	AddTopSayMenuItem("前方军情【剧情】","T403")
	havetask =1
	end
	if(LuaQueryTask("T404") == 0 and LuaQuery("level") >= 23)then
	AddTopSayMenuItem("大权在握【剧情】","T404")
	havetask =1
	end
	if(LuaQueryTask("T405") == 0 and LuaQuery("level") >= 25 and LuaQueryTask("T403") ==99)then
	AddTopSayMenuItem("协助【剧情】","T405")
	havetask =1
	end
	-----------------------------------------------------------------------------
	if(LuaQueryTask("T406") == 1)then
	AddTopSayMenuItem("@2钢铁之师【循环】","T406")
	havetask =4
	end	
	if(LuaQueryTask("T400") == 1)then
	AddTopSayMenuItem("@2谢玄的考验【剧情】","T400")
	havetask =4
	end
	--[[if(LuaQueryTask("T401") == 1)then
	AddTopSayMenuItem("@2谢玄的考验2【剧情】","T401")
	havetask =4
	end]]
	------------------------------------------------------------------------------
	if((LuaQueryTask("Tsnpc_36")==1 or LuaQueryTask("Tsnpc_36")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_36")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_36")==1 or LuaQueryTask("Tenpc_36")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_36")
		havetask=2
	end
	if(LuaQueryTask("T852") == 1)then
	AddTopSayMenuItem("@2前往【剧情】","T852")
	havetask =2
	end

	if(LuaQueryTask("T402") == 1 or LuaQueryTask("T402") == 2 or LuaQueryTask("T402") == 3)then
	AddTopSayMenuItem("@2报到【剧情】","T402")
	if(LuaQueryTask("T402")==3) then
	havetask =2
	end
	end
	if(LuaQueryTask("T403") == 1)then
	AddTopSayMenuItem("@2前方军情【剧情】","T403")
	end
	if(LuaQueryTask("T442") == 1)then
	AddTopSayMenuItem("@2汇报军情【剧情】","T442")
	havetask =2
	end
	if(LuaQueryTask("T404") == 1 or LuaQueryTask("T404") == 2 or LuaQueryTask("T404") == 3)then
	AddTopSayMenuItem("@2大权在握【剧情】","T404")
	if(LuaQueryTask("T404")==3) then
	havetask =2
	end
	end

	if(LuaQueryTask("T123")==1) then
	AddTopSayMenuItem("@2北府军营【剧情】","T123")
	havetask =2
	end
	if(LuaQueryTask("T405") == 1)then
	AddTopSayMenuItem("@2协助【剧情】","T405")
	end
	if(LuaQueryTask("Tbprw2")==1) then
		AddTopSayMenuItem("@2强盛之法【剧情】","Tbprw2")
		havetask=2
	end
	if(LuaQueryTask("Tbprw8")==1) then
		AddTopSayMenuItem("@2派送物资【每日】","Tbprw8")
		havetask=2
	end

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

elseif(answer=="liaotian") then
	LuaSay("谢玄：欢迎你的到来！军中要是有如此众多青年，何愁大敌当前！")
elseif(answer=="T852" )then                  --------前往
	 if(LuaQueryTask("T852")==1) then
		if (LuaItemCount("o_mission363")>=1)then
      			LuaSay("谢玄：此乃谢安亲笔书信")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T852jl")
		end
	end

	elseif(answer=="T852jl")then
	if (LuaItemCount("o_mission363")>=1)then
		LuaSetTask("T852",99)
     		LuaAddJx("combat_exp",139000,"T852")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission363",1)
		DelLog("852")
		UpdateMenu()
		end
elseif(answer=="T400")then       -----------------------------  谢玄的考验 
	if(LuaQueryTask("T400") == 0) then
		LuaSay("谢玄：真是岂有此理，@3谢安@0为国为民，却还受陷害！既然他让你来找我，先让我见见你的身手，去@4北府军营@0消灭@225个北府锤兵@0！")
		LuaSay("谢玄：组队杀怪不光有怪物的额外经验加成，还能结交到朋友哦，组队完成此任务有额外的经验奖励。")
		LuaSay("谢玄：无兄弟，不统一@!")
		LuaSay("温馨提示：部分组队完成任务会有部分经验加成@!")
		LuaSetTask("T400",1)
		LuaSetTask("task_kill/mon_016/T400",1)
		UpdateTopSay("消灭25个北府锤兵")
		AddLog("谢玄的考验【剧情】",400)
		UpdateMenu()
	elseif(LuaQueryTask("T400")==1) then
		if(LuaQueryTask("task_kill/mon_016/T400")>=26) then
		LuaSay("谢玄：小英雄真是好本领！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T400jl")
		else
		LuaSay("谢玄：你还没杀够25个@2北府锤兵@0！")
                UpdateTopSay("杀够25个北府锤兵再来找我")
		end
	end
	elseif(answer=="T400jl")then
		if(LuaQueryTask("T400")==1) then
		if(LuaQueryTask("task_kill/mon_016/T400")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",224000,"T400")
			else
				LuaAddJx("combat_exp",204000,"T400")
			end
			if(LuaRandom(10)==1)then
				LuaGive("e_earring002",1,2,"T400")
			else
				LuaGive("e_earring002",1,1,"T400")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_016/T400")
			LuaGive("coin",2000,"T400")
			DelLog("400")
			LuaSetTask("T400",99)
			UpdateMenu()
			end
                end

--[[elseif(answer=="T401")then       -----------------------------  谢玄的考验 2 此任务暂时屏蔽，因为涉及到的北府斧兵的任务数量太多
	if(LuaQueryTask("T401") == 0) then
		LuaSay("谢玄：小英雄本领高强，去@4北府军营@0消灭@225个北府斧兵@0！")
		LuaSetTask("T401",1)
		LuaSetTask("task_kill/mon_017/T401",1)
		UpdateTopSay("消灭25个北府斧兵")
		AddLog("谢玄的考验2【剧情】",401)
		UpdateMenu()
	elseif(LuaQueryTask("T401")==1) then
		if(LuaQueryTask("task_kill/mon_017/T401")>=26) then
		LuaSay("谢玄：小英雄真是好本领！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T401jl")
		else
		LuaSay("谢玄：你还没杀够25个@2北府斧兵@0！")
                UpdateTopSay("杀够25个北府斧兵再来找我")
		end
	end
	elseif(answer=="T401jl")then
		if(LuaQueryTask("T401")==1) then
		if(LuaQueryTask("task_kill/mon_017/T401")>=26) then
		LuaAddJx("combat_exp",204000,"T401")
		LuaAddAchievementSchedule("Task_num",1)
		LuaDelTask("task_kill/mon_017/T401")
		DelLog("401")
		LuaSetTask("T401",99)
		UpdateMenu()
		end
                end]]
 
elseif(answer=="T406")then       -----------------------------  钢铁之师
	if(LuaQueryTask("T406") == 0) then
		LuaSay("谢玄：我北府兵士没有一个贪生怕死的，阁下如果不信便来历练历练如何？")
		LuaSay("谢玄：打败@225个北府斧兵@0再来找我，好好体验一下我北府军士的可怕吧，哈哈。")	
		LuaSetTask("T406",1)
		LuaSetTask("task_kill/mon_017/T406",1)
		UpdateTopSay("消灭25个北府斧兵")
		AddLog("钢铁之师【循环】",406)
		UpdateMenu()
	elseif(LuaQueryTask("T406")==1) then
		if(LuaQueryTask("task_kill/mon_017/T406")>=26) then
		LuaSay("谢玄：小英雄真是好本领！再接再厉吧。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T406jl")
		else
		LuaSay("谢玄：你还没杀够25个@2北府斧兵@0！消灭了25个北府斧兵再来找我。")
                UpdateTopSay("杀够25个北府斧兵再来找我")
		end
	end
	elseif(answer=="T406jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T406")==1) then
		if(LuaQueryTask("task_kill/mon_017/T406")>=26) then
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<40)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		local jingyan=(31824+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T406")
		LuaGive("coin",money,"T406")
		if(LuaQueryTask("T406_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T406_a",99)
		end
		LuaDelTask("task_kill/mon_017/T406")
		DelLog("406")
		LuaDelTask("T406")
		UpdateMenu()
		end
                end		

elseif(answer=="T402")then       -----------------------------  报到
	if(LuaQueryTask("T402") == 0) then
		LuaSay("谢玄：小英雄本领虽高，但是还远远不够，去@3比武使者@0和@3驿站小吏@0那里报到！")
		LuaSetTask("T402",1)
		UpdateTopSay("去比武使者和驿站小吏那里报到")
		AddLog("报到【剧情】",402)
		UpdateMenu()
		UpdateNPCMenu("pk")
	elseif(LuaQueryTask("T402")==1) then
		LuaSay("谢玄：先去@3比武使者@0那里报到，再去@3驿站小吏@0那里报到，他们都在@4北府军营@0！")
	elseif(LuaQueryTask("T402")==2) then
		LuaSay("谢玄：去@3驿站小吏@0那里报到，他在@4北府军营@0！")
	elseif(LuaQueryTask("T402")==3) then
		LuaSay("谢玄：忙完这些，我还有别的事情要你做！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T402jl")
	end 
	elseif(answer=="T402jl")then
		if(LuaQueryTask("T402")==3) then
			LuaAddJx("combat_exp",176000,"T402")
			if(LuaRandom(5)==1)then --22裤子
				LuaGive("e_pants008",1,2,"T402")
			else
				LuaGive("e_pants008",1,1,"T402")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T402",99)
			DelLog("402")
			UpdateMenu()
			UpdateNPCMenu("yizhanxiaoli")
                end
                
elseif(answer=="T403")then       -----------------------------  前方军情 
	if(LuaQueryTask("T403") == 0) then
		LuaSay("谢玄：前方军情不知如何，劳烦小英雄去问下在@4军营前哨@0的@3谢琰@0！")
		LuaSetTask("T403",1)
		UpdateTopSay("去军营前哨谢琰那里")
		AddLog("前方军情【剧情】",403)
		UpdateMenu()
	elseif(LuaQueryTask("T403")==1) then
		LuaSay("谢玄：快去找@4军营前哨@0的@3谢琰@0吧!")
	end


elseif(answer=="T442")then       -----------------------------  汇报军情
	if(LuaQueryTask("T442") == 1) then
		LuaSay(""..LuaQueryStr("name").."：@3谢琰将军@0让我向您汇报，前方将士一片高涨！")
		LuaSay("谢玄：如此甚好，小英雄果然名不虚传，完全有实力接手北府军！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T442jl")
	end
	elseif(answer=="T442jl")then
		if(LuaQueryTask("T442")==1) then
		LuaAddJx("combat_exp",216000,"T442")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("442")
		LuaSetTask("T442",99)
		UpdateMenu()
                end
                
                
elseif(answer=="T404")then       -----------------------------  大权在握
	if(LuaQueryTask("T404") == 0) then
		LuaSay("谢玄：朝中有@3司马道子@0等奸臣，万一北伐来个背腹受敌就不好了，你去@4北府军营@0中找到@2木箱@0！取出里面的@2丹书铁券@0！")
		LuaSay("谢玄：取出里面的@2丹书铁券@0，给@3司马道子@0看，他就起不了什么风浪了！")
		LuaSetTask("T404",1)
		UpdateTopSay("找到木箱取出丹书铁券")
		AddLog("大权在握【剧情】",404)
		UpdateMenu()
		UpdateNPCMenu("muxiang02")
	elseif(LuaQueryTask("T404")==1) then
		LuaSay("谢玄：藏有@2丹书铁券@0的@2木箱@0在@4北府军营@0里!")
	elseif(LuaQueryTask("T404")==2) then
		LuaSay("谢玄：把@2丹书铁券@0给@4建康城宫殿里@0的@3司马道子@0看！")
	elseif(LuaQueryTask("T404")==3) then
		LuaSay("谢玄：如此甚好，希望小英雄能早日还天下一个太平！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T404jl")
	end
	elseif(answer=="T404jl")then
	if(LuaQueryTask("T404")==3) then
		LuaAddJx("combat_exp",184000,"T404")
		LuaAddAchievementSchedule("Task_num",1)
		if(LuaRandom(10)==1)then --23头盔
			LuaGive("e_head012",1,2,"T373")
		else
			LuaGive("e_head012",1,1,"T373")
		end
		DelLog("404")
		LuaSetTask("T404",99)
		UpdateMenu()
	end
                
elseif(answer=="T405")then       -----------------------------  协助 
	if(LuaQueryTask("T405") == 0) then
		LuaSay("谢玄：北府大将@3刘牢之@0已经协同@3何谦@0一起前往@4淝水之滨@0与叛徒@3朱序@0接头，劳烦小英雄前往@4淝水之滨@0去帮助@3刘牢之@0。")
		LuaSay("谢玄：从此一直往左走，通过@4军营前哨@0，就到了@4淝水之滨@0了。")
		LuaSetTask("T405",1)
		UpdateTopSay("去淝水之滨帮助刘牢之")
		AddLog("协助【剧情】",405)
		UpdateMenu()
	elseif(LuaQueryTask("T405")==1) then
		LuaSay("谢玄：快去找@4淝水之滨@0的@3刘牢之@0吧!")
		LuaSay("谢玄：从此一直往左走，通过@4军营前哨@0，就到了@4淝水之滨@0了。")
	end

elseif(answer=="T123") then              ------------------------北府军营 
		if(LuaQueryTask("T123")==1) then
			LuaSay("谢玄：唉，我华夏一族的子民要是个个都如公主般，我华夏大族何至于苟安偏南一隅。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T123jl")
		end 
		elseif(answer=="T123jl")then	            
			if(LuaQueryTask("T123")==1)then
				LuaSetTask("T123",99) 
				LuaAddJx("combat_exp",139000,"T123") 
				if(LuaRandom(5)==1)then--22衣服
					LuaGive("e_clothes008",1,2,"T123")
				else
					LuaGive("e_clothes008",1,1,"T123")
				end
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("123") 
				UpdateMenu() 
			end

elseif(answer=="Tbprw2") then      --------------------------强盛之法
	if(LuaQueryTask("Tbprw2")==1 and LuaQueryTask("Tbprw2B")==0) then
		LuaSay("谢玄：帮派，重要的是@3金钱@0。")
		LuaSay("谢玄：@3金钱@0，可通过@3帮派任务，帮战，充值等各种渠道@0获取@3金钱@0并不断增强自己。")
		LuaSetTask("Tbprw2B",99)      -------日志的添加
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("谢玄：也许我说的还不够全面，你再去问问@4桃源径@0的@3冉闵@0吧。")
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("谢玄：去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧。")
	end

elseif(answer=="Tbprw8") then
	if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==0) then
			LuaSay(""..LuaQueryStr("name").."：我受命前来派送@3战争物资@0。")
			LuaSay("谢玄：多谢英雄，来的正是时候。")
			LuaSetTask("Tbprw8A",1)
			DelItem("o_mission401",1)
			UpdateMenu()
		end
		if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==0) then
			LuaSay("谢玄：快去给@4军营前哨@0的@3谢琰@0送@3战争物资@0去吧！")
		elseif(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==1) then
			LuaSay("谢玄：快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0回复吧！")
		end
	else
		LuaSay("谢玄：新的一天，新的开始，由于你今天以前的@3派送物资【每日】没完成@0，现在自动删除！")
		LuaSay("谢玄：现在你又能到@4宫殿@0的@3晋帝@0处@4帮派主寨@0的@3帮派总管@0处接受@3派送物资【每日】@0任务了！")
		LuaSetTask("Tbprw8day",GetCurrentDay()) 
		LuaSetTask("Tbprw8",0)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		DelItem("o_mission401",LuaItemCount("o_mission401"))
		UpdateMenu()
end



elseif(answer=="Tsnpc_36")then
	if(LuaQueryTask("Tsnpc_36")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("王凝之：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_36",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_36")==2)then
		LuaSay("王凝之：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_36")then
	if(LuaQueryTask("Tenpc_36")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("王凝之：这都是大人的功劳啊")
		LuaSetTask("Tenpc_36",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_36")==2)then
		LuaSay("王凝之：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end
