NPCINFO = { 
serial="44" ,
base_name="wanggong",
icon=2531,
NpcMove=2531,
name="王恭" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="杀人抢劫，天大的好处啊" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
		havetask =0 
		local level= LuaQuery("level")
		local T330 = LuaQueryTask("T330")
		local T331 = LuaQueryTask("T331")
		local T332 = LuaQueryTask("T332")
		local T333 = LuaQueryTask("T333")
		local T334 = LuaQueryTask("T334")
		local T335 = LuaQueryTask("T335")
		AddTopSayMenuItem("@7任务列表","")      
		if(level<=20)then
		AddTopSayMenuItem("@3加血加蓝@0","Tzhiliao02")
		end
		if (LuaQueryStr("class")~="zhan" and level<30)then
			AddTopSayMenuItem("@7每日点兵【每日】","T70")	
		end
--		if(T331==0 and level>=13)  then
--			AddTopSayMenuItem("东郊狩猎【剧情】","T331")
--			havetask =1
--			end
		if(T332==0 and T333==99)  then
			AddTopSayMenuItem("偷上战场【剧情】","T332")
			havetask =1
			end
		if(T333==0 and level >=14)  then
			AddTopSayMenuItem("东征监军【剧情】","T333")
			havetask =1
		end

		if(T334 <99 and level >=14) then
			AddTopSayMenuItem("王恭的教诲【教程】","T334")
			havetask =1
		end
		if(LuaQueryTask("T336")==0 and level >=12)  then
			AddTopSayMenuItem("赌命之徒【剧情】","T336")
			havetask =1
			end
		if(T332==1)  then
			AddTopSayMenuItem("@2偷上战场【剧情】","T332")
			havetask =4
			end
--		if(T331==1)  then
---			AddTopSayMenuItem("@2东郊狩猎【剧情】","T331")
--			havetask =4
--			end
		if((LuaQueryTask("Tsnpc_30")==1 or LuaQueryTask("Tsnpc_30")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_30")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_30")==1 or LuaQueryTask("Tenpc_30")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_30")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_14")==1 or LuaQueryTask("TfindNPC_14")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_14")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end

			
		if(LuaQueryTask("pettask") ==11) then
			AddTopSayMenuItem("@2送货[每日]","pettask")
			havetask=2
			end
		---------------------------------------------------------
		if(T333==1)  then
			AddTopSayMenuItem("@2东征监军【剧情】","T333")
			if(LuaQueryTask("T333A")==99) then
			havetask =2
			end
		end

--		if(LuaQueryTask("pettask") ==11) then
--			AddTopSayMenuItem("@2送货[每日]","pettask")
--			havetask=2
--			end

		
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
	if(LuaItemCount("o_fatescroll")>=1)then
	LuaSay(""..LuaQueryStr("gender")..":你知道天机卷轴的秘密吗？")
	LuaSay("王恭:哈哈，当然了.")
	LuaSay(""..LuaQueryStr("gender")..":快告诉我")
	LuaSay("王恭:打死我也不说")--天机
	LuaSay(""..LuaQueryStr("gender")..":嘿,你这家伙嘴还挺硬的...")
	else
	LuaSay("王恭：话说我王恭一天不打仗，手就痒痒。")
	end

elseif(answer=="pettask")then--------------送货
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==11) then
	LuaSay("王恭:啧啧，真想烤了吃啊！")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()


elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
	    local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
        local jinqian=(level^2 + 50)
	  if(LuaItemCount("coin")>=jinqian) then
             local  maxhp=LuaQuery("max_hp")
	     local  maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
              LuaGive("coin",-jinqian,"Tzhiliao02")
              LuaSay("王恭：你刚花了@2"..jinqian.."@0铜钱进行治疗，又恢复了活力。")
	  else
	      LuaSay("王恭：你的铜钱不足，需要@2"..jinqian.."@0铜钱方可治疗。")
	  end
	 else
	LuaSay("王恭：你正处于满血满魔状态，不需要治疗。")
   end

