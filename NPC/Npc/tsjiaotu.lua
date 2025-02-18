NPCINFO = { 
serial="47" ,
base_name="tsjiaotu",
icon=2524,
NpcMove=2524 ,
name="天师教徒" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="天师附体天下无敌",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	T368= LuaQueryTask("T368")
	AddTopSayMenuItem("@7任务列表","")
		if(LuaQueryTask("T369")==0 and level>=17 and LuaQueryTask("T360")==99) then
			AddTopSayMenuItem("教徒的疑虑【剧情】","T369") 
			havetask =1
			end
--		if(T368 ==0 and level >=17) then
--			AddTopSayMenuItem("邪术诅咒【剧情】","T368")
--			havetask =1
--			end
		if(LuaQueryTask("T360")==0 and level>=16)then
			AddTopSayMenuItem("偷梁换柱【剧情】","T360")
			havetask=1
		end
		if(LuaQueryTask("T361")==0 and level>=15 and level<20)then
			AddTopSayMenuItem("消灭青狼【循环】","T361")
			havetask=1
		end

		if(LuaQueryTask("T362")==0 and LuaQuery("level")>=17)then
			AddTopSayMenuItem("贴身伙伴【剧情】","T362")
			havetask=1
		end

		if(LuaQueryTask("T363")==0 and LuaQuery("level")>=16)then
			AddTopSayMenuItem("沉甸的背包【剧情】","T363")
			havetask=1
		end
-------------------------------------------------------------------------
		if(LuaQueryTask("T361")==1)then
			AddTopSayMenuItem("@2消灭青狼【循环】","T361")
			havetask=4
		end
		if(LuaQueryTask("T369")==1) then
			AddTopSayMenuItem("@2教徒的疑虑【剧情】","T369") 
			if(LuaItemCount("o_mission007")>=1) then
			havetask =4
			end
		end
-----------------------------------------------------------------------
		if((LuaQueryTask("Tsnpc_32")==1 or LuaQueryTask("Tsnpc_32")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_32")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_32")==1 or LuaQueryTask("Tenpc_32")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_32")
			havetask=2
		end
--		if(T368 ==1 or T368==2) then
--			AddTopSayMenuItem("@2邪术诅咒【剧情】@0","T368")
--			havetask =2
--			end
--		if(LuaQueryTask("T353")==1) then
--     			AddTopSayMenuItem("@2知己知彼【剧情】","T353")
--			havetask=2
--		end
		if(LuaQueryTask("T360")>0 and LuaQueryTask("T360")<99)then
			AddTopSayMenuItem("@2偷梁换柱【剧情】","T360")
			if(LuaQueryTask("T360")==2) then
			havetask=2
			end
		end

		if(LuaQueryTask("T362")==1 or LuaQueryTask("T362")==2)then
			AddTopSayMenuItem("@2贴身伙伴【剧情】","T362")
			if(LuaQueryTask("T362")==2)then
			havetask=2
			end
		end
		if(LuaQueryTask("T363")==1)then
			AddTopSayMenuItem("@2沉甸的背包【剧情】","T363")
			if(LuaFreeBag()>=8)then
			havetask=2
			end
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
	LuaSay("天师教徒：听闻咱们教主是被蛮夷施了巫术才变的如此厉害，难道我们真的是被蛮夷利用了吗？") 
		       
elseif(answer=="T369") then         ------------------------教徒的疑虑
		if(LuaQueryTask("T369") == 0 ) then
		  LuaSay("天师教徒：听闻教主的仙法其实是蛮夷的邪术，呜呜...难道我们都被蛮夷利用了吗？")
		  LuaSay("天师教徒：最近山里多了许多咱们的兵马，我怀疑是蛮夷的人，请你去打败这些@2天师匪兵@0找找有什么@2线索@0吧！")
		  LuaSetTask("T369",1)
		  UpdateTopSay("打败天师匪兵寻找线索")
		  AddLog("教徒的疑虑【剧情】",369)
		  UpdateMenu()

		elseif(LuaQueryTask("T369") == 1 ) then
		  if(LuaItemCount("o_mission007")>=1) then
		    LuaSay("天师教徒：原来混进我们天师道的这些人马是蛮夷，原来我们真的被蛮夷利用了，呜呜..。")
		    AddMenuItem("@7任务完成","")
		    AddMenuItem("领取奖励","T369jl")
		    else
		    LuaSay("天师教徒：你还没有找到线索哦，快去打败这些@2天师匪兵@0找找有什么@2线索@0吧！")
		    end
		end
          elseif(answer=="T369jl")then
           if(LuaQueryTask("T369")==1) then
		    DelItem("o_mission007",1)
		    LuaSetTask("T369",99)
		    DelLog("369")
		    LuaAddJx("combat_exp",65000,"T369")
			LuaAddAchievementSchedule("Task_num",1)
		    UpdateMenu()
		    end
		    
elseif(answer=="T368") then           --------------邪术诅咒任务
		if(LuaQueryTask("T368")== 0) then
		LuaSay("天师教徒：不要跟我说话，小心被邪术诅咒！")
		    AddMenuItem("@7选项","")
		    AddMenuItem(""..LuaQueryStr("name").."：怕诅咒，不说话！","368no")
 		    AddMenuItem(""..LuaQueryStr("name").."：偏要跟你说话！","368yes")
		elseif(LuaQueryTask("T368")== 1) then
		    if(LuaQueryTask("T368A")== 99) then
		    LuaSay(""..LuaQueryStr("name").."：天呐，难道你真的是传说中的扫把星？和你接触以后，竟然屡次被这五斗山的怪物所重伤。")  
		    LuaSay("天师教徒：想要解除这诅咒，我可无计可施。听闻@4建康城南@0的@3谢安@0上知天文下知地理，你去找@3谢安@0吧！") 
		    LuaSetTask("T368",2)
		    AddLog("邪术诅咒",368) 
		    UpdateTopSay("去找建康城南的谢安")
		    UpdateMenu()
		    else
                    LuaSay("天师教徒：被诅咒是早晚的事，到时候你就知道不听劝告的严重后果了@!")
		    end
		elseif(LuaQueryTask("T368")== 2) then
		    LuaSay("天师教徒：想要解除这诅咒，我可无计可施。听闻@4建康城南@0的@3谢安@0上知天文下知地理，你去找@3谢安@0吧！") 
		end
	elseif(answer=="368no") then
	LuaSay("天师教徒：你还有自知之明，恩，离我远点吧!")
	elseif(answer=="368yes") then
	LuaSay("天师教徒：为何忠言总是逆耳，哎，天要下雨，娘要嫁人，我又有什么办法呢，不过，你早晚都会@2回来找我@0的@!")
	LuaSetTask("T368",1)
	AddLog("邪术诅咒",368) 
	UpdateTopSay("你早晚都会回来找我的")
	UpdateMenu()

------------------------------------------------知己知彼
elseif(answer=="T353")then
	if(LuaQueryTask("T353")==1)then
  		if(LuaItemCount("o_mission349")>=15)then
  			LuaSay("天师教徒：哪里来的生人，从来没见过，来送死的的么！")
  			LuaSay(""..LuaQueryStr("name").."：不要动怒！我也是天师道的人，这是给兄弟的狼皮，做点衣服，一点小意思。")
			AddMenuItem("@7任务完成","")
	  		AddMenuItem("领取奖励","T353jl")
		else
			LuaSay("天师教徒：来者，杀无赦！非我天师道人需缴纳15张狼皮，消灭青狼就能得到了。") 
		end
	end

	elseif(answer=="T353jl")then
		if(LuaQueryTask("T353")==1)then
  		if(LuaItemCount("o_mission349")>=15)then
		LuaSetTask("T353",99)
		DelLog("353")
		LuaAddJx("combat_exp",65000,"T353")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission349",LuaItemCount("o_mission349"))
		end
		end
		UpdateMenu()
		UpdateNPCMenu("huanxuan")
		--------------------------------  偷梁换柱【剧情】
elseif(answer=="T360")then
	if(LuaQueryTask("T360")==0)then
		LuaSay("天师教徒：兄弟的心意我领了。可是上头有规定，山寨不能随便进入。这样，我给你一包毒药你去把@3桓玄@0杀掉再说。")
		LuaSetTask("T360",1)
		AddLog("偷梁换柱【剧情】",360)
		LuaGive("o_mission350",1)
		UpdateTopSay("去毒死桓玄")
		UpdateMenu()
		UpdateNPCMenu("huanxuan")

		elseif(LuaQueryTask("T360")==1)then
		LuaSay("天师教徒：还没去，是何道理！去找桓玄吧。")
		
		elseif(LuaQueryTask("T360")==2) then
		LuaSay(LuaQueryStr("name").."：桓玄已经被我毒死，万事大吉！现在我可以进寨了吧！")
		AddMenuItem("@7任务完成","")
	  	AddMenuItem("领取奖励","T360jl")	
	end
	elseif(answer=="T360jl")then
		if(LuaQueryTask("T360")==2) then
		LuaSetTask("T360",99)
		DelLog("360")
		LuaAddJx("combat_exp",62000,"T360")--奖励
		LuaAddAchievementSchedule("Task_num",1)
		LuaGive("coin",500,"T360")
		UpdateMenu()
		end
		
----------------------------------------------循环 青狼
 
elseif(answer=="T361")then
	if(LuaQueryTask("T361")==0)then
		LuaSay("天师教徒：去消灭@3青狼@0@220只@0吧！你会得到你想不到的收获。")
		if(TeamCount()>=2)then
			LuaSay("天师教徒：你现在还在一个人杀怪呢，现在都流行组队杀怪了哦，组队去副本的还能提高出装备的几率哦@!")
		else
			LuaSay("天师教徒：组队能让你解决很多问题哦，比如做任务慢；如果你的队长具有多倍经验的状态，那么你也能享受到50%哦@!")
		end
		LuaSetTask("T361",1)
		AddLog("消灭青狼【循环】",361)
		LuaSetTask("task_kill/mon_010/T361",1)
		UpdateMenu()
	elseif(LuaQueryTask("T361")==1)then
		local a=LuaQueryTask("task_kill/mon_010/T361")-1
		if(LuaQueryTask("task_kill/mon_010/T361")>=21)then
		LuaSay("天师教徒：做的很好，这是你应得的奖励")		
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T361jl")
	  	else
		LuaSay("天师教徒：你才消灭@2"..a.."只@0青狼，去消灭@3青狼@0@220只@0再来回复我。") 
		end
	end
	
	elseif(answer=="T361jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T361")==1)then
			if(LuaQueryTask("task_kill/mon_010/T361")>=21)then
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
				DelLog("361")
				local jingyan
				if(TeamCount()>=2)then
					jingyan=(40428+level^2*20)
				else
					jingyan=(19428+level^2*20)
				end
				LuaGive("coin",money,"T361")
					LuaAddJx("combat_exp",jingyan,"T361")--奖励
					if(LuaQueryTask("T361_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T361_a",99)
					end
				LuaDelTask("task_kill/mon_010/T361")
				LuaDelTask("T361")
				UpdateMenu()
			end
		end

	

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>贴身伙伴
elseif(answer=="T362")then
	if(LuaQueryTask("T362")==0)then
		LuaSay("天师教徒：我这有两只宝贝精灵，可是老是驯服不了它们，听说建康城驯兽师驯兽手法独特，你去帮我打探一下。")
		LuaSay("@7温馨提示@0：@!完成本任务将会获得随机宠物一个！")
		LuaSetTask("T362",1)
		AddLog("贴身伙伴【剧情】",362)
		UpdateMenu()
	elseif(LuaQueryTask("T362")==1)then
		LuaSay("天师教徒：到建康城驯兽师那里去打探一下他独特的驯兽方法。")
	elseif(LuaQueryTask("T362")==2)then
		LuaSay(""..LuaQueryStr("name").."：“心者，合其一也”，这是驯兽师傅让我转告给你的。")
		LuaSay("天师教徒：难道是让我用心对待？")
		LuaSay("天师教徒：..")
		LuaSay("天师教徒：...")
		LuaSay("天师教徒：....")
		LuaSay("天师教徒：我已理解其中之意，我这有两只，这只宠物精灵就送给你吧，伴随你一路成长，可要用心对待。")
		LuaSay("天师教徒：驯兽师多才多能，关于宠物你有什么不清楚的地方都可以去找他")
		AddMenuItem("@7选择宠物","")
		AddMenuItem("元珠灵","T362jl_A")
		AddMenuItem("奇云灵","T362jl_B")
		AddMenuItem("幻仙灵","T362jl_C")
		AddMenuItem("勇精灵","T362jl_D")
	end


	elseif(answer=="T362jl_A")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet01",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_B")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet02",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_C")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet03",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_D")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet04",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
