NPCINFO = { 
serial="18" ,
base_name="tianwuzhang",
icon=2518,
NpcMove=2518 ,
name="田伍长" ,
iconaddr=1 ,
butt="5|5|70" ,
name_color="CEFFCE" ,
lastsay="在玩家身边按中间确认键可以交互",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local T70= LuaQueryTask("T70")
	local T71= LuaQueryTask("T71")
	local T72= LuaQueryTask("T72")
	local T73= LuaQueryTask("T73")
	local T74= LuaQueryTask("T74")
	local T75= LuaQueryTask("T75")
	AddTopSayMenuItem("@7任务列表","")
		if(level>=8) then

		AddTopSayMenuItem("@3师徒@0","shitu")
		end
		if(level>=6 and T75==0) then 
        		AddTopSayMenuItem("自我提升【教程】","T75")
        		havetask =1
		end
		if(level>=9 and T73==0) then 
        		AddTopSayMenuItem("异族之患【BOSS】","T73")
        		havetask =1
		end
		if(T74 ==0  and T75==99 and level>=9)  then
			AddTopSayMenuItem("策马扬鞭【剧情】","T74")
			havetask =1
		end
		------------------------------------------------
		if(T73==1) then 
        		AddTopSayMenuItem("@2异族之患【BOSS】","T73")			
			havetask =4
		end
		-----------------------------------------------
		if(LuaQueryTask("T87") ==1)  then
			AddTopSayMenuItem("@2增援田伍长【剧情】","T87")
			havetask =2
		end
		if(T75==1 or T75==2) then 
        		AddTopSayMenuItem("@2自我提升【教程】","T75")
        		havetask =2
		end 

		if(T74 ==1)  then
			AddTopSayMenuItem("@2策马扬鞭【剧情】","T74")
		end
		if((LuaQueryTask("Tsnpc_5")==1 or LuaQueryTask("Tsnpc_5")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_5")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_5")==1 or LuaQueryTask("Tenpc_5")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_5")
			havetask=2
		end
--		if(LuaQueryStr("class")=="zhan" and level>=10)  then
--			AddTopSayMenuItem("@3选择职业@0","class")
--			havetask =1
--		end

--		AddTopSayMenuItem("@3乱世缘【成长】@0","T71")
		if(T75==99 and level<20) then 
        		AddTopSayMenuItem("@9自我提升【教程】","T75")
		end
		if(LuaQueryTask("T302")==9 and LuaQueryTask("T302I")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302I")
		havetask =2
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
	LuaSay("田伍长：在其他玩家身边按@2确定键@0，会出现@3交互界面@0，可进行@2结交/组队@0等交互操作。") 

elseif(answer=="T302I") then
	   if(LuaQueryTask("T302I")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是马夫托我带给你的信件。")
		LuaSay("田伍长：多谢少侠!")
		DelItem("o_mission076",1)
		LuaSetTask("T302I",99)
		UpdateMenu()
	   end

elseif(answer=="T73") then
	if(LuaQueryTask("T73")==0)then
	LuaSay("田伍长：我华夏汉族屹立几千年，如今却被蛮夷欺凌，原以为北方蛮夷肆虐，未料想此处已有蛮夷之祸。")
	LuaSay("田伍长：本伍长率军而来正是为剿灭这异族之祸，"..LuaQueryStr("name").."命你速速消灭@4巨石洞@0中的@3异族力士@0。")
	LuaSay("田伍长：消灭@2BOSS或者PK@0需要@2角色锁定@0，按@3#键@0再按角色身上的@3数字键@0即可锁定，按@2取消键@0可@2取消锁定@0。")
	LuaSay("田伍长：另要注意的是，@2锁定后角色移动会临时减慢@0，按@2取消键@0可@2取消锁定@0一段时间后才会恢复。")
        LuaSay("温馨提示：BOSS异族力士甚是厉害，建议您穿上10级的装备后再去不迟。@1如果打的人太多，就先去升级锻炼自己吧。@!")
	LuaSetTask("T73",1)
	LuaGive("o_drug_hp1",10)
	LuaGive("o_drug_mp1",10)
	AddLog("异族之患【BOSS】",73)
	UpdateTopSay("除掉巨石洞的异族力士")
	UpdateMenu()
	elseif(LuaQueryTask("T73")==1 )then
    if(LuaItemCount("o_mission001")>=1) then
	    LuaSay("田伍长：哼！这个茹毛饮血的野人，终于给他报应了。阁下真是神勇，一举剿灭此异族之祸。")
			if(LuaFreeBag()>=1)then				 
	   	    AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T73jl")
	    	else
	    	LuaSay("提示：请至少保留1格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    	end
	    else
	    LuaSay("田伍长：你还没有去消灭异族力士吗？难道是害怕了？好吧，让本官传授你一个打BOSS的秘诀吧。")
	    LuaSay("田伍长：先是：@3装备@0，如果你还没有到10级，建议你到了10级穿上10级的装备再去。")
	    LuaSay("田伍长：还有：@3属性点@0，将潜能点加到属性点上。最后，@3技能@0，按确认键，再按4键，就可以进入技能界面升级技能啦。")
	    LuaSay("田伍长：再@3组上几个朋友，一边打BOSS一边吃药@0，本官就不信搞不死一只小小的BOSS。")
	    LuaSay("田伍长：再告诉你个小秘密，怒气满的时候，进入@3愤怒状态@0，还能攻击加倍哦。快去击杀@4巨石洞@0里的@3异族力士@0吧。")
	    LuaSay("温馨提示：@1如果打的人太多，就先去升级锻炼自己吧。@!达到15级，可以去建康城南谢安处领取@3炫酷套装@0哦@!")
		if(LuaItemCount("o_drug_hp4")<10 and LuaQueryTask("T73A")==1) then
		LuaGive("o_drug_hp4",10)
		LuaSetTask("T73A",99)
		UpdateMenu()
		end
	    end

	end
	elseif(answer=="T73jl") then
	  if(LuaQueryTask("T73")==1) then
		if(LuaItemCount("o_mission001")>=1) then
	  LuaSay("...")
	  LuaSay("......")
	  LuaSay("田伍长：恭喜您！很幸运的受到武神的眷顾，将会获得一把@3绝世神兵@0，这可是@3拥有3个镶嵌槽的黄金装备@0，还会闪星星哦。")
	  LuaSay("田伍长：不是每个人都能得到这样的机会的。努力成长，直到有一天能带上它，让旁人羡慕吧。@!")
	  if(LuaQueryStr("class")=="shen") then      --战士
	  LuaGive("e_falchion004j",1,3,"T73")	
	  elseif(LuaQueryStr("class")=="wu") then       --侠客
	  LuaGive("e_sword005j",1,3,"T73")
	  elseif(LuaQueryStr("class")=="xian") then       --谋士
	  LuaGive("e_pen003j",1,3,"T73")
	  end
	  LuaSetTask("T73",99)
	  DelItem("o_mission001",LuaItemCount("o_mission001"))
	  DelLog("73")
	  LuaAddJx("combat_exp",20000,"T73")
	  LuaAddAchievementSchedule("Task_num",1)
	  LuaGive("coin",400,"T73")
	  UpdateMenu() 
	  end
	  end

		       
elseif(answer=="shitu") then
     AddMenuItem("@7师徒管理","")
     AddMenuItem("@3师徒平台","STPT")
     --[[
     if(LuaQuery("level")<40) then
     AddMenuItem("@3找师父","zhaoshifu")
     end        ]]
     AddMenuItem("@7收徒","shoutu")
     AddMenuItem("@7师徒操作","st_caozuo")
     AddMenuItem("@7师徒任务","st_task")
     AddMenuItem("@7徒弟每级提升奖励","jiangli")
     AddMenuItem("@7师徒说明","st_shuoming")
elseif(answer=="zhaoshifu") then
     AddMenuItem("是否发公告找师父","")
     AddMenuItem("发公告帮我找师父","zsfyes")
     AddMenuItem("不需要","zsfno")
elseif(answer=="st_task")then
     AddMenuItem("@7师徒任务","")
     if(LuaQueryTask("Tshibiao")~=0 and LuaQueryTask("Tshibiao")~=99)then
	 	AddMenuItem("@2为人师表【师徒】","Tshibiao")
     else
        AddMenuItem("为人师表【师徒】","Tshibiao")
     end
     AddMenuItem("师徒考验【每日】","T260")
     elseif(answer=="st_caozuo")then
     AddMenuItem("师徒操作","")
     AddMenuItem("出师","chushi")
     AddMenuItem("叛师","panshi")

     elseif(answer=="st_shuoming")then
	LuaSay("田伍长：徒弟可以通过@1师徒平台@0或者按0在公聊里喊话来结交师父，师徒任务中的任务需要你和你的师父一同组队前来领取哦。")
	LuaSay("田伍长：师徒操作总能进行出师和叛师的操作，收徒仅限于40级以上的玩家收徒用，需一个40以上的玩家与一个8-40级的玩家组队使用。")
	LuaSay("田伍长：徒弟每提升1级，师徒都可以领取奖励。")
      elseif(answer == "zsfyes") then
   if(GetCurrentDay()~=LuaQueryStr("Tzsfday")) then
      LuaSet("Tzsfcishu",0)
      LuaSet("Tzsfday",GetCurrentDay())
   end
	if(LuaQuery("Tzsfcishu")<2 ) then
		if(IsVisitor()=="true")then--游客提示注册
		LuaSay("提示：按@3左软键确定@0后，再按@3#键@0,输入账号密码即可@2注册@0。")
		else
		LuaNotice("@3"..LuaQueryStr("name").."@0对这个世界充满着疑惑，需要找一位师父。愿意成为其师父的大侠快联系他/她吧，TA正在迷雾之林的@3田伍长@0处。")
		LuaAdd("Tzsfcishu",1)
		end
	else
		LuaSay("提示：发公告找师父，每天只能用2次。您今天已经用完了，很遗憾！")
	end
      elseif(answer == "Tzsfno") then
		LuaSay("田伍长：看来你是个喜欢一个人默默奋斗的人，那就加油吧。")	
	
	elseif(answer=="shoutu") then
	      if(LuaQuery("level")>=40) then
	        if(TeamCount()== 2) then
			if(TeamQuery("level")>8) then
			LuaSay("提示：为了更好的和徒弟交流，师徒双方最好还是@2留下联系方式@0吧。@!")
			LuaSay("提示：@2徒弟每升一级都可以到我这里来领取师徒奖励@0，还有@2每日师徒考验@0可以完成。@!")
			LuaSay("提示：徒弟达到@240级@0时出师，师徒都能得到丰厚的奖励。@!")
			ProcessMaster()
			else
			LuaSay("提示：只能收等级大于8级的人为徒。")
			end
	         else
		 LuaSay("提示：40级以后，@22人组队@0方能收徒。")
		 end
	      else
	      LuaSay("提示：40级以后，@22人组队@0方能收徒。")
	      end

	elseif(answer=="chushi") then
	      if(LuaQuery("level")>=40) then
	      LuaSay("田伍长：一日为师终身为父，你的档案里的师父还是会显示你现在的师父哦。")
	      ProcessPrentice()
	      else
	      LuaSay("田伍长：@240级@0以后和师傅2人组队方能出师。")
	      end

	elseif(answer=="panshi") then
	      DisMaster()

        elseif(answer=="jiangli") then     --增加次数限制，每天超过多少次就不能再领取
	  if(LuaQueryStrTask("shituday")~=GetCurrentDay()) then
	  LuaDelTask("shitutime")
	  end
	  if(LuaQueryTask("shitutime")<10) then
            if(TeamCount()== 2) then
		if(TeamQuery("level")<40) then
	          if(LuaGetLevel_exp()==1) then
		  LuaSetTask("shituday",GetCurrentDay())
		  LuaAddTask("shitutime",1)
		  else
		  LuaSay("提示：您的队友不是您的徒弟，或者他还没有升级。需要与您的徒弟组队，并且徒弟升过级才能领取奖励。")
		  end
		else
		LuaSay("提示：徒弟40级以后双方不能再领取师徒奖励。该奖励由师傅领取，2人都能得到。")
		end
	    else
	    LuaSay("提示：需师徒2人组对，师徒2人都会获得奖励。该奖励由师傅领取。")
	    end
	  else
	  LuaSay("提示：带人可得尽心尽责，施主你太不负责了，明天再来吧。")
	  end


	elseif(answer=="Tshibiao")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTask("Tshibiao")==99 and (TeamQueryTask("Tshibiao")==0 or TeamQueryTask("Tshibiao")==99))then
		LuaDelTask("Tshibiao")
		LuaDelTask("Tshibiaoteamname")
		UpdateMenu()
	end
	
	LuaSay("田伍长：师徒组队可接此任务，从接取此任务开始，徒弟的等级上升10级以上，师徒都可以来找我领取奖励，提升的等级越高，奖励越多哦，一个徒弟只能做一次，师父可以多次做@!")
	if(TeamCount()==2)then
		if(IsMaster()~=0)then
			if(LuaQueryTask("Tshibiao")==0)then
					if(IsMaster()==2)then
						if(TeamQueryTask("Tshibiao")==0)then
							if(TeamQuery("level")>30)then
								LuaSay("提示：你组队的徒弟等级已经超过三十级，不能接取此任务。")
							else
								local teamlevel=TeamQuery("level")
								local teamname=TeamQueryStr("name")
								LuaSet("Tshibiaoteamname",teamname)
								LuaSetTask("Tshibiaoteamlevel",teamlevel)
								LuaSay("田伍长：你的徒弟@3"..LuaQueryStr("Tshibiaoteamname").."@0当前等级为@1"..LuaQueryTask("Tshibiaoteamlevel").."@0，师徒组队将会有额外的经验加成，当你徒弟的等级到了"..(LuaQueryTask("Tshibiaoteamlevel")+10).."的时候就可以一同前来领取奖励了哦，你徒弟的等级提升越多，奖励就越多@!")
								LuaSetTask("Tshibiao",1)
								LuaSetTask("Tsf",1)
								UpdateMenu()
							end
						else
							LuaSay("田伍长：你的徒弟已经做过一次为人师表的任务，或者正处于这个任务当中，")
							LuaSay("小技巧：当你的徒弟处于前一个师傅的任务链当中而且你又非常想带他的时候，你可以让他先放弃任务，再和你一同接取@!")
						end
					elseif(IsMaster()==1)then
						
							LuaSay("田伍长：你同你的师父接取了此任务哦，统一的世界将因为有你而更加精彩@!")
							LuaSetTask("Tshibiao",1)
							LuaSet("td_level",LuaQuery("level"))
							LuaSetTask("Ttd",1)
							UpdateMenu()
						
					end
				
			elseif(LuaQueryTask("Tshibiao")==1)then
				if(IsMaster()==2)then
					if(TeamCount()==2)then	
							if(LuaQueryStr("Tshibiaoteamname")==TeamQueryStr("name"))then
								if(TeamQueryTask("Tshibiao")~=0)then
									local uplevel=TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel")
									if(uplevel>=10)then
										LuaSay("你将你徒弟的等级提高了"..uplevel.."")
										UpdateMenu()
										AddMenuItem("@7领取奖励@0","")
										AddMenuItem("@7领取奖励","Tshibiao_sfjl")
										
									else
										LuaSay("田伍长：你徒弟接取任务的时候是"..LuaQueryTask("Tshibiaoteamlevel").."级，现在你的徒弟是"..TeamQuery("level").."，还差"..(10-(TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))).."级你们才能领取奖励哦")
										AddMenuItem("@7放弃任务@0","")
										AddMenuItem("@7继续任务","Tshibiao_jixu")
										AddMenuItem("@1放弃任务","Tshibiao_fangqi")
									end
								else
									LuaSay("提示：你的徒弟没有接取任务哦，双方都要接取任务之后并且满足任务完成条件才能领取奖励哦。")
								end
							else
								LuaSay("田伍长：当前和你组队的不是你接任务的徒弟，不能领取奖励")
								AddMenuItem("@7放弃任务@0","")
								AddMenuItem("@7继续任务","Tshibiao_jixu")
								AddMenuItem("@1放弃任务","Tshibiao_fangqi")
							end
						
					else
						LuaSay("田伍长：请和你接取此任务的徒弟一起组队前来，你没有组队哦")
						AddMenuItem("@7放弃任务@0","")
						AddMenuItem("@7继续任务","Tshibiao_jixu")
						AddMenuItem("@1放弃任务","Tshibiao_fangqi")
					end
				elseif(IsMaster()==1)then
					if(TeamQueryTask("Tshibiao")==99)then
						uplevel_td=LuaQuery("level")-LuaQueryTask("td_level")
						LuaSay("田伍长：你在你师父的引导下成功的升了"..uplevel_td.."")
						AddMenuItem("@7领取奖励@0","")
						AddMenuItem("@7领取奖励","Tshibiao_tdjl")
					else
						LuaSay("田伍长：必须等你师父带你提升10级以上并且你师父领取奖励之后你才能领取奖励哦，为师者先@!")
						AddMenuItem("@7放弃任务@0","")
						AddMenuItem("@7继续任务","Tshibiao_jixu")
						AddMenuItem("@1放弃任务","Tshibiao_fangqi")
					end
				end
			elseif(LuaQueryTask("Tshibiao")==99)then
				if(LuaQuery("level")<40)then
					LuaSay("田伍长：你师父已经带过你一次了，只能带一次哦")
				end
			end
			
		else
			LuaSay("田伍长：你们的关系不是师徒，不能接取此任务")
		end
	else
		LuaSay("田伍长：请确认你们的关系是师徒关系并组队来接此任务")
	end
		
	elseif(answer=="Tshibiao_tdjl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		LuaSay("田伍长：你完成了@7为人师表@0任务，这是给你的奖励@!")
		--exp=80000+((LuaQuery("level")-LuaQueryTask("td_level"))^3*1000+LuaQuery("level")*100)
		local exp=80000+level^2*80+(LuaQuery("level")-LuaQueryTask("td_level"))*10000
		LuaAddJx("combat_exp",exp,"Tshibiao")
		LuaSetTask("Tshibiao",99)
		UpdateMenu()
	elseif(answer=="Tshibiao_sfjl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
		end
		LuaSay("田伍长：你帮助了你徒弟，这点奖励是应该给你的")
		--exp=80000+((TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))^3*1000+level*100)
		local exp=80000+level^2*80+(TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))*10000
		LuaAddJx("combat_exp",exp,"Tshibiao")
		LuaSetTask("Tshibiao",99)
		LuaDel("Tsf")
		UpdateMenu()
	elseif(answer=="Tshibiao_jixu")then
		LuaSay("田伍长：你选择了继续进行任务，加油哦@!")
	elseif(answer=="Tshibiao_fangqi")then
		LuaSay("田伍长：你选择了放弃任务，师徒两可以重新接取")
		LuaDelTask("Tshibiao")
		UpdateMenu()



elseif(answer=="T74") then              ------------------------策马扬鞭 
		if(LuaQueryTask("T74")==0) then
		LuaSay("田伍长：人中吕布、马中赤兔！英雄该有绝世坐骑配，方显真正英雄本色。")
		LuaSay("田伍长：你@2向右走@0便可往建康南郊，@4建康南郊@0的@3守城士兵@0乃是本伍长的挚友，让他送你一匹千里神驹吧。@!")
		LuaSetTask("T74",1)
                AddLog("策马扬鞭【剧情】",74)
                UpdateMenu()
		UpdateTopSay("向右过图找守城士兵可得坐骑")
		elseif(LuaQueryTask("T74")==1) then
		       LuaSay("田伍长：去问候一下@4建康南郊@0的@3守城士兵@0吧，他会送你一匹@2坐骑@0。@!")
		end 


elseif(answer=="T75") then----------自我提升
		if(LuaQueryTask("T75") == 0) then 
				LuaSay("田伍长：自我提升之道乃是必备，我观小英雄资质甚佳，更要多关注此道呀！我来告诉你@3潜能点@0的正确加法吧。") 
				LuaSay("田伍长：点击@2确认键@0，按@22键@0出现人物装备，选择@2力量，智慧，敏捷@0中的一项按@3左右键加减@0，再点@2确定@0即可。") 
				LuaSay("田伍长：三项属性对每个职业都至关重要，其中战士侧重于力量，侠客侧重于敏捷，谋士侧重于智慧。@!")
				LuaSay("田伍长：@2属性加法千千万，好好摸索吧@0，也许最强的加点法就在你手中诞生。现在，你@2把剩余的潜能点全加完@0，再来找我。")
				SendCommand("call=田伍长：我亲自演示给你看吧，点击@2确认键@0后再点击@22键@0就弹出装备栏了，根据自己的职业加点就好了。|0|12|1")
				LuaSetTask("T75",1) 
				UpdateTopSay("将剩余潜能点加完再来找我")
				AddLog("自我提升【教程】",75) 
				UpdateMenu()
		elseif(LuaQueryTask("T75") == 1) then
			if((LuaQuery("potential_point")-LuaQuery("used_potential_point"))==0 ) then
				LuaSay("田伍长：嗯，年轻人悟性真高啊，将来必成大器。") 
				LuaSay(""..LuaQueryStr("name").."：田大人谬赞了，您对我的栽培之恩，晚辈将铭记于心。")	
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T75jl")
			else
				LuaSay("田伍长：你先点击@2确认键@0，再按@2键2@0出现人物装备栏，这时你会看到@2力量，智慧，敏捷@0旁边点的@2+号@0。") 
				LuaSay("田伍长：三项属性对每个职业都至关重要，其中战士侧重于力量，侠客侧重于敏捷，谋士侧重于智慧。@!")
				LuaSay("田伍长：@2属性加法千千万，好好摸索吧@0，也许最强的加点法就在你手中诞生。现在，你@2把剩余的潜能点全加完@0，再来找我。")
			end
		elseif(LuaQueryTask("T75") == 99) then
				LuaSay("田伍长：你先点击@2确认键@0，再按@2键2@0出现人物装备栏，这时你会看到@2力量，智慧，敏捷@0旁边点的@2+号@0。") 
				LuaSay("田伍长：三项属性对每个职业都至关重要，其中战士侧重于力量，侠客侧重于敏捷，谋士侧重于智慧。@!")
				LuaSay("田伍长：@2属性加法千千万，好好摸索吧@0，也许最强的加点法就在你手中诞生。")
		 LuaSay("提示：该任务已完成")
		 end
	elseif(answer=="T75jl") then
				if(LuaQueryTask("T75") == 1) then
				LuaSetTask("T75",99) 				 
				LuaAddJx("combat_exp",8000,"T75")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",600,"T75")
				DelLog("75") 
				UpdateMenu()
				end

elseif(answer=="T87") then     -----------增援田伍长
		if(LuaQueryTask("T87")==1 ) then  
			LuaSay("田伍长：你终于来了，本伍长这边人手紧缺，正需要像你这样的英雄。@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T87jl")	
		end 
		elseif(answer=="T87jl")then	            
		       if(LuaQueryTask("T87")==1)then
				LuaSetTask("T87",99) 
				LuaAddJx("combat_exp",11000,"T87") 
				DelLog("87") 
				UpdateMenu() 
				UpdateNPCMenu("shibingjia")
			end



elseif(answer=="T260") then
--T260
--260day任务日
--260msg传递信息
	m={}
	m[0]="初九，潜龙勿用何解？"
	m[1]="飞龙在天，利见大人。何谓也？"
	m[2]="用兵之道为何也？"
	m[3]="天干甲在阴阳五行中属什么？"
	m[4]="奇门三遁为哪三遁？"

	m[5]="龙德而隐者也。不易乎世，不成乎名"
	m[6]="同声相应，同气相求"
	m[7]="兵者，国之大事，死生之地，存亡之道，不可不察也"
	m[8]="甲为木，为阳"
	m[9]="生门六丙合六丁， 此为天遁自分明。"

	m[10]="遁世而无闷，不见是而无闷"
	m[11]="水流湿，火就燥；云从龙，风从虎"
	m[12]="繁礼君子，不厌忠信；战阵之间，不厌诈伪"
	m[13]="阳木，为天干之首"
	m[14]="开门六乙合六己， 地遁如斯而已矣"

	m[15]="乐则行之，忧则违之；确乎其不可拔，乾龙也"
	m[16]="圣人作，而万物，本乎天者亲上，本乎地者亲下，则各从其类也"
	m[17]="知己知彼，百战不贻"
	m[18]="五行属木，属阳"
	m[19]="休门六丁共太阴， 欲求人遁无过此"
	if(GetCurrentDay()~=LuaQueryStrTask("260day"))then
	LuaDelTask("T260")
	LuaDelTask("260T1")
	LuaDelTask("260T2")
	LuaDelTask("260T3")
	LuaDelTask("260T4")
	LuaSetTask("260day",GetCurrentDay())
	end
	if(LuaQueryStrTask("260day")~=TeamQueryStrTask("260day"))then
	LuaSay("田伍长：等待队友向我报到，需要队友也来点击这个菜单才能一起接取哦。")	LuaSendMenu()
	return 1
	end
	if(TeamCount()==2 and ((LuaQueryTask("T260")==0 and IsMaster()==1) or (TeamQueryTask("T260")==0 and IsMaster()==2)))then
		if(IsMaster()==1)then
			if(LuaQuery("level")<40)then
			LuaSay("田伍长：师父领进门，提高在个人，来，我要考验一下你是否是个合格的徒弟。")
			LuaSetTask("T260",1)
			LuaSetTask("260day",GetCurrentDay())
			else
			LuaSay("你现在的级别应当出师了，想必平日里师徒交流不错，这个任务不适合你了。")
			end
		else
			if(TeamQuery("level")<40)then
			LuaSay("田伍长：良师出高徒，和你徒弟组队来，我要考验一下你是否是个合格的师父，问你徒弟有什么不解的问题吧。")
			LuaDelTask("260msg")
			else
			LuaSay("你这个徒弟应当出师了，想必平日里师徒交流不错，这个任务不适合你俩做了。")
			end
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==1 and IsMaster()==1) or (TeamQueryTask("T260")==1 and IsMaster()==2)))then
		if(IsMaster()==1)then
		LuaSay("田伍长：为徒者尊师重教，有什么不明白的要虚心向你师父请教，你要问你师父什么问题？")
		local r=LuaRandom(5)
		LuaSay(""..r.."")
		LuaSay("田伍长：啊！你想知道@7"..m[r].."@0,是吗？看你师父怎么答。")
		LuaSetTask("260msg",r)
		LuaSetTask("T260",2)
		else
		LuaSay("田伍长：为师者传道授业，当孜孜不倦，耐心启发徒弟，问问你徒弟有什么不解的问题吧。")
		LuaDelTask("260msg")
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==2 and IsMaster()==1) or (TeamQueryTask("T260")==2 and IsMaster()==2)))then
		if(IsMaster()==1)then
		LuaSay("田伍长：这个问题问问你师父吧？")
		if(TeamQueryTask("260msg")~=0)then
		LuaSetTask("T260",3)
		end
		else
		LuaSay("田伍长：你徒弟要问你@7"..m[TeamQueryTask("260msg")].."。")
			if(LuaQueryTask("260msg")==0)then
			local ra=(LuaRandom(3)+1)*5+TeamQueryTask("260msg")
			LuaSay("田伍长：你应当告诉他@7"..m[ra])
			LuaSetTask("260msg",ra)
			else
			local ra=LuaQueryTask("260msg")
			LuaSay("告诉你徒弟@7"..m[ra].."")
			end
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==3 and IsMaster()==1 and TeamQueryTask("260msg")~=0) or (TeamQueryTask("T260")==3 and IsMaster()==2)))then
		if(IsMaster()==1)then	
		AddMenuItem("你师父怎么回答你的？","")
		AddMenuItem("@9师父还没告诉我","no")
		AddMenuItem("龙德...","ans1")
		AddMenuItem("遁世...","ans6")
		AddMenuItem("乐则...","ans11")
		AddMenuItem("圣人...","ans12")
		AddMenuItem("水流...","ans7")
		AddMenuItem("繁礼...","ans8")
		AddMenuItem("兵者...","ans3")
		AddMenuItem("同声...","ans2")
		AddMenuItem("知己...","ans13")
		AddMenuItem("五行...","ans14")
		AddMenuItem("生门...","ans5")
		AddMenuItem("甲为...","ans4")
		AddMenuItem("开门...","ans10")
		AddMenuItem("阳木...","ans9")
		AddMenuItem("休门...","ans15")
		else
		ra=LuaQueryTask("260msg")
		LuaSay("告诉你徒弟@7"..m[ra].."")
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==4 and IsMaster()==1) or (TeamQueryTask("T260")>=4 and IsMaster()==2)))then
		local level= LuaQuery("level")
		if(IsMaster()==1)then
		LuaSay("好师父好徒弟，这些经验是当徒的应得的。")
		LuaSetTask("T260",99)
		LuaDelTask("260msg")		
		LuaAddJx("combat_exp",6*(LuaRandom(20)+10)*level^2,"T260")--LuaGive("o_seed105",3,"T260")--由于小号刷了全给大号了，换成直接给小号经验
		elseif(IsMaster()==2 and (TeamQueryTask("T260")==4 or TeamQueryTask("T260")==99) and LuaQueryTask("260msg")~=0 and LuaQueryStr("260T1")~=TeamQueryStr("name") and LuaQueryStr("260T2")~=TeamQueryStr("name") and LuaQueryStr("260T3")~=TeamQueryStr("name") and LuaQueryStr("260T4")~=TeamQueryStr("name"))then
		LuaSay("好师父好徒弟，这些种子送给你们了。")
		LuaDelTask("260msg")
		LuaSetTask("260day",GetCurrentDay())
		LuaGive("o_seed105",1,"T260")
			if(LuaQueryStr("260T1")=="")then
			LuaSetTask("260T1",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T2")=="")then
			LuaSetTask("260T2",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T3")=="")then
			LuaSetTask("260T3",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T4")=="")then
			LuaSetTask("260T4",TeamQueryStr("name"))
			end
		elseif(IsMaster()==2 and TeamQueryTask("T260")==98)then
		LuaSay("考验失败，你与这个徒弟的交流不好，换其徒弟或明天再来吧。")
		LuaDelTask("260msg")
		elseif(IsMaster()==2 and (TeamQueryTask("T260")==4 or TeamQueryTask("T260")==99) and LuaQueryTask("260msg")==0 or LuaQueryStr("260T1")==TeamQueryStr("name") or LuaQueryStr("260T2")==TeamQueryStr("name") or LuaQueryStr("260T2")==TeamQueryStr("name") or LuaQueryStr("260T4")==TeamQueryStr("name"))then
		LuaSay("你和这个徒弟已完成了今天的考验，换其他徒弟或明天再来吧。")
		end
	else
		if(LuaQueryTask("T260")>4)then
		LuaSay("你已完成了今天的师徒考验任务。")
		else
		LuaSay("师徒两人组队才能完成此任务或你已完成今天的任务。")
		end
	end
UpdateMenu()
	elseif(answer=="ans1")then
	local a=5
	if(TeamQueryTask("260msg")==a)then
	LuaSay("龙德而隐者也。不易乎世，不成乎名。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans2")then
	local a=6
	if(TeamQueryTask("260msg")==a)then
	LuaSay("同声相应，同气相求。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans3")then
	local a=7
	if(TeamQueryTask("260msg")==a)then
	LuaSay("兵者，国之大事，死生之地，存亡之道，不可不察也。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans4")then
	local a=8
	if(TeamQueryTask("260msg")==a)then
	LuaSay("甲为木，为阳。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans5")then
	local a=9
	if(TeamQueryTask("260msg")==a)then
	LuaSay("生门六丙合六丁， 此为天遁自分明。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans6")then
	local a=10
	if(TeamQueryTask("260msg")==a)then
	LuaSay("遁世而无闷，不见是而无闷。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans7")then
	local a=11
	if(TeamQueryTask("260msg")==a)then
	LuaSay("水流湿，火就燥；云从龙，风从虎。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans8")then
	local a=12
	if(TeamQueryTask("260msg")==a)then
	LuaSay("繁礼君子，不厌忠信；战阵之间，不厌诈伪。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans9")then
	local a=13
	if(TeamQueryTask("260msg")==a)then
	LuaSay("阳木，为天干之首。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans10")then
	local a=14
	if(TeamQueryTask("260msg")==a)then
	LuaSay("开门六乙合六己， 地遁如斯而已矣。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans11")then
	local a=15
	if(TeamQueryTask("260msg")==a)then
	LuaSay("乐则行之，忧则违之；确乎其不可拔，乾龙也。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans12")then
	local a=16
	if(TeamQueryTask("260msg")==a)then
	LuaSay("圣人作，而万物，本乎天者亲上，本乎地者亲下，则各从其类也。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans13")then
	local a=17
	if(TeamQueryTask("260msg")==a)then
	LuaSay("知己知彼，百战不贻。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans14")then
	local a=18
	if(TeamQueryTask("260msg")==a)then
	LuaSay("五行属木，属阳。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end
	elseif(answer=="ans15")then
	local a=19
	if(TeamQueryTask("260msg")==a)then
	LuaSay("休门六丁共太阴， 欲求人遁无过此。")
	LuaSay("传的不错，好师父好徒弟，来领奖励吧。")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("哎呀呀，一派胡言，师徒间没有好好交流还怎么传道和学艺，考验没通过，明天再来吧。")
	end 
	 
--成长任务 
elseif(answer == "T71") then
	local level= LuaQuery("level")
	if(LuaQueryTask("T71")== 0) then
		if(TeamCount()== 2) then
		if(TeamQuery("level")<=10 and level<=10) then
			if(TeamQueryTask("T71")== 0 or TeamQueryStr("Tczteamer")==LuaQueryStr("name")) then
			LuaSay("田伍长：乱世真情诚可贵，你身边有一同成长一同进退的伙伴了吗？@210级或10级以下的2人组队@0，可在此接取成长任务哦。")
			LuaSay("田伍长：每天你们2人组队都可领奖。当你2人一同达到@215级,20级,25级,30级@0时，都可以到本官这里来领取丰厚的奖励。@!")
			LuaSay("田伍长：当一同@2达到30级@0并一起完成@4淝水对岸@0@3朱序@0处@2鏖战万蛇【BOSS】任务@0时，@3金钱、百万经验、蓝装@0都等着你。@!")
			LuaSetTask("T71",1)
			LuaSetTask("Tczteamer",TeamQueryStr("name"))
			AddLog("乱世缘【成长】",71)
			UpdateMenu()
			else
			LuaSay("田伍长：你的组队成员已经有了相依为命的伙伴，你还是找其他人作为你的伙伴吧。")
			LuaSay("@7温馨提示@0：该任务需要2个人一起接取和完成。不光每天都有奖励，当15/20/25/30级时更有丰厚的大奖。")
			end            
			elseif(TeamQuery("level")>10 or level>10) then
			LuaSay("田伍长：2名10级或10级以内的玩家，二人组队才能领取该任务。")
			LuaSay("@7温馨提示@0：该任务需要2个人一起接取和完成。不光每天都有奖励，当15/20/25/30级时更有丰厚的大奖。")
			end
		else
		LuaSay("田伍长：2名10级或10级以内的玩家，二人组队才能领取该任务。")
		LuaSay("@7温馨提示@0：该任务需要2个人一起接取和完成。不光每天都有奖励，当15/20/25/30级时更有丰厚的大奖。")
		AddMenuItem("@7发本地公告找人","")
		AddMenuItem("@3我需要找人做任务","T71yes")
		AddMenuItem("@3不需要","T71no")
		end
              
	elseif(LuaQueryTask("T71")== 1) then
	AddMenuItem("任务列表","")
	AddMenuItem("每日奖励","T71A")
	AddMenuItem("成长奖励","T71B")
	elseif(LuaQueryTask("T71")== 2) then
	AddMenuItem("任务列表","")
	AddMenuItem("每日奖励","T71A")
	AddMenuItem("成长奖励","T71B")
	elseif(LuaQueryTask("T71")== 3) then
	AddMenuItem("任务列表","")
	AddMenuItem("每日奖励","T71A")
	AddMenuItem("成长奖励","T71B")
	elseif(LuaQueryTask("T71")== 4) then
	AddMenuItem("任务列表","")
	AddMenuItem("每日奖励","T71A")
	AddMenuItem("成长奖励","T71B")
	end

      elseif(answer == "T71yes") then
   if(GetCurrentDay()~=LuaQueryStrTask("T71ggday")) then
      LuaSetTask("T71ggcishu",0)
      LuaSetTask("T71ggday",GetCurrentDay())
   end
	if(LuaQueryTask("T71ggcishu")<2 ) then
		if(IsVisitor()=="true")then--游客提示注册
		LuaSay("提示：按@3确定键确定@0后，再按@3#键@0,输入账号密码即可@2注册@0。")
		else
		LocalMsg("@3"..LuaQueryStr("name").."@0希望有人和他一起组队完成@2乱世缘成长任务@0，愿意的快联系他吧！")
		LuaAddTask("T71ggcishu",1)
		end
	else
		LuaSay("提示：发公告找人，每天只能用2次。您今天已经用完了，很遗憾！")
	end
      elseif(answer == "T71no") then
		LuaSay("田伍长：看来你是个喜欢一个人默默奋斗的人，那就加油吧。")


elseif(answer == "T71B") then
local level= LuaQuery("level")
	if(LuaQueryTask("T71")== 1) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=15 and level>=15) then
				LuaSay("田伍长：你和你的伙伴这么快就到15级了呢，继续加油吧@!在此之前请接收我的馈赠。")
				AddMenuItem("@715级奖励领取","")
				AddMenuItem("领取奖励","T71jl1")
			elseif(TeamQuery("level")<15 or level<15) then
			LuaSay("田伍长：真是可惜，你或者你的伙伴还没有达到15级哦，还要继续努力呢。")
        	AddMenuItem("是否要放弃任务","","")
        	AddMenuItem("继续任务","jixu","")
	    	AddMenuItem("放弃任务","fangqi","")
			end
		else
		LuaSay("田伍长：怎么？这么快就另觅新欢了吗？必须与接任务时一起的同伴组队才可以哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
		else
		LuaSay("田伍长：必须与接任务时一起组队的同伴才可以来尝试完成任务哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 2) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=20 and level>=20) then
				LuaSay("田伍长：你和你的伙伴这么快就到20级了呢，继续加油吧@!在此之前请接收我的馈赠。")
				AddMenuItem("@720级奖励领取","")
				AddMenuItem("领取奖励","T71jl2")
			elseif(TeamQuery("level")<20 or level<20) then
			LuaSay("田伍长：真是可惜，你或者你的伙伴还没有达到20级哦，还要继续努力呢。")
        	AddMenuItem("是否要放弃任务","","")
        	AddMenuItem("继续任务","jixu","")
	    	AddMenuItem("放弃任务","fangqi","")
			end
		else
		LuaSay("田伍长：怎么？这么快就另觅新欢了吗？必须与接任务时一起的同伴组队才可以哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
		else
		LuaSay("田伍长：必须与接任务时一起的同伴组队才可以来尝试完成任务哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 3) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=25 and level>=25) then
				LuaSay("田伍长：你和你的伙伴这么快就到25级了呢，继续加油吧@!在此之前请接收我的馈赠。")
				AddMenuItem("@725级奖励领取","")
				AddMenuItem("领取奖励","T71jl3")
			elseif(TeamQuery("level")<25 or level<25) then
			LuaSay("田伍长：真是可惜，你或者你的伙伴还没有达到25级哦，还要继续努力呢。")
        	AddMenuItem("是否要放弃任务","","")
        	AddMenuItem("继续任务","jixu","")
	    	AddMenuItem("放弃任务","fangqi","")
			end
		else
		LuaSay("田伍长：怎么？这么快就另觅新欢了吗？必须与接任务时一起的同伴组队才可以哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
		else
		LuaSay("田伍长：必须与接任务时一起的同伴组队才可以来尝试完成任务哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 4) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=30 and level>=30) then
				if(TeamQueryTask("T468")==99 and LuaQueryTask("T468")==99) then
				LuaSay("田伍长：你和你的伙伴经历了风风雨雨，终于都成长为能独当一面的大人物了呢。@!")
				LuaSay("田伍长：乱世的英雄们为你们喝彩，请接受我的馈赠！@!")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T71jl4")
				else
			  	LuaSay("田伍长：真是可惜，你或者你的伙伴还没有完成28级BOSS任务，@2鏖战万蛇【BOSS】@0，可去@4淝水对岸@0的@3朱序@0处接取。")
        		AddMenuItem("是否要放弃任务","","")
        		AddMenuItem("继续任务","jixu","")
	    		AddMenuItem("放弃任务","fangqi","")
				end
			elseif(TeamQuery("level")<30 or level<30) then
			LuaSay("田伍长：真是可惜，你或者你的伙伴还没有达到30级哦，还要继续努力呢。")
        	AddMenuItem("是否要放弃任务","","")
        	AddMenuItem("继续任务","jixu","")
	    	AddMenuItem("放弃任务","fangqi","")
			end
		else
		LuaSay("田伍长：怎么？这么快就另觅新欢了吗？必须与接任务时一起的同伴组队才可以哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
		else
		LuaSay("田伍长：必须与接任务时一起的同伴组队才可以来尝试完成任务哦。")
        AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 99) then
	LuaSay("田伍长：你已经和你的同伴完成了此任务，现在可以和你的同伴去接受更高探险了。@!")
    end
	elseif(answer=="fangqi") then
		LuaSay("田伍长：放弃将失去领取丰厚奖励的资格哦，请再次确认是否要放弃。")
		AddMenuItem("是否要放弃任务","","")
        AddMenuItem("继续任务","jixu","")
	    AddMenuItem("放弃任务","fangqi1","")
	elseif(answer=="fangqi1") then
		LuaSay("田伍长：真是太遗憾了！")
		LuaSetTask("T71",0)
        LuaDelTask("Tczteamer")
		DelLog("344")
		UpdateMenu()
	elseif(answer=="jixu") then
		LuaSay("田伍长：恩，坚持就是胜利，继续加油吧！我将会给你丰厚的奖励哦。")

	elseif(answer=="T71jl1") then
				if(LuaQueryTask("T71") == 1) then
				LuaSetTask("T71",2)
				LuaAddJx("combat_exp",100000,"T71")
				LuaGive("e_clothes005s",1,1,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 2) then
                LuaSay("田伍长：请你们再接再厉吧，待你们一起达到20级，就可以来领取20级的奖励了。@!")
                end
				AddLog("乱世缘【成长】",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl2") then
				if(LuaQueryTask("T71") == 2) then
				LuaSetTask("T71",3)
				LuaAddJx("combat_exp",300000,"T71")
				LuaGive("e_clothes006s",1,1,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 3) then
                LuaSay("田伍长：请你们再接再厉吧，待你们一起达到25级，就可以来领取25级的奖励了。@!")
                end
				AddLog("乱世缘【成长】",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl3") then
				if(LuaQueryTask("T71") == 3) then
				LuaSetTask("T71",4)
				LuaAddJx("combat_exp",650000,"T71")
				LuaGive("coin",15000,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 4) then
                LuaSay("田伍长：恩，待你们一起达到30级并2人都完成@2淝水对岸朱序的BOSS任务@0，就可以来领取30级的奖励了。@!")
                end
				AddLog("乱世缘【成长】",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl4") then
				if(LuaQueryTask("T71") == 4) then
				LuaSetTask("T71",99)
				LuaAddJx("combat_exp",1200000,"T71")
				LuaGive("coin",20000,"T71")
				LuaGive("e_clothes011s",1,2,"T71")
				DelLog("71")
				UpdateMenu()
				end

	elseif(answer == "T71A") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	 if(GetCurrentDay()~=LuaQueryStrTask("71Taskday")) then	
	if(LuaQueryTask("T71")>0 and LuaQueryTask("T71")<99) then
		if(TeamCount()== 2) then
			if(TeamQueryStr("Tczteamer")==LuaQueryStr("name")) then
			local jingyan=20000+level^2*24+level*2500
			LuaAddJx("combat_exp",jingyan,"T71")
			LuaGive("coin",1000,"T71")
			LuaSetTask("71Taskday",GetCurrentDay())
			else
			LuaSay("田伍长：怎么？这么快就另觅新欢了吗？必须与接任务时一起的同伴组队才可以哦。")
			AddMenuItem("是否要放弃任务","","")
			AddMenuItem("继续任务","jixu","")
			AddMenuItem("放弃任务","fangqi","")
			end
		else
		LuaSay("田伍长：必须与接任务时一起的同伴组队才可以来尝试完成任务哦。")
		AddMenuItem("是否要放弃任务","","")
		AddMenuItem("继续任务","jixu","")
		AddMenuItem("放弃任务","fangqi","")
		end
	end
    else
    LuaSay("田伍长：今天你们已经领过奖励了，@2明天约上你的好友再来吧@0，可别忘了哟。")
    end


elseif(answer=="Tsnpc_5")then
	if(LuaQueryTask("Tsnpc_5")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的秘密信件，好像很急的样子")
		LuaSay("田伍长：如今天下看似太平实际是浓烟滚滚啊")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_5",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_5")==2)then
		LuaSay("田伍长：老夫已经收到信了，回去告诉你们大人吧")
	end
elseif(answer=="Tenpc_5")then
	if(LuaQueryTask("Tenpc_5")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主明鉴，说信件可能会被抢劫，拖我给你带话，加紧训练")
		LuaSay("田伍长：不用他说我也知道啊，唉，如今世道沧桑啊")
		LuaSetTask("Tenpc_5",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_5")==2)then
		LuaSay("田伍长：回去告诉你们大人，就说我知道了")
	end

elseif(answer=="STPT")then
	AddMenuItem("@7操作列表","","")
	AddMenuItem("@7申请到师父列表","SQ_SF","")
	AddMenuItem("@7申请到徒弟列表","SQ_TD","")
	AddMenuItem("@7我要找师父","zhao_SF","")
	AddMenuItem("@7我要找徒弟","zhao_TD","")
	AddMenuItem("@3拜师誓言","BSSY")
	AddMenuItem("@3师徒平台说明","STPTSM")
elseif(answer=="SQ_SF")then     ---成功后加入显示师父的列表
	if(LuaRegisterNumFull("master")==2)then 
	LuaAddRegister("master")
	elseif(LuaRegisterNumFull("master")==1)   then 
		LuaSay("提示：目前@3师父列表人数已经超过50个！上限为200个！@0需要收取@33000@0铜币手续费才能申请！")
		AddMenuItem("@7操作列表","","")
		AddMenuItem("@7申请到师父列表","SQ_SF_yes","")
	elseif(LuaRegisterNumFull("master")==0)   then 
	LuaSay("提示：人数已经达到上限，不能在申请啦！")
	end
elseif(answer=="SQ_SF_yes")then
	if(LuaItemCount("coin")>=3000) then
		LuaAddRegister("master")
		if(LuaIsInRegister("master")==1) then
		LuaGive("coin",-3000,"STPT")
		else
		LuaSay("提示：申请失败！")
		end
	else
	LuaSay("提示：你身上铜币不足@33000@0！")
	end
	

elseif(answer=="SQ_TD")then     ---成功后加入显示徒弟的列表 
	LuaAddRegister("prentice")
elseif(answer=="zhao_SF")then   ---显示师父
	LuaSendRegister("master")	
elseif(answer=="zhao_TD")then   ---显示徒弟 
    LuaSendRegister("prentice")
elseif(answer=="STPTSM")then
    LuaSay("提示：你只要申请列表成功，你的名字就会存到对应的师父或徒弟列表中！其他玩家就能对你进行收徒或拜师了！")
    LuaSay("提示：你选择相应的菜单，点击玩家名字后，你就能向该玩家拜师或者将该玩家收为徒弟了！前提是你要满足师徒条件！")
    LuaSay("提示：在师徒列表上的名字可以保存3天！3天后会被系统自动删除！如果你收徒或者拜师成功，你的名字也会被系统从列表删除！")
    LuaSay("提示：低级玩家申请徒弟列表完全免费！容量为200人！")
    LuaSay("提示：高级玩家申请师父列表前50名完全免费！超过50名的申请要收取一定的手续费！容量为200人！")
elseif(answer=="BSSY")then

	if(LuaQueryStr("master")~="")  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(1,1,0))  then
			SYXT(1,0,1)
		else
		    LuaSay("提示：你只要在公聊频道宣誓：“@3"..SYXT(1,1,0).."@0”！然后就能领奖")
		end
	else 
		LuaSay("提示：你没有师父！无法进行此任务！")
	end 

    
end
LuaSendMenu()
return 1
end 

   
shitu={}
shitu[1]={"一日为师终身为师"}
shitu[2]={"我会跟师父一直玩统一玩下去"}
shitu[3]={"一直跟师父走下去"}
shitu[4]={"永远不离开师父不离开统一"}
shitu[5]={"永远不背叛师父不背叛统一"}
shitu[6]={"我永远敬爱我的师父"}


hunyin={}
hunyin[1]={"我爱你直到永远"}
hunyin[2]={"我会跟你一直玩统一玩下去"}
hunyin[3]={"一直陪你走下去"}
hunyin[4]={"永远不离开你不离开统一"}
hunyin[5]={"永远不放弃你不放弃统一"}
hunyin[6]={"我爱你到海枯石烂"}
hunyin[7]={"我要和你永远在统一里面"}

bangpai={}
bangpai[1]={"我愿追随帮主直到永远"}
bangpai[2]={"我会跟帮主一直玩统一玩下去"}
bangpai[3]={"一直追随帮主走下去"}
bangpai[4]={"永远不离开帮派不离开统一"}
bangpai[5]={"永远不背叛帮派不背叛统一"}
bangpai[6]={"我爱我帮"}
bangpai[7]={"帮派是我家变强靠大家"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1表示调用师徒模块，2表示婚姻 ，3表示帮派
            yuju    1表示返回语句，如果传入0 2或其他数字，则无任何返回
            jiangli 1表示调用奖励函数，直接执行，无任何返回。如果传入0 2或其他数字，则无任何返回
	]]
	--[[   LuaQueryStr("lassie")配偶
			LuaQueryStr("master")师父
			LuaQueryRank() > 2，默认帮众=1，堂主=2，长老=3，帮主=4；如果为LuaQueryRank()==0，就是没加帮派
			
			注意：若更新此模块，要更新相关的npc，只要复制黏贴下即可
			目前用到此模块的npc：1、田伍长 tianwuzhan  ---师徒
			                     2、晋清公主jinqing   -婚姻
			                     3、晋帝jindi      ----帮派
			
	]]
	if(leixing==1)then ----------------------------------------------------------------------------师徒部分
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end
		
		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ 传入参数为1时返回出语句 
		    return shitu[num][1]
		end

		------------------师徒部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end 
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------婚姻部分
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return hunyin[num][1]
		end

		------------------婚姻部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------帮派部分
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return bangpai[num][1]
		end

		------------------帮派部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end   