--[[elseif(answer=="T334") then                         ------------------王恭的教诲
		if(LuaQueryTask("T334") == 0 ) then
           LuaSay("王恭：乱世生存难，想要过的潇洒更是难上加难。看你已在九州闯荡这么久，一定知道拳头才是硬道理。")
           LuaSay("王恭：想要避免@3鞭尸以及掠夺@0这样惨无人道的蹂躏吗？想要知道怎么@3杀人@0吗？想要跟着大爷抢钱抢粮抢娘们吗？")
           LuaSay("王恭：那可就得提高你的@3PK技术@0了，在玩家附近点击@3#号键@0，不同的玩家身上会出现@31~9的数字符号@0。")
           LuaSay("王恭：而自己身上是@30号键@0，按下对应的数字键，就可以开始攻击该数字键对应的人，按下@30键@0为取消。")
           LuaSay("王恭：给你说了这么多，我现在有几个问题想要考考你。")
           LuaSay("王恭：怎么@3主动攻击@0其他玩家？")
           AddMenuItem("@7答案选项","")
           AddMenuItem("A.身边点击@3#键@0，选对应的数字","N11_ANSWER")
           AddMenuItem("B.身边点击@35键@0","NO_11")
           AddMenuItem("C.身边点击@3确认键@0","NO_11")
           AddMenuItem("D.身边点击@3#键@0，再按@30键@0","NO_11")
	  end

       if(LuaQueryTask("T334") == 1 ) then

	  LuaSay("王恭：下面关于@3掠夺@0错误的是：")
	  AddMenuItem("@7答案选项","")
	  AddMenuItem("A.有机会掠夺到装备","NO_21","")
	  AddMenuItem("B.可以对尸体无休止的掠夺","N21_ANSWER","")
	  AddMenuItem("C.有机会掠夺到金钱","NO_21","")
	  AddMenuItem("D.掠夺会消耗魔法","NO_21","")
		 end

        if(LuaQueryTask("T334") == 2 ) then

        LuaSay("王恭：下面关于@3鞭尸@0错误的是：")
          AddMenuItem("@7答案选项","")
	  AddMenuItem("A.可以多次进行鞭尸","NO_31","")
	  AddMenuItem("B.鞭尸次数越多，救援难度越大","NO_31","")
	  AddMenuItem("C.鞭尸会消耗魔法","NO_31","")
	  AddMenuItem("D.不能对高等级玩家进行鞭尸","N31_ANSWER","")
		 end

        if(LuaQueryTask("T334") == 3 ) then

	  LuaSay("王恭：下面关于@3救援@0错误的是：")
	  AddMenuItem("@7答案选项","")
          AddMenuItem("A.救援会消耗魔法","NO_41","")
	  AddMenuItem("B.救援被鞭尸过的玩家难度更大","NO_41","")
	  AddMenuItem("C.只有队友才能救援","N41_ANSWER","")
	  AddMenuItem("D.任何玩家都可进行救援","NO_41","")

		 end

	 elseif(answer=="NO_11") then                                              -----------答错第一题
           LuaSetTask("T334",0)
          LuaSay("王恭：不会吧，这么简单的问题也答错？重新再答。")

	 elseif(answer=="N11_ANSWER") then                                         ------------答对第一题
           if(LuaQueryTask("T334")<1) then
		   LuaSetTask("T334",1)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("王恭：这么简单的问题你答对了也没什么稀奇的，我再问你。")
           DoTalk("T334")
           end
		elseif(answer=="NO_21") then                                              -----------答错第二题
             LuaSetTask("T334",1)
	       LuaSay("王恭：你答错了，重新再答。")

		elseif(answer=="N21_ANSWER") then                                         -----------答对第二题
           if(LuaQueryTask("T334")<2) then
		   LuaSetTask("T334",2)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("王恭：看来你还是有两下子嘛，我再问你。")
           DoTalk("T334")
           end

		elseif(answer=="NO_31") then                                             -----------答错第三题
             LuaSetTask("T334",2)
	        LuaSay("王恭：这个问题确实有一点难度啊，给你机会重新选择。")

		elseif(answer=="N31_ANSWER") then                                        ----------答对第三题
           if(LuaQueryTask("T334")<3) then
		        LuaSetTask("T334",3)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("王恭：你真是聪明啊，这个也知道啊。")
           DoTalk("T334")
           end

		elseif(answer=="NO_41") then                                                 ------答错第四题
                 LuaSetTask("T334",3)
                 LuaSay("王恭：这个问题确实很有难度啊，给你机会重新选择。")

		elseif(answer=="N41_ANSWER") then                                              ------答对第四题
               if(LuaQueryTask("T334")<99) then
			     LuaSetTask("T334",99)
	           LuaSay("王恭：你真是太聪明了，居然全部都知道。")
	           LuaGive("coin",600,"T334")
                 LuaAddJx("combat_exp",52000,"T334")
                 LuaGive("e_clothes005",1,1,"T334")            --13级的衣服
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
              end]]