--沉甸的背包
elseif(answer=="T363")then
	if(LuaQueryTask("T363")==0)then
			LuaSay("天师教徒：阁下背包沉重啊，不知道装的是什么贵重东西呢？或者是不知道怎么处理？")
			LuaSay("天师教徒：我现在就来教你如何整理背包，贵重物品可以通过@1银行存放@0，也可以高价@1出售@0给玩家。")
			LuaSay("天师教徒：不重要的装备可以通过@1分解@0得到材料，@1卖给商店@0也是不错的选择。")
			LuaSay("天师教徒：整理你的背包，空出8格或者8格以上再来找我@!。")
			LuaSay("@7温馨提示@0：@!完成本任务将会有有机会获得宝箱！")
			LuaSetTask("T363",1)
			AddLog("沉甸的背包",363)
			UpdateMenu()
	elseif(LuaQueryTask("T363")==1)then
		if(LuaFreeBag()>=8)then
			LuaSay("天师教徒：阁下真是聪明，这么快就将背包整理好了")
			LuaSay("天师教徒：以后也要学会整理哦@!送你一个价值连城的@3宝箱@0@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T363jl")
		else
			LuaSay("天师教徒：贵重物品可以通过@1银行存放@0，也可以高价@1出售@0给玩家。")
			LuaSay("天师教徒：不重要的装备可以@1分解@0得到材料，@1卖商店@0也是不错的选择。")
			LuaSay("天师教徒：快去整理你的背包，空出8格或者8格以上再来找我@!。")
		end
	end


	elseif(answer=="T363jl")then
		if(LuaQueryTask("T363")==1)then
			LuaAddJx("combat_exp",80000,"T363")
			LuaGive("o_box004j",1,"T363")
			LuaSetTask("T363",99)
			DelLog("363")
			UpdateMenu()
		end
			
elseif(answer=="Tsnpc_32")then
	if(LuaQueryTask("Tsnpc_32")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("天师教徒：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_32",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_32")==2)then
		LuaSay("天师教徒：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_32")then
	if(LuaQueryTask("Tenpc_32")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("天师教徒：这都是大人的功劳啊")
		LuaSetTask("Tenpc_32",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_32")==2)then
		LuaSay("天师教徒：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end 

