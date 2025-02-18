NPCINFO = { 
serial="46" ,
base_name="huanxuan" ,
icon=2582,
NpcMove=2582,
name="桓玄" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="剿灭天下蛮夷" ,
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
		havetask =0 
		local level= LuaQuery("level") 
		AddTopSayMenuItem("@7任务列表","")
		--if(level>=10)then
			--AddTopSayMenuItem("@3收集军资","T80")
		--end
		if(LuaQueryTask("T268")==0 and LuaQueryTask("T72")==99) then
			AddTopSayMenuItem("帮派国家【剧情】","T268")
			havetask =1
		end
		if(LuaQueryTask("T72") ==0 and level>=16)  then
			AddTopSayMenuItem("队伍集结【教程】","T72")
			havetask =1
		end
--		if( LuaQueryTask("T352")==99 and LuaQueryTask("T353")==0)then
--			AddTopSayMenuItem("知己知彼【剧情】","T353")
--			havetask=1
--		end 
		if(level>=14 and level<18 and LuaQueryTask("T354")==0)then
	   	 	AddTopSayMenuItem("消灭乱兵【循环】","T354")
	   	 	havetask=1
		end
		if(LuaQueryTask("T358")==0 and level>=16) then
			AddTopSayMenuItem("桓玄之志【剧情】","T358") 
			havetask =1
			end
		if(LuaQueryTask("T357")==0 and LuaQueryTask("T358")==99) then
			AddTopSayMenuItem("天下之势【剧情】","T357") 
			havetask =1
			end
		if(LuaQueryTask("T356")==0 and LuaQueryTask("T357")==99) then
			AddTopSayMenuItem("蛮夷阴谋【剧情】","T356") 
			havetask =1
			end
--		if(level>=15 and LuaQueryTask("T350")==0) then      
--			AddTopSayMenuItem("小试牛刀【剧情】","T350")        
--			havetask=1                                           
--		end
		if(level>=17 and LuaQueryTask("T351")==0 and LuaQueryTask("T357")==99)then
			AddTopSayMenuItem("初战天师道【剧情】","T351")
			havetask=1
		end
		if(LuaQueryTask("T351")==99 and LuaQueryTask("T352")==0)then
			AddTopSayMenuItem("破敌之策【剧情】","T352")
			havetask=1
		end
		if(level>=18 and LuaQueryTask("T355")==0)then
			AddTopSayMenuItem("谢家女将【剧情】","T355")
			havetask=1
		end
--		if(LuaQueryTask("T359")==0 and level>=15)  then
--			AddTopSayMenuItem("精锐之士【剧情】","T359")
--			havetask =1
--			end
--		if(LuaQueryTask("T350")>0 and LuaQueryTask("T350")<99) then
--			AddTopSayMenuItem("@2小试牛刀【剧情】","T350")
--			havetask=4
--		end
		if(LuaQueryTask("T351")==1)then
			AddTopSayMenuItem("@2初战天师道【剧情】","T351")
			havetask=4
		end
--		if(LuaQueryTask("T353")==1)then
--			AddTopSayMenuItem("@2知己知彼【剧情】","T353")
--			havetask=4
--		end
		if(LuaQueryTask("T354")==1)then
	   	 	AddTopSayMenuItem("@2消灭乱兵【循环】","T354")
	   	 	havetask=4
		end
		if(LuaQueryTask("T268")==1 or LuaQueryTask("T268")==2) then
			AddTopSayMenuItem("@2帮派国家【剧情】","T268")
		end
		if((LuaQueryTask("Tsnpc_31")==1 or LuaQueryTask("Tsnpc_31")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_31")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_31")==1 or LuaQueryTask("Tenpc_31")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_31")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_15")==1 or LuaQueryTask("TfindNPC_15")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_15")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end

--		if(LuaQueryTask("T359")==1) then
--			AddTopSayMenuItem("@2精锐之士【剧情】@0","T359")
--			if(LuaQueryTask("T359A") == 99) then
--			havetask =2
--			end
--		end
		if(LuaQueryTask("T355")==1)  then                    
			AddTopSayMenuItem("@2谢家女将【剧情】","T355")
		end
		if(LuaQueryTask("T72") ==1)  then
			AddTopSayMenuItem("@2队伍集结【教程】","T72")
			havetask =2
		end
		if(LuaQueryTask("T326")==1)then
			AddTopSayMenuItem("@2天师道【剧情】","T326")
			haveyask=2
		end

		if(LuaQueryTask("T360")==1)then
	   	 	AddTopSayMenuItem("@2偷梁换柱【剧情】","T360")
	   	 	havetask=2
		end			

		if(LuaQueryTask("T356")==1) then
			AddTopSayMenuItem("@2蛮夷阴谋【剧情】","T356") 
			if(LuaItemCount("e_clothes006") >= 1) then
			havetask =2
			end
		end
		if(LuaQueryTask("T357")>0 and LuaQueryTask("T357")<99) then
			AddTopSayMenuItem("@2天下之势【剧情】","T357") 
			if(LuaItemCount("o_mission008") >= 1) then
			havetask =2
			end
		end
		if(LuaQueryTask("T358")>0 and LuaQueryTask("T358")<99) then
			AddTopSayMenuItem("@2桓玄之志【剧情】","T358") 
			if(LuaItemCount("o_mission002")==1 or LuaQueryTask("T358") ==3) then
			havetask =2
			end
		end
		if(LuaQueryTask("T322")==3) then
			AddTopSayMenuItem("@2叔侄之情【剧情】","T322") 
			havetask =2
		end
		if(LuaQueryTask("T352")==1 or LuaQueryTask("T352")==2)then
			AddTopSayMenuItem("@2破敌之策【剧情】","T352")
			if(LuaQueryTask("T352")==2) then
			havetask=2
			end
		end

		AddTopSayMenuItem("@3进入兽穴","Tdtjbs")

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

elseif(answer=="T268") then             -----帮派国家 
  if(LuaQueryTask("T268")==0)then
	LuaSay("桓玄：阁下是哪个帮派的？是哪个国家的？乱世之中，没有归属可是很难生存的哦。阁下的等级已经可以加入帮派了呢。@!")
	LuaSay("桓玄：去拜访一下@4皇宫@0的@3晋帝@0吧，他会告诉你更多@2关于帮派、国家的信息@0。@2进入建康城@0然后@2再一直向上走@0就可以到达了。@!")
	LuaSetTask("T268",1)
	AddLog("帮派国家【剧情】",268)
	UpdateTopSay("拜访皇宫的晋帝")
	UpdateMenu()
   elseif(LuaQueryTask("T268")==1) then
	LuaSay("桓玄：去拜访@4皇宫@0的@3晋帝@0吧，他会告诉你更多@2关于帮派、国家的信息@0。@2进入建康城@0然后@2再一直向上走@0就可以到达了。@!")
	UpdateTopSay("拜访皇宫的晋帝") 
   elseif(LuaQueryTask("T268")==2) then
	LuaSay("桓玄：很好，生存与乱世，只有建立自己的势力才是真正的称霸统一之道。@!")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T268jl")
   end
		elseif(answer=="T268jl")then
		       if(LuaQueryTask("T268")==2)then
				LuaSetTask("T268",99)
				LuaAddJx("combat_exp",54450,"T268")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("268")
				UpdateMenu()
				end

elseif(answer=="T72") then                            -----------队伍集结
		if(LuaQueryTask("T72") == 0) then
                  if(IsVisitor()=="true")then
                  SendCommand("call=@3游客@0需要@2注册@0以后才能组队,按@2确认键@0后再按@2#号键@0进行注册。|0|12|11")
                  else
				LuaSay("桓玄：组队可以获得很多的好处,不仅可以加快杀怪任务的速度,组队满员后还有@270%的经验加成@0哦。@!")
				LuaSay("桓玄：打BOSS,下副本更是离不开组队的。一个人的力量实在是有限,你去组建一个@22人队伍@0后再来找我吧。")
				LuaSay("桓玄：@2站在玩家身边@0时,点击@2确认键@0再按@27键组队@0就可以组建队伍了。@!")
				LuaSay("@7温馨提示@0：本任务为组队任务@!完成本任务将会有丰厚的奖励！")
				LuaSetTask("T72",1)
				UpdateTopSay("组了队再来找我")
				AddLog("队伍集结【教程】",72)
                UpdateMenu()
	          end

		elseif(LuaQueryTask("T72") == 1) then
			if(TeamCount()== 2) then
				LuaSay("桓玄：孺子可教也！这么快就学会组队了,年轻人聪明勇敢,现今可以去闯荡了。")
				LuaSay(""..TeamQueryStr("name")..":扛BOSS你去,抢装备我来,啊哈哈！@!")
				LuaSay("桓玄：还有，你的@3新手大礼包@0打开了吗？送给你的@3血池和魔池@0可是升级保命的@3稀世珍品@0哦，快@3使用@0试试吧。@!")
				if(LuaFreeBag()>=1)then	
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T72jl")
				else
	    		LuaSay("提示：请至少保留1格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    		end
			elseif(TeamCount()> 2  ) then
			    LuaSay("桓玄:孺子可教也！这么快就学会组队了,年轻人聪明勇敢,现今可以去闯荡了。")
				LuaSay("桓玄：队伍里的@2人员越多@0,杀怪得到的@2经验越高@0,尽量使队伍保持在5人的状态吧！@!")
				if(LuaFreeBag()>=1)then	
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T72jl")
				else
	    		LuaSay("提示：请至少保留1格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    		end
			else
				LuaSay("桓玄：你还没有队伍呢,站在一个玩家身边时,点击@2确认键@0再按@27键组队@0就可以了。")
				UpdateTopSay("点击确认键再按7键就可组队")
			end
         end 
   	            elseif(answer=="T72jl")then
		          if(LuaQueryTask("T72")==1) then
			  if(TeamCount()>=2)then
				LuaSetTask("T72",99)
				LuaAddJx("combat_exp",79200,"T72")
				LuaAddAchievementSchedule("Task_num",1)
				if(LuaQueryTask("TtaozhuangA") == 0) then
				LuaGive("e_pants165",1,2,"T72")
				LuaSetTask("TtaozhuangA",99)
				end
				DelLog("72")
				UpdateMenu()
                 end 
		 end


elseif(answer=="liaotian") then
     LuaSay("桓玄：想当年，我父桓温是何等英雄气概，哼！总有一天我要继承父亲遗志，让天下姓我桓氏。")
			LuaDelTask("T359")
		         DelLog("359")


elseif(answer=="T322") then              ------------------------叔侄之情 
		if(LuaQueryTask("T322")==3 ) then
		if(LuaItemCount("o_mission014")>=1)then
		    LuaSay("桓玄：叔父对我的关心，玄儿铭记在心！但是我可不能让父亲就这么白死。")
		    LuaSay("桓玄：我桓玄也非庸人，有生之年，蛮夷之患一日不除，我@3桓玄@0便一日甘为臣子。")
		    AddMenuItem("@7任务完成","")
	            AddMenuItem("领取奖励","T322jl")
		end 
		end
			elseif(answer=="T322jl")then	            
		       if(LuaQueryTask("T322")==3)then
				LuaSetTask("T322",99) 
				DelItem("o_mission014",1)
				LuaAddJx("combat_exp",40520,"T322") 
				if(LuaRandom(10)==1)then-- 13级的鞋子
					LuaGive("e_shoes003",1,2,"T322")
				else
					LuaGive("e_shoes003",1,1,"T322")
				end   
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("322") 
				UpdateMenu() 
				end

elseif(answer=="T358")then            ----------------------------桓玄之志【剧情】
	if(LuaQueryTask("T358")==0)then
	LuaSay("桓玄：听闻叔父@3桓冲@0在一个@2木箱@0中找到了父亲留下的遗嘱，为何不拿给我看，我还对他那么信任。")
	LuaSay("桓玄：这是一份@2迷药@0，劳烦阁下去@4建康东郊@0@3桓冲@0身边@2使用它@0，叔父便会把遗嘱乖乖交给你了，你拿来给我，我必有重谢！")
	UpdateTopSay("在建康东郊桓冲身边使用迷药")
	LuaSetTask("T358",1)
	LuaGive("o_mission006",1)
	AddLog("桓玄之志【剧情】",358)
	UpdateMenu()

	elseif(LuaQueryTask("T358")==1)then
	  if(LuaItemCount("o_mission002")<1) then
	  LuaSay("桓玄：你还没有使用迷药呢，去@4建康东郊@0@3桓冲@0身边@2使用迷药@0后来回复我。")
	  else
	  LuaSay("桓玄：原来如此，父亲希望我成就的不是霸业。哼！叔父为何要瞒我，还请阁下帮我去找叔父@3桓冲@0问问。")
	  LuaSetTask("T358",2)
	  AddLog("桓玄之志【剧情】",358)
	  UpdateMenu()
	   end

	 elseif(LuaQueryTask("T358")==2)then
	  LuaSay("桓玄：请阁下去找我叔父@3桓冲@0问问为何要欺骗与我!")

	elseif(LuaQueryTask("T358")==3)then
	LuaSay("桓玄：叔父真是不容易，侄儿还怀疑他，真是不该。我@3桓玄@0虽记仇，但也不会不顾民族存亡啊!")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T358jl")
	  end
	 
	 

	elseif(answer=="T358jl")then
	if(LuaQueryTask("T358")==3) then
	LuaSetTask("T358",99)
	DelItem("o_mission002",LuaItemCount("o_mission002"))
	DelLog("358")
	LuaAddJx("combat_exp",58380,"T358")--奖励
	LuaAddAchievementSchedule("Task_num",1)
	LuaGive("coin",600,"T358")
	UpdateMenu()
	end

elseif(answer=="T356") then                    -------------------- 蛮夷阴谋
		if(LuaQueryTask("T356") == 0 ) then
		        LuaSay("桓玄：据探子来报，近来有一群@2蛮夷@0混入天师道中，假扮@2天师匪兵@0作恶。哼哼，那我就来个其人之道还施彼身！")
			LuaSay("桓玄：请你帮我去@4建康城南@0的@3防具商人@0处购买一件@2无常袍@0，咱要派人打入天师道，瓦解之。@!")
			LuaSetTask("T356",1)
			UpdateTopSay("去防具商人处购买无常袍")
			AddLog("蛮夷阴谋【剧情】",356)
			UpdateMenu()
		elseif(LuaQueryTask("T356") == 1 ) then
		   if(LuaItemCount("e_clothes006") >= 1) then
			LuaSay("桓玄：好，有了这玩意儿，我就不信天师道还不被我剿灭。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T356jl")
			else
			LuaSay("桓玄：帮我去@4建康城南@0的@3防具商人@0处购买一件@2无常袍@0。")
			end
		end
	    	    elseif(answer=="T356jl")then
		         if(LuaQueryTask("T356")==1) then
				if(LuaItemCount("e_clothes006") >= 1) then
				 LuaSetTask("T356",99)
				 DelItem("e_clothes006",1)
				 LuaAddJx("combat_exp",58380,"T356")
				 LuaAddAchievementSchedule("Task_num",1)
				 LuaGive("coin",500,"T356")
				 DelLog("356")
				 UpdateMenu()
				 end
			end

elseif(answer=="T357") then                    -------------------- 天下之势
		if(LuaQueryTask("T357") == 0 ) then
		        LuaSay("桓玄：父亲的遗嘱中提到还有一份@2天下形势图@0藏于@4建康东郊@0的@3木箱@0中，而@2钥匙@0却被@4五斗山@0的@3青狼@0叼走了！")
			LuaSay("桓玄：请你去@2击杀青狼@0，取得@2神秘钥匙@0后，去开启@4建康东郊@0的@3木箱@0，将@2天下形势图@0拿来给我。")
			LuaSay("桓玄：你可以组队前去哦，还有额外的经验加成呢")
			LuaSetTask("T357",1)
			UpdateTopSay("从青狼身上找到钥匙开启东郊宝箱")
			AddLog("天下之势【剧情】",357)
			UpdateMenu()
		elseif(LuaQueryTask("T357") == 1 ) then
		   if(LuaItemCount("o_mission008") >= 1) then
			LuaSay("桓玄：北方蛮夷肆虐，却跨不过淝水天堑，必利用邪术信仰分化华夏之民以图之。")
			LuaSay("桓玄：原来父亲早就料到如今之局，如此说来，这天师道乃是蛮夷暗桩，怪不得也是血腥嗜杀。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T357jl")
			else
			LuaSay("桓玄：@2击杀青狼@0，取得@2神秘钥匙@0后，去开启@4建康东郊@0的@3木箱@0，将@2天下形势图@0拿来给我。")
			end
		end
	    	    elseif(answer=="T357jl")then
		         if(LuaQueryTask("T357")==1) then
				if(LuaItemCount("o_mission008") >= 1) then
				 LuaSetTask("T357",99)
				 DelItem("o_mission009",1)
				 DelItem("o_mission008",1)
				 LuaAddJx("combat_exp",61380,"T357")
				 LuaAddAchievementSchedule("Task_num",1)
				 DelLog("357")
				 UpdateMenu()
				 end
			end

-------------------------------------------------天师道

elseif(answer=="T326")then
	if(LuaQueryTask("T326")==1)then
		LuaSay("桓玄：这里战火纷飞，你来这里做什么？送死么，毛头小子")
		LuaSay(""..LuaQueryStr("name").."：小弟受@3桓冲@0老前辈所托，特来大哥宅下锻炼")
		LuaSay("桓玄：既然是叔叔所荐，暂且留下")
		AddMenuItem("@7任务完成","")
	  	AddMenuItem("领取奖励","T326jl")
	end

	elseif(answer=="T326jl")then
	if(LuaQueryTask("T326")==1)then
		LuaSetTask("T326",99)
		DelLog("326")
		LuaAddJx("combat_exp",47520,"T326")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
-----------------------------------------------小试牛刀

elseif(answer=="T350")then
	if(LuaQueryTask("T350")==0)then
	    LuaSay("桓玄：英雄真是真是俊秀不凡，可不知功夫怎样？去五斗山消灭20只@3青狼@0鉴证一下你的能力吧！")
	    LuaSay(""..LuaQueryStr("name").."：别小瞧我的能力，区区几只恶狼而已，你就在此等候佳音，在下去去就来！")
	    LuaSetTask("T350",1)
	    LuaSetTask("task_kill/mon_010/T350",1)
	    AddLog("小试牛刀【剧情】",350)
	    UpdateMenu()
	    UpdateTopSay("击杀20只青狼")
    elseif(LuaQueryTask("T350")==1) then
		a=LuaQueryTask("task_kill/mon_010/T350")-1
	if(LuaQueryTask("task_kill/mon_010/T350")>=21)then
            LuaSay("桓玄：小英雄果然身手不凡，真令在下刮目相看！")
            AddMenuItem("@7任务完成","")
	  		AddMenuItem("领取奖励","T350jl")
        else
            LuaSay("桓玄：你才消灭了@2"..a.."只@0青狼，赶紧去五斗山消灭20只@3青狼@0再来找我吧！")

        end
	end
	elseif(answer=="T350jl")then
	if(LuaQueryTask("T350")==1) then
        if(LuaQueryTask("task_kill/mon_010/T350")>=21)then
		LuaSetTask("T350",99)
		DelLog("350")
		LuaDelTask("task_kill/mon_010/T350")
		LuaAddJx("combat_exp",54450,"T350")--奖励 
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end
 ---------------------------------------------------   初战天师道
elseif(answer=="T351")then
	if(LuaQueryTask("T351")==0)then
		LuaSay("：天师道妖言惑众，聚众谋反，实在太嚣张，你去消灭掉@220个天师匪兵@0,灭掉他们的威风。")              
		LuaQueryTask(""..LuaQueryStr("name").."：好，在下这就去，这对我来说是小意思。")
		LuaQueryTask("桓玄：组队做该任务会有额外的经验奖励哦，统一，兄弟的天下。")
		LuaSetTask("T351",1)
		AddLog("初战天师道【剧情】",351)
		LuaSetTask("task_kill/mon_011/T351",1)
		UpdateMenu()
		UpdateTopSay("去消灭掉20个天师匪兵")
	elseif(LuaQueryTask("T351")==1)then
		b=LuaQueryTask("task_kill/mon_011/T351")-1
		if(LuaQueryTask("task_kill/mon_011/T351")>=21) then
      			LuaSay("桓玄：你这一仗打的精彩，让天师道的那些妖人损兵折将啊。")
			AddMenuItem("@7任务完成","")
	  		AddMenuItem("领取奖励","T351jl")
	  	else
	  		LuaSay("桓玄：你才消灭了@2"..b.."个@0天师匪兵，在@4五斗山@0消灭掉@220个天师匪兵@0再来找我！")
		end
	end
	elseif(answer=="T351jl")then
		if(LuaQueryTask("T351")==1)then
		if(LuaQueryTask("task_kill/mon_011/T351")>=21) then
		LuaSetTask("T351",99)
		DelLog("351")
		LuaDelTask("task_kill/mon_011/T351")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",72100,"T351")--奖励
		else
			LuaAddJx("combat_exp",62100,"T351")--奖励
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end

 -------------------------------------------   破敌之策
elseif(answer=="T352")  then
    if(LuaQueryTask("T352")==0)then
		LuaSay("桓玄：这样下去不是办法，你还是找我叔叔@3桓冲@0寻找破敌之策，他就在@4建康东郊@0。")
		LuaSetTask("T352",1)
		AddLog("破敌之策【剧情】",352)
		UpdateTopSay("去建康东郊找我叔叔桓冲")
		UpdateMenu()
	elseif(LuaQueryTask("T352")==1)then		
		LuaSay("桓玄：找我叔叔@3桓冲@0寻找破敌之策，他就在@4建康东郊@0")		
	elseif(LuaQueryTask("T352")==2) then
		LuaSay("桓玄：知己知彼，百战不败，好，哈哈，我知道该怎么做了")
		AddMenuItem("@7任务完成","")
	  	AddMenuItem("领取奖励","T352jl")
	end
	elseif(answer=="T352jl")then
		if(LuaQueryTask("T352")==2) then
		LuaSetTask("T352",99)
		DelLog("352")
		LuaAddJx("combat_exp",60310,"T352")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
	
------------------------------------------知己知彼
elseif(answer=="T353")then
	if(LuaQueryTask("T353")==0)then
		LuaQueryTask("桓玄：知己知彼，百战不殆。你需要混入天师道，消灭@3青狼@0收集@215张狼皮@0交给@3天师教徒@0即可混入。")
		LuaSetTask("T353",1)
		AddLog("知己知彼【剧情】",353)
		UpdateMenu()
		UpdateNPCMenu("tsjiaotu")
	elseif(LuaQueryTask("T353")==1)then
		LuaSay("桓玄：消灭@2青狼@0收集@215张狼皮@0交给@3天师教徒@0即可混入。")
	end
-------------------------------------偷梁换柱
elseif(answer=="T360") then
	if(LuaQueryTask("T360")==1)then
	LuaSay(LuaQueryStr("name").."：天师教徒给我毒药，我已以假换真，你先假装毙命，我好混入天师道的山寨中去")
        LuaShowNotify("最近传闻桓玄无故死亡，兵心大乱")
        DelItem("o_mission350",1)
        LuaSetTask("T360",2)
	AddLog("偷梁换柱【剧情】",360)
	UpdateTopSay("回复天师教徒")
        UpdateMenu()
        UpdateNPCMenu("tsjiaotu")
	end
	
---------------------------------------   消灭乱兵【循环】

elseif(answer=="T354") then
	if(LuaQueryTask("T354")==0)then
		LuaSay("桓玄：为了战斗的胜利，你去消灭@2天师匪兵20个@0，它们就在@4五斗山@0中")
		LuaSay("桓玄：组队能让你杀怪更快哦，还能交到更多的朋友哦。")
		LuaSay("桓玄：无兄弟，不统一。")
		LuaSetTask("T354",1)
		AddLog("消灭乱兵【循环】",354)
		LuaSetTask("task_kill/mon_011/T354",1)--天师匪兵
		UpdateMenu() 
	elseif(LuaQueryTask("T354")==1)then
		c=LuaQueryTask("task_kill/mon_011/T354")-1
		if(LuaQueryTask("task_kill/mon_011/T354")>=21) then
			LuaSay("桓玄：做的好，胜利的曙光就在前面！继续努力吧。")
			AddMenuItem("@7任务完成","")
	  		AddMenuItem("领取奖励","T354jl")
	  	else
		  	LuaSay("桓玄：你才消灭了@2"..c.."个@0天师匪兵，杀死了20个天师匪兵之后再来找我吧！")
		end
	end
	elseif(answer=="T354jl")then
		local level= LuaQuery("level") 
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T354")==1)then
		if(LuaQueryTask("task_kill/mon_011/T354")>=21) then
		LuaDelTask("T354")
		DelLog("354")
		local jingyan
		if(LuaQueryTask("T354_first")~=1)then
			jingyan=((21037+level^2*20)*1.4)
		else
			jingyan=(21037+level^2*20)
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
		LuaGive("coin",money,"T354")

		LuaAddJx("combat_exp",jingyan,"T354")--奖励	
		if(LuaQueryTask("T354_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T354_a",99)
		end
		LuaSetTask("T354_first",1)

		UpdateMenu()
		end
		end

elseif(answer=="T355") then              ------------------------谢家女将 
		if(LuaQueryTask("T355")==0) then
		LuaSay("桓玄：这谢家的人都是酸溜溜的书生，倒是这谢道韫一介女流，反而有一腔为将为帅的豪情。")
		LuaSay("桓玄：@3谢道韫@0之夫正深入天师道，她在@4山寨@0门口接应，你去帮帮她吧。@2向右@0就可以去@4山寨@0了。")
                LuaSetTask("T355",1)
		UpdateTopSay("去找山寨中的谢道韫谈话")
                AddLog("谢家女将【剧情】",355)
		UpdateMenu()
		elseif(LuaQueryTask("T355")==1) then
		LuaSay("桓玄：快去找@4山寨@0的@3谢道韫@0吧，@3向右@0就可以去@4山寨@0了。")
		end

elseif(answer=="T80")then--//////////////////////////begin收集军资任务

	--T80		--0-未接,1接了
	--80col	--计所需
	--80count	--计成功功数
	--80cancelnum	--取消次数
	--80earntype	--未领奖励
	daylimit=40--每日次数上限修改此处即可XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if(LuaQueryStrTask("T80day")~=GetCurrentDay())then
	LuaAddTask("80cancelnum",2)--每天赠3次取消机会
	LuaSetTask("T80day",GetCurrentDay())	
	LuaSetTask("T80daycount",0)--每日计数
	LuaSay("取消任务机会增加2")
	end
    shijiancha=GetCurrentTime()-LuaQueryTask("80time")
    if(shijiancha>60) then
	T80daycount=LuaQueryTask("T80daycount")
	if(LuaQueryTask("T80")==0)then		--未接任务了
	hour=GetCurrentHour()
	weekday=GetDayOfWeek()
		if(T80daycount<daylimit)then--(hour>=17 and hour<23) or ((weekday==0 or weekday==6) and (hour>=12 and hour<23)))then--开放时间
		LuaSay("军马未动粮草先行,采购军资是一件重大艰巨而光荣的任务,想接受这一艰巨的任务吗？")
		LuaSay("@7温馨提示@0：收集军资中除了常见的道具材料外，金枝甲鱼矿精古董则是通过采木钓鱼挖矿藏宝图获得。也可向其他玩家购买获得。")
		LuaSay("@7温馨提示@0：收集军资任务奖励会随着完成次数的增加而增多哦。一半物品奖励较低，随机到@3价值较高的物品，奖励也会非常丰厚@0@!")
		AddMenuItem("@7军资任务","")--title
		AddMenuItem("@7接受","T80what")
		AddMenuItem("我没空","no")
		else
		if(LuaQueryStr("gender")=="男性")then
		LuaSay("你今天已完成"..daylimit.."次任务了,休息一下吧,回程钓钓鱼,泡泡妞.劳逸结合,有益身心！")
		else
		LuaSay("你今天已完成"..daylimit.."次任务了,休息一下吧,回程钓钓鱼,泡泡帅哥.劳逸结合,有益身心！")
		end
		AddMenuItem("@7军资任务","")--title
		end
	elseif(LuaQueryTask("T80")==1)then		--已接未完成
		coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		LuaSay("第@2"..(LuaQueryTask("80count")+1).."@0个任务:"..coldata[4]..",帮我找1个@2"..coldata[3])
		AddMenuItem("@7寻找一个@2"..coldata[3],"")--title
		AddMenuItem("我找到了","T80ok")
		AddMenuItem("哦还没呢,我马上找","notfind")
		AddMenuItem("太难找了,我想取消任务","T80cancel")
	else					--已完成未领奖励关闭菜单的
		ret=LuaQueryTask("T80")
		LuaSay("你已完成第@2"..(LuaQueryTask("80count")+1).."@0个任务")
		AddMenuItem("@7选择奖励","")--title
		if(ret~=100)then
		AddMenuItem("@P@3铜钱","T80re1")
		end
		if(ret~=101)then
		AddMenuItem("@(@5经验","T80re2")
		end
		if(ret~=102)then
		AddMenuItem("@*@4猜猜这是啥","T80re3")
		end
	end
		AddMenuItem("@5任务档案","T80about")
    else
    LuaSay("桓玄：您今天已经完成了100次，@2建议您多体验一下其他的玩法吧@0。继续该任务需要间隔1分钟才能继续接取。请耐心等待。@!")
    end
	elseif(answer=="T80what")then
		coldata={SelfDefGetColTask(LuaQuery("level"),1)}--容错处理，1防止系统初始检测用0出错
		LuaSetTask("80col",coldata[1])
		LuaSetTask("T80",1)
		LuaSay("第@2"..(LuaQueryTask("80count")+1).."@0个任务:"..coldata[4]..",你去帮我收集1个@2"..coldata[3])
	elseif(answer=="T80ok")then
		coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		if(LuaItemStatusNormalCount(coldata[2])>0)then
			LuaSay("不错不错,干的好")
			LuaAddTask("T80daycount",1)
			DelItem(coldata[2],1)
			LuaSay("你已完成第@2"..(LuaQueryTask("80count")+1).."@0个任务,想要什么奖励")
			ret=LuaRandom(3)+100--随机可选奖励非(100-钱,101-经验,102-其它)
			LuaSetTask("T80",ret)	--记忆奖励防未领重新随机
			AddMenuItem("@7选择奖励","")
			if(ret~=100)then
			AddMenuItem("@3铜钱","T80re1")
			end
			if(ret~=101)then
			AddMenuItem("@5经验","T80re2")
			end
			if(ret~=102)then
			AddMenuItem("@4猜猜这是啥","T80re3")
			end
		else
		if(LuaItemStatusNormalCount(coldata[2])~=LuaItemCount(coldata[2]))then
		LuaSay("本官可有原则,摆摊的不收,摆了摊的东西自己停售后才能来交任务")
		else
		LuaSay("又想来忽悠我了,你还没有找到1个@7"..coldata[3].."@0")
		end
		end
	
	elseif(answer=="T80re1")then
			if(LuaQueryTask("T80")>0) then
			am=SelfDefGetColEarn(1)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("任务完成数量达到上限,每增加一级扩展上限100")
				end
			LuaSetTask("T80",0)
			LuaGive("coin",am,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re2")then
		    if(LuaQueryTask("T80")>0) then
			bm=SelfDefGetColEarn(2)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("任务完成数量达到上限,每增加一级扩展上限100")
				end
			LuaSetTask("T80",0)
			LuaAddJx("combat_exp",bm,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re3")then--猜猜
            if(LuaQueryTask("T80")>0) then
			ro=LuaRandom(100)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("任务完成数量达到上限,每增加一级扩展上限100")
				end
				LuaSetTask("T80",0)
				if(floor((LuaQueryTask("80count")+1)/840)==(LuaQueryTask("80count")+1)/840 and ro>40)then
				om=SelfDefGetColEarn(3)
				LuaGive(om,1,3,"T80")
				LuaNotice("@7"..LuaQueryStr("name").."在收集军资任务中得到@3黄金装备@7一件")
				elseif(ro<2)then
				om=SelfDefGetColEarn(4)
				LuaGive(om,1,"T80")
				elseif(ro>50)then
				am=SelfDefGetColEarn(1)
				LuaGive("coin",am,"T80")
				else
				bm=SelfDefGetColEarn(2)
				LuaAddJx("combat_exp",bm,"T80")
				end
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end

	elseif(answer=="notfind")then
		LuaSay("不好找的东西可以试着购买其它玩家的,实在找不到就不要勉强啊,要是什么东西都那么好找,岂不是人人都当将军了.")
	elseif(answer=="T80cancel")then
		if(LuaQueryTask("80cancelnum")==0)then
		LuaSay("你现在没有取消的机会,确定取消任务已做任务的次数将会@2重置为0@0,你确定取消吗？")
		else
		LuaSay("你现在还有@2"..LuaQueryTask("80cancelnum").."@0次取消任务的机会,你确定取消任务吗？")
		end
		AddMenuItem("@7取消任务?","")
		AddMenuItem("@1取消","T80yescncl")
		AddMenuItem("@7再想想","no")
		elseif(answer=="T80yescncl")then
			if(LuaQueryTask("80cancelnum")==0)then
				LuaSetTask("80count",0)
				LuaSetTask("T80",0)
				LuaSay("你现在收集军资任务成功次数为@10")
			else
				LuaAddTask("80cancelnum",-1)
				LuaSetTask("T80",0)
			end
			AddMenuItem("@7要继续考验吗？","")
			AddMenuItem("@7接受","T80what")
			AddMenuItem("我没空","no")
	elseif(answer=="T80about")then
		flag=0
		if(LuaQueryTask("80col")==0)then
		flag=1
		else
			coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		end
		AddMenuItem("@7任务档案","")
		AddMenuItem("@3已完成次数:@7"..LuaQueryTask("80count").."","no")
		if(LuaQueryTask("T80")~=0 or flag==0)then
		AddMenuItem("@3当前任务:@5寻找一个@2"..coldata[3].."","no")
		else
		AddMenuItem("@3当前任务 : @7无","no")
		end
		AddMenuItem("@3可取消次数:@1"..LuaQueryTask("80cancelnum").."","no")
		AddMenuItem("@5任务说明","T80intro")
	elseif(answer=="T80intro")then
		LuaSay("军需任务:按本官的指示寻找并提交指定物品,之后即可随机挑选铜钱、经验或其它奖励。")
		LuaSay("完成会累加次数,奖励多少与完成次数相关,完成次数越多,奖励越高,累加次数达到上限不再增加。")
		LuaSay("@1没有取消却非要取消的话,累积完成次数会清零.")
		LuaSay("每天会赠2次取消任务的机会,可用来取消难度大的任务而不重置任务次数")
		LuaSay("帮会任务触发收集军资后完成本任务会同步增加帮会任务进度")
		LuaSay("累计完成次数达到一定数量或许会有惊喜噢.呵呵我只是说或许噢,如果我说一定有惊喜,那你做这个任务太功利了吧")

elseif(answer=="T359") then                    ------------精锐之士
	if(LuaQueryTask("T359") == 0) then
         LuaSay("桓玄：纵横天下，需要的便是精锐之士，英雄何不去@4建康城@0的@3活动使者@0处挑战一下@3排行榜@0，检验一下自己的实力。 ")
         LuaSay("桓玄：@3挑战任意一个排行榜@0，成功领取挑战排行榜奖励后，都可以到我这里来领取本任务奖励。")
	 LuaSay("桓玄：从建康城南@2向上@0走，就可以到达@4建康城@0了，@3活动使者@0就在@4建康城的中央@0。")
	 LuaSetTask("T359",1)
         AddLog("精锐之士【剧情】",359)
         UpdateMenu()
         UpdateTopSay("去建康城活动使者处任意挑战一次排行榜")
	elseif(LuaQueryTask("T359") == 1) then 
			if(LuaQueryTask("T359A") == 99) then
		        LuaSay("桓玄：很好，看来你知道自己的实力了，统一大业就在你的面前，继续前进吧。")
			AddMenuItem("@7任务完成","")
         		AddMenuItem("领取奖励","T359jl")
			else
		        LuaSay("桓玄：你还没有去挑战排行榜呢，去@4建康城@0的@3活动使者@0处挑战@3任意一个排行榜@0。成功后来告诉我吧。")
		        LuaSay("桓玄：从建康城南@2向上@0走，就可以到达@4建康城@0了，@3活动使者@0就在@4建康城的中央@0。")
			end
		end
		  elseif(answer=="T359jl") then
                if(LuaQueryTask("T359") == 1 and LuaQueryTask("T359A") == 99) then
		        LuaSetTask("T359",99)
		        DelLog("359")
		        LuaAddJx("combat_exp",110000,"T359")
			LuaAddAchievementSchedule("Task_num",1)
		        LuaGive("coin",1000,"T359")
		        UpdateMenu()
		        end



--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_15")==1)then
					LuaSay("桓玄：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_15",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_15")==2)then
					LuaSay("桓玄：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_15",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("桓玄：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("桓玄：你已经将一半的江山画卷送到了我的手上，快去找谢琰领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end


elseif(answer=="Tsnpc_31")then
	if(LuaQueryTask("Tsnpc_31")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("桓玄：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_31",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_31")==2)then
		LuaSay("桓玄：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_31")then
	if(LuaQueryTask("Tenpc_31")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("桓玄：这都是大人的功劳啊")
		LuaSetTask("Tenpc_31",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_31")==2)then
		LuaSay("桓玄：话已经带到了，快回去领取奖励吧")
	end


elseif(answer=="Tdtjbs")then
	if(LuaQuery("zcount")>=20)then
		if(LuaQuery("rightanswer") <6)then
			LuaSay("提示：你在刚才的答题中，答对了@3"..LuaQuery("rightanswer").."个题目，小于6道题，你不能获得进入boss地图的资格")
			LuaSay("由于你没有通过本次答题，现认定你为@2智障人士@0，惩罚@22小时@0不能再次接受此任务")
			LuaSetTask("Tdtjbs_dc",1)  --设置为1  没通过
			LuaSetTask("Tdtjbs_time",GetCurrentTime())
		else
			LuaSay("提示：你在刚才的答题中，答对了@3"..LuaQuery("rightanswer").."个题目.")
			LuaSay("恭喜你，获得进入boss资格，马上启动传送阵")
			AddMenuItem("@7是否传送到boss地图","")
			AddMenuItem("@3传送","Tdtjbs_cs")
			AddMenuItem("@3放弃","Tdtjbs_bcs")
		end
		LuaDel("rightanswer")
		LuaDelTask("Twd_lb")
		LuaDelTask("Tdtjbs_ddcs")
		LuaSet("zcount",0) 
	elseif(LuaQuery("zcount")>0)then
		LuaSay("由于你的答题被打断，现在选择是否继续答题。")
		AddMenuItem("@7是否继续答题","")
		AddMenuItem("@3继续","Tdtjbs_jx")
		AddMenuItem("@3放弃","Tdtjbs_fq")
	elseif(LuaQuery("zcount")==0)then
		if(LuaQueryTask("Tdtjbs_dc")==1) then  --上次答题为没通过
			local sjc=GetCurrentTime()-LuaQueryTask("Tdtjbs_time")
			if(sjc>=7200) then
				LuaSetTask("Tdtjbs_dc",0)  --设置为0  
				LuaDelTask("Tdtjbs_time")
			else
				local h=floor((7200-sjc)/3600)
				local f=floor((7200-sjc-h*3600)/60)
				local s=floor((7200-sjc)%60)
				if(h>0) then
					if(f>0) then
						if(s>0) then
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..h.."小时"..f.."分钟"..s.."秒@0以后再来吧")
						else
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..h.."小时零"..f.."分钟@0以后再来吧")
						end
					else  --分钟为0
						if(s>0) then
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..h.."小时零"..s.."秒@0以后再来吧")
						else
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..h.."小时整@0以后再来吧")
						end
					end
				else --h为0
					if(f>0) then
						if(s>0) then
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..f.."分钟"..s.."秒@0以后再来吧")
						else
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等@2"..f.."分钟@0以后再来吧")
						end
					else  --分钟为0
						if(s>0) then
							LuaSay("由于你没有通过上次答题，@22小时@0惩罚时间还没过，再等"..s.."秒@0以后再来吧")
						end
					end
				end
			end
		end
		if(LuaQueryTask("Tdtjbs_dc")~=1) then  --上次为通过  或者时间惩罚已经完结
			LuaSay("乱世当前，想要出人头地，不仅要有出众的武功，还要有过人的脑力。只要你@2答对20题中的6题@0，就有机会到杀兽穴中击杀boss@2天师守护兽@0，没过关会有处罚的哦")
			LuaSay("注意：答题过程中若被打断@23次@0，将视为自动@2放弃回答后面题目。若成功进入boss地图后boss没有刷新则说明刚被人打过，请耐性等待...@0")
			AddMenuItem("@7是否答题","")
			AddMenuItem("@3开始答题","Tdtjbs_y")
			AddMenuItem("@3放弃答题","Tdtjbs_n")
		end
	end
elseif(answer=="Tdtjbs_y")then
	local a=LuaRandom(5)
	LuaSetTask("Twd_lb",a)
	LuaSet("zcount",0) 
	if(LuaQueryTask("Twd_lb")==0) then 
		TaskProcess("A")
	elseif(LuaQueryTask("Twd_lb")==1) then
		TaskProcess("B")
	elseif(LuaQueryTask("Twd_lb")==2) then
		TaskProcess("C")
	elseif(LuaQueryTask("Twd_lb")==3) then
		TaskProcess("D")
	elseif(LuaQueryTask("Twd_lb")==4) then
		TaskProcess("G")
	end
elseif(answer=="Tdtjbs_jx") then
	if(LuaQueryTask("Twd_lb")==0) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("A")
		else
			LuaSay("由于你本次答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==1) then 
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("B")
		else
			LuaSay("由于你本次答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==2) then 
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("C")
		else
			LuaSay("由于你本次答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==3) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("D")
		else
			LuaSay("由于你本次答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==4) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("G")
		else
			LuaSay("由于你本次答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	end
elseif(answer=="Tdtjbs_fq") then
	LuaSet("zcount",20)
	DoTalk("Tdtjbs")
elseif(answer=="Tdtjbs_cs") then
	ChangeMap("lu_15ywfb")

end 
LuaSendMenu()
return 1
end 

------------自定义收集任务检索----------------
function SelfDefGetColTask(level,collection)
--level==0时无任务，则生成，非0时只查询数据，不重生成
array={}
--array[0]={ID,收集品ID,收集名NAME,TALK,奖励参数}--每点系数定价20铜/
array[1]={1,"o_material_11","1级毛","毛是基本的军需材料",1}--材料
array[2]={2,"o_material_20","1级皮","皮是基本的军需材料",1}
array[3]={3,"o_material_29","1级肉","肉是基本的军需材料",1}
array[4]={4,"o_material_38","1级木","木是基本的军需材料",1}
array[5]={5,"o_material_47","1级矿","矿是基本的军需材料",1}
array[6]={6,"o_material_56","1级晶","晶是基本的军需材料",1}
array[7]={7,"o_drug_hp1","金创散(不绑定的)","药品是打怪疗伤，居家旅游之必备",1}
array[8]={8,"o_drug_mp1","回春露(不绑定的)","药品是打怪疗伤，居家旅游之必备",1}
array[9]={9,"o_drug_mhp1","小还丹(不绑定的)","药品是打怪疗伤，居家旅游之必备",1}
--以上20级前普通品
array[10]={10,"o_material_12","2级毛","毛是基本的军需材料",3}
array[11]={11,"o_material_21","2级皮","皮是基本的军需材料",3}
array[12]={12,"o_material_30","2级肉","肉是基本的军需材料",3}
array[13]={13,"o_material_39","2级木","木是基本的军需材料",3}
array[14]={14,"o_material_48","2级矿","矿是基本的军需材料",3}
array[15]={15,"o_material_57","2级晶","晶是基本的军需材料",3}
array[16]={16,"o_mix_book021","2级合成书","大量低级材料需要升级",1}--出售品
array[17]={17,"o_mix_book022","3级合成书","大量低级材料需要升级",1}
array[18]={18,"o_mix_book023","4级合成书","大量低级材料需要升级",2}
array[19]={19,"o_mix_book024","5级合成书","大量低级材料需要升级",2}
--以上30级前普通品
array[20]={20,"o_drug_hp3","玉清散(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[21]={21,"o_drug_mp3","天香露(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[22]={22,"o_drug_hp2","三叶散","小药品不能满足阵前的需要,我需要收集更好的药",3}
array[23]={23,"o_drug_hp3","玉清散(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[24]={24,"o_drug_mp2","花灵露","小药品不能满足阵前的需要,我需要收集更好的药",3}
array[25]={25,"o_drug_mp3","天香露(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[26]={26,"o_food01","宠物食品[粗]","我的军犬饿了",5}--出售品
array[27]={27,"o_material_13","3级毛","毛是基本的军需材料",8}--材料
array[28]={28,"o_material_22","3级皮","皮是基本的军需材料",8}
array[29]={29,"o_material_31","3级肉","肉是基本的军需材料",8}
array[30]={30,"o_material_40","3级木","木是基本的军需材料",8}
array[31]={31,"o_material_49","3级矿","矿是基本的军需材料",8}
array[32]={32,"o_material_58","3级晶","晶是基本的军需材料",8}
--以上一般副产品
array[33]={33,"o_mission153","金枝","这可是价值连城的宝贝",15}
array[34]={34,"o_mission145","矿精","矿精乃是百年难得一遇的矿中精华",15}
array[35]={35,"o_mission018","破旧古董","我也不知道这东西的用处，不过它很值钱",15}
array[36]={36,"o_mission168","甲鱼","营里自己吃点一般的鱼就算了,给上面将军的食材可不能含糊",15}
array[37]={37,"o_food02","宠物食品[优]","我的军犬不知被哪个小瘪三打伤了,需要调养",15}--宠物任务才能得的任务品
--以上稀有品
array[38]={38,"o_food03","宠物食品[精]","哦",60}--增值品
array[39]={39,"o_state016y","九转丹(不绑定的)","哦",80}
array[40]={40,"o_state053y","阎王之血(+500)(不绑定的)","哦",150}
array[41]={41,"o_state056y","巫师水晶(+500)(不绑定的)","哦",150}
array[42]={42,"o_state001y","双攻符(不绑定的)","哦",150}
array[43]={43,"o_state012y","双防符(不绑定的)","哦",150}
array[44]={44,"o_state065y","血池1(不绑定的)","哦",220}
array[45]={45,"o_state068y","魔池1(不绑定的)","哦",350}
array[46]={46,"o_state008y","初级经验符(不绑定的)","哦",350}
array[47]={47,"o_state017y","力量符+50(不绑定的)","哦",150}
array[48]={48,"o_state022y","智慧符+50(不绑定的)","哦",150}
array[49]={49,"o_state027y","敏捷符+50(不绑定的)","哦",150}
--array[65]={65,"o_food03","宠物食品","哦",50}
--以上增值品

count=46	--开放种类!!!新加array记得此处加量!!!
	if(level~=0)then--0则不重新生成
		if(level<20)then--按级别产生任务扩展后使用
		collection=LuaRandom(9)+1
		elseif(level<30)then
		collection=LuaRandom(19)+1
		elseif(level<40)then
		collection=LuaRandom(32)+1
		elseif(level<50)then
			if(LuaQueryTask("80count")/20==floor(LuaQueryTask("80count")/20))then
			collection=LuaRandom(count)+1
			else
			collection=LuaRandom(37)+1
			end
		else		
		collection=LuaRandom(count)+1
		end
	end
	colid=array[collection][2]
	str1=array[collection][3]
	str2=array[collection][4]
	re=array[collection][5]
	return collection,colid,str1,str2,re
end
--------------------自定义计算奖励------------------
function SelfDefGetColEarn(rt)
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}--查奖励参数
if(rt==1)then--铜币量
  --earn=150+LuaRandom(100)+2*cdata[5]+LuaQueryTask("80count")--铜钱上限控制old
  tbearn=500+LuaQueryTask("80count")*5
  if(tbearn>3000) then
  tbearn=3000
  end
  earn=tbearn+40*cdata[5]
--	earn=300+LuaRandom(200)+40*cdata[5]+floor(LuaQueryTask("80count")/5)--重设系数为主次数为次，系数以原物品价值和难度定--提升20*》25* 20100125dmz
  --if(earn>6100) then
  --earn=6100
  --end
elseif(rt==2)then--经验量
  exp1=30000+LuaQueryTask("80count")*100	--经验上限控制
  if(exp1>60000) then
  exp1=60000
  end
  earn=LuaQuery("level")*30*cdata[5]+exp1
else
item={}
item[1]={"e_book001","e_knife001","e_shield001","e_shoes001","e_necklace001","e_earring001","e_pants001","e_head001"}
item[2]={"e_book002","e_knife002","e_shield002","e_shoes002","e_necklace002","e_earring002","e_pants002","e_head002"}
item[3]={"e_book003","e_knife003","e_shield003","e_shoes003","e_necklace003","e_earring003","e_pants003","e_head003"}
item[4]={"o_state016j","o_state053j","o_state056j","o_state065j","o_state068j"}
item[5]={"o_state022j","o_state027j","o_state077j","o_state005j","o_state034j"}
item[6]={"o_state071j","o_state074j","o_state008j","o_state012j","o_state017j"}
	if(rt==3)then--装备
	r=LuaRandom(3)+1
	earn=item[r][LuaRandom(8)+1]
	else--道具
	r=LuaRandom(3)+4
	earn=item[r][LuaRandom(5)+1]
	end
end

return earn--钱,经验数或物品ID
end
-------------------SelfDefineFunction并发任务加点------
function SelfDefAddScore()
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
re=cdata[5]
----------
LuaSendMenu()
return
end
-----------------周数计算,同一周返回相同值,周一作为每周的第一天
function SelfDefGetCurWeek()
return floor((floor((GetCurrentTime()+3600*8)/86400)+3)/7)
end