elseif(answer=="T334") then            
        if(LuaQueryTask("T334")==0) then
	    LuaSay("王恭：看来你对统一已经是很熟悉了，那我就问你几个有难度点的问题。")
        LuaSay("王恭：人物角色在地图中卡住了,正确而且又不用花铜币的做法是？")             --   如何复位
        AddMenuItem("@7答案选项","")
	    AddMenuItem("下线再上线","NO_13")
	    AddMenuItem("无法解决","NO_13")
	    AddMenuItem("按取消键后再按5复位键","N13_ANSWER")
	    AddMenuItem("飞世界离开","NO_13")
        
       elseif(LuaQueryTask("T334") == 1 ) then                            --   任务日志
	    LuaSay("王恭：如何@3查看任务日志？")
	    AddMenuItem("@7答案选项","")
	    AddMenuItem("按确认键后再按7键","N23_ANSWER")
	    AddMenuItem("按取消键后再按1键","NO_23")
	    AddMenuItem("按确认键后再按3键","NO_23")
	    AddMenuItem("按取消键后再按4键","NO_23")

        elseif(LuaQueryTask("T334") == 2 ) then

        LuaSay("王恭：如何@3聊天？")                                --   聊天
        AddMenuItem("@7答案选项","")
	    AddMenuItem("按确认键后再按3键","NO_33")
	    AddMenuItem("按取消键后再按3键","NO_33")
        AddMenuItem("直接按0键","N33_ANSWER")
	    AddMenuItem("按确认键后再按4键","NO_33")

        elseif(LuaQueryTask("T334") == 3 ) then                           --   使用装备
	    LuaSay("王恭：如何和其他玩家@3进行交互？")
	    AddMenuItem("@7答案选项","")
        AddMenuItem("找地图上的NPC","NO_43")
	    AddMenuItem("靠近玩家按中间确认键开启交互菜单","N43_ANSWER")
	    AddMenuItem("直接喊谁和我交互","NO_43")
	    AddMenuItem("不需要交互","NO_43")
		end

	   elseif(answer=="NO_13") then
           LuaSetTask("T334",0)
          LuaSay("王恭：不会吧，这么简单的问题也答错？重新再答。")

	   elseif(answer=="N13_ANSWER") then
           if(LuaQueryTask("T334")<1) then
           LuaSetTask("T334",1)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("王恭：这么简单的问题你答对了也没什么稀奇的，我再问你")
           DoTalk("T334")
           end
		elseif(answer=="NO_23") then
             LuaSetTask("T334",1)
	         LuaSay("王恭：你答错了，重新再答。")

		elseif(answer=="N23_ANSWER") then
           if(LuaQueryTask("T334")<2) then
		     LuaSetTask("T334",2)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("王恭：看来你还是有两下子嘛，我再问你")
           DoTalk("T334")
           end

		elseif(answer=="NO_33") then
              LuaSetTask("T334",2)
	          LuaSay("王恭：这个问题确实有一点难度啊，给你机会重新选择。")
		elseif(answer=="N33_ANSWER") then
            if(LuaQueryTask("T334")<3) then
            LuaSetTask("T334",3)
            LuaAddJx("combat_exp",3000,"T334")
            LuaSay("王恭：你真是聪明啊，这个也知道啊，再问你一个问题。")
            DoTalk("T334")
            end

		elseif(answer=="NO_43") then
                 LuaSetTask("T334",3)
                 LuaSay("王恭：这个问题确实很有难度啊，给你机会重新选择。")

		elseif(answer=="N43_ANSWER") then
                 if(LuaQueryTask("T334")<99) then
                 LuaSetTask("T334",99)
	             LuaSay("王恭：你真是太聪明了，居然全部都知道。")
	             LuaGive("coin",1000,"T334")
                 LuaAddJx("combat_exp",52000,"T334")
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
                 end

elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==11) then
	LuaSay("王恭:嗯好,不用客气")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	UpdateMenu()
	end						

