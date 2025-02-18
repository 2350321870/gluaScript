NPCINFO = {
serial="57" ,
base_name="heqian",
icon=2559,
NpcMove=2559 ,
name="何谦" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="早点结束战乱，还百姓一份安宁",
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
	if((LuaQueryTask("Tsnpc_40")==1 or LuaQueryTask("Tsnpc_40")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_40")
		if(LuaQueryTask("Tsnpc_40")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_40")==1 or LuaQueryTask("Tenpc_40")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_40")
		if(LuaQueryTask("Tenpc_40")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T464")==1 )then
		AddTopSayMenuItem("@2兄弟情义【循环】","T464")
		havetask2 =1
	end
	if(LuaQueryTask("T853") == 1 or LuaQueryTask("T853") == 2) then
		AddTopSayMenuItem("@2昔日旧友【剧情】","T853")
		if(LuaQueryTask("T853") == 1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T476") == 1  or LuaQueryTask("T476") == 2)then
		AddTopSayMenuItem("@2苦恼【剧情】","T476")
		if(LuaQueryTask("T476") == 1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T461") == 1)then
		AddTopSayMenuItem("@2良药防身【剧情】","T461")
		if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T463") == 1)then
		AddTopSayMenuItem("@2军需【循环】","T463")
		if(LuaItemStatusNormalCount("o_mission168") >= 1) then
		havetask2 =1
		end 
	end
        if(LuaQueryTask("T451") == 1)then
		AddTopSayMenuItem("@2治病良药【剧情】","T451")
		if (LuaItemCount("o_mission365")>=1)then
		havetask2 =1
		end
	end
--以上是黄色问号部分
	if(LuaQueryTask("T460") == 1)then
		AddTopSayMenuItem("@2渡河【剧情】","T460")
		havetask4 =1
	end
	if(LuaQueryTask("T462") == 1)then
		AddTopSayMenuItem("@2凶残鳄鱼【循环】","T462")
		havetask4 =1
	end
--以上是灰色问号部分
	if(LuaQueryTask("T460") == 0 and level>=28) then
		AddTopSayMenuItem("渡河【剧情】","T460")
		havetask1=1
	end
	if(LuaQueryTask("T461") == 0 and level>=27) then
		AddTopSayMenuItem("良药防身【剧情】","T461")
		havetask1=1
	end
	if(LuaQueryTask("T462") == 0 and level>=26 and level<33) then
		AddTopSayMenuItem("凶残鳄鱼【循环】","T462")
		havetask1=1
	end
	if(LuaQueryTask("T463") == 0 and level>=28 and level<34) then
		AddTopSayMenuItem("军需【循环】","T463")
		havetask1=1
	end
	if(LuaQueryTask("T464")==0 and level<=40 and level>=25)then
		AddTopSayMenuItem("兄弟情义【循环】","T464")
		havetask1 =1
	end
--以上是黄色感叹号部分
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
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
------------------------------------------------
elseif(answer=="liaotian") then             --------昔日旧友
	LuaSay("何谦：若有朱序相助，事成矣！")
	LuaDelTask("T376")
	DelLog("376")
	UpdateMenu()
elseif(answer=="T853")then
	if(LuaQueryTask("T853") == 1)then
		LuaSay("提示：何谦取出佩剑，拿去吧，@3朱序@0那里说不定有什么难事需要你帮忙！")
		LuaGive("o_mission302",1)
		UpdateTopSay("快去淝水对岸找朱序吧")
		LuaSetTask("T853",2)
		AddLog("昔日旧友【剧情】",853)
		UpdateMenu()
	else
		LuaSay("何谦：@3朱序@0在@4淝水对岸@0，你还没有把@2佩剑@0交给他！")
	end

elseif(answer=="T476")then
	if(LuaQueryTask("T476") == 1)then
		LuaSay("何谦：杀虫的妙计？此事易尔，这是一份@2杀虫药@0，含有不少砒霜成分！拿去给@3朱序@0")
		LuaGive("o_mission340",1)
		UpdateTopSay("快去@4淝水对岸@0找@3朱序@0吧")
		LuaSetTask("T476",2)
		AddLog("苦恼【剧情】",476)
		UpdateMenu()
	else
		LuaSay("何谦：@3朱序@0在@4淝水对岸@0，你还没有把@2杀虫药@0交给他！")
	end
elseif(answer=="T460")then              ----渡河
	if(LuaQueryTask("T460") == 0) then
		LuaSay("何谦：在下本来打算前往@4淝水对岸@0，但是@3穴居蛛@0阻拦，劳烦少侠消灭@2穴居蛛@025只，打通道路。")
		LuaSay("何谦：组队不光能让你事半功倍，还能结交到更多的朋友哦，无兄弟，不统一@!。")
		LuaSetTask("T460",1)
		LuaSetTask("task_kill/mon_022/T460",1)
		UpdateTopSay("消灭25个穴居蛛")
		AddLog("渡河【剧情】",460)
		UpdateMenu()
	elseif(LuaQueryTask("T460")==1) then
		if(LuaQueryTask("task_kill/mon_022/T460")>=26) then
		LuaSay("何谦：@3朱序@0叛国也是无奈之举，我们两人从小是朋友，道路一通，少侠就去见见@4淝水对岸@0的@2朱序@0吧。")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("何谦：另外当你加入帮派并且帮派开通了帮派地图，你可以通过自动寻路进入帮派主寨哦@!")
			else
				LuaSay("何谦：另外当你加入帮派并且帮派开通了帮派地图，你可以通过世界地图进入帮派主寨哦@!")
			end
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T460jl")
		else
		LuaSay("何谦：你还没杀够25个@2穴居蛛@0！")
                UpdateTopSay("杀够25个穴居蛛再来找我")
		end
	end
	elseif(answer=="T460jl")then
	if(LuaQueryTask("T460")==1) then
		if(LuaQueryTask("task_kill/mon_022/T460")>=26) then
			if(LuaFreeBag()>=1)then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",304000,"T460")
				else
					LuaAddJx("combat_exp",274000,"T460")
				end
				if(LuaQueryTask("Ttaozhuang30C") == 0) then
				LuaGive("e_head166",1,2,"T460")
				LuaSetTask("Ttaozhuang30C",99)
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",2200,"T460")
				LuaDelTask("task_kill/mon_022/T460")
				DelLog("460")
				LuaSetTask("T460",99)
				UpdateMenu()
			else
				LuaSay("提示：你的背包空间不足1格，请先清理背包再来领取哦@!")
			end
		end
        end
elseif(answer=="T461")then   ---------良药防身
	 if(LuaQueryTask("T461") == 0)then
		LuaSay("何谦：这年头兵荒马乱的，出门得带点药才好，少侠可否为在下分别买5个@2玉清散和天香露@0!可以去药品商人那里")
		LuaSetTask("T461",1)
		AddLog("良药防身【剧情】",461)
		UpdateTopSay("去药品商人那里分别买5个玉清散和天香露来")
		UpdateMenu()
	 elseif(LuaQueryTask("T461")==1) then
		if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		LuaSay("何谦：随身带点药，出门在外就安全多了")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T461jl")
		else
		LuaSay("何谦：你身上的@2玉清散或天香露@0不足5个!")
		end
	 end
	elseif(answer=="T461jl")then
	if(LuaItemCount("o_drug_hp3")>=5 and LuaItemCount("o_drug_mp3")>=5 )then
		LuaSetTask("T461",99)
		LuaAddJx("combat_exp",263000,"T461")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_drug_hp3",5)
		DelItem("o_drug_mp3",5)
		DelLog(461)
		UpdateMenu()
		end

elseif(answer=="T462")then
	if(LuaQueryTask("T462") == 0) then
		LuaSay("何谦：@2淝水鳄@0凶残无比，在这一带祸害百姓，劳烦少侠消灭@225个淝水鳄@0后回复！")
		if(TeamCount()>=2)then
			LuaSay("何谦：如果现在你的队长身上具有多倍经验的状态，那么你也能享受到50%哦")
		else
			LuaSay("何谦：一个人打怪很慢哦，组上两个朋友一起做任务，还有额外的检验加成哦@!")
		end
		LuaSetTask("T462",1)
		LuaSetTask("task_kill/mon_021/T462",1)
		AddLog("凶残鳄鱼【循环】",462)
		UpdateMenu()
		UpdateTopSay("消灭25个淝水鳄")
	elseif(LuaQueryTask("T462")==1) then
		local a=LuaQueryTask("task_kill/mon_021/T462")-1
		if(LuaQueryTask("task_kill/mon_021/T462")>=26) then
		LuaSay("何谦：如此一来，又少了危害百姓的鳄鱼了！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T462jl")
		else
		LuaSay("何谦：你还没杀够25个@2淝水鳄@0！你已经杀了"..a.."个了")
                UpdateTopSay("杀够25个淝水鳄再来找我")
		end
	end
	elseif(answer=="T462jl")then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T462")==1) then
			if(LuaQueryTask("task_kill/mon_021/T462")>=26) then
			local jingyan
			if(TeamCount()>=2)then
				LuaSay("@1提示：获得组队经验加成")
				jingyan=(70835+level^2*20)
			else
				jingyan=(39835+level^2*20)
			end
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
			LuaGive("coin",money,"T462")

			LuaAddJx("combat_exp",jingyan,"T462")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_021/T462")
			DelLog("462")
			LuaDelTask("T462")
			UpdateMenu()
			end
                end
                
elseif(answer=="T463")then           ----------军需 
	    if(GetCurrentDay()~=LuaQueryStrTask("463Taskday")) then
            LuaSetTask("463dotime",0)  
	    end
	 if(LuaQueryTask("463dotime") < 11)then
		 if(LuaQueryTask("T463") == 0)then
			LuaSay("何谦：军中最近物资紧张，少侠可否帮在下收集1只@2甲鱼@0回来。")
			LuaSay("何谦：@2甲鱼@0在钓鱼的过程中有几率获得，也可以从其他玩家那里购买。@7本任务一天最多可完成10次@0。")
			LuaSetTask("T463",1)
			AddLog("军需【循环】",463)
			UpdateTopSay("去收集1只甲鱼")
			UpdateMenu()
		 elseif(LuaQueryTask("T463")==1) then
			if(LuaItemStatusNormalCount("o_mission168") >= 1) then
			LuaSay("何谦：如此，军中将士又有甲鱼吃了")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T463jl")
			else
			LuaSay("何谦：你还没1只甲鱼呢，@2甲鱼@0在钓鱼的过程中有几率获得，也可以从其他玩家那里购买。")
			end
		 end
	 else
		LuaSay("何谦：你今天已经带来了10只甲鱼，已经够用了，明天如果见到我还在收集，再来吧。")
	 end
elseif(answer=="T463jl")then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaItemStatusNormalCount("o_mission168") >= 1 ) then
		LuaSetTask("T463",0)
		LuaGive("coin",4000,"T463")
		local jingyan=(47000+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T463")
		if(LuaQueryTask("T463_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T463_a",99)
		end
		DelItem("o_mission168",1)
		LuaSetTask("463Taskday",GetCurrentDay())
		LuaAddTask("463dotime",1) 
		DelLog(463)
		UpdateMenu()
	end

elseif(answer=="T451" )then                  --------治病良药 
	 if(LuaQueryTask("T451")==1) then
		if (LuaItemCount("o_mission365")>=1)then
      		LuaSay("何谦：多谢了，吃了药我已经感觉好多了！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T451jl")
		end
	end
	elseif(answer=="T451jl")then
		if (LuaItemCount("o_mission365")>=1)then
		LuaSetTask("T451",99)
     		LuaAddJx("combat_exp",263000,"T451")
			LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission365",1)
		DelLog(451)
		UpdateMenu()
		UpdateNPCMenu("liulaozhi")
		end 
	-------------------
--兄弟情义
elseif(answer=="T376")then
	if(LuaQueryTask("T376")==0)then
		LuaSay("何谦：此任务需要两人组队才能进行")
		if(TeamCount()>=2)then
			if(TeamQueryTask("T376")==0)then
				LuaSay("何谦：在此乱世中成长，没有朋友是不行的，我现在就来考验你，你和你的队友在一起杀死30只穴居蛛")
				LuaSay("何谦：你的队友还没接取任务哦，赶快提醒他接任务一同杀怪哦，组队之后杀的怪物才算作两人一起杀的哦@!")
				LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
				LuaSetTask("T376",1)
				AddLog("兄弟情义【剧情】",376)
				LuaSetTask("task_kill/mon_022/T376",1)
				UpdateMenu()
			elseif(TeamQueryTask("T376")==1)then
				LuaSay("何谦：在此乱世中成长，没有朋友是不行的，我现在就来考验你，你和你的队友在一起杀死30只穴居蛛")
				LuaSay("何谦：赶快和你的队友一起击杀穴居蛛吧，组队之后杀的怪物才算作两人一起杀的哦。")
				LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
				LuaSetTask("T376",1)
				AddLog("兄弟情义【剧情】",376)
				LuaSetTask("task_kill/mon_022/T376",1)
				UpdateMenu()
			elseif(TeamQueryTask("T376")==99)then
				LuaSay("何谦：你的队友已经完成这个任务啦，世界这么大，还有很多人哦。")
			end
		else
			LuaSay("何谦：你没有队伍，不能接取此任务哦。")
		end
	elseif(LuaQueryTask("T376")==1)then
		if(TeamCount()>=2)then
			if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
				LuaSay("何谦：我为你能找到一个愿意和你一同奋战的朋友而高兴@!")
				LuaSay("何谦：无兄弟，不统一。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T376jl")
			else
				LuaSay("何谦：你们还没杀够30只穴居蛛哦,加油哦@!")
				--[[LuaSay("何谦：你们还没杀够30只穴居蛛哦,,你杀了"..(LuaQueryTask("task_kill/mon_022/T376")-1).."只，你的队友杀了"..(TeamQueryTask("task_kill/mon_022/T376")-1).."只@!")
				if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")<31)then
					LuaSay("何谦：你已经击杀了"..(LuaQueryTask("task_kill/mon_022/T376")-1).."只穴居蛛，@1但是@0你的队友只击杀了"..(TeamQueryTask("task_kill/mon_022/T376")-1).."只，赶快去帮助他吧。")
				end
				if(LuaQueryTask("task_kill/mon_022/T376")<31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
					LuaSay("何谦：你才击杀了"..(LuaQueryTask("task_kill/mon_022/T376")-1).."只穴居蛛，你的队友@1已经@0击杀了"..(TeamQueryTask("task_kill/mon_022/T376")-1).."只，赶快让他帮助你吧。")
				end]]
			end
		else
			LuaSay("何谦：必须在两人组队状态下才能进行下一步。")
		end
	end
	elseif(answer=="T376jl")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("task_kill/mon_022/T376")>=31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
			LuaAddJx("combat_exp",220000,"T376")
			LuaGive("coin",2000,"T376")
			LuaSetTask("T376",99)
			DelLog("376")
			UpdateMenu()
		end
	else
		LuaSay("何谦：需要两人组队才能领取奖励。")

	end

--兄弟情深【循环】
elseif(answer=="T464")then
	if(LuaQueryStrTask("T464day")~=GetCurrentDay())then
		LuaDelTask("T464")
		LuaDelTask("T464num")
		UpdateMenu()
	end
	if(LuaQueryTask("T464")==0)then
		LuaSay("何谦：此任务需要两人组队才能进行")
		if(TeamCount()==2)then
			if(LuaQueryTask("T464num")<10)then
				if(TeamQuery("level")<35 and TeamQuery("level")>=25)then
					if(TeamQueryTask("T464num")<10)then
						if(TeamQueryTask("T464")==0)then
							coldata={AutoSearchTask_killMon(0)}
							LuaSetTask("T464col",coldata[1])
							LuaSay("何谦：如今天下大乱，野兽横行，你和你的队友去@4"..coldata[2].."@0一起杀死@3"..coldata[5].."@0个@4"..coldata[3].."@0吧。")
							LuaSay("何谦：你的队友还没接取任务哦，赶快提醒他接任务一同杀怪哦，组队之后杀的怪物才算作两人一起杀的哦@!")
							LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
							LuaSetTask("T464",1)
							AddLog("兄弟情义【循环】",464)
							LuaSetTask("T464day",GetCurrentDay())
							LuaSetTask(coldata[4],1)
							UpdateMenu()
						elseif(TeamQueryTask("T464")==1)then
							coldata={AutoSearchTask_killMon(TeamQueryTask("T464col"))}
							LuaSetTask("T464col",coldata[1])
							LuaSay("何谦：在此乱世中成长，没有朋友是不行的，我现在就来考验你，你和你的队友去@4"..coldata[2].."@0一起杀死@3"..coldata[5].."@0个@4"..coldata[3].."@0")
							LuaSay("何谦：赶快和你的队友一起击杀穴居蛛吧，组队之后杀的怪物才算作两人一起杀的哦。")
							LuaSay("@1特别提示：任务期间不要退出组队，不然任务将无法完成")
							LuaSetTask("T464",1)
							AddLog("兄弟情义【循环】",464)
							LuaSetTask("T464day",GetCurrentDay())
							LuaSetTask(coldata[4],1)
							UpdateMenu()
						elseif(TeamQueryTask("T464")==99)then
							LuaSay("何谦：你的队友已经完成这个任务啦，世界这么大，还有很多人哦。")
						end
					else
						LuaSay("何谦：今天你的队友已经做了10次该任务了哦，另外找个朋友来一起做吧@!")	
					end
				else
					LuaSay("何谦：你的队友未能达到接取该任务的条件！")
				end
			else
				LuaSay("何谦：今天你已经做了10次该任务了哦，歇歇明天再来吧@!")
			end
		else
			LuaSay("何谦：你没有队伍，不能接取此任务哦。")
		end
	elseif(LuaQueryTask("T464")==1)then
		if(TeamCount()==2)then
			coldata1={AutoSearchTask_killMon(LuaQueryTask("T464col"))}
			if(LuaQueryTask(coldata1[4])>=21 and TeamQueryTask(coldata1[4])>=21)then
				LuaSay("何谦：我为你能找到一个愿意和你一同奋战的朋友而高兴@!")
				LuaSay("何谦：无兄弟，不统一。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T464jl")

			else
				local a = TeamQueryTask(coldata1[4])-1
				local b = 0
				if(a==-1)then
					b=0
				else
					b=a
				end
				LuaSay("何谦：你们还没杀够"..coldata1[5].."只"..coldata1[3].."哦，这些怪物就在"..coldata1[2].."，加油哦@!")
				LuaSay("何谦：你击杀了"..(LuaQueryTask(coldata1[4])-1).."只，你的队友击杀了"..b.."只")	
			end
		else
			LuaSay("何谦：必须@3两人@0组队状态下才能进行下一步。")
		end
	elseif(LuaQueryTask("T464")==99)then
		LuaSay("何谦：你的队友还未领取任务奖励哦！")
	end


	elseif(answer=="T464jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(TeamCount()==2)then
			coldata2={AutoSearchTask_killMon(LuaQueryTask("T464col"))}
			if(LuaQueryTask(coldata2[4])>=21 and TeamQueryTask(coldata2[4])>=21)then
				--local jingyan=(68835+level^2*20)
				local jingyan=(128835+level^2*20)
				LuaAddTask("T464num",1)
				LuaAddJx("combat_exp",jingyan,"T464")
				LuaGive("coin",2000,"T464")
				LuaSetTask("T464",99)
				DelLog("464")
				if(QueryAllTeamMemberTaskSuccess("T464",99)==1)then
					SetAllTeamMemberValueTask("T464",0)
				end
				UpdateMenu()

			end
		else
			LuaSay("何谦：需要两人组队才能领取奖励。")
		end

elseif(answer=="Tsnpc_40")then
	if(LuaQueryTask("Tsnpc_40")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("何谦：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_40",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_40")==2)then
		LuaSay("何谦：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_40")then
	if(LuaQueryTask("Tenpc_40")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("何谦：这都是大人的功劳啊")
		LuaSetTask("Tenpc_40",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_40")==2)then
		LuaSay("何谦：话已经带到了，快回去领取奖励吧")
	end




end 
LuaSendMenu()
return 1
end


function AutoSearchTask_killMon(collection)
killMon={}
killMon[1]={1,"迷雾之林","匪盗","task_kill/mon_003/T464",20}
killMon[2]={2,"迷雾之林","土甲虫","task_kill/mon_004/T464",20}
killMon[3]={3,"迷雾之林","土甲虫","task_kill/mon_004/T464",20}
killMon[4]={4,"建康东郊","金蛊","task_kill/mon_007/T464",20}
killMon[5]={5,"建康东郊","幼貂","task_kill/mon_008/T464",20}
killMon[6]={6,"五斗山","青狼","task_kill/mon_010/T464",20}
killMon[7]={7,"五斗山","天师匪兵","task_kill/mon_011/T464",20}
killMon[8]={8,"山寨","天师教徒","task_kill/mon_012/T464",20}
killMon[9]={9,"山寨","彩鹫","task_kill/mon_013/T464",20}
killMon[10]={10,"山寨地牢","赤蛛","task_kill/mon_014/T464",20}
killMon[11]={11,"山寨地牢","天师守卫","task_kill/mon_015/T464",20}
killMon[12]={12,"北府军营","北府锤兵","task_kill/mon_016/T464",20}
killMon[13]={13,"北府军营","北府斧兵","task_kill/mon_017/T464",20}
killMon[14]={14,"军营前哨","北府精锐","task_kill/mon_019/T464",20}
killMon[15]={15,"军营前哨","愚民","task_kill/mon_020/T464",20}
killMon[16]={16,"淝水之滨","淝水鳄","task_kill/mon_021/T464",20}
killMon[17]={17,"淝水之滨","穴居蛛","task_kill/mon_022/T464",20}
killMon[18]={18,"淝水对岸","青水虫","task_kill/mon_023/T464",20}
killMon[19]={19,"淝水对岸","碧水蛟","task_kill/mon_024/T464",20}

if(collection==0)then
	collection=LuaRandom(18)+2
end

	str1=killMon[collection][2]--地图
	str2=killMon[collection][3]--怪物名
	str3=killMon[collection][4]--杀怪计数器
	str4=killMon[collection][5]--个数


	return collection,str1,str2,str3,str4
end