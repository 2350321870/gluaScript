NPCINFO = {
serial="49" ,
base_name="xiedaoyun" ,
icon=2519,
NpcMove=2519,
name="谢道韫" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="打怪受伤可到此进行治疗" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
        havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0

	local level= LuaQuery("level")
	local T380=LuaQueryTask("T380")
	local T381=LuaQueryTask("T381")
	local T382=LuaQueryTask("T382")
	AddTopSayMenuItem("@7任务列表","")
	--if(level<=25)then	
	AddTopSayMenuItem("@3加血加蓝@0","Tzhiliao02")
	--end
--以上为特殊部分
	if((LuaQueryTask("Tsnpc_34")==1 or LuaQueryTask("Tsnpc_34")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_34")
		if(LuaQueryTask("Tsnpc_34")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_34")==1 or LuaQueryTask("Tenpc_34")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_34")
		if(LuaQueryTask("Tenpc_34")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T266")==1) then
		AddTopSayMenuItem("@2谢家风骨【剧情】","T266") 
		havetask2 =1
		end
	if(LuaQueryTask("T355")==1)  then                    
		AddTopSayMenuItem("@2谢家女将【剧情】","T355")
		havetask2 =1
	end

	if(LuaQueryTask("T381")==1 or LuaQueryTask("T381")==2)then
		AddTopSayMenuItem("@2夫君的下落【剧情】@0","T381")
		if(LuaQueryTask("T381")==2)then
		havetask2=1
		end
	end

--	if(LuaQueryTask("T384")==1 or LuaQueryTask("T384")==2) then
--		AddTopSayMenuItem("@2千里共婵娟【剧情】@0","T384")
--		havetask =2
--	end
	if(LuaQueryTask("T373")==1) then
		AddTopSayMenuItem("@2巾帼红颜【剧情】","T373")
		havetask2=1
	end
	
	if(LuaQueryTask("T302")==6 and LuaQueryTask("T302F")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302F")
		havetask2 =1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T380")==1)then
		AddTopSayMenuItem("@2天师秘术【剧情】@0","T380")
		havetask4=1
	end
	if(LuaQueryTask("T382")==1)then
		AddTopSayMenuItem("@2清剿邪教【循环】@0","T382")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T266")==0 and LuaQueryTask("T278")==99)  then
		AddTopSayMenuItem("谢家风骨【剧情】","T266")
		havetask1 =1
		end	
--	if(T380==0 and level>=18)then
--		AddTopSayMenuItem("天师秘术【剧情】","T380")
--		havetask=1
--	end
	if(T381==0 and level>=19)then
		AddTopSayMenuItem("夫君的下落【剧情】","T381")
		havetask1=1
	end
	if(T382==0 and level>=16 and level<=21)then
		AddTopSayMenuItem("清剿邪教【循环】","T382")
		havetask1=1
	end
--	if(LuaQueryTask("T384")==0 and LuaQueryTask("T381")==99)then
--		AddTopSayMenuItem("千里共婵娟【剧情】","T384")
--		havetask=1
--	end
	if(LuaQueryTask("T278")<99 and level>=18)  then
		AddTopSayMenuItem("巾帼授业【教程】","T278")
		havetask1 =1
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
	  LuaSay("谢道韫：药物是战斗生存的必备，可以通过购买获得，并且可设置到快捷键。")


elseif(answer=="T266") then    -------------------------谢家风骨
      if(LuaQueryTask("T266")==0) then  
       LuaSay("谢道韫：我谢家乃是大晋的书香世家，见你气质不凡，潜力甚佳，让妾身来考你几个问题吧。")
       LuaSay("谢道韫：下面哪句不属于儒家思想？")
       AddMenuItem("@7答案","")
       AddMenuItem("[误]三人行必有我师","NO_266")
       AddMenuItem("[误]不耻下问","NO_266")
       AddMenuItem("[正]众生平等","N266_ANSWER")
       AddMenuItem("[误]学而不思则亡","NO_266")
      elseif(LuaQueryTask("T266")==1) then  
       LuaSay("谢道韫：恩，不错。看来你的学识也是相当不凡啊，再来问你，当朝的大书法家叫什么？")
       AddMenuItem("@7答案","")
       AddMenuItem("[误]颜真卿","NO_266")
       AddMenuItem("[误]柳公权","NO_266")
       AddMenuItem("[正]王羲之","N266_ANSWER1")
       AddMenuItem("[误]赵孟坚","NO_266")
      end 
	elseif(answer=="NO_266") then					  
		LuaSay("谢道韫：年轻人光知道用武可不行哦，再给你一次机会回答吧。@!")
	elseif(answer=="N266_ANSWER") then					 
		LuaSetTask("T266",1)
		AddLog("谢家风骨",266)
		LuaSay("谢道韫：恩，不错。看来你的学识也是相当不凡啊，再来问你，当朝的大书法家叫什么？")
		AddMenuItem("@7答案","")
		AddMenuItem("[误]颜真卿","NO_266")
		AddMenuItem("[误]柳公权","NO_266")
		AddMenuItem("[正]王羲之","N266_ANSWER1")
		AddMenuItem("[误]赵孟坚","NO_266")
		UpdateMenu()	 
	elseif(answer=="N266_ANSWER1") then
		if(LuaQueryTask("T266")==1) then
		LuaSay("谢道韫：很好，看来妾身没有看错你。真是后生可畏啊！很期待你的成长哦。@!")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T266jl")
		end
	       elseif(answer=="T266jl") then
		      if(LuaQueryTask("T266") == 1) then   
			LuaSetTask("T266",99)
			DelLog("266")
			LuaAddJx("combat_exp",76230,"T266")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		      end

elseif(answer=="T302F") then
	if(LuaQueryTask("T302F")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
	   LuaSay("谢道韫：不会又是哪个轻薄之徒弄些无聊之事吧。")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302F",99)
	   UpdateMenu()
	end

elseif(answer=="Tzhiliao02") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
        local jinqian=(level^2 + 50)
	  if(LuaItemCount("coin")>=jinqian) then
              local maxhp=LuaQuery("max_hp")
	      local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
              LuaGive("coin",-jinqian,"Tzhiliao02")
	      LuaSay("谢道韫：持家有道，死亡复活不如治疗，治疗不如吃药省钱，死亡后队友或者朋友援救最省钱！吃药的话，记得@3药品商人@0那里每日领取免费药哦@!")
              LuaSay("谢道韫：你刚花了@2"..jinqian.."@0铜币进行治疗，又恢复了活力。")
	  else
	      LuaSay("谢道韫：你的铜币不足，需要@2"..jinqian.."@0铜币方可治疗。")
	  end
	 else
	LuaSay("谢道韫：你正处于满血满魔状态，不需要治疗。")
   end


elseif(answer=="T384")then
	if(LuaQueryTask("T384")==0)then
	LuaSay("谢道韫:阳光依旧灿烂，然而我与夫君@3王凝之@0却分隔两地，可是我们的思念之情无时不在.")
	LuaSay("谢道韫:无法见到夫君甚是遗憾，就劳烦你帮我把这个玉佩交给我夫君@3王凝之@0吧，他就在不远的@4山寨地牢@0")
	LuaSetTask("T384",1)
	LuaGive("o_mission187",1)
	AddLog("千里共婵娟【剧情】",384)
	UpdateTopSay("把玉佩交给王凝之")
	UpdateMenu()

	elseif(LuaQueryTask("T384")==1)then
	LuaSay("谢道韫:请你帮我把玉佩交给在@4山寨地牢@0的@3王凝之@0吧.")

	elseif(LuaQueryTask("T384")==2)then
	LuaSay("谢道韫：能听到夫君这么说，我也心满意足，多谢阁下了！")
	AddMenuItem("任务完成","")
	AddMenuItem("领取奖励","T384jl")
	end

	elseif(answer=="T384jl")then
	if(LuaQueryTask("T384")==2)then
	LuaSetTask("T384",99)
	LuaDelTask("o_mission187",1)
	DelLog("384")
	LuaAddJx("combat_exp",89100,"T384")--奖励
	if(LuaRandom(10)==1)then  --16级的衣服 
		LuaGive("e_clothes006",1,2,"T384")
	else
		LuaGive("e_clothes006",1,1,"T384")
	end
	LuaAddAchievementSchedule("Task_num",1)
	LuaGive("coin",1000,"T384")
	UpdateMenu()
	end



elseif(answer=="T373")then         --------巾帼红颜
	if(LuaQueryTask("T373")==1)then
		LuaSay(LuaQueryStr("name").."：谢夫人，我乃伪装潜入天师道的线人，那老头现让我来警告你，不要欺人太甚，您就缓一下攻势吧！")	
		LuaSay("谢道韫：好，就如你所言！")
		AddMenuItem("@7任务完成","")
	  	AddMenuItem("领取奖励","T373jl")
		UpdateMenu()
	end
elseif(answer=="T373jl")then
		if(LuaQueryTask("T373")==1)then
		LuaAddJx("combat_exp",80100,"T373")--奖励
		if( LuaQueryStr("class")=="wu")then   --侠客，14级 匕首
			if(LuaRandom(10)==1)then
				LuaGive("e_knife002",1,2,"T373")
			else
				LuaGive("e_knife002",1,1,"T373")
			end
		elseif(LuaQueryStr("class")=="xian")then --谋士，15级 书
			if(LuaRandom(10)==1)then
				LuaGive("e_book001",1,2,"T373")
			else
				LuaGive("e_book001",1,1,"T373")
			end
		elseif(LuaQueryStr("class")=="shen")then--战士，15级 精铁盾
			if(LuaRandom(10)==1)then
				LuaGive("e_shield001",1,2,"T373")
			else
				LuaGive("e_shield001",1,1,"T373")
			end
		end
		LuaAddAchievementSchedule("Task_num",1) 
		LuaSetTask("T373",99)
		DelLog("373")
		UpdateMenu()
		UpdateNPCMenu("sunen")
		end

		
elseif(answer=="T380")then   -----------------------------------天师秘术【剧情】
		if(LuaQueryTask("T380")==0 and TeamCount()>=2)then
			LuaSay("谢道韫：既然你我都是自己人，如今那些邪恶尤为猖狂，请阁下速去@4山寨@0击杀@220个天师教徒@0！")
			LuaSay("谢道韫：切记，不要暴露自己的身份！")
			LuaSay("谢道韫：组队杀怪还有额外的经验加成哦，同时还能结交到更多的朋友！")
			LuaSetTask("T380",1)
			LuaSetTask("task_kill/mon_012/T380",1)
			AddLog("天师秘术【剧情】",380)
			UpdateTopSay("击杀20个天师教徒")
			UpdateMenu()
		elseif(LuaQueryTask("T380")==1)then
			a=LuaQueryTask("task_kill/mon_012/T380")-1
			if(a>=20)then
			LuaSay("谢道韫:很好，期待你的下一次进步！")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T380jl")
			else
			LuaSay("谢道韫：你们才击杀了@2"..a.."个天师教徒@0，快去击杀@220个天师教徒@0吧！")
			end
		else
			LuaSay("谢道韫；凭你一个人的力量是不够的啊，至少要两个人，快去组队吧！")
			LuaSay("谢道韫；让我来告诉你组队的好处吧，组队能让你做杀怪任务更加的快，组队去副本的还能提高出装备的几率哦@!")
			LuaSay("谢道韫；如果你的队长具有多倍经验的状态，那么你也能享受到50%哦@!")
		end

		elseif(answer=="T380jl")then                   ---------------------380奖励
		if(LuaQueryTask("T380")==1)then
		if(LuaQueryTask("task_kill/mon_012/T380")>=21)then
		LuaSetTask("T380",99)
		DelLog("380")
		LuaDelTask("task_kill/mon_012/T380")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",82230,"T380")
		else
			LuaAddJx("combat_exp",76230,"T380")
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end


elseif(answer=="T381")then                          ----------------------------夫君的下落【剧情】
		if(LuaQueryTask("T381")==0)then
			LuaSay("谢道韫：据我所知，我夫君@3王凝之@0已被@4山寨@0的@3孙恩@0俘获，烦请阁下去打探一下我夫君的下落！")
			LuaSay("谢道韫：是死是活，烦请阁下回个话！")
			LuaSay(LuaQueryStr("name").."：请夫人放心！")
			LuaSetTask("T381",1)
			AddLog("夫君的下落【剧情】",381)
			UpdateTopSay("向孙恩打探夫君的下落")
			UpdateMenu()
			UpdateNPCMenu("sunen")
			if(LuaQueryTask("T266")==99)then
				AutoGoToNpc("@7是否@0寻路至@4孙恩","sunen")
			end
		elseif(LuaQueryTask("T381")==1)then
			LuaSay("谢道韫：夫君下落不明，请阁下速去孙恩那看看！")
			if(LuaQueryTask("T266")==99)then
				AutoGoToNpc("@7是否@0寻路至@4孙恩","sunen")
			end
			elseif(LuaQueryTask("T381")==2)then
			LuaSay("谢道韫：阁下可曾打探清楚我夫君的下落了，他还好吗？")
			LuaSay(LuaQueryStr("name").."：@3王凝之@0已被@3孙恩@0关在了@3山寨地牢@0，据说定是有死无生了!")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T381jl")
		end
		elseif(answer=="T381jl")then         ------------------------------------381奖励
		if(LuaQueryTask("T381")==2)then
		LuaSetTask("T381",99)
		DelLog("381")
		LuaAddJx("combat_exp",82100,"T380")
		LuaGive("coin",1000,"T381")
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		UpdateNPCMenu("sunen")
		end


elseif(answer=="T382")then                -----------------------------------------------清剿邪教【循环】
	local level= LuaQuery("level")
		if(LuaQueryTask("T382")==0)then
		LuaSay("谢道韫：如今夫君不知是死是活，小女子思夫心切，但是无奈@3天师教徒@0在挡住了去路")
		LuaSay(LuaQueryStr("name").."：无妨！待小生来替夫人消除烦恼，杀@3天师教徒@0个片甲不留")
		LuaSay("谢道韫：多谢阁下相助，那就去击杀@220个天师教徒@0吧，学会组队不光能让你事半功倍，还能结交到更多的朋友哦@!")
		LuaSetTask("T382",1)
	        LuaSetTask("task_kill/mon_012/T382",1)
		AddLog("清剿邪教【循环】",382)
		UpdateMenu()
		UpdateTopSay("击杀20个天师教徒")
		elseif(LuaQueryTask("T382")==1)then
		local a=LuaQueryTask("task_kill/mon_012/T382")-1
		if(a>=20)then
		LuaSay("谢道韫：阁下真是神勇，钦佩之极啊！")
		AddMenuItem("任务完成","")
		AddMenuItem("领取奖励","T382jl")
		else
		LuaSay("谢道韫：你才杀了@2"..a.."个天师教徒@0，快去杀@220个天师教徒@0吧!")
		end
		end

		elseif(answer=="T382jl")then        ----------------------------382奖励
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaQueryTask("T382")==1)then
				if(LuaQueryTask("task_kill/mon_012/T382")>=21)then
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
					if(LuaQueryTask("T382_first")~=1)then
						jinyan=((level^2*20+22580)*1.4)
					else
						jinyan=(level^2*20+22580)
					end
					LuaDelTask("T382")
					DelLog("382")
					LuaDelTask("task_kill/mon_012/T382")
					LuaGive("coin",money,"T382")
					LuaAddJx("combat_exp",jinyan,"T382")
					if(LuaQueryTask("T382_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T382_a",99)
					end
				LuaSetTask("T382_first",1)
				UpdateMenu()
				end
			end

elseif(answer=="T355") then              ------------------------谢家女将 
		if(LuaQueryTask("T355")==1) then
		LuaSay("谢道韫：太好了，有你这般强大的帮手，何愁天师妖人不灭。@!")
	        AddMenuItem("@7任务完成","")
	        AddMenuItem("领取奖励","T355jl")
		end 
		elseif(answer=="T355jl")then	            
		       if(LuaQueryTask("T355")==1)then
				LuaSetTask("T355",99) 
				LuaAddJx("combat_exp",76230,"T355") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("355") 
				UpdateMenu() 
				end

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>谢道韫授业开始
elseif(answer=="T278")then
 if(LuaQueryTask("T278")==0) then
	LuaSay("谢道韫：世人皆知我谢家乃是风流世家，你我有缘，我就传授你一些生存之道吧。")
	LuaSay("谢道韫：镶嵌需要什么东西？")
	AddMenuItem("@7答案选项","")
	AddMenuItem("[正]肉,木,矿,晶,皮,毛","N12_ANSWER","")
	AddMenuItem("[误]珍珠，宝石，钻戒","NO_12","")
	AddMenuItem("[误]肉,木,矿,金,银,毛","NO_12","")
	AddMenuItem("[误]金,银,铜,铁,钳,钕","NO_12","")
	end

       if(LuaQueryTask("T278") == 1 ) then
	LuaSay("谢道韫：如何对装备进行强化？")
	AddMenuItem("@7答案选项","")
	AddMenuItem("[误]当铺伙计处进行强化","NO_22","")
	AddMenuItem("[误]杀怪进行强化","NO_22","")
	AddMenuItem("[误]交给铁匠强化","NO_22","")
	AddMenuItem("[正]用强化石进行强化","N22_ANSWER","")
	end

	if(LuaQueryTask("T278") == 2 ) then
	LuaSay("谢道韫：强化需要什么？")
	AddMenuItem("@7答案选项","")
	AddMenuItem("[误]肉和木","NO_32","")
	AddMenuItem("[误]双攻符","NO_32","")
	AddMenuItem("[正]强化石","N32_ANSWER","")
	AddMenuItem("[误]金枝","NO_32","")
	end

	if(LuaQueryTask("T278") == 3 ) then
	LuaSay("谢道韫：如何对装备进行拆解？")
	AddMenuItem("@7答案选项","")
	AddMenuItem("[误]找铁匠拆解","NO_42","")
	AddMenuItem("[误]用火烧，再用冷水冰","NO_42","")
	AddMenuItem("[误]用石头砸","NO_42","")
	AddMenuItem("[正]用拆解符进行拆解","N42_ANSWER","")
	end

	elseif(answer=="NO_12") then					  
	LuaSetTask("T278",0)
	  LuaSay("谢道韫：不会吧，这么简单的问题也答错？重新再答。")

	elseif(answer=="N12_ANSWER") then
		if(LuaQueryTask("T278")<1) then
		LuaSetTask("T278",1)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("谢道韫：这么简单的问题你答对了也没什么稀奇的，我再问你")
		DoTalk("T278")
		end
	elseif(answer=="NO_22") then					  
	 LuaSetTask("T278",1)
	 LuaSay("谢道韫：你答错了，重新再答")

	elseif(answer=="N22_ANSWER") then
		if(LuaQueryTask("T278")<2) then
		 LuaSetTask("T278",2)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("谢道韫：看来你还是有两下子的嘛，我再问你")
		DoTalk("T278")
		end

	elseif(answer=="NO_32") then					 
	 LuaSetTask("T278",2)
	  LuaSay("谢道韫：这个问题确实有一点难度啊，给你机会重新选择。")

	elseif(answer=="N32_ANSWER") then
		if(LuaQueryTask("T278")<3) then
		LuaSetTask("T278",3)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("谢道韫：你真是聪明啊，这个也知道啊")
		DoTalk("T278")
		end

	elseif(answer=="NO_42") then						 
		 LuaSetTask("T278",3)
		 LuaSay("谢道韫：这个问题确实很有难度啊，给你机会重新选择。")

	elseif(answer=="N42_ANSWER") then
		if(LuaQueryTask("T278")<99) then
		 LuaSetTask("T278",99)
		 LuaSay("谢道韫：你真是太聪明了，居然全部都知道。")
		 LuaGive("coin",1000,"T278")
		 LuaAddJx("combat_exp",72000,"T278")
		 UpdateMenu()
		 end
elseif(answer=="Tsnpc_34")then
	if(LuaQueryTask("Tsnpc_34")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("谢道韫：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_34",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_34")==2)then
		LuaSay("谢道韫：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_34")then
	if(LuaQueryTask("Tenpc_34")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("谢道韫：这都是大人的功劳啊")
		LuaSetTask("Tenpc_34",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_34")==2)then
		LuaSay("谢道韫：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end