elseif(answer=="T333") then                     ----------------东征监军【剧情】
		if(LuaQueryTask("T333") == 0 ) then
				LuaSay("王恭：@3桓冲@0那老头派亲侄子@3桓玄@0攻打@2天师道@0，却要老子来监视@3桓玄@0，这厮真是搞不懂。")
				LuaSay("王恭：还好老子早有眼线。此为@2信号烟火@0，在@4五斗山@0@2使用@0后小的们就会向我来回报了，帮我去使用它吧。")
				LuaSetTask("T333",1)
				LuaGive("o_mission033",1)
				UpdateTopSay("去五斗山使用信号烟火")
				AddLog("东征监军【剧情】",333)
				UpdateMenu()
			elseif(LuaQueryTask("T333")==1) then
				if(LuaQueryTask("T333A")==99) then
				LuaSay("王恭：哼哼！@3桓玄@0在偷偷祭拜他老爹@3桓温@0？@3桓温@0当年逼宫被@3谢安@0阻挠，死不瞑目。莫非@3桓玄@0也有叛逆之心？")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T333jl")
				else
			    LuaSay("王恭：你还没有将@2信号烟火@0在@4五斗山@0使用掉呢，快去@4五斗山@0使用@3任务背包@0中的@2信号烟火@0吧。")
				end
			end
		        elseif(answer=="T333jl")then
			if(LuaQueryTask("T333")==1) then
			if(LuaQueryTask("T333A")==99) then
				LuaSetTask("T333",99)
				LuaDelTask("o_mission033",LuaItemCount("o_mission033"))
				LuaAddJx("combat_exp",47520,"T333")
				LuaGive("e_pants005",1,1,"T333")           --13级裤子
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("333")
				UpdateMenu()
				end
				end

elseif(answer=="T331") then                  -------------------------------东郊狩猎【剧情】
		if(LuaQueryTask("T331")==0) then
				LuaSay("王恭：老子一生血战沙场，过的都是腥风血雨的日子，这清闲的日子真让人抓狂。也罢，在这@4东郊@0狩猎发泄一番吧。")
				LuaSay("王恭：见你颇有老子当年风范，跟我一起来吧，消灭@2幼貂、金蛊各15只@0让我看看。")
				LuaSetTask("T331",1)
				LuaSetTask("task_kill/mon_007/T331",1)
				LuaSetTask("task_kill/mon_008/T331",1)
				UpdateTopSay("消灭幼貂金蛊各15只")
				AddLog("东郊狩猎【剧情】",331)
				UpdateMenu()
		elseif(LuaQueryTask("T331")==1) then
		local a=LuaQueryTask("task_kill/mon_008/T331")-1
		local b=LuaQueryTask("task_kill/mon_007/T331")-1
			if(a>=15 and b>=15) then
				LuaSay("王恭：恩，不错不错，有我大将之风啊。给你些奖励吧。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T331jl")
   
			else 
				LuaSay("王恭：你已经消灭了：@2"..a.."只幼貂，"..b.."只金蛊@0，消灭够@2幼貂和金蛊各15只@0再来找本将军吧！")
				UpdateTopSay("消灭幼貂金蛊各15只")
			end
		end 
			  elseif(answer=="T331jl")then	
		        if(LuaQueryTask("T331")==1) then			
			if(LuaQueryTask("task_kill/mon_007/T331")>=16 and LuaQueryTask("task_kill/mon_008/T331")>=16) then
				LuaSetTask("T331",99)
				LuaAddJx("combat_exp",40590,"T331")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_007/T331")
				LuaDelTask("task_kill/mon_008/T331")
				DelLog("331")
				UpdateMenu()
				end
				end


elseif(answer=="T332") then                                  ----------------偷上战场【剧情】
		if(LuaQueryTask("T332")==0) then
				LuaSay("王恭：大人命我做监军，令我不得上战场。嘿嘿，他却小瞧我了。我可以派人上战场呀，哈哈。妙哉妙哉！@!")
				LuaSay("王恭：你，就是你了。速速去@4五斗山@0消灭@215个天师匪兵@0后回报我，本将军倒要看看，这些妖人是不是三头六臂。")
				LuaSetTask("T332",1)
				LuaSetTask("task_kill/mon_011/T332",1)
				UpdateTopSay("消灭天师匪兵15个后回复我")
				AddLog("偷上战场【剧情】",332)
				UpdateMenu()
		elseif(LuaQueryTask("T332")==1) then
		local a=LuaQueryTask("task_kill/mon_011/T332")-1
			if(a>=15) then
				LuaSay("王恭：好好！哈哈，总算让他们见识到了我王大将军的厉害！@!")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T332jl")
			else 
				LuaSay("王恭：你才消灭了@2"..a.."个天师匪兵@0，还没有消灭够@215个@0，去@4五斗山@0消灭够了再来找本将军吧。")
			end
		end 
			  elseif(answer=="T332jl")then	
		        if(LuaQueryTask("T332")==1) then			
			if(LuaQueryTask("task_kill/mon_011/T332")>=16) then
				LuaSetTask("T332",99)
				LuaAddJx("combat_exp",47520,"T332")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_011/T332")
				DelLog("332")
				UpdateMenu()
				end
				end
