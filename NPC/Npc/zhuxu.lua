NPCINFO = {
serial="58" ,
base_name="zhuxu",
icon=2576,
NpcMove=2576,
name="朱序" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="何时才能回到我的故乡啊...",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
		if((LuaQueryTask("Tsnpc_42")==1 or LuaQueryTask("Tsnpc_42")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_42")
		if(LuaQueryTask("Tsnpc_42")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_42")==1 or LuaQueryTask("Tenpc_42")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_42")
		if(LuaQueryTask("Tenpc_42")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw003")==3 or LuaQueryTask("Tbprw003")==4)then
		AddTopSayMenuItem("@2探听风云【每日】","Tbprw003")
		havetask2=1
	end
	if(LuaQueryTask("T853") == 1 or LuaQueryTask("T853") == 2)then
		AddTopSayMenuItem("@2昔日旧友【剧情】","T853")
		if (LuaItemCount("o_mission302")>=1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T470")==1) then
	        AddTopSayMenuItem("@2启程北方【剧情】","T470")
		havetask2 =1
	end
	if(LuaQueryTask("T473") == 1 or LuaQueryTask("T473") == 2)then
		AddTopSayMenuItem("@2鏖战万蛇【BOSS】","T473")
		if(LuaItemCount("o_mission315")>=1) then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T474") == 1 )then
		AddTopSayMenuItem("@2蛟胆炼利剑【循环】","T474")
		havetask2 =1
	end

	if(LuaQueryTask("T476") == 1 or LuaQueryTask("T476") == 2)then
		AddTopSayMenuItem("@2苦恼【剧情】","T476")
		if (LuaItemCount("o_mission340")>=1)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T477") == 1 )then
		AddTopSayMenuItem("@2抉择【剧情】","T477")
		havetask2 =1
	end
		AddTopSayMenuItem("进入淝水河底","jrfshd")
	
	if(LuaQueryTask("T302")==12 and LuaQueryTask("T302L")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302L")
		havetask2 =1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T471") == 1)then
		AddTopSayMenuItem("@2鼎力相助【剧情】","T471")
		havetask4 =1
	end
	if(LuaQueryTask("T472") == 1)then
		AddTopSayMenuItem("@2鼎力相助2【剧情】","T472")
		havetask4 =1
	end
	if(LuaQueryTask("T475") == 1 )then
		AddTopSayMenuItem("@2青水虫患【剧情】","T475")
		havetask4 =1
	end
--以上是灰色问号部分
	if(LuaQueryTask("T853") == 0 and level>=28)then
		AddTopSayMenuItem("昔日旧友【剧情】","T853")
		havetask1 =1
	end
	if( level>=28 and LuaQueryTask("T474") == 0 and level<33 and LuaQueryTask("T471") == 99)then
		AddTopSayMenuItem("蛟胆炼利剑【循环】","T474")
		havetask1 =1
	end
	if(LuaQueryTask("T471") == 0 and LuaQueryTask("T853") == 99)then
		AddTopSayMenuItem("鼎力相助【剧情】","T471")
		havetask1 =1
	end
	if(LuaQueryTask("T471") == 99 and LuaQueryTask("T472") == 0)then
		AddTopSayMenuItem("鼎力相助2【剧情】","T472")
		havetask1 =1
	end
	if(level>=29 and LuaQueryTask("T473") == 0)then
		AddTopSayMenuItem("鏖战万蛇【BOSS】","T473")
		havetask1 =1
	end
	if(LuaQueryTask("T475") == 0 and level>=29)then
		AddTopSayMenuItem("青水虫患【剧情】","T475")
		havetask1 =1
	end
	if(LuaQueryTask("T476") == 0 and LuaQueryTask("T475") == 99)then
		AddTopSayMenuItem("苦恼【剧情】","T476")
		havetask1 =1
	end
	if(level>=29 and LuaQueryTask("T477") == 0 and LuaQueryTask("T476") == 99)then
		AddTopSayMenuItem("抉择【剧情】","T477")
		havetask1 =1
	end
	
	if(LuaQueryTask("T470")==0  and level>=30 and LuaQueryTask("T472") == 99) then
	        AddTopSayMenuItem("启程北方【剧情】","T470")
	        havetask1 =1
	end
--以上是黄色问号部分

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
	elseif(answer=="jrfshd") then
		ChangeMap("lu_fshd")

elseif(answer=="liaotian") then
	LuaSay("朱序：老夫叛国也是无奈之举...其实，我真的很想回去")
	
elseif(answer=="T302L") then
	   if(LuaQueryTask("T302L")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("朱序：何人会给老夫写信呢？")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302L",99)
	   UpdateMenu()
	   end
elseif(answer=="T853"  and LuaQuery("level")>=25)then
	 if(LuaQueryTask("T853") == 0)then
	 LuaSay("朱序：阁下说是@3何谦@0让你来找老夫的?我不能完全相信你！除非......阁下能拿到@2何谦的佩剑@0，我方可信你！")
	 LuaSetTask("T853",1)
	 AddLog("昔日旧友【剧情】",853)
	 UpdateTopSay("去淝水之滨向何谦要来他的佩剑")
	 UpdateMenu()
	 elseif(LuaQueryTask("T853")==1) then
	 LuaSay("朱序：你还没有要来@2何谦的佩剑@0！他就在@4淝水之滨@0")
	 elseif(LuaQueryTask("T853")==2) then
		if (LuaItemCount("o_mission302")>=1)then
		LuaSay("朱序：这果然是@2何谦的佩剑！@0")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T853jl")
		end

	 end
	elseif(answer=="T853jl")then
	if (LuaItemCount("o_mission302")>=1)then
		LuaSetTask("T853",99)
		LuaAddJx("combat_exp",274000,"T853")
		DelItem("o_mission302",1)
		DelLog("853")
		UpdateMenu()
		end
elseif(answer=="T471" )then
	if(LuaQueryTask("T471") == 0)then
		LuaSay("朱序：北方@3苻坚@0兵强马壮，如今北方那些蛮人不敢进犯南方，因为在这淝水之中有一个叫@3万蛇@0的妖蛇在作怪!")
		LuaSay("朱序：苻坚兵马损失惨重，甚至已经兵分瓦解。但是同样道理，南方想要北伐也是没有可能，同样会遭到万蛇的袭击!")
		LuaSay(""..LuaQueryStr("name")..":让我去消灭巨蛇吧！")
		LuaSay("朱序："..LuaQueryStr("name").."：阁下区区一凡人怎么斗的过巨蛇，去消灭30个@2青水虫@0，你就知道这些妖物的厉害了！")
		LuaSay("朱序：组队完成任务会让你轻松许多，组队完成此任务有额外的经验奖励哦@!")
		LuaSetTask("T471",1)
		LuaSetTask("task_kill/mon_023/T471",1)
		UpdateTopSay("消灭30个青水虫")
		AddLog("鼎力相助【剧情】",471)
		UpdateMenu()
	elseif(LuaQueryTask("T471")==1) then
		if(LuaQueryTask("task_kill/mon_023/T471")>=31) then
			LuaSay("朱序：不错不错！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T471jl")
			else
			LuaSay("朱序：你还没杀够30个@2青水虫@0！")
			UpdateTopSay("杀够30个青水虫再来找我")
			end
	end
		elseif(answer=="T471jl")then
		        if(LuaQueryTask("T471")==1) then
					if(LuaQueryTask("task_kill/mon_023/T471")>=31) then
					if(TeamCount()>=2)then
						LuaAddJx("combat_exp",304000,"T471")
					else
						LuaAddJx("combat_exp",274000,"T471")
					end
					LuaGive("coin",2400,"T471")
					--31头饰 刺激点
					LuaGive("e_head011",1,3,"T471")
					LuaAddAchievementSchedule("Task_num",1)
					LuaDelTask("task_kill/mon_023/T471")
					DelLog("471")
					LuaSetTask("T471",99)
					UpdateMenu()
					end
			end
elseif(answer=="T472")then
	if(LuaQueryTask("T472") == 0) then
		LuaSay("朱序：想不到大侠有如此高深实力，既如此，帮老夫消灭30条@2碧水蛟@0吧！")
		LuaSetTask("T472",1)
		LuaSetTask("task_kill/mon_024/T472",1)
		UpdateTopSay("消灭30条碧水蛟")
		AddLog("鼎力相助2【剧情】",472)
		UpdateMenu()
	elseif(LuaQueryTask("T472")==1) then
		if(LuaQueryTask("task_kill/mon_024/T472")>=31) then
			LuaSay("朱序：大侠果然不同凡响！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T472jl")
			else
			LuaSay("朱序：你还没杀够30条@2碧水蛟@0！")
			UpdateTopSay("杀够30条碧水蛟再来找我")
			end
	end
		elseif(answer=="T472jl")then
		        if(LuaQueryTask("T472")==1) then
				if(LuaQueryTask("task_kill/mon_024/T472")>=31) then
				LuaAddJx("combat_exp",274000,"T472")
				LuaGive("coin",800,"T472")
				if( LuaQueryStr("class")=="wu")then   --侠客，29级 刀
					if(LuaRandom(5)==1)then
						LuaGive("e_falchion008",1,2,"T472")
					else
						LuaGive("e_falchion008",1,1,"T4723")
					end
				elseif(LuaQueryStr("class")=="xian")then --谋士，29级 笔
					if(LuaRandom(5)==1)then
						LuaGive("e_pen005",1,2,"T472")
					else
						LuaGive("e_pen005",1,1,"T472")
					end
				elseif(LuaQueryStr("class")=="shen")then--战士，29级 刀
					if(LuaRandom(5)==1)then
						LuaGive("e_falchion008",1,2,"T472")
					else
						LuaGive("e_falchion008",1,1,"T472")
					end
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_024/T472")
				DelLog("472")
				LuaSetTask("T472",99)
				UpdateMenu()
				end
			end
elseif(answer=="T473")then
	if(LuaQueryTask("T473") == 0) then
		LuaSay("朱序：或许...只有大侠如此高深莫测的本事，才能统一天下！")
		LuaSay(""..LuaQueryStr("name").."：将军，这便让我去斩了那@2万蛇@0！")
		LuaSay("朱序：那@2万蛇@0过于强大，得有些准备才行！带上@220个玉清散@0来找我，然后我告诉你那万蛇在何处！")
		LuaSay("@1温馨提示@0：当你与人组队，并且是你击杀boss，有机会获得@530多级蓝色武器一把@0！队伍人数越多，机会越大！")
		LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
		LuaSetTask("T473",1)
		AddLog("鏖战万蛇【BOSS】",473)
		UpdateTopSay("准备好@220个玉清散@0")
		UpdateMenu()
	elseif(LuaQueryTask("T473") == 1) then
		if(LuaItemCount("o_drug_hp3")>=20)then
		LuaSay("朱序：万蛇的栖身之处就在@4淝水河中心的河底@0，且由老夫帮你传送过去。")
		AddMenuItem("选择列表","","")
		AddMenuItem("鏖战万蛇","YES","")
		AddMenuItem("再等等","NO","")
		UpdateTopSay("获取万蛇之心")
		else
		LuaSay("朱序：大侠身上携带的@2玉清散@0不足20个。")
		UpdateTopSay("准备至少20个玉清散")
		end
	elseif(LuaQueryTask("T473") == 2) then
		if(LuaItemCount("o_mission315")>=1)then
			LuaSay("朱序：大侠本领可谓神鬼莫测啊！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T473jl")
			else
			LuaSay("朱序：你还没杀@2万蛇@0,获取@2万蛇之心@0呢")
			UpdateTopSay("获取万蛇之心再来找我")
			end
	end

	elseif(answer=="YES") then
		if(LuaQueryTask("T473") == 1) then
		LuaSetTask("T473",2)
		AddLog("鏖战万蛇【BOSS】",473)
		UpdateMenu()
		end
		ChangeMap("lu_fshd")
	elseif(answer=="NO") then
		LuaSay("朱序：准备好了就告诉我一声！")
	elseif(answer=="T473jl")then
		        if(LuaQueryTask("T473")==2) then
				if(LuaFreeBag()>=1)then
					if(LuaItemCount("o_mission315")>=1) then
					LuaAddJx("combat_exp",520000,"T473")
					LuaGive("coin",10000,"T473")
					if(LuaQueryTask("Ttaozhuang30B") == 0) then
					LuaGive("e_clothes166",1,2,"T473")
					LuaSetTask("Ttaozhuang30B",99)
					end
					LuaAddAchievementSchedule("Task_num",1)
					DelItem("o_mission315",LuaItemCount("o_mission315"))
					LuaSetTask("T473",99)
					DelLog("473")
					UpdateMenu()
					end
			
				else
					LuaSay("提示：你的背包空间不足1格，请先清理背包再来领取哦@!")
				end
			end
elseif(answer=="T474")then
	if(LuaQueryTask("T474") == 0) then
		LuaSay("朱序：唉!故友@3何谦@0昔日的利剑，如今已锈迹斑斑！")
		LuaSay("朱序："..LuaQueryStr("name").."，你可愿意帮老夫从@2碧水蛟@0上取些蛟胆来？此@2碧水蛟胆@0不是凡物，可以让兵器保持锋利不生锈！")
		if(TeamCount()>=2)then
			LuaSay("朱序：如果现在你的队长身上具有多倍经验的状态，那么你也能享受到50%哦@!")
		else
			LuaSay("朱序：@2碧水蛟胆@0不同凡响建议子对前往，组队还有海量的额外经验哦")
		end
		LuaSetTask("T474",1)
		UpdateTopSay("获取10个碧水蛟胆")
		AddLog("蛟胆炼利剑【循环】",474)
		UpdateMenu()
	elseif(LuaQueryTask("T474")==1) then
		if (LuaItemCount("o_mission311")>=10)then
		LuaSay("朱序：多谢大侠相助，可惜这么点蛟胆还远远不够！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T474jl")
		else
		LuaSay("朱序：大侠收集的@2碧水蛟胆@0不足10个。")
		UpdateTopSay("收集10个碧水蛟胆再来找我吧")
		end
	end
	elseif(answer=="T474jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T474")==1) then
			if(LuaItemCount("o_mission311")>=10) then
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
				if(TeamCount()>=2)then
					LuaSay("@1提示：获得组队经验加成")
					jingyan=(75835+level^2*20)
				else
					jingyan=(40000+level^2*20)
				end
				LuaAddJx("combat_exp",jingyan,"T474")
				LuaGive("coin",money,"T474")
				if(LuaQueryTask("T474_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T474_a",99)
				end

				DelItem("o_mission311",10)
				DelLog("474")
				LuaSetTask("T474",0)
				UpdateMenu()
			end
                end
elseif(answer=="T475")then
	if(LuaQueryTask("T475") == 0) then
		LuaSay("朱序：@2青水虫@0是这一带食草的害虫，已经泛滥成灾，劳烦少侠帮老夫消灭30个!")
		LuaSetTask("T475",1)
		LuaSetTask("task_kill/mon_023/T475",1)
		UpdateTopSay("消灭30个青水虫")
		AddLog("青水虫患【剧情】",475)
		UpdateMenu()
	elseif(LuaQueryTask("T475")==1) then
		if(LuaQueryTask("task_kill/mon_023/T475")>=31) then
			LuaSay("朱序：这真是大快人心！")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T475jl")
			else
			LuaSay("朱序：你还没杀够30个@2青水虫@0！")
			UpdateTopSay("杀够30个青水虫再来找我")
			end
		end
		elseif(answer=="T475jl")then
		        if(LuaQueryTask("T475")==1) then
					if(LuaQueryTask("task_kill/mon_023/T475")>=31) then
					LuaAddJx("combat_exp",286000,"T475")
					LuaGive("coin",2200,"T475")
					LuaAddAchievementSchedule("Task_num",1)
					LuaDelTask("task_kill/mon_023/T475")
					DelLog("475")
					LuaSetTask("T475",99)
					UpdateMenu()
					end
			end

elseif(answer=="T476")then
	if(LuaQueryTask("T476") == 0) then
		LuaSay("朱序：@2青水虫@0在这一带肆虐，着实让老夫头疼!")
		LuaSay("朱序：此害虫杀不尽，斩不完...该如何是好，少侠可否帮老夫去@4淝水之滨@0向@3何谦@0讨个妙计来？")
		LuaSetTask("T476",1)
		UpdateTopSay("去淝水对岸向何谦讨个妙计")
		AddLog("苦恼【剧情】",476)
		UpdateMenu()
	elseif(LuaQueryTask("T476")==1) then
		LuaSay("朱序：去问何谦呢！他就在@4淝水之滨@0")
	elseif(LuaQueryTask("T476")==2) then
		if (LuaItemCount("o_mission340")>=1)then
		LuaSay("朱序：含有砒霜的杀虫药！好东西啊！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T476jl")
		end
	end
		elseif(answer=="T476jl")then
		        if(LuaQueryTask("T476")==2) then
					if (LuaItemCount("o_mission340")>=1)then
					LuaSetTask("T476",99)
					LuaAddJx("combat_exp",286000,"T476")
					LuaAddAchievementSchedule("Task_num",1)
					DelItem("o_mission340",1)
					DelLog("476")
					LuaSetTask("T476",99)
					UpdateMenu()
					end
			end
elseif(answer=="T477")then
	if(LuaQueryTask("T477") == 0) then
	LuaSay("朱序：把@2杀虫药@0散播在这一带，可以消灭大量青水虫，问题是，一段时间内，草不能当饲料，水也饮用不了了！")
	LuaSay("朱序：少侠你觉得该不该使用？")
	UpdateTopSay("我想听听少侠的意见")
	AddLog("抉择【剧情】",477)
	AddMenuItem("选择列表","","")
	AddMenuItem("用","YES2","")
	AddMenuItem("不用","NO2","")
	end
elseif(answer=="YES2") then
	if(LuaQueryTask("T477") == 0) then
	LuaSay(""..LuaQueryStr("name").."：牺牲是必须的，至少在很长一段时间里看不到大量青水虫了")
	LuaSay("朱序：那就依少侠所言！毒死这群害虫！")
	LuaAddJx("combat_exp",286000,"T477")
	LuaAddAchievementSchedule("Task_num",1)
	DelLog("477")
	LuaSetTask("T477",99)
	UpdateMenu()
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("T477") == 0) then
	LuaSay(""..LuaQueryStr("name")..":在下觉得，这是治标不治本的方法，一旦使用，反而会污染水和草")
	LuaSay("朱序：少侠所言极是，还是顺其自然吧！")
	LuaAddJx("combat_exp",286000,"T477")
	LuaAddAchievementSchedule("Task_num",1)
	DelLog("477")
	LuaSetTask("T477",99)
	UpdateMenu()
	end



	elseif(answer=="T470") then
		if(LuaQueryTask("T470")==0) then
	    	LuaSay("朱序：老夫身为东晋降将，身在秦营心在东晋，日子难过啊！")
	    	LuaSay("朱序：@3"..LuaQueryStr("name").."@0英雄你身负重任，你利用老夫的身份，带着老夫在苻坚那做手下时的@2信物@0去找@4洛阳郊外@0的@3苻融@0。")
		LuaGive("o_mission303",1,"T470")
		LuaSetTask("T470",1)
		AddLog("启程北方【剧情】",470)-------日志的添加
	    	UpdateMenu()
		elseif(LuaQueryTask("T470")==1 and LuaItemCount("o_mission303")==0) then
		LuaSay("朱序：老夫把这么重要的信物交给你，你却把它弄丢了!")
           	LuaSay("朱序：再给你一次机会，带着老夫在苻坚手下的@2信物@0去找@4洛阳郊外@0的@3苻融@0。")
           	LuaGive("o_mission303",1,"T470")
           	UpdateMenu()
		elseif(LuaQueryTask("T470")==1 and LuaItemCount("o_mission303")==1) then
		LuaSay("朱序：告诉你带着老夫在苻坚那做手下时的@2信物@0去找@4洛阳郊外@0的@3苻融@0！")
		end

elseif(answer=="Tbprw003")then
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==3)then
			LuaSay(""..LuaQueryStr("name").."：在下远道而来，就是想向前辈请教关于治理的问题，不知前辈可否指点一二？")
			LuaSay("朱序：难得你这么好学，我就给你指点指点。治理二字，最主要是对民要实施仁政，要赏罚分明，这样方可兴旺发达！")
			LuaSetTask("Tbprw003",4)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==4)then
				LuaSay("朱序：快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
		end
	else
		LuaSay("朱序：由于你昨天的@2探听风云【每日】未完成，现在自动重置，到@4晋帝@0那重新接任务吧！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end

elseif(answer=="Tsnpc_42")then
	if(LuaQueryTask("Tsnpc_42")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("朱序：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_42",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_42")==2)then
		LuaSay("朱序：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_42")then
	if(LuaQueryTask("Tenpc_42")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("朱序：这都是大人的功劳啊")
		LuaSetTask("Tenpc_42",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_42")==2)then
		LuaSay("朱序：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end

