NPCINFO = {
serial="41" ,
base_name="yizhanxiaoli" ,
icon=2522,
NpcMove=2522,
name="驿站小吏" ,
iconaddr=1 ,
butt="20|20|61" ,
name_color="CEFFCE" ,
lastsay="20级后每日可来助我送信" ,
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
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQuery("level")>=20)then
		AddTopSayMenuItem("@7祝福精灵","Tbless")
	end
--以上是特殊部分
	if(LuaQueryTask("T423") == 1 )  then
		AddTopSayMenuItem("@2速度的考验【剧情】@0","T423")
		havetask2=1
	end
	if((LuaQueryTask("Tsnpc_38")==1 or LuaQueryTask("Tsnpc_38")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_38")
		if(LuaQueryTask("Tsnpc_38")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_38")==1 or LuaQueryTask("Tenpc_38")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_38")
		if(LuaQueryTask("Tenpc_38")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T402") == 2 or LuaQueryTask("T402") == 3)then
		AddTopSayMenuItem("@2报到【剧情】","T402")
		if(LuaQueryTask("T402") == 2) then
		havetask2 =1
		end
	end     

	
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2跑商【每日】","TPaoShang")          ----------跑商
		havetask2 =1
	end
--以上是黄色问号部分

	--------------------------------------------
	if(LuaQueryTask("T424") == 1 )then
		AddTopSayMenuItem("@2兵灾【剧情】","T424")
		havetask4 =1
	end
	if(LuaQueryTask("T425") == 1 )then
		AddTopSayMenuItem("@2兵灾2【剧情】","T425")
		havetask4 =1
	end
	if(LuaQueryTask("T426") == 1 )then
		AddTopSayMenuItem("@2兵灾3【剧情】","T426")
		havetask4 =1
	end
--以上是灰色问号部分
        	if(LuaQueryTask("T423")==0 and level>=20)  then
		AddTopSayMenuItem("速度的考验【剧情】","T423")
		havetask1 =1
	end
	if(LuaQueryTask("T424") == 0 and level>=22)then
		AddTopSayMenuItem("兵灾【剧情】","T424")
		havetask1 =1
	end
	if(LuaQueryTask("T425") == 0 and LuaQueryTask("T424") == 99)then
		AddTopSayMenuItem("兵灾2【剧情】","T425")
		havetask1 =1
	end
	if(LuaQueryTask("T426") == 0 and LuaQueryTask("T425") == 99 and level>=23)then
		AddTopSayMenuItem("兵灾3【剧情】","T426")
		havetask1 =1
	end
	if(LuaQueryTask("T423")==99 and LuaQueryTask("T302")<99)  then
		if(level>=25)then
			AddTopSayMenuItem("@7每日信使【每日】","T302")
			havetask1 =1
		elseif(level>=20)then
			AddTopSayMenuItem("@2[新]@0@7每日信使【每日】","T302")
			havetask1 =1
		end
	end
--以上是黄色感叹号部分
        if(LuaQueryTask("T302")==99 )then
		AddTopSayMenuItem("@7每日信使【每日】","T302")
	end
--以上是特殊部分
	AddTopSayMenuItem("@9升级指导","Guidelines")
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
  LuaSay("驿站小吏：两条腿的跑不过四条腿的，四条腿的可跑不过我哦，我可以送你到你想要去的地方。")
elseif(answer=="T424")then       -----------------------------  兵灾1
	if(LuaQueryTask("T424") == 0) then
		LuaSay("驿站小吏：唉!那些@2北府锤兵@0不思抗敌，反而鱼肉百姓，苦不堪言，少侠可否愿意教训他们？去@4北府军营@0消灭@225个北府锤兵@0！")
		if(TeamCount()<2)then
			if(LuaQueryStr("gender")=="男性")then
				LuaSay("驿站小吏：哟哟，你还是孤身一人啊，找个妞陪你啊，组队不光有额外的经验加成，完成任务也有额外的奖励，偷偷的告诉你，30级就能结婚啦，你懂的@!")
			end
			if(LuaQueryStr("gender")=="女性")then
				LuaSay("驿站小吏：哟哟，你还是孤身一人啊，找个帅哥陪你啊，组队不光有额外的经验加成，完成任务也有额外的奖励，偷偷的告诉你，30级就能结婚啦，你懂的@!")
			end
		else
			LuaSay("驿站小吏：看样子你一面找到你的朋友了哦，组队的甜头相信你已经尝到了吧@!。")
		end
		LuaSetTask("T424",1)
		LuaSetTask("task_kill/mon_016/T424",1)
		UpdateTopSay("消灭25个北府锤兵")
		AddLog("兵灾【剧情】",424)
		UpdateMenu()
	elseif(LuaQueryTask("T424")==1) then
		if(LuaQueryTask("task_kill/mon_016/T424")>=26) then
		LuaSay("驿站小吏：少侠真是好本领！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T424jl")
		else
		LuaSay("驿站小吏：你还没杀够25个@2北府锤兵@0！")
                UpdateTopSay("杀够25个北府锤兵再来找我")
		end
	end
		elseif(answer=="T424jl")then
		        if(LuaQueryTask("T424")==1) then
				if(LuaQueryTask("task_kill/mon_016/T424")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T424")
				else
					LuaAddJx("combat_exp",176000,"T424")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_016/T424")
				DelLog("424")
				LuaSetTask("T424",99)
				UpdateMenu()
				end
			end

elseif(answer=="T425")then  -----------------------------  兵灾2
	if(LuaQueryTask("T425") == 0) then
		LuaSay("驿站小吏：呜呜呜！想当初在下出来闯荡时，身上唯一的二两银子被@2北府斧兵@0抢了！")
		LuaSay("驿站小吏：少侠本事了得，劳烦去北府军营消灭@225个北府斧兵@0，以泄我心头之恨！")
		LuaSay("驿站小吏：组队能让你事半功倍，还能结交到更多的朋友哦。")
		LuaSetTask("T425",1)
		LuaSetTask("task_kill/mon_017/T425",1)
		UpdateTopSay("消灭25个北府斧兵")
		AddLog("兵灾2【剧情】",425)
		UpdateMenu()
	elseif(LuaQueryTask("T425")==1) then
		if(LuaQueryTask("task_kill/mon_017/T425")>=26) then
		LuaSay("驿站小吏：多谢少侠！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T425jl")
		else
		LuaSay("驿站小吏：你还没杀够25个@2北府斧兵@0！")
                UpdateTopSay("杀够25个北府斧兵再来找我")
		end
	end
		elseif(answer=="T425jl")then
		        if(LuaQueryTask("T425")==1) then
				if(LuaQueryTask("task_kill/mon_017/T425")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T425")
				else
					LuaAddJx("combat_exp",176000,"T425")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_017/T425")
				DelLog("425")
				LuaSetTask("T425",99)
				UpdateMenu()
				end
			end

elseif(answer=="T426")then   -----------------------------  兵灾3
	if(LuaQueryTask("T426") == 0) then
		LuaSay("驿站小吏：哇啊啊！昔日在下暗恋小翠，情书尚未给她，却被@2北府精锐@0抢了！，如今她已嫁做人妇！")
		LuaSay("驿站小吏：少侠本领高强，帮在下去@4军营前哨@0消灭@225个北府精锐@0，以泄我心头之恨！")
		LuaSay("驿站小吏：组队做任务你会更加的轻松哦@!")
		LuaSetTask("T426",1)
		LuaSetTask("task_kill/mon_019/T426",1)
		UpdateTopSay("消灭25个北府精锐")
		AddLog("兵灾3【剧情】",426)
		UpdateMenu()
	elseif(LuaQueryTask("T426")==1) then
		if(LuaQueryTask("task_kill/mon_019/T426")>=26) then
		LuaSay("驿站小吏：多谢少侠！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T426jl")
		else
		LuaSay("驿站小吏：你还没杀够25个@2北府精锐@0！")
                UpdateTopSay("杀够25个北府精锐再来找我")
		end
	end
		elseif(answer=="T426jl")then
		        if(LuaQueryTask("T426")==1) then
				if(LuaQueryTask("task_kill/mon_019/T426")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T426")
				else
					LuaAddJx("combat_exp",176000,"T426")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_019/T426")
				DelLog("426")
				LuaSetTask("T426",99)
				UpdateMenu()
				end
			end
                
elseif(answer=="T402")then       -----------------------------  报到
	if(LuaQueryTask("T402") == 2) then
		LuaSay("驿站小吏：少侠以后若有空，可帮我来传送信件！哈哈，去回复谢玄吧。@!")
		LuaSetTask("T402",3)
		AddLog("报到【剧情】",402)
		UpdateTopSay("回复谢玄")
		UpdateMenu()
		UpdateNPCMenu("pk")
		UpdateNPCMenu("xiexuan")
	elseif(LuaQueryTask("T402")==3) then
		LuaSay("驿站小吏：快去回复谢玄！")
	end
	
elseif(answer=="T423") then                   ------------------速度的考验
		if(LuaQueryTask("T423") == 0 ) then
			LuaSay("驿站小吏：最近我正在找一个腿脚麻利的家伙帮我办事，我看阁下的样子甚合我意。")
			LuaSay("驿站小吏：你从我这里跑到@4建康城南@0问候@3谢安@0大人，再马上跑回来找我，要在@33分钟内@0完成哦。")
			LuaSay(""..LuaQueryStr("name").."：@!我的外号可是@3地上小旋风@0，今日让你见识见识。")
			LuaSetTask("T423",1)
			UpdateTopSay("3分钟内去建康城南外问候谢安")
			AddLog("速度的考验【剧情】",423)
			time=GetCurrentTime()
			LuaSetTask("423time",time)
			UpdateMenu()

		elseif(LuaQueryTask("T423") == 1 ) then
		   if(LuaQueryTask("T423A") == 99 ) then
			shijiancha=(GetCurrentTime() - LuaQueryTask("423time"))
			if(shijiancha<=180) then
				LuaSay("驿站小吏：@3小旋风@0的称号果然不是盖的@!，这么快就回来了。")
				LuaSay("驿站小吏：前方战况吃紧，消息传递不灵便，正需要少侠这般灵活的人！")
				LuaSay("驿站小吏：另外本处每天需要腿脚麻利的人来帮我送信哦。在您没有剧情任务的时候，每日任务将是您提升等级的另一种方式哦@)")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T423jl")
			else
				LuaSay("驿站小吏：唉，你的速度真是太慢了，真让我失望啊，等一下再来过。")
				LuaSetTask("T423",0)
				LuaSetTask("T423A",0)
				LuaDelTask("423time")
				DelLog("423")
				UpdateMenu()
		      end
		   else
		     LuaSay("驿站小吏：没想到你还偷懒啊，还没有去@4建康城南@0问候@3谢安@0大人呢。")
		   end
		end
			elseif(answer=="T423jl")then
		       if(LuaQueryTask("T423")==1)then
			LuaSay("你有茫茫无措不知所然的时候吗，当你不知道做什么时候，记得来我这里查看升级指引哦，能帮助你不少事情呢")
			LuaAddJx("combat_exp",129000,"T423")
			LuaAddAchievementSchedule("Task_num",1)
			if( LuaQueryStr("class")=="wu")then   --侠客，20级 刀
				if(LuaRandom(10)==1)then
					LuaGive("e_falchion005",1,2,"T423")
				else
					LuaGive("e_falchion005",1,1,"T423")
				end
			elseif(LuaQueryStr("class")=="xian")then --谋士，20级 扇子
				if(LuaRandom(10)==1)then
					LuaGive("e_fan003",1,2,"T423")
				else
					LuaGive("e_fan003",1,1,"T423")
				end
			elseif(LuaQueryStr("class")=="shen")then--战士，20级 刀
				if(LuaRandom(10)==1)then
					LuaGive("e_falchion005",1,2,"T423")
				else
					LuaGive("e_falchion005",1,1,"T423")
				end	
			end
			LuaGive("coin",3000,"T423")
			LuaSetTask("T423",99)
			LuaDelTask("423time")
			LuaDelTask("T423A")
			DelLog("423")
			UpdateMenu()
		       end

		
------------------------------------------------------------------------------ 每日信使开始 
elseif(answer=="T302") then
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("302Taskday")) then
		LuaSetTask("T302",0)   
		LuaSetTask("T302cs",0)  
		LuaDelTask("T302time")
		if(LuaItemCount("o_mission076") >0) then
			DelItem("o_mission076",1)
		end
	end
	if(LuaQueryTask("T302") == 0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("T302time"))  --半小时一次
		if(shijiancha>=1800) then
			local r
			if(level>=20 and level<30) then
				r=LuaRandom(12)
			elseif(level>=30 and level<50)then
				r=LuaRandom(15)
			elseif(level>=50 and level<60)then
				r=LuaRandom(19)
			elseif(level>=60)then
				r=LuaRandom(22)
			end
			if(r==0) then
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")     --------孟铁匠
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4桃源村@0的@3孟铁匠@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",1)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给桃源村的孟铁匠")
			elseif(r==1) then                              -------------------晋清公主
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康城@0的@3晋清公主@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",2)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康城的晋清公主")
			elseif(r==2) then                                  -------------------桓冲
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康东郊@0的@3桓冲@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",3)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康东郊的桓冲")
			elseif(r==3) then                                   -------------------种子商 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康城@0的@3种子商人@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",4)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康城的种子商人")
				UpdateNPCMenu("zhongzis")
			elseif(r==4) then                                   -------------------比武使者
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4北府军营@0的@3比武使者@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",5)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给北府军营的比武使者")
				UpdateNPCMenu("pk")
			elseif(r==5) then                                   -------------------谢道韫
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4山寨@0的@3谢道韫@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",6)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给山寨的谢道韫")
			elseif(r==6) then                                   -------------------药品商人
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动倒挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康城南@0的@3药品商人@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",7)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康城南的药品商人")
			elseif(r==7) then                                   -------------------谢安
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康城南@0的@3谢安@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",8)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康城南的谢安")
				UpdateNPCMenu("kongzi")
			elseif(r==8) then                                   -------------------田伍长
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4迷雾之林@0的@3田伍长@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",9)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给迷雾之林的田伍长")
			elseif(r==9) then                                   -------------------司马元显
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4建康城@0的@3司马元显@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",10)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给建康城的司马元显")
			elseif(r==10 or r==11) then                                ------------------------老村长
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行倒挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4桃源村的@0的@3老村长@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",11)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给桃源村的老村长")
			elseif(r==12) then                                        ----------------朱序
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4淝水对岸@0的@3朱序@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",12)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给淝水对岸的朱序")
			elseif(r==13) then                              -------------------符融
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4洛阳郊外@0的@3符融@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",13)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给洛阳郊外的符融")
			elseif(r==14) then                                  -------------------王镇恶
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4洛阳城@0的@3王镇恶@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",14)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给洛阳城的王镇恶")
			elseif(r==15) then                                   -------------------陶渊明
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4洛城废墟@0的@3陶渊明@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",15)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给洛城废墟的陶渊明")
			elseif(r==16) then                                   -------------------姚苌
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4渭水之滨@0的@3姚苌@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",16)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给渭水之滨的姚苌")
			elseif(r==17) then                                        ----------------乞伏国仁 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4西蜀竹林@0的@3乞伏国仁@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",17)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给邪恶之林的乞伏国仁")
			elseif(r==18) then                              -------------------拓拔仪 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4陷落关口@0的@3拓拔仪@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",18)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给陷落关口的拓拔仪")
			elseif(r==19) then                                  -------------------拓跋圭 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4云中城@0的@3拓跋圭@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",19)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给云中城的拓跋圭")
			elseif(r==20) then                              -------------------慕容垂 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4太行古径@0的@3慕容垂@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",20)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给太行古径的慕容垂")
			elseif(r==21) then                                  -------------------浑太后 
				LuaSay("驿站小吏：不知何故，最近信件急剧增多，上次见你行动挺利索的，或许可以帮上我的忙呢。")
				LuaSay("驿站小吏：我这里有一封加急的信件，你帮我送给@4参合坡@0的@3浑太后@0吧。")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",21)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("每日信使",302)
				UpdateTopSay("将信件送给参合坡的浑太后")
			end 
			LuaSendMenu()
			return 1 
		else
			local f=floor((1800-shijiancha)/60)  --还差多少分钟
			local s=1800-shijiancha-f*60
			LuaSay("晋帝:等会，@230分钟@0还没到，再等@2"..f.."分钟"..s.."秒钟@0后再来找我吧！")
		end
	elseif(LuaQueryTask("T302") == 1 ) then         --------------------此处检测是跟哪个NPC送信 ，铁匠
		if(LuaQueryTask("T302A") == 99 ) then 
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302A",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("驿站小吏：你还没有把信件送给@4桃源村@0的@3孟铁匠@0呢。")
			UpdateTopSay("将信件送给桃源村的孟铁匠")
		end
      

	elseif(LuaQueryTask("T302") ==2) then
		if(LuaQueryTask("T302B") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302B",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康城@0的@3晋清公主@0呢。")
			UpdateTopSay("将信件送给建康城的晋清公主")
		end
		  
	elseif(LuaQueryTask("T302") ==3) then
		if(LuaQueryTask("T302C") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302C",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康东郊@0的@3桓冲@0呢。")
			UpdateTopSay("将信件送给建康东郊的桓冲")
		end
		  
	elseif(LuaQueryTask("T302")==4) then
		if(LuaQueryTask("T302D") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302D",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康城难@0的@3种子商人@0。")
			UpdateTopSay("将信件送给建康城难的种子商人")
		end
			
	elseif(LuaQueryTask("T302") ==5) then
		if(LuaQueryTask("T302E") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302E",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4北府军营@0的@3比武使者@0呢。")
			UpdateTopSay("将信件送给北府军营的比武使者")
		end
		   
	elseif(LuaQueryTask("T302") ==6) then
		if(LuaQueryTask("T302F") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302F",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4山寨@0的@3谢道韫@0呢。")
			UpdateTopSay("将信件送给山寨的谢道韫")
		end
		  
	elseif(LuaQueryTask("T302") ==7) then
		if(LuaQueryTask("T302G") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302G",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康城南@0的@3药品商人@0呢。")
			UpdateTopSay("将信件送给建康城南的药品商人")
		end
		  
	elseif(LuaQueryTask("T302") ==8) then
		if(LuaQueryTask("T302H") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302H",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康城南@0的@3谢安@0呢。")
			UpdateTopSay("将信件送给建康城南的谢安")
		end
		   
	elseif(LuaQueryTask("T302") ==9) then
		if(LuaQueryTask("T302I") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302I",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4迷雾之林@0的@3田伍长@0呢。")
			UpdateTopSay("将信件送给迷雾之林的田伍长")
		end
		   
	elseif(LuaQueryTask("T302") ==10) then
		if(LuaQueryTask("T302J") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302J",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("驿站小吏：你还没有把信件送给@4建康城@0的@3司马元显@0呢。")
			UpdateTopSay("将信件送给建康城的司马元显")
		end

	elseif(LuaQueryTask("T302") == 11 ) then         
		if(LuaQueryTask("T302K") == 99 ) then 
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302K",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("驿站小吏：你还没有把信件送给@4桃源村@0的@3老村长@0呢。")
			UpdateTopSay("将信件送给桃源村的老村长")
		end
		  
	elseif(LuaQueryTask("T302") ==12) then
		if(LuaQueryTask("T302L") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302L",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("驿站小吏：你还没有把信件送给@4淝水对岸@0的@3朱序@0呢。")
			UpdateTopSay("将信件送给淝水对岸的朱序")
		end
		  
	elseif(LuaQueryTask("T302") ==13) then
		if(LuaQueryTask("T302M") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302M",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("驿站小吏：你还没有把信件送给@4洛阳郊外@0的@3符融@0呢。")
			UpdateTopSay("将信件送给洛阳郊外的符融")
		end
		  
	elseif(LuaQueryTask("T302")==14) then
		if(LuaQueryTask("T302N") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302N",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("驿站小吏：你还没有把信件送给@4洛阳城@0的@3王镇恶@0呢。")
			UpdateTopSay("将信件送给洛阳城的王镇恶")
		end
			
	elseif(LuaQueryTask("T302") ==15) then
		if(LuaQueryTask("T302O") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302O",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4洛城废墟@0的@3陶渊明@0。")
			UpdateTopSay("将信件送给洛城废墟的陶渊明")
		end

	elseif(LuaQueryTask("T302") ==16) then
		if(LuaQueryTask("T302P") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302P",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4渭水之滨@0的@3姚苌@0呢。") 
			UpdateTopSay("将信件送给渭水之滨的姚苌")
		end

	elseif(LuaQueryTask("T302") ==17) then
		if(LuaQueryTask("T302Q") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302Q",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4西蜀竹林@0的@3乞伏国仁@0呢。") 
			UpdateTopSay("将信件送给西蜀竹林的乞伏国仁")
		end

	elseif(LuaQueryTask("T302") ==18) then
		if(LuaQueryTask("T302R") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302R",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4陷落关口@0的@3拓拔仪@0呢。") 
			UpdateTopSay("将信件送给陷落关口的拓拔仪")
		end

	elseif(LuaQueryTask("T302") ==19) then
		if(LuaQueryTask("T302S") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302S",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4云中城@0的@3拓跋圭@0呢。")  
			UpdateTopSay("将信件送给云中城的拓跋圭")
		end

	elseif(LuaQueryTask("T302") ==20) then
		if(LuaQueryTask("T302T") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302T",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4太行古径@0的@3慕容垂@0呢。")
			UpdateTopSay("将信件送给太行古径的慕容垂")
		end

	elseif(LuaQueryTask("T302") ==21) then
		if(LuaQueryTask("T302U") == 99 ) then
			LuaSay("驿站小吏：阁下真是帮了我的大忙啊，现在我终于可以轻松一下了@!")
			if(LuaRandom(6)==0) then
				LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302U",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("驿站小吏：你还没有把信件送给@4参合坡@0的@3浑太后@0呢。") 
			UpdateTopSay("将信件送给参合坡的浑太后")
		end

	elseif(LuaQueryTask("T302") == 99 ) then
		LuaSay("驿站小吏：今天已经没有可送的信了@!，明天再来吧。")

	end      
-----------------------------------------------------------------------------每日信使任务结束

elseif(answer=="TPaoShang") then------------跑商
    if((GetCurrentTime()-LuaPublicQuery("PSshuaxin_CD"))>=300) 	 then     -------物品价格，公用一个刷新时间间隔，
        LuaPublicSet("PSshuaxin_CD",GetCurrentTime())   ----------重置公用刷新时间
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(20)+90)/100)     -------物品价格波动范围：-10%~25%   ，暂定
		LuaPublicSet("PS_FCS_price1",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price1",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price1",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price1",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price2",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price2",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price2",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price2",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price2",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price3",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price3",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price3",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price3",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price3",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price4",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price4",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price4",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price4",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price4",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price5",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price5",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price5",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price5",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price5",1000*(LuaRandom(20)+90)/100)
		UpdateMenu()
	end
   -------------------------
   
   
	if(LuaQueryTask("TPaoShang")==1) then
	if(LuaCheckBuff("518")==1)then      --------跑商保护检测
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 )then   -----超时与跑商金额满额的判断 
		LuaSay("驿站小吏：距离下次物品价格刷新还有@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."秒！@0你目前的跑商金额为@3"..LuaQueryTask("PSmoney").."铜币!@0")
       	LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("获得5分钟跑商保护状态")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----即将超时提醒
		LuaSay("驿站小吏：你今天的跑商期限不到@55分钟@0了！快@3把东西卖了@0吧，不然你会亏死的！")
		end
		AddMenuItem("@7货品列表","")                  -----------物品列表，以及出现在菜单的概率 
			AddMenuItem("@3玛瑙,单价@3"..LuaPublicQuery("PS_MN_price5").."铜币@0","PS_MN")
			AddMenuItem("@3翡翠石,单价@3"..LuaPublicQuery("PS_FCS_price5").."铜币@0","PS_FCS")
			AddMenuItem("@3水晶,单价@3"..LuaPublicQuery("PS_SJ_price5").."铜币@0","PS_SJ")
			AddMenuItem("@3珍珠,单价@3"..LuaPublicQuery("PS_ZZ_price5").."铜币@0","PS_ZZ")
			AddMenuItem("@3夜明珠,单价@3"..LuaPublicQuery("PS_YMZ_price5").."铜币@0","PS_YMZ")
		else
		LuaSay("驿站小吏：你今天的跑商已经到达期限或者跑商金额已满，快回复@4建康城@0的@3行脚商人@0吧！")
		UpdateTopSay("快回复建康城的行脚商人吧")
		end
    else
    LuaSay("驿站小吏：你身上的@3跑商保护状态@0已经消失，在路上容易遭受攻击，无法继续跑商！")
    LuaSay("@1提示@0：回行脚商人那里结束任务，能获得额外奖励，有机会触发隐藏奖励！现在确定立即结束？")
    AddMenuItem("@7操作列表","")
	AddMenuItem("@3结束跑商","PS_over")
    end
	end
elseif(answer=="PS_over")then
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
	if(LuaItemCount("o_mission414")~=0) then         ----删除跑商结束符
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	UpdateMenu()
elseif(answer=="PS_MN")then                 ---------------玛瑙买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_MN_buy_1")
	AddMenuItem("@3买10个","PS_MN_buy_10")
	AddMenuItem("@3卖1个","PS_MN_sell_1")
	AddMenuItem("@3卖10个","PS_MN_sell_10")
	AddMenuItem("@3全卖了","PS_MN_sell_all")
elseif(answer=="PS_MN_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price5"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price5"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price5"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上玛瑙不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_FCS")then                 ---------------翡翠石买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_FCS_buy_1")
	AddMenuItem("@3买10个","PS_FCS_buy_10")
	AddMenuItem("@3卖1个","PS_FCS_sell_1")
	AddMenuItem("@3卖10个","PS_FCS_sell_10")
	AddMenuItem("@3全卖了","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price5"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price5"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price5"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上翡翠石不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_SJ")then                 ---------------水晶买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_SJ_buy_1")
	AddMenuItem("@3买10个","PS_SJ_buy_10")
	AddMenuItem("@3卖1个","PS_SJ_sell_1")
	AddMenuItem("@3卖10个","PS_SJ_sell_10")
	AddMenuItem("@3全卖了","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price5"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price5"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上水晶不够或者跑商金额已经到达上限！")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------珍珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_ZZ_buy_1")
	AddMenuItem("@3买10个","PS_ZZ_buy_10")
	AddMenuItem("@3卖1个","PS_ZZ_sell_1")
	AddMenuItem("@3卖10个","PS_ZZ_sell_10")
	AddMenuItem("@3全卖了","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price5"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price5"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上珍珠不够或者跑商金额已经到达上限！")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------夜明珠买卖 
	AddMenuItem("@7操作列表","")
	AddMenuItem("@3买1个","PS_YMZ_buy_1")
	AddMenuItem("@3买10个","PS_YMZ_buy_10")
	AddMenuItem("@3卖1个","PS_YMZ_sell_1")
	AddMenuItem("@3卖10个","PS_YMZ_sell_10")
	AddMenuItem("@3全卖了","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------买1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price5"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------买10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price5"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上的铜币不够或者跑商金额不足！")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------卖1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------卖10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------全卖了 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("驿站小吏：你跑商金额已经到达上限！")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("驿站小吏：你身上夜明珠不够或者跑商金额已经到达上限！")
	
	end
	


-->>>>>>>>>>>>>>>>>祝福精灵

elseif(answer=="Tbless")then
	AddMenuItem("@7祝福精灵","")
	AddMenuItem("@7祝福精灵领取","bless_A")	
	AddMenuItem("@7领取祝福说明","bless_B")

elseif(answer=="bless_A")then
	LuaSay("驿站小吏：如果你愿意，我是说你愿意的情况下，你只需要花@2两通宝@0就能领取到双倍的@4祝福精灵@0哦，你就有更多的朋友能收到你的祝福了@!")
	AddMenuItem("@7领取选项","")
	AddMenuItem("@7正常领取","bless_A1")	
	AddMenuItem("@5双倍领取","bless_A2")
elseif(answer=="bless_A1")then
	local level= LuaQuery("level")
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("last_lv")~=LuaQuery("level"))then			
			if(LuaQuery("level")>=60)then 
				if(LuaFreeBag()>=3)then
					LuaSay("驿站小吏：快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
					end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
					
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("提示：你的背包空间不足3格，请先清理背包再来领取哦@!")
				end
			elseif(LuaQuery("level")>=40)then
				if(LuaFreeBag()>=2)then
					LuaSay("驿站小吏：快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
					end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
				end
			else
				if(LuaFreeBag()>=1)then
					LuaSay("驿站小吏：快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
					end
						LuaGive("e_mission416",1,"Tbless")
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("提示：你的背包空间不足1格，请先清理背包再来领取哦@!")
				end
			end

		else
			LuaSay("提示：当前等级已经领取过了@3祝福精灵@0了，不能重复领取了哦@!")
		end
	else
		LuaSay("提示：@3精灵祝福@0要在20级以后才能领取哦")
	end
elseif(answer=="bless_A2")then
	local level= LuaQuery("level")
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("last_lv")~=LuaQuery("level"))then
			if(LuaItemCount("o_gold1y")>=2)then
				if(LuaQuery("level")>=60)then 
					if(LuaFreeBag()>=6)then
						LuaSay("驿站小吏：恭喜你获得双倍的@4祝福精灵@0，快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
						end
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							DelItem("o_gold1y",2)
						LuaSetTask("last_lv",LuaQuery("level"))
						UpdateMenu()
					else
						LuaSay("提示：你的背包空间不足6格，请先清理背包再来领取哦@!")
					end
				elseif(LuaQuery("level")>=40)then
					if(LuaFreeBag()>=4)then
						LuaSay("驿站小吏：恭喜你获得双倍的@4祝福精灵@0，快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
						end
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							DelItem("o_gold1y",2)
						LuaSetTask("last_lv",LuaQuery("level"))
						UpdateMenu()
					else
						LuaSay("提示：你的背包空间不足4格，请先清理背包再来领取哦@!")
					end
				else
					if(LuaFreeBag()>=1)then
						LuaSay("驿站小吏：恭喜你获得双倍的@4祝福精灵@0，快把@3祝福精灵@0送给你的朋友吧，请把祝福精灵送给你升级最想感谢的朋友@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("驿站小吏：上一次升级你没有来领取@3祝福精灵@0，下次不要忘了哦@!")
						end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
						LuaSetTask("last_lv",LuaQuery("level"))
						DelItem("o_gold1y",2)
						UpdateMenu()
					else
						LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
					end
				end
			else
				LuaSay("提示：你的通宝不足哦，通宝可以在元宝商城中中购买到哦。@!")
			end

		else
			LuaSay("提示：当前等级已经领取过了@3祝福精灵@0了，不能重复领取了哦@!")
		end
	else
		LuaSay("提示：@3精灵祝福@0要在20级以后才能领取哦")
	end

elseif(answer=="bless_B")then
		LuaSay("驿站小吏：当你20级以后每升一级你都可以来我这里领取一个@3祝福精灵@0，当得到祝福精灵之后，将它赠送给你最想感谢的朋友吧。")
		LuaSay("驿站小吏：@3祝福精灵@0限时@21小时@0的使用时间，过期无效，赠送绑定，不能自己使用，只能赠送给你的朋友使用。")
		LuaSay("驿站小吏：不要忘记每次升级之后都可能领取哦，你要是忘记来领取，我可是不赔你的哦@!")
		LuaSay("驿站小吏：如果你愿意，我是说愿意的情况下，你花两@2通宝@0就可以领取到双倍的@4祝福精灵@0哦@!")
		LuaSay("驿站小吏：特别提示你哦，@4祝福精灵@0的有效期为@3一小时@0，所以领取之后抓紧时间送给你的朋友哦@!")

elseif(answer=="Tsnpc_38")then
	if(LuaQueryTask("Tsnpc_38")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("驿站小吏：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_38",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_38")==2)then
		LuaSay("驿站小吏：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_38")then
	if(LuaQueryTask("Tenpc_38")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("驿站小吏：这都是大人的功劳啊")
		LuaSetTask("Tenpc_38",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_38")==2)then
		LuaSay("驿站小吏：话已经带到了，快回去领取奖励吧")
	end



elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("驿站小吏：你现在的等级是"..level.."级")
		if(level<10)then
			LuaSay("驿站小吏：可以在@2桃源村@0、@2迷雾之林@0、@2建康城郊@0做任务、打怪升级。")
		elseif(level<15)then
			LuaSay("驿站小吏：你适合在@2建康东郊@0、@2五斗山@0升级，在@2建康城@0的@3晋清公主@0还能参加@2建康城@0的@1领主的争夺@0哦！")
			LuaSay("苻坚：@2建康城南@0的@3种子商人@0那里的@1千里行商@0可是一个很好的赚钱机会，@2建康城南@0的@3种子商人@0那里能进入@2种植场@0，@3种子商人@0那里能购买到各式各样的种子，悄悄的告诉你，摘花不算偷@!")
			--LuaSay("驿站小吏：再罗嗦一句，@2建康城南@0的@3种子商@0能让你体验到极限的@1问答挑战@0，谁更聪明呢，拭目以待哦。")
		elseif(level<20)then
			LuaSay("驿站小吏：适合在@2五斗山@0、@2山寨@0、@2山寨@0地牢升级！")
			LuaSay("驿站小吏：每天在@2建康城南@0的@3药品商人@0那里都有@1每日药品派送@0，免费的午餐不得不吃@!")
		elseif(level<25)then
			LuaSay("驿站小吏：适合在@2北府军营@0、@2军营前哨@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("驿站小吏：这时候@2建康城@0@3活动使者@0的@1勇闯迷宫活动@0、@2建康城@0@3行脚商人@0处的@1世界寻宝@0全都展现在你的面前来了哦！")
			LuaSay("驿站小吏：@2北府军营@0的@3比武使者@0现在可是你大展身手的好地方，挑战群雄、大展你的雄姿，统一指日可待")
			LuaSay("驿站小吏：还想知道点什么吗，还是告诉你吧，在@2建康城@0的@3防具商人@0那里现在能进行@1绑定装备@0、@2洗装备属性@0、@2降低装备等级需求@0，这些你都懂的哦@!")
		elseif(level<30)then
			LuaSay("驿站小吏：适合在@2淝水对岸@0、@2洛阳郊外@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("驿站小吏：升级的同时也不要忘记去@2建康南郊@0@3守城卫兵@0那里帮助下新人哦，好人必定会有好报，有时候听人唠叨未必不是一件好事哦@!")
		elseif(level<35)then
			LuaSay("驿站小吏：适合在@2渭水之滨@0、@2西蜀竹林@0升级，在升级的同时不要忘记了还有更多的有趣的玩法等你玩哦@!")
			LuaSay("驿站小吏：如果你已经找到了你的另一半，那么这个时候你可以带着她（他）一起去@2建康城@0@3晋清公主@0那里结婚了哦，我祝福你们永远幸福@!")
		elseif(level<40)then
			LuaSay("驿站小吏：适合在@2食人谷@0、@2白骨洞@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
		else
			LuaSay("驿站小吏：你现在的能力已经足够闯荡江湖了")
		end



end
LuaSendMenu()
return 1
end