elseif(answer=="T70") then
	if(LuaQueryStrTask("T70day")~=GetCurrentDay())then
		LuaSetTask("T70day",GetCurrentDay())
		LuaSetTask("T70",1)
	end
	if(LuaQueryTask("T70")==1)then
		if(LuaQuery("onlinetime")>600)then
			LuaSay("王恭：格老子的，我堂堂大将军还要向谢安那厮汇报工作，你@2去帮我汇报下@0吧。")
			LuaSay("王恭：@2谢安@0就在@4建康城南@0，你进了建康城南稍微往下看一眼就能看到了哦@!")
			if(LuaQuery("level")<15)then
				LuaSay("王恭：你看起来还是新手，本将军再提醒一下，别迷路了，@2进建康城南注意向下走一点@0就能看到谢安了，汇报了军情就@2马上回来@0吧。")
			end
			LuaSetTask("T70",2)
			LuaSetTask("T70time",GetCurrentTime())
			LuaSay("提示：做完此任务将获得@3经验书@0或者@3免战牌@0一个。@2该任务只有30级以下玩家才可领取，不要错过哦@0。")--额外增加1次升级副本的机会及经验书一个。")
			UpdateTopSay("去帮我找谢安汇报工作")
		else
			LuaSay("王恭："..LuaQueryStr("name").."，在线时间达到@210分钟@0才能找我接取任务哦。")
		end
	elseif(LuaQueryTask("T70")==2)then
		LuaSay("王恭：我堂堂大将军还要向谢安那厮汇报工作，你@2去帮我汇报下@0吧，谢安就在建康城南的下方。")
	elseif(LuaQueryTask("T70")==3)then
			local shijiancha=(GetCurrentTime() - LuaQueryTask("T70time"))
		if(shijiancha>=900) then
			LuaSay("王恭：嗯，不错，好好干！")
			LuaSetTask("T70",99)
			local r=LuaRandom(4)
			if(r<=2)then
			LuaGive("e_state008t",1,"T70")
			LuaSay("提示：该经验书有效期6小时，请尽快使用。")
			elseif(r==3)then
			LuaGive("o_state092j",1,"T70")
			end
		else
			LuaSay("王恭:上报完了啊,现在很忙,在线再等15分钟再来找我,我给你经验书或者免战牌一个。现在还没到呢！")
		end
	else
		LuaSay("你已完成了今天的点兵任务。明天请准时来报到吧。")
	end
	----
	UpdateMenu()

elseif(answer=="T336") then
	if(LuaQueryTask("T336")==0)then
		LuaSay("王恭：老子的生活就是天天在刀口子上讨命，你也来感受一下吧？")
		AddMenuItem("选择列表","","")
		AddMenuItem("怕你啊？跟你赌命","duming","")
		AddMenuItem("你个疯子，不跟你计较","budu","")
	end
	elseif(answer=="duming" and LuaQueryTask("T336")<99) then
	local r = LuaRandom(2)
         if(r==0) then
		LuaSay("王恭：你输了，哈哈，你的命就是老子的了，老子要你死，你便死！")
		LuaSet("hp",0)
		FlushMyInfo("0")
	 else
		LuaSay("王恭：啊，老子竟然输了。哼哼！人外有人，山外有山，有本事你去和@3桓冲@0老头赌。")
		LuaSay("王恭：桓冲老头的“命运的眷顾”，如果你真有本事，就会有非常丰厚的回报。当然代价就是死亡。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T336jl")
	end
	elseif(answer=="budu" and LuaQueryTask("T336")<99) then
		LuaSay("王恭：哼！真是个胆小鬼！")

		        elseif(answer=="T336jl")then
			if(LuaQueryTask("T336")==0) then
				LuaSetTask("T336",99)
				LuaAddJx("combat_exp",40590,"T336")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("336")
				UpdateMenu()
			end

--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_14")==1)then
					LuaSay("王恭：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_14",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_14")==2)then
					LuaSay("王恭：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_14",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("王恭：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("王恭：你已经将一半的江山画卷送到了我的手上，快去找谢琰领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

elseif(answer=="Tsnpc_30")then
	if(LuaQueryTask("Tsnpc_30")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("王恭：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_30",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_30")==2)then
		LuaSay("王恭：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_30")then
	if(LuaQueryTask("Tenpc_30")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("王恭：这都是大人的功劳啊")
		LuaSetTask("Tenpc_30",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_30")==2)then
		LuaSay("王恭：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end

