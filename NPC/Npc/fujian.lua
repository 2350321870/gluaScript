NPCINFO = { 
serial="61" ,
base_name="fujian",
icon=2580,
NpcMove=2580 ,
name="苻坚" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="全新升级秘籍",
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
	local T561 = LuaQueryTask("T561")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_45")==1 or LuaQueryTask("Tsnpc_45")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_45")
		if(LuaQueryTask("Tsnpc_45")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_45")==1 or LuaQueryTask("Tenpc_45")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_45")
		if(LuaQueryTask("Tenpc_45")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T507")==1) then
		AddTopSayMenuItem("@2收编败军【剧情】","T507")
		if(LuaItemCount("o_mission306")==1)then
			havetask4 =1
		end
		if(LuaItemCount("o_mission306")==0)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T486")==3 ) then
      	AddTopSayMenuItem("@2知恩图报【剧情】","T486")
		havetask2=1
	end

	if(LuaQueryTask("T508")==1 or LuaQueryTask("T508")==2 ) then
      		AddTopSayMenuItem("@2苻坚的请求【隐藏】","T508")
			if(LuaItemCount("o_drug_hp3")==0) then
				havetask4=1
			else
				havetask2=1
			end
	end
	if(LuaQueryTask("T505")==1) then
	     	AddTopSayMenuItem("@2探查军情【剧情】","T505")
	end

	if(LuaQueryTask("T580")==1 or LuaQueryTask("T580")==2) then
		AddTopSayMenuItem("@2昔日往事【剧情】","T580")
		if(LuaQueryTask("T580")==1)then
		havetask2=1
		end
	end		
	if(LuaQueryTask("T513")==1 or LuaQueryTask("T513")==2) then
		AddTopSayMenuItem("@2十万火急【剧情】","T513")
		if(LuaQueryTask("T513")==1) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T499")==1) then
		AddTopSayMenuItem("@2昔日枭雄【剧情】","T499")
		havetask2=1
	end           
	if(LuaQueryTask("T593")==1 or LuaQueryTask("T593")==2)  then
		AddTopSayMenuItem("@2伏魔号角【剧情】","T593")
		if(LuaQueryTask("T593")==1) then
		havetask2=1
		end
	end				
	if(LuaQueryTask("T599")==1 or LuaQueryTask("T599")==2)then
	    	AddTopSayMenuItem("@2收伏苻坚【剧情】","T599")
	    	if(LuaQueryTask("T599")==1) then
	    	havetask2=1
	    	end
	end
	if(LuaQueryTask("T562")==2)then
	    	AddTopSayMenuItem("@2姚苌的阴谋【剧情】","T562")
	    	havetask2=1
	end
        if(LuaQueryTask("T512")==1 or LuaQueryTask("T512")==2) then
		AddTopSayMenuItem("@2另觅他主【剧情】","T512")
		if(LuaQueryTask("T512")==1) then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T750")==1 or LuaQueryTask("T750")==2)then
		AddTopSayMenuItem("@2最后的挑战【剧情】@0","T750")
		if(LuaQueryTask("T750")==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T626")==1 or LuaQueryTask("T626")==2)  then
		AddTopSayMenuItem("@2寻求明主【剧情】","T626")
		if(LuaQueryTask("T626")==1)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T634")==1)then
		AddTopSayMenuItem("@2致命的误解【剧情】","T634")
		havetask2 =1
	end
	if(LuaQueryTask("T500")==1) then
		AddTopSayMenuItem("@2苻坚的忠告【剧情】","T500")
	end
	if(LuaQueryTask("T631")==1 or LuaQueryTask("T631")==2) then
		AddTopSayMenuItem("@2借兵【剧情】","T631")
		if(LuaQueryTask("T631")==2)then
	        havetask2=1
	    end
	end
--以上为黄色问号部分
	if(level>=45)then
		if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
			AddTopSayMenuItem("@7问答挑战【每日】","Twenda")
			havetask1=1
		else
			AddTopSayMenuItem("@7问答挑战【每日】","Twenda")
		end
	elseif(level>=40)then
		if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
			AddTopSayMenuItem("@2[新]@0@7问答挑战【每日】","Twenda")
			havetask1=1
		else
			AddTopSayMenuItem("@2[新]@0@7问答挑战【每日】","Twenda")
			havetask2=1
		end
	
	end
	if(level>35)then
		AddTopSayMenuItem("@3收集@0@5军资@0","T80")
	
	elseif(level>=30)then
		AddTopSayMenuItem("@5[新]@0@3收集@0@5军资@0","T80")
	end
	if(level>35)then
		AddTopSayMenuItem("@1追杀犯人@0","T270")
	elseif(level>=30) then
		AddTopSayMenuItem("@5[新]@0@1追杀犯人@0","T270")
	
        end
--以上为特殊部分
	
	--if(level>=25)  then 
	--AddTopSayMenuItem("@3真心话大冒险【高级】","SPEAKGJ")
	--end
	if(LuaQueryTask("T500")==0 and LuaQueryTask("T631")==99) then
		AddTopSayMenuItem("苻坚的忠告【剧情】","T500")
	        havetask1=1
	end

	if(LuaQueryTask("T505")==0 and level>=32) then
		AddTopSayMenuItem("探查军情【剧情】","T505")
	        havetask1=1
	end
	if(LuaQueryTask("T506")==0 and level>=33) then
		AddTopSayMenuItem("消灭叛军【剧情】","T506")
		havetask1=1
	end
	if(LuaQueryTask("T507")==0 and LuaQueryTask("T506")==99) then
		AddTopSayMenuItem("收编败军【剧情】","T507")
		havetask1 =1
	end
	---------------------------
	if(LuaQueryTask("T506")==1) then
		AddTopSayMenuItem("@2消灭叛军【剧情】","T506")
		havetask4=1
	end
	----------------------------
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3领主争夺【活动】","T1003") 
	end
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
-----------------------------------------------------------------

elseif(answer=="liaotian") then					--聊天
	LuaSay("苻坚：吾当重整北方，再伐东晋!")


elseif(answer=="Spp")then
	LuaSay("@5提示：由于此任务出现一些错误，暂时关闭，给您带来的不便敬请谅解@!")
-------------------------------------------------------------------
--------------------------------------------------------------------借兵
elseif(answer=="T631")then
	if(LuaQueryTask("T631")==1)then
		LuaSay(""..LuaQueryStr("name")..":北方慕容族氏@3慕容垂@0想将女儿嫁于秦王缔结联姻，不知意下如何啊？")
		LuaSay("苻坚：此女子真是貌美如花！如此甚好！以后有了慕容氏的相助，统一天下指日可待也！此番恩情不知如何报答？")
		LuaSay(""..LuaQueryStr("name")..":眼下@3慕容垂@0正用兵之际，不知秦王是否愿意借兵20万，以展示两家缔结联姻之好呢？")
		LuaSay("苻坚：20万......？大家都是一家人了应当相助，让我手下一员大将@3石越@0随你一同前往吧！")
		LuaSetTask("T631",2)
		AddLog("借兵【剧情】",631)
		LuaGive("o_mission369",1)
		UpdateMenu()
	elseif(LuaQueryTask("T631")==2)then
		LuaSay("苻坚：速去回禀@4太行古径@0的@3慕容垂@0吧！")
	end
-------------------------------------------------------------------

elseif(answer=="T593")then
		if(LuaQueryTask("T593")==1) then
			LuaSay(""..LuaQueryStr("name").."：前辈我是来向你借@2异族号角@0的。")
			LuaSay("苻坚：小伙子你拿去吧，我老了，也动不了了。")
			LuaSay("苻坚：拿着号角去@4食人谷@0制服@2羯族巫师@0。") 
			LuaGive("o_mission353",1)
			LuaSetTask("T593",2)
			AddLog("伏魔号角【剧情】",593)
			UpdateMenu()
			UpdateTopSay("去消灭掉羯族巫师吧！")
		elseif(T593==2) then
	    		LuaSay("苻坚:拿着号角去@4食人谷@0找@2羯族巫师@0！") 	
		end 
----------------------------------------------  探查军情
elseif(answer=="T505") then
	if(LuaQueryTask("T505")==0) then
		LuaSay("苻坚：汉族人真是有勇有谋！")
		LuaSay("苻坚：我的儿子正和姚苌一起出征，讨伐西蜀竹林的@3乞伏国仁@0，此时应该在洛阳西的@4渭水之滨@0。")
		LuaSay(""..LuaQueryStr("name").."：往左边的渭水之滨找姚苌探查情况。")
		LuaSetTask("T505",1)
		AddLog("探查军情【剧情】",505)
		UpdateMenu()             
	elseif(LuaQueryTask("T505")==1) then
		LuaSay("苻坚：你怎么还没有去@4渭水之滨@0找姚苌探查情况啊！")
		UpdateTopSay("去渭水之滨找姚苌探查情况")
	end
------------------------------------------------  昔日枭雄
elseif(answer=="T499") then
	if(LuaQueryTask("T499")==1) then
		LuaSay("苻坚：这是@3苻融@0的引荐信，如此甚好，日后你就为我效力吧。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T499jl")
	 end
elseif(answer=="T499jl") then
	if(LuaQueryTask("T499")==1) then
	        LuaSetTask("T499",99)
	        DelLog("499")
	        LuaAddJx("combat_exp",303000,"T499")
			LuaAddAchievementSchedule("Task_num",1)
	        LuaGive("coin",1000,"T499")
	        UpdateMenu()
	 end
-------------------------------------------------消灭叛军
elseif(answer=="T506") then
	if(LuaQueryTask("T506")==0) then
		LuaSay("苻坚:姚苌背叛了我，我要消灭他。")
		LuaSay("苻坚：去消灭@4渭水之滨@0的@3氐族战士30个@0")
		LuaSetTask("T506",1)
		AddLog("消灭叛军【剧情】",506)
		LuaSetTask("task_kill/mon_027/T506",1)
		UpdateMenu()
		UpdateTopSay("消灭30个氐族战士")
	elseif(LuaQueryTask("T506")==1) then
		if(LuaQueryTask("task_kill/mon_027/T506")>=31) then
		 LuaSay("苻坚：真是英雄出少年啊!")
		 AddMenuItem("@7任务完成","")
		 AddMenuItem("领取奖励","T506jl")
		else
		 LuaSay(""..LuaQueryStr("name")..":你还没有杀够@330个氐族战士。")
		 UpdateTopSay("杀够30个氐族战士再来找我")
		end
	end
	elseif(answer=="T506jl") then
		if(LuaQueryTask("T506")==1) then		
			LuaAddJx("combat_exp",321000,"T506")
			LuaGive("coin",1000,"T506")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_027/T506")
			LuaSetTask("T506",99)
			DelLog("506")
			UpdateMenu()
		end
-----------------------------------------------昔日往事
elseif(answer=="T580" ) then
	if(LuaQueryTask("T580")==1) then
		if(LuaItemCount("o_mission314")>=1)then
			LuaSay("苻坚:啊！玉佩")
			LuaSay("苻坚：其实乞伏国仁的叔父和我一起喜欢上了一个女人，而我已经有了家室,")
			LuaSay("苻坚：那女子最终放弃了我，我一气之下设计杀了@3乞伏国仁@0的叔父。")
			LuaSay("苻坚：少侠回去找@3乞伏国仁@0，说我愿意用自己的权势来补偿。")
			DelItem("o_mission314",LuaItemCount("o_mission314"))
        		LuaSetTask("T580",2) 
			AddLog("昔日往事【剧情】",580)
	    		UpdateMenu()
	    		UpdateTopSay("少侠回去找乞伏国仁，说我愿意用自己的权势来补偿。")
	    	end
	elseif(LuaQueryTask("T580")==2) then
	    	LuaSay("苻坚：少侠回去找@3乞伏国仁@0，说我愿意用自己的权势来补偿。")
	end
	--------------------------------------------------收编败军
elseif(answer=="T507") then
  if(LuaQueryTask("T507")==0)then
	LuaSay("苻坚：我这里有道密旨，请少侠在@4渭水之滨@0使用，使姚苌乱军重新归附我。")
	LuaSay("苻坚：这是项艰巨的任务，忘少侠保重。@!")
	LuaGive("o_mission306",1)
	LuaSetTask("T507",1)
	AddLog("收编败军【剧情】",507)
	UpdateMenu()
	UpdateTopSay("请将我的密旨在渭水之滨使用")
  elseif(LuaQueryTask("T507")==1)then
	if(LuaItemCount("o_mission306")==0)then
	LuaSay("苻坚：哈哈，多亏少侠，叛军才能归附与我，大恩不言谢。")
	LuaSay(""..LuaQueryStr("name").."：国家兴旺匹夫有责，这是我应该做的。")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T507jl")
	else
	LuaSay("苻坚：请将我的@2密旨@0在渭水之滨使用")
  	end
  end
	elseif(answer=="T507jl")then
		if(LuaQueryTask("T507")==1)then
		LuaAddJx("combat_exp",321000,"T507")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T507",99)
		DelLog("507")
		UpdateMenu()
		end
----------------------	-知恩图报
elseif(answer=="T486") then
 	if(LuaQueryTask("T486")==3) then
 	   LuaSay("苻坚:这不是我苦苦寻找的@2连环铠甲@0啊！少侠怎么知道我在找它。")
	   AddMenuItem("@7任务完成","")
	   AddMenuItem("领取奖励","T486jl")
	end
	     elseif(answer=="T486jl")then
		if(LuaQueryTask("T486")==3) then
		LuaSay("当你不知道做什么的时候，点击我身上的@3升级指导@0能告诉你当前等级你应该做什么哦！@!")
		LuaSetTask("T486",99)
		DelItem("o_mission330",LuaItemCount("o_mission330"))
		LuaAddJx("combat_exp",299000,"T486")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("486")
                UpdateMenu()
		end
---------------------------------苻坚的请求
elseif(answer=="T508") then
 	if(LuaQueryTask("T508")==0) then
 	   LuaSay("苻坚:少侠真是福缘不浅，我这里确实有件事需要你去做，因为你来的时机很巧，所以虽然事情不难，但是可以得到@3高额的报酬")
	   LuaSay(""..LuaQueryStr("name").."：有位算命先生说我有福相，看来还是有点道理的，哈哈")
	   LuaSay("苻坚:少侠，这就去洛阳城@3药品商人@0那里给我买一瓶@3玉清散@0来")
	   LuaSetTask("T508",2)
	   AddLog("苻坚的请求【剧情】",508)
	   UpdateTopSay("从洛阳药品商人那里买一瓶玉清散来")
	   UpdateMenu()
	elseif(LuaQueryTask("T508")==1) then
		if(LuaItemCount("o_drug_hp3")>=1) then
		   LuaSay("苻坚：真不错，这么快就拿来了！")
		   AddMenuItem("@7任务完成","")
		   AddMenuItem("领取奖励","T508jl")
		else
			LuaSay("苻坚：少侠速去@3药品商人@0买@4玉清散@0来吧")
		end
	end
		elseif(answer=="T508jl") then
			if(LuaQueryTask("T508")==1) then
				LuaSetTask("T508",99)
				DelItem("o_drug_hp3",LuaItemCount("o_drug_hp3"))
				DelLog("508")
				LuaAddJx("combat_exp",314000,"T508")
				LuaGive("coin",2000,"T508")
				UpdateMenu()
				end
	
-----------------------------------十万火急
elseif(answer=="T513") then
	if(LuaQueryTask("T513")==1) then
		LuaSay("苻坚:王镇恶的事情我知道了，你把我的回复带给他吧。这件事很急，请少侠务必快点回去")
		LuaSetTask("T513",2)
		AddLog("十万火急【剧情】",513)
		UpdateMenu()
		UpdateNPCMenu("wangzhene")
	elseif(LuaQueryTask("T513")==2)then
		LuaSay("苻坚：少侠怎么还在这里逗留，请快点把我的回复送给@3王镇恶")
	end 
		 
elseif(answer=="T599") then
	if(LuaQueryTask("T599")==1) then
		LuaSay(""..LuaQueryStr("name").."：@3鬼夫人@0让在下来请你帮她把@3乞伏奎@0从羯族中救出来")
		LuaSay(""..LuaQueryStr("name").."：@3鬼夫人@0知道你不会帮忙，她让我告诉你说@3乞付奎@0是你的孩子")
		LuaSay("苻坚：哎，自作孽啊，等我把@3乞伏奎@0从羯族中救出来，我就全力支持英雄的统一大业。")
		LuaSetTask("T599",2)
		AddLog("收伏苻坚【剧情】",599)		
		UpdateMenu()
		UpdateTopSay("你去告诉鬼夫人吧！")
	elseif(LuaQueryTask("T599")==2) then
	    LuaSay("去@4西蜀竹林@0找@3鬼夫人")
	end
elseif(answer=="T562") then
	if(LuaQueryTask("T562")==2) then
		LuaSay(""..LuaQueryStr("name").."：将军，据我所知，姚苌吃了败仗，那厮不敢回来，正在密谋着如何脱离于你，好自立为王")
		LuaSay("苻坚：多谢英雄，我早知道那狗东西要叛变，早做好了准备等他上钩，只要他敢自立为王，我就叫他有来无回。")
		LuaSay(""..LuaQueryStr("name").."：哦，是我多虑了！") 
		LuaSay("苻坚：多谢英雄为我排忧解难！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T562jl")
		end
	elseif(answer=="T562jl")then  -----------------给经验
		if(LuaQueryTask("T562")==2) then
		LuaSetTask("T562",99)
		DelLog("562")
		LuaAddJx("combat_exp",240000,"T562")
		DelLog("562")        -------日志的删除
		UpdateMenu()
		end 
	
	
	
elseif(answer=="T512") then
	if(LuaQueryTask("T512")==1) then  
           LuaSay(""..LuaQueryStr("name").."：@3王镇恶@0想投奔将军，望将军不记前嫌，给他一次机会。")
	   LuaSay("苻坚：我现在是思贤若渴，怎么会不收留他呢？")
           LuaSay("苻坚：若他肯投奔我，我一定出城十里相迎。麻烦少侠把这个消息告诉@3王镇恶@0。")     
	   LuaSetTask("T512",2)
           AddLog("另觅他主【剧情】",512)
           UpdateMenu()
           UpdateTopSay("把消息传达给王镇恶")
           UpdateMenu()
	   UpdateNPCMenu("wangzhene")
	else
	   LuaSay("苻坚：快把消息传给@3王镇恶@0")
	end
		

elseif(answer=="T626") then
    if(LuaQueryTask("T626")==1)then
		LuaSay(""..LuaQueryStr("name")..":东晋陶渊明有@3书信一封@0给你，让我告诉你仁义治国方可平天下！")
		LuaSay("苻坚：陶渊明？就是那个游说列国的落魄者！他的话不足为信！当今用武力才是王道！")
		LuaSay("苻坚：回去转告那个糟老头儿别再来烦我！")
		LuaSetTask("T626",2)
		AddLog("寻求明主【剧情】",626)
		UpdateMenu()
	elseif(LuaQueryTask("T626")==2)then
		LuaSay("苻坚：还在这里干什么？还不快回去找@3陶渊明@0！")
   		UpdateMenu()
 	end

elseif(answer=="T750")then                 --------------------------------最后的挑战【剧情】
	if(LuaQueryTask("T750")==1)then
		LuaSay("苻坚：你年轻有为，有勇有谋，统一之事我支持你！我们都老了啊。。。你去@4建康城宫殿里@0找@3晋帝@0去吧")
		LuaSay(LuaQueryStr("name").."：多谢前辈的指点，不会辜负您的！我这就去找@3晋帝@0")
		LuaSetTask("T750",2)
		AddLog("最后的挑战【剧情】",750)
		UpdateTopSay("去找晋帝吧")
		UpdateMenu()
	elseif(LuaQueryTask("T750")==2)then
		LuaSay("苻坚：快去找@3晋帝@0吧！他就在@4建康城宫殿里@0")
	end

elseif(answer=="T634")then
	if(LuaQueryTask("T634")==1)then
		LuaSay(""..LuaQueryStr("name").."：我被慕容垂下了@2西域奇毒@0，他说只有你能解。")
		LuaSay("苻坚：这毒我是能解，不过中毒不能超过五分钟。")
		local shijiancha=(GetCurrentTime() - LuaQueryTask("634time"))
		 if(shijiancha<=300) then
	    		LuaSay("苻坚：还好没过五分钟，要不然毒性扩及你的五脏内服神仙也救不了了，我立刻为你解毒。")
	    		AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T634jl")
		elseif(shijiancha>300) then
			 LuaSay("苻坚：哎，五分钟已经过了，我也无能为力。")
			 LuaSay("@7任务失败","")
			 UpdateTopSay("你已经中毒身亡，复活后可以重新接任务")
			LuaSetTask("T634",0)
       			LuaSet("hp",0)
       			FlushMyInfo("0x4")
       			DelLog("634")        -------日志的删除
        	UpdateMenu()
			UpdateNPCMenu("fujian")

        end
	end
elseif(answer=="T634jl") then
	if(LuaQueryTask("T634")==1) then
	    LuaSetTask("T634",99)
		LuaAddJx("combat_exp",568000,"T634")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("634")
		UpdateMenu()
	end


elseif(answer=="T500")then
	if(LuaQueryTask("T500")==0)then
		LuaSay("苻坚：慕容垂从我手里借兵去攻打背叛他的鲜卑慕容氏，我派了大将@3石越@0监视他，但一直没有音讯。")
		 LuaSay("苻坚：不过如今自己对称霸天下已经没有多大野心，也不愿去管了。") 
		 LuaSay("苻坚：你去告诉@4太行古径@0的@3慕容垂@0实情，并告知好自为之。")
		LuaSetTask("T500",1)      -------日志的添加
		AddLog("苻坚的忠告【剧情】",500)
		UpdateMenu()
	elseif(LuaQueryTask("T500")==1)then
		LuaSay("苻坚：此事事关重大，你怎么还没去@4太行古径@0找@3慕容垂@0？") 
	    UpdateTopSay("去太行古径找慕容垂") 
	end 

elseif(answer=="Tsnpc_45")then
	if(LuaQueryTask("Tsnpc_45")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("苻坚：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_45",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_45")==2)then
		LuaSay("苻坚：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_45")then
	if(LuaQueryTask("Tenpc_45")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("苻坚：这都是大人的功劳啊")
		LuaSetTask("Tenpc_45",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_45")==2)then
		LuaSay("苻坚：话已经带到了，快回去领取奖励吧")
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
		LuaSetTask("T80",0)
		LuaSetTask("80count",0)
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
				LuaSay("@7温馨提示@0：如果是随机增值类道具，需要未绑定的才能完成任务哦，当然此类任务奖励也是相当的丰厚哦")
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
			AddMenuItem("@P@3铜币","T80re1")
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
		AddMenuItem("@3铜币","T80re1")
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
		LuaSay("军需任务:按本官的指示寻找并提交指定物品,之后即可随机挑选铜币、经验或其它奖励。")
		LuaSay("完成会累加次数,奖励多少与完成次数相关,完成次数越多,奖励越高,累加次数达到上限不再增加。")
		LuaSay("@1没有取消却非要取消的话,累积完成次数会清零.")
		LuaSay("每天会赠2次取消任务的机会,可用来取消难度大的任务而不重置任务次数")
		LuaSay("帮会任务触发收集军资后完成本任务会同步增加帮会任务进度")
		LuaSay("累计完成次数达到一定数量或许会有惊喜噢.呵呵我只是说或许噢,如果我说一定有惊喜,那你做这个任务太功利了吧")


	-------------------------------------------------------------真心话大冒险【高级】 
--[[elseif(answer=="SPEAKGJ")then
	if(LuaQueryTempStr("online")=="ew22" and LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then
	LuaSay("提示：您所在的国家与该国不能进行物资流通！")	
	else
	
	if(LuaPublicQueryStr("Tpublic_SPEAKGJ_data")~=GetCurrentDay() )then ----第二天重置数据
		----1是否被占用，2真心话语句，3铜币，4铜币数量，5经验，6经验数量，7作者，8编写日期，9完成次数，10质量分
	    local num=1
  		while(num<100)
  		do

  		    LuaPublicSet("shuzu_a"..num.."",0)            -------是否被占用
  		    LuaPublicSetStr("shuzu_b"..num.."","")        -------真心话语句
  		    LuaPublicSet("shuzu_c"..num.."",0)            -------经验奖励数量
  		    LuaPublicSet("shuzu_d"..num.."",0)            -------铜币奖励数量
  		    LuaPublicSetStr("shuzu_e"..num.."","")        -------作者
  		    LuaPublicSetStr("shuzu_f"..num.."","")        -------编写日期
  		    LuaPublicSet("shuzu_g"..num.."",0)            -------被完成次数
  		    LuaPublicSet("shuzu_h"..num.."",0)            -------质量评分分数（人气）
  			num=num+1
		end
		LuaPublicSet("shuzu_cunchu",0)            -------占用存储
	    LuaPublicSetStr("Tpublic_SPEAKGJ_data",GetCurrentDay())
	end
		AddMenuItem("@7请选择","")
		AddMenuItem("@3我要做任务","SPEAKGJ_ZRW")
		if(LuaQuery("level")>=35) then
		AddMenuItem("@3我要编写任务","SPEAKGJ_XRW")
		AddMenuItem("@7我要领取报酬","SPEAKGJ_BC")
		end
		AddMenuItem("@7说明","SPEAKGJ_SM")
		UpdateMenu()
		
	end	
elseif(answer=="SPEAKGJ_ZRW")then   ---------做任务 
	if(LuaQueryStrTask("SPEAKGJ_renwu_Taskday")~=GetCurrentDay()) then
		LuaSetTask("SPEAKGJ_renwu",0) ------重置做任务编号 
		LuaSetTask("SPEAKGJ_renwu_r",0)
		LuaSetTask("SPEAKGJ_renwu_Taskday",GetCurrentDay())
	end
		if(LuaQueryTask("SPEAKGJ_renwu")~=99)then
  			if(LuaPublicQuery("shuzu_a1")==1 )then
				AddMenuItem("@7请选择","")
				AddMenuItem("@3随机说一句","ZRW_SJ")
				AddMenuItem("@3选择说一句","ZRW_XZ")
				AddMenuItem("@3放弃任务","ZRW_FQ")
				UpdateMenu()
			else
				LuaSay("提示：目前还没有任何玩家写过任务！")
			end
		else
			LuaSay("提示：你今天已经做过该任务，不能再做了！")
		end
			
		
	elseif(answer=="ZRW_SJ")then   ---------随机说一句 
		if(LuaQueryTask("SPEAKGJ_renwu")==0 )then  
			local num=LuaPublicQuery("shuzu_cunchu")
			local times=0 
			local r
			r=LuaRandom(num)+1 
			
			
			while(times<20)
  			do 
  				local b=LuaPublicQueryStr("shuzu_b"..r.."")
				local c=LuaPublicQuery("shuzu_c"..r.."")
				local d=LuaPublicQuery("shuzu_d"..r.."")
  				if(b~="" and c~=0 and d~=0) then
  					LuaSetTask("SPEAKGJ_renwu_r",r)
					LuaSetTask("SPEAKGJ_renwu",1)
					break
				else
					r=LuaRandom(num)+1
				end 
				times=times+1
			end
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
        	if(b~="" and c~=0 and d~=0) then
         	LuaSay("提示：请在公聊频道说一句@3"..b.."@0！你随机到的任务编号为@3"..LuaQueryTask("SPEAKGJ_renwu_r").."@0！")
			--LuaSay("提示：该任务经验奖励为@3"..floor(c*0.9*0.8).."@0！该任务铜币奖励为@3"..floor(d*0.9*0.8).."@0！")
			LuaSay("提示：该任务已经被完成了@3"..g.."次@0！@3人气为"..h.."@0！该任务作者是@3"..e.."@0，不满意可以放弃任务！")
        	else
        	LuaSay("提示：你随机到的任务编号为@3"..r.."@0,该任务尚未编写完成，请等作者先完成编辑吧！@3已经自动放弃了本次任务！@0")
        	LuaSetTask("SPEAKGJ_renwu",0)
        	LuaSetTask("SPEAKGJ_renwu_r",0)
        	end
		elseif(LuaQueryTask("SPEAKGJ_renwu")==1 )then 
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
		    if(LuaQueryTempStr("last_world_msg")==LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."") and LuaQueryTask("SPEAKGJ_renwu")~=99)  then
				LuaGive("coin",floor(d*0.9*0.8),"SPEAKGJ")
				LuaAddJx("combat_exp",floor(c*0.9*0.8),"SPEAKGJ")
				LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(c* (1-0.9*0.8) )  )
  		    	LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(d* (1-0.9*0.8) )  )
				local fen
				if(LuaQuery("level")<30) then    ------表
				fen=1
				elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
				fen=2
				elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
				fen=4
				elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
				fen=6
				elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
				fen=8
				elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
				fen=8
				elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
				fen=10
				elseif(LuaQuery("level")>=90) then
				fen=10
				end
				LuaPublicSet("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."",g+1)
				LuaPublicSet("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."",h+fen)
				LuaSetTask("SPEAKGJ_renwu",99)
			else
		        LuaSay("提示：你说错了！请在公聊频道说一句@3"..b.."@0！")
    			--LuaSay("提示：该任务经验奖励为@3"..floor(c*0.9*0.8).."@0！该任务铜币奖励为@3"..floor(d*0.9*0.8).."@0！")
				LuaSay("提示：该任务已经被完成了@3"..g.."次@0！@3人气为"..h.."@0！该任务作者是@3"..e.."@0，不满意可以放弃任务！")
		    end
		end 
	elseif(answer=="ZRW_XZ")then   ---------选择说一句 
		if(LuaQueryTask("SPEAKGJ_renwu")==0 )then
		    AddMenuItem("@7请选择","")
			AddMenuItem("@3输入编号","ZRW_XZ_shuru")
		elseif(LuaQueryTask("SPEAKGJ_renwu")==1 )then
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
		    if(LuaQueryTempStr("last_world_msg")==LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."") and LuaQueryTask("SPEAKGJ_renwu")~=99)  then
				LuaGive("coin",floor(d*0.9*0.8),"SPEAKGJ")
				LuaAddJx("combat_exp",floor(c*0.9*0.8),"SPEAKGJ")
				LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(c* (1-0.9*0.8) )  )
  		    	LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."",floor(d* (1-0.9*0.8) )  )
  		    	local fen
				if(LuaQuery("level")<30) then    ------表
				fen=1
				elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
				fen=2
				elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
				fen=4
				elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
				fen=6
				elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
				fen=8
				elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
				fen=8
				elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
				fen=10
				elseif(LuaQuery("level")>=90) then
				fen=10
				end
				LuaPublicSet("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."",g+1)
				LuaPublicSet("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."",h+fen)
				LuaSetTask("SPEAKGJ_renwu",99)
			else
		        LuaSay("提示：你说错了！请在公聊频道说一句@3"..b.."@0！")
    			--LuaSay("提示：该任务经验奖励为@3"..floor(c*0.9*0.8).."@0！该任务铜币奖励为@3"..floor(d*0.9*0.8).."@0！")
				LuaSay("提示：该任务已经被完成了@3"..g.."次@0！@3人气为"..h.."@0！该任务作者是@3"..e.."@0，不满意可以放弃任务！可以自由选择任务或随机任务！")
		    end
		end
		elseif(answer=="ZRW_XZ_shuru")then
		    EnterNumber(1,100)
		    AddMenuItem("@7请选择","")
			AddMenuItem("@3确定","ZRW_XZ_baocun")
		elseif(answer=="ZRW_XZ_baocun")then
			local num=LuaQueryTemp("min_max_num")
			LuaSetTask("SPEAKGJ_renwu_r",num)
			LuaSetTask("SPEAKGJ_renwu",1)
			local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local e=LuaPublicQueryStr("shuzu_e"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_renwu_r").."")
			local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_renwu_r").."")
        	if(b~="" and c~=0 and d~=0) then
         	LuaSay("提示：请在公聊频道说一句@3"..b.."@0！")
			--LuaSay("提示：该任务经验奖励为@3"..floor(c*0.9*0.8).."@0！该任务铜币奖励为@3"..floor(d*0.9*0.8).."@0！")
			LuaSay("提示：该任务已经被完成了@3"..g.."次@0！@3人气为"..h.."@0！该任务作者是@3"..e.."@0，不满意可以放弃任务！可以自由选择任务或随机任务！")
        	else
        	LuaSay("提示：该任务尚未完成，请等作者先完成编辑吧！@3已经自动放弃了本次任务！@0可以自由选择任务或随机任务！")
        	LuaSetTask("SPEAKGJ_renwu",0)
        	LuaSetTask("SPEAKGJ_renwu_r",0)
        	end
	elseif(answer=="ZRW_FQ")then   ---------放弃任务 
	    if(LuaQueryTask("SPEAKGJ_renwu")~=99)then
	        LuaSetTask("SPEAKGJ_renwu",0)
	        LuaSetTask("SPEAKGJ_renwu_r",0)
			LuaSay("提示：你可以重新接任务了！可以自由选择任务或随机任务！")
		else
			LuaSay("提示：你今天已经做过该任务了！")
		end
		                                              
		                                                
elseif(answer=="SPEAKGJ_XRW")then   ---------写任务 
	if ((LuaQueryTempStr("online")=="ew22" or LuaQueryTempStr("online")=="ew20" or LuaQueryTempStr("online")=="ew28") and ( LuaQueryStr("country_id")=="ew21" or LuaQueryStr("country_id")=="ew27" ))then
	LuaSay("提示：您所在的国家与该国不能进行物资流通！")
	else
		if(LuaQueryStrTask("Tself_SPEAKGJ_Taskday")~=GetCurrentDay()) then
			LuaSetTask("SPEAKGJ_number",0) ------重置编号，私人参数
			LuaSetTask("SPEAKGJ_cishu",0)  -----人数
			LuaSetTask("SPEAKGJ_renqi",0)  ------人气 
			LuaSetTask("SPEAKGJ_touzi",0)  ------作者投资的铜币
			LuaSetTask("SPEAKGJ_touzicha",0)  ------作者投资的铜币cha
			LuaSetTask("SPEAKGJ_jl1",0)
			LuaSetTask("SPEAKGJ_jl2",0)
			LuaSetTask("Tself_SPEAKGJ_Taskday",GetCurrentDay())
		end
		if(LuaQueryTask("SPEAKGJ_number")==0)then
			LuaSay("开始获取数据...")
			local num =LuaPublicQuery("shuzu_cunchu")+1
  			while(num<100)
  			do 
  				if(LuaPublicQuery("shuzu_a"..num.."")==0 )then
  				LuaPublicSet("shuzu_cunchu",num)
				break
				end 
  				num=num+1
			end
			if(num<100)   then
				LuaSetTask("SPEAKGJ_number",num)
				LuaPublicSet("shuzu_a"..num.."",1) 
				LuaPublicSetStr("shuzu_e"..num.."",LuaQueryStr("name"))        -------作者
  		    	LuaPublicSetStr("shuzu_f"..num.."",GetCurrentDay())        -------编写日期
				LuaSay("你的任务编号为@3"..LuaQueryTask("SPEAKGJ_number").."@0，你现在可以对此任务进行编写@3内容对白与经验铜币奖励！@0")
			else
				LuaSay("提示：很遗憾！所有编号已经被其他玩家占用，你今天不能编写任务了！")
			end
		else
		
		LuaSay("你今天的任务编号为@3"..LuaQueryTask("SPEAKGJ_number").."@0，你现在可以对此任务进行编写@3内容对白与经验铜币奖励！@0")		
		AddMenuItem("@7请选择","")
		AddMenuItem("@3输入真心话语句","XRW_yuju")
		AddMenuItem("@3输入经验奖励","XRW_jingyan")
		AddMenuItem("@3输入铜币奖励","XRW_tongbi")
		AddMenuItem("@7查看任务进度","XRW_look")
		AddMenuItem("@7返还经验和铜币","XRW_fanhuan")
		UpdateMenu()
		end 
	end
	elseif(answer=="XRW_yuju")then   ---------输入真心话语句 
	        LuaSay("提示：请输入对白内容，@3让做任务的玩家说的内容！不要输入任何符号、标点符号的非汉字非数字字符！@0，第二天会清空！")
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3输入数据","XRW_yuju_shuru")
     	elseif(answer=="XRW_yuju_shuru")then
       		EnterStr(3,20)
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3保存数据","XRW_yuju_baocun")
		elseif(answer=="XRW_yuju_baocun")then
		    local a=LuaQueryTempStr("enter_str")
		    if(a=="") then
		    LuaSay("提示：输入数据有不符合要求！")
		    else 
		    	LuaPublicSetStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."",a)
		    	LuaSay("提示：保存数据成功！")
		    end 
	elseif(answer=="XRW_jingyan")then   ---------输入经验奖励
     		LuaSay("提示：设定经验奖励会@3消耗你身上的铜币@0！然后转化成经验，添加到你编辑的任务里，@3比例为1：3！经验奖励数值是你输入的3倍！@0，第二天会清零！")
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3输入数据","XRW_jingyan_shuru")
     	elseif(answer=="XRW_jingyan_shuru")then
     		EnterNumber(100,50000000)
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3保存数据","XRW_jingyan_baocun")
		elseif(answer=="XRW_jingyan_baocun")then
		    local a=LuaQueryTemp("min_max_num")
		    if(a<100) then
		    LuaSay("提示：输入数据有不符合要求！")
		    else 
		    	if(LuaItemCount("coin")>=a)then
		    		LuaGive("coin",-1*a,"SPEAKGJ")
		    		LuaSetTask("SPEAKGJ_touzi",LuaQueryTask("SPEAKGJ_touzi")+a)
		    		LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."",a*3+LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number")..""))
		    		LuaSay("提示：保存数据成功！")
		  	  	else
		    		LuaSay("提示：你身上的铜币不足，保存数据失败！")
		    	end
		    end	
	elseif(answer=="XRW_tongbi")then   ---------输入铜币奖励
	        LuaSay("提示：设定铜币奖励会@3消耗你身上的铜币@0！然后添加到你编辑的任务里，@3比例为1：1！@0，第二天会清零！")
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3输入数据","XRW_tongbi_shuru")
     	elseif(answer=="XRW_tongbi_shuru")then
     		EnterNumber(100,50000000)
     		AddMenuItem("@7请选择","")
			AddMenuItem("@3保存数据","XRW_tongbi_baocun")
		elseif(answer=="XRW_tongbi_baocun")then
		    local a=LuaQueryTemp("min_max_num")
		    if(a<100) then
		    LuaSay("提示：输入数据有不符合要求！")
		    else 
		    	if(LuaItemCount("coin")>=a)then
		    		LuaGive("coin",-1*a,"SPEAKGJ")
		    		LuaSetTask("SPEAKGJ_touzi",LuaQueryTask("SPEAKGJ_touzi")+a)
		    		LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."",a+LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number")..""))
		    		LuaSay("提示：保存数据成功！")
		  		else
		    		LuaSay("提示：你身上的铜币不足，保存数据失败！")
		    	end
		    end 
    elseif(answer=="XRW_look")then   ---------查看任务进度
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."")
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")
        if(b~="" and c~=0 and d~=0) then
        LuaSay("提示：你编辑的对白任务为@3"..b.."@0！")
        LuaSay("提示：你设定的经验奖励累计残余量为@3"..c.."@0！你设定的铜币奖励累计残余量为@3"..d.."@0！")
        LuaSay("提示：该任务被完成次数为@3"..g.."@0！人气为@3"..h.."@0！")
        LuaSay("提示：你编写的任务已经@3处于开放状态！@0凡是完成的玩家可以获取大部分经验和铜币奖励，你可以随时补充奖励！")
        LuaSay("提示：为了保持你写的任务一直处于开放状态！每次发放奖励会残余一小部分，到第二天会被系统清零，@3请及时领取返还经验和铜币@0！避免损失！")
        else
        LuaSay("提示：你编写的任务尚未完成，处于未开放状态！")
        end
	elseif(answer=="XRW_fanhuan")then   ---------返还经验和铜币
	    LuaSay("提示：返还经验和铜币，只能返还@3残余量的90%！@0")
	    AddMenuItem("@7请选择","")
		AddMenuItem("@3确定","XRW_fanhuan_yes")
    elseif(answer=="XRW_fanhuan_yes")then   ---------返还经验和铜币
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."")
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")   -----经验 
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")   -----铜币 
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")
        LuaGive("coin",floor(d*0.9),"SPEAKGJ")
		LuaAddJx("combat_exp",floor(c*0.9),"SPEAKGJ")
		LuaPublicSet("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."",0)
  		LuaPublicSet("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."",0)
elseif(answer=="SPEAKGJ_BC")then   ---------领取报酬 
        local b=LuaPublicQueryStr("shuzu_b"..LuaQueryTask("SPEAKGJ_number").."") ---真心话语句
		local c=LuaPublicQuery("shuzu_c"..LuaQueryTask("SPEAKGJ_number").."")   ---经验奖励
		local d=LuaPublicQuery("shuzu_d"..LuaQueryTask("SPEAKGJ_number").."")   ----铜币奖励
		local g=LuaPublicQuery("shuzu_g"..LuaQueryTask("SPEAKGJ_number").."")   ---被完成次数
		local h=LuaPublicQuery("shuzu_h"..LuaQueryTask("SPEAKGJ_number").."")   ---人气分数
		local cishu=LuaQueryTask("SPEAKGJ_cishu")     ----被完成次数 私人参数
		local renqi=LuaQueryTask("SPEAKGJ_renqi")     ----人气分数  私人参数
		local touzi=LuaQueryTask("SPEAKGJ_touzi")     ----作者投资的铜币
		local touzicha=LuaQueryTask("SPEAKGJ_touzicha")     ----作者投资的铜币cha
		local jingyan
		jingyan= floor( ( 1+(h-renqi)/10 )*(touzi-touzicha)/(g-cishu)  )
		LuaSetTask("SPEAKGJ_touzicha",touzi)
		LuaSetTask("SPEAKGJ_cishu",g)
		LuaSetTask("SPEAKGJ_renqi",h)
		if(jingyan<=0) then
		LuaSay("提示：目前暂无奖励！")
		else
		LuaAddJx("combat_exp",jingyan,"SPEAKGJ2")
		end
		if(g>=20 and LuaQueryTask("SPEAKGJ_jl1")==0 )then
		LuaGive("o_state068j",1,"SPEAKGJ2")
		LuaSetTask("SPEAKGJ_jl1",99)
		else
		LuaSay("提示：如果你编写发布的任务有超过@320个玩家完成了@0！你可以获得一份额外的报酬！一天最多一次哦！")
		end
		
		if(h>=50 and LuaQueryTask("SPEAKGJ_jl2")==0 )then
		LuaGive("o_box004j",1,"SPEAKGJ2")
		LuaSetTask("SPEAKGJ_jl2",99)
		else
		LuaSay("说明：如果你编写发布的任务有超过@350的人气@0！你可以获得一份额外的报酬！一天最多一次哦！")
		end
		
elseif(answer=="SPEAKGJ_SM")then   ---------说明
	LuaSay("说明：做任务与普通真心话大冒险形式差不多，你可以随机做一个任务，或指定一个任务，前提是@3该任务有人完成了编写发布@0！")
	LuaSay("说明：随机或选择任务编号都是共享的，每天每人只能做一次。如果还没完成，对当前任务不满意，可以放弃任务重新接！")
	LuaSay("说明：如果你想编写发布任务，只要点击菜单就可以自动领取任务编号，目前暂定容量为@3100@0个编号！@335级以上@0的玩家才能编写发布任务！")
	LuaSay("说明：有了编号你就可以对应任务输入真心话语句，经验奖励，铜币奖励。这些奖励可得自己掏腰包出哦！")
	LuaSay("说明：其他玩家完成你编写的任务，可以增加你的人气！一个70级玩家比一个30级玩家完成你的任务，带来的人气要高得多！")
	LuaSay("说明：你可以根据你的任务被完成次数与人气来领取报酬。当然，如果没人做你的任务，什么报酬都没有哦！")

]]

elseif(answer=="T1003") then		--------------------领主争夺
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(GetCurrentDay()~=LuaQueryStrTask("1003Taskday")) then
		LuaSetTask("T1003",0)
		LuaDelTask("T1003line")
		LuaSetTask("1003dotime",0)
	end
	AddMenuItem("@7领主系统","")
	if(LuaQueryTask("T1003")==0) then 
		LuaSay("苻坚：每天的20：00就可开始参加本地的领主争夺，20：20结束报名，21：00活动结束。")
		LuaSay("苻坚：活动期间每找到一个满足条件的玩家，都会得到丰厚的经验奖励哦。@!")
		LuaSay("苻坚：在活动期间找到@3满足条件最多@0的玩家，将成为本地的领主。")
		AddMenuItem("占领申请","shenqing","")
	elseif(LuaQueryTask("T1003")>1 and  LuaQueryTask("T1003")<5) then
		AddMenuItem("成绩提交","tijiao","")
	elseif(LuaQueryTask("T1003")==5 and hour==20) then 
		AddMenuItem("继续寻找玩家","mapown","")
	end
	AddMenuItem("领地信息","xinxi","")
	AddMenuItem("领主称号","chenghao","")
	AddMenuItem("领主奖励","jiangli","")


elseif(answer=="shenqing") then
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local level= LuaQuery("level")
	if(level>=30 and level<=55) then 
		if(hour==20 and min<20) then
			if(IsMapHostNoParameter()~="true")then
				LuaSay("苻坚：地图领主那可是无上的荣耀，想要成为洛阳城的领主吗？那就快快报名吧，只需要缴纳@33000铜币@0就可以了。")
				LuaDelTask("1003firstget")
				AddMenuItem("@7领主系统","")
				AddMenuItem("报名","mapown","")
				AddMenuItem("放弃争夺","nomapown","")
			else 
				LuaSay("苻坚：在任领主不可参加其他领地的争夺。")	
			end
		elseif(hour<20)then
		LuaSay("苻坚：洛阳城的领主争夺活动还没开始呢，20：00才正式开始。")
		else                                                                                  
		LuaSay("苻坚：洛阳城的报名在20：20已经结束，每天的20：00到20:20之间都可以到我这里来报名。")
		end
	else
		LuaSay("苻坚：达到30-55级玩家可参与洛阳城的领主争夺。")
	end
elseif(answer=="tijiao") then	
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour==20) then
	local T1003line=LuaQueryStr("T1003line")
		if(LuaQueryTempStr("online")==T1003line)then
			if(TeamCount()==2) then
				if((TeamQuery("level")>=LuaQueryTask("1003level")-5) and (TeamQuery("level")<=LuaQueryTask("1003level")+5) and (TeamQueryStr("class")==LuaQueryStr("1003class"))) then	 
					LuaAddTask("1003dotime",1) 
					local num=LuaQueryTask("1003dotime")
					SaveMaxValueInRoom(num)
					LuaSay("苻坚：你成功的找到了1个满足条件的对象，现在已经成功的找到总共"..num.."个人了。")
					LuaAddJx("combat_exp",(50000+level^2*20),"T1004")
					LuaSay("苻坚：你还要继续挑战地图领主吗？那就继续寻找满足条件的玩家吧。") 
					LuaSetTask("T1003",5)  
					AddMenuItem("@7是否继续","")
					AddMenuItem("继续","mapown","")	
					AddMenuItem("不再寻找","giveup","")
				else
					local class=LuaQueryStr("1003class")
					if(class=="wu") then
						LuaSay("苻坚：你找的人不满足条件，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的侠客。")
					elseif(class=="shen")then
						LuaSay("苻坚：你找的人不满足条件，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的战士。")
					elseif(class=="xian")then                                                                       
						LuaSay("苻坚：你找的人不满足条件，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的谋士。")
					end 
					LuaSay("苻坚：你如果实在找不到满足该条件的玩家，可以选择放弃，以重新寻找其他满足条件的玩家，不过需要缴纳@3500@0的毁约费。")
					AddMenuItem("@7是否继续","")
					AddMenuItem("继续寻找","goon","")
					AddMenuItem("寻找新的玩家","findanother","")
				end
			else 
				local class=LuaQueryStr("1003class")
				if(class=="wu") then
					LuaSay("苻坚：必须和满足条件的对象1人组队，才能完成任务，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的侠客。")
				elseif(class=="shen")then
					LuaSay("苻坚：必须和满足条件的对象1人组队，才能完成任务，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的战士。")
				elseif(class=="xian")then                                                                       
					LuaSay("苻坚：必须和满足条件的对象1人组队，才能完成任务，你需要寻找1个@3"..(LuaQueryTask("1003level")-5).."~"..(LuaQueryTask("1003level")+5).."级的谋士。")
				end 
				LuaSay("苻坚：你如果实在找不到满足该条件的玩家，可以选择放弃，以重新寻找其他满足条件的玩家，不过需要缴纳@3500@0的毁约费。")
				AddMenuItem("@7是否继续","")
				AddMenuItem("继续寻找","goon","")
				AddMenuItem("寻找新的玩家","findanother","")
			end
		else
			LuaSay("你不是在本国报名的哦，需要到你报名的国家去提交任务物品@!")
		end

	else
		LuaSay("苻坚：你已经超过了成绩的提交时间21：00，只能以上次提交时间的结果为准。")
	end


elseif(answer=="jiangli") then	  -------------第一次的领取和后续每4小时领取一次
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	if(hour~=20)then
		if(IsMapHost("lu_lyc")=="true")then	 
			if(LuaQueryTask("1003firstget")==0) then
				LuaDelTask("1003dotime")		
				LuaSay("苻坚：恭喜你在本次的抢占领地中夺得了头标，成为本地的领主，可以获得@3"..LuaQueryStr("title").."@0的称号。")
				LuaGive("coin",30000,"T1003")
				LuaAddJx("combat_exp",(100000+80*level^2),"T1003")
				LuaGive("e_head005t",1,2,"T1003")
				LuaSetTask("T1003",99) 
				LuaSetTask("1003time",GetCurrentTime()) 
				LuaSetTask("1003firstget",1) 
				LuaGive("o_mission035",1)--征税令
				LuaGive("e_mission091",1)--施恩令
				LuaNotice("@2洛阳城领主"..LuaQueryStr("name").."@0领取了@230000@0铜币蓝装一件和大量经验,每4小时还能再领一次奖励。")
				LuaSay("苻坚：在本地领主易主之前，你每间隔4小时都可以到我这里来领取奖励。")      
			else
				local shijiancha=GetCurrentTime()-LuaQueryTask("1003time")
				if(shijiancha>=14400) then
				LuaSetTask("1003time",GetCurrentTime()) 
				LuaAddJx("combat_exp",(80000+40*level^2),"T1003")
				LuaGive("o_state068j",1)  
				LuaSay("苻坚：在本地领主易主之前，你每间隔4小时都可以到我这里来领取奖励。")   
				LuaNotice("@2洛阳城领主"..LuaQueryStr("name").."@0领取了魔池1个和大量经验。")
				else
				LuaSay("苻坚：2次奖励的领取间隔时间必须要大于4小时，你现在不可领取。")
				end
			end
		elseif(LuaQueryTask("T1003")>=2 and LuaQueryTask("T1003")<=5 and grade==2)then		
			LuaDelTask("1003dotime")
			LuaSay("苻坚：虽然没有拿到本地的领主地位，拿到第2名也是可喜可贺的。继续努力，争取下次夺魁。")
			LuaGive("coin",20000,"T1003")
			LuaAddJx("combat_exp",(55000+40*level^2),"T1003")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"T1003") 
			LuaNotice("@2洛阳城领主抢夺第2名"..LuaQueryStr("name").."@0领取了@220000@0铜币料材1个和大量经验。")
			LuaSetTask("T1003",99)
		elseif(LuaQueryTask("T1003")>=2 and LuaQueryTask("T1003")<=5 and grade==3)then			
			LuaDelTask("1003dotime")
			LuaSay("苻坚：虽然没有拿到本地的领主地位，拿到第3名也是可喜可贺的。继续努力，争取下次夺魁。")
			LuaGive("coin",10000,"T1003")
			LuaAddJx("combat_exp",(55000+40*level^2),"T1003")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"T1003") 
			LuaNotice("@2洛阳城领主抢夺第3名"..LuaQueryStr("name").."@0领取了@210000@0铜币料材1个和大量经验。")
			LuaSetTask("T1003",99)
		else
			LuaDelTask("1003dotime")		
			LuaSay("苻坚：以你现在的成绩无法获得领主奖励，还是继续加油吧。")
		end
	else
		LuaSay("苻坚：地图领主现在还名花无主，21:00以后，才会产生新的地图领主。")
	end

elseif(answer=="chenghao") then
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(IsMapHost("lu_lyc")=="true")then
		if(QueryTitle("title")~=6) then       -----------领主称号对比
			if(hour==20) then
				LuaSay("苻坚：现在正是洛阳城领主争夺活动期间，不可获得领主称号，等最终结果出来后，再来找我。")
			else
				LuaSay("苻坚：你现在是洛阳城的领主，想要激活称号吗？")
				AddMenuItem("激活称号","")
				AddMenuItem("激活称号","jihuo")
				AddMenuItem("不激活","bujihuo")
			end
		else
			LuaSay("苻坚：你已经激活了领主称号。")
		end
	else
		LuaSay("苻坚：你不是本地的领主，无法获得领主称号。")
	end

elseif(answer=="xinxi") then
	local level= LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour==20 and LuaQueryTask("T1003")>=1) then
		LuaSay("苻坚：现在暂时排第一的，寻找到了@3"..GetBestGradeNum().."@0个满足条件的玩家，时间无多，大家努力追赶把。")
	end
	LuaSay("本地领主最多可领取30000铜币,蓝装一件,魔池6个及大量经验。")
	LuaSay("洛阳城领主抢夺方式为找人，报名后，按要求找指定级别或职业的玩家组队来提交，就可累积成绩，找人次数最高者夺得领主，等级要求20级以上。")
      
elseif(answer=="giveup") then
      local num=LuaQueryTask("1003dotime") 
      LuaSay("苻坚：你现在才寻找到"..num.."个满足条件的玩家，你确定要放弃地图领主的争夺吗？")
      AddMenuItem("@7是否继续","")
      AddMenuItem("继续争夺","mapown","")
      AddMenuItem("放弃争夺","fangqi","")


elseif(answer=="mapown") then
	local level= LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	local r1
	if(LuaQueryTask("T1003")==0) then   
		if(hour==20 and min<20) then
			if(LuaItemCount("coin")>=3000) then
				LuaGive("coin",-3000,"T1003")      
				LuaSetTask("1003Taskday",GetCurrentDay())
				if(level<25) then 
					r1=level+15-LuaRandom(15)
				else   
					r1=level-LuaRandom(20)
				end
				LuaSetTask("1003level",r1)
				local r2=LuaRandom(3)  
				if(r2==0)then
				LuaSet("1003class","wu")
				LuaSetTask("T1003",2)		
				LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的侠客。")
				elseif(r2==1)then
				LuaSet("1003class","shen")
				LuaSetTask("T1003",3)
				LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的战士。")
				elseif(r2==2)then
				LuaSet("1003class","xian")
				LuaSetTask("T1003",4)
				LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的谋士。")
				end
				LuaSet("T1003line",LuaQueryTempStr("online"))
			else
				LuaSay("苻坚：必须有@33000铜币@0才可报名。")
			end
	      else
	      LuaSay("苻坚：报名时间到20：20截止，现在不能再报名参加活动了。")
	      end

	else
		if(level<25) then 
			r1=LuaRandom(15)  
			r1=r1+15-r1
		else   
			r1=LuaRandom(20)
			r1=level-r1
		end
		LuaSetTask("1003level",r1)
		local r2=LuaRandom(3)  
		if(r2==0)then
			LuaSet("1003class","wu")
			LuaSetTask("T1003",2)	
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的侠客。")
		elseif(r2==1)then
			LuaSet("1003class","shen")
			LuaSetTask("T1003",3)	
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的战士。")
		elseif(r2==2)then
			LuaSet("1003class","xian")
			LuaSetTask("T1003",4)		
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的谋士。")
		end
	end


elseif(answer=="findanother") then	
	local level= LuaQuery("level")
	local r1
	if(LuaItemCount("coin")>=500) then
		LuaGive("coin",-500,"T1003")      
		if(level<25) then 
			r1=LuaRandom(15)  
			r1=r1+15-r1
		else   
			r1=LuaRandom(20)
			r1=level-r1
		end
		LuaSetTask("1003level",r1)
		local r2=LuaRandom(3) 
		LuaSetTask("r2",r2)
		if(r2==0)then
			LuaSet("1003class","wu")
			LuaSetTask("T1003",2)		
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的侠客。")
		elseif(r2==1)then
			LuaSet("1003class","shen")
			LuaSetTask("T1003",3)			 
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的战士。")
		elseif(r2==2)then
			LuaSet("1003class","xian")
			LuaSetTask("T1003",4)	
			LuaSay("苻坚：你需要寻找1个@3"..(r1-5).."~"..(r1+5).."级的谋士。")
		end
	else
		LuaSay("苻坚：必须有@3500铜币@0才可重新寻找其他满足条件的玩家。")
	end

elseif(answer=="nomapown") then  
	LuaSay("苻坚：大好的机会等着你，难道你这样放弃了，在报名截至事件之前都可以来我这里报名。")

elseif(answer=="goon") then  
	LuaSay("苻坚：年轻人韧劲不错啊，找到满足条件的玩家后，组队来找我。")

elseif(answer=="jihuo")then
	SetTitleMeg(6)		------------------------6:太傅
	LuaSay("苻坚：你获得了@3"..LuaQueryStr("title").."@0的称号。")
elseif(answer=="bujihuo")then
	LuaSay("苻坚：拥有多个称号时，最后获取的称号会覆盖前面的称号，你可以到相应的npc处领取喜欢的称号。")

elseif(answer=="fangqi")then                                         
	LuaSay("苻坚：你已经放弃了继续寻找其他玩家，今天不能再继续该活动了。")
	LuaSetTask("T1003",99)    



elseif(answer=="T270") then    --追杀犯人 
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(GetCurrentDay()~=LuaQueryStrTask("270Taskday")) then
		LuaSetTask("T270",0)
		LuaSetTask("T270dotime",0)
	end
	if(LuaQueryTask("T270")==0) then
		if(level>=20) then
		LuaSay("苻坚：居然有这么多人乱杀无辜，还得少侠仗义出手，惩戒犯人")
			LuaSay("苻坚：追杀的犯人越多，奖励越高，击杀@310个犯人@0即可领取全额奖励。不过1小时内被杀过3次的犯人不计数@!")
			if(LuaQueryPersonInMap("lu_dilao")>=1)    then 
				LuaSay("苻坚：至少得追杀@33个犯人@0，才能完成任务哦@!")
				AddMenuItem("@7是否追杀犯人","")
				AddMenuItem("追杀犯人","kill","")
				AddMenuItem("胆小俺不去","nokill","")
			else
				LuaSay("苻坚：由于目前@1地牢地图@0没人，你还是别去了，去了也浪费1次任务!")	
			end 
		else
			LuaSay("苻坚：你太不自量力了，20级以后再来找我吧")
		end
	elseif(LuaQueryTask("T270")==1) then
		local killnum=LuaQueryTask("pks2")-LuaQueryTask("pks1")             --通过进出地牢控制
		LuaDelTask("pks1")
		LuaDelTask("pks2")
		if(killnum==0) then
			LuaSay("苻坚：天呐，你连1个犯人都没有杀到，真是太失败了。")
			if(LuaQueryTask("T270dotime")<2) then
			LuaSetTask("T270",0)
			else
			LuaSetTask("T270",99)
			LuaDelTask("T270dotime")
			UpdateMenu()
			end
		else
			if(killnum<3) then
				LuaSay("苻坚：你才追杀@3"..killnum.."个@0犯人，至少需要击杀3个犯人，任务才能通过@!")
				if(LuaQueryTask("T270dotime")<2) then
				LuaSetTask("T270",0)
				else
				LuaSetTask("T270",99)
				LuaDelTask("T270dotime")
				UpdateMenu()
				end
			else
				   LuaSay("苻坚：你刚追杀了地牢的犯人@3"..killnum.."@0个，真是前途不可限量啊@!")	
				   local exp
				   if(killnum<10)then
				   exp=20000+level^2*7*killnum+level*780*killnum
				   else
				   exp=20000+level^2*75+level*7800
				   end	
				   LuaAddJx("combat_exp",exp,"T270")		 
				   if(LuaQueryTask("T270dotime")<2) then
				   LuaSetTask("T270",0)
				   else
				   LuaSetTask("T270",99)
				   LuaDelTask("T270dotime")
				   end
				   UpdateMenu()
			end
	end
	DelLog("270")

	elseif(LuaQueryTask("T270")==99) then  
		LuaSay("提示：每天只能接@32次@0追杀犯人任务，明天再来吧@!")
	end

	elseif(answer=="kill") then
		LuaSetTask("270Taskday",GetCurrentDay())
		LuaAddTask("T270dotime",1) 
		LuaSetTask("T270",1)
		AddLog("追杀犯人",270)
		LuaSetTask("pks1",LuaQuery("pks"))        --杀人数
		ChangeMap("lu_dilao")

	elseif(answer=="nokill") then 
		LuaSay("苻坚：凡事都要量力而为，你可以考虑去追杀犯人的@!")




elseif(answer=="Twenda") then                 --每天3次，每次5轮，每轮20个题目，根据答对题目数判定是否进入下一轮：先按每天1次做  
	local Twenda=LuaQueryTask("Twenda") 
	if(GetCurrentDay()~=LuaQueryStrTask("wendaTaskday")) then
		LuaSay("提示：你每天有1次答题机会，每次答题分为5关，越到后面难度越大，奖励越高。")
		LuaSay("提示：答题过程中若被打断@23次@0，将视为自动@2放弃回答本轮后面题目@0。")
		LuaDelTask("Twenda")
		LuaDelTask("Twendatime")
		LuaSet("rightanswer",0)
		LuaSetTask("ddcs",0)
	end
	if(Twenda==0) then
		LuaSay("@7第1关：动漫")
		LuaSay("提示：需要答对20道题中的@35个题目@0，即可进入@3第2关。")
		AddMenuItem("@7是否答题","")
		AddMenuItem("试一试","C")
		AddMenuItem("放弃","giveup")
        
	elseif(Twenda==1) then   
		if(LuaQuery("zcount")<20)  then
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx1")
			AddMenuItem("@3放弃","fq")
			--LuaSay("由于你的答题被打断，现在将重新发放剩余题目，请仔细回答。")
			--TaskProcess("C")
		else
			if(LuaQuery("rightanswer")>=5) then        --1成功 --5
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，恭喜你@3第1关闯关成功！")
				AddMenuItem("@7领取奖励","")
				AddMenuItem("确定","num1")        
			elseif(LuaQuery("rightanswer")<5) then  
				if(LuaQueryTask("Twendaa")<99)then--------闯关失败
					LuaSay("提示：闯关失败！") 
					LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，需要答对5题才能进入第2关。")
					LuaSetTask("Twenda",99) 
    			elseif(LuaQueryTask("Twendaa")==99) then-----闯关成功  但是领过奖励了
    				LuaSay("@7第2关：五言绝句")         --进入第2关 
					LuaSay("提示：需要答对20道题中的@38个题目@0，即可进入@3第3关。")
					AddMenuItem("@7是否答题","")
					AddMenuItem("试一试","A")
					AddMenuItem("放弃","giveup")
    			end
			end
       end
     elseif(Twenda==2) then 
		if(LuaQuery("zcount")<20)  then
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx2")
			AddMenuItem("@3放弃","fq")
		else
			if(LuaQuery("rightanswer")>=8) then      --2成功    8
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，恭喜你@3第2关闯关成功！")
				AddMenuItem("@7领取奖励","")
				AddMenuItem("确定","num2")        
			elseif(LuaQuery("rightanswer")<8) then
				if(LuaQueryTask("Twendab")<99) then-------闯关失败
					LuaSay("提示：闯关失败！") 
					LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，需要答对8题才能进入第3关。")
					LuaSetTask("Twenda",99) 
				elseif(LuaQueryTask("Twendab")==99) then-----闯关成功  但是领过奖励了
					LuaSay("@7第3关：歌曲")             --进入第3关 
					LuaSay("提示：需要答对20道题中的@310个题目@0，即可进入@3第4关。")
					AddMenuItem("@7是否答题","")
					AddMenuItem("试一试","D")
					AddMenuItem("放弃","giveup")
				end
			end
        end 

            
     elseif(Twenda==3) then 
		if(LuaQuery("zcount")<20)  then
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx3")
			AddMenuItem("@3放弃","fq")
		else
			if(LuaQuery("rightanswer")>=10) then       --3成功 10
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，恭喜你@3第3关闯关成功！")
				AddMenuItem("@7领取奖励","")
				AddMenuItem("确定","num3")
			else
				if(LuaQueryTask("Twendac")<99) then
					LuaSay("提示：闯关失败！") 
					LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，需要答对10题才能进入第4关。")
					LuaSetTask("Twenda",99) 
				else
					LuaSay("@7第4关：七言绝句")         --进入第4关 
					LuaSay("提示：需要答对20道题中的@314个题目@0，即可进入@3第5关。")
					AddMenuItem("@7是否答题","")
					AddMenuItem("试一试","B")
					AddMenuItem("放弃","giveup")
				end
			end
        end    
        
     elseif(Twenda==4) then
		if(LuaQuery("zcount")<20)  then
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx4")
			AddMenuItem("@3放弃","fq")
		else
			if(LuaQuery("rightanswer")>=14) then          --4成功  14
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，恭喜你@4第4关闯关成功！")
				AddMenuItem("@7领取奖励","")
				AddMenuItem("确定","num4")
			else
				if(LuaQueryTask("Twendad")<99) then
					LuaSay("提示：闯关失败！") 
					LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，需要答对14题才能进入第5关。")
        --[[  if(LuaQueryTask("Twendatime")<2) then
					LuaDelTask("Twenda")
					LuaSay("提示：你已经参加过了"..LuaQueryTask("Twendatime").."次答题机会，每天可参与答题2次。")
				else
					LuaSay("提示：你已经用完了今天的3次答题机会。")
					LuaSetTask("Twenda",99) 
		  end]]
					LuaSetTask("Twenda",99)
				else
					LuaSay("@7第5关：百科")             --进入第5关 
					LuaSay("提示：需要答对20道题中的@316个题目@0，@3答题挑战成功")
					AddMenuItem("@7是否答题","")
					AddMenuItem("试一试","G")
					AddMenuItem("放弃","giveup")
				end 
			end 
		end
        
     elseif(Twenda==5) then
		if(LuaQuery("zcount")<20)  then
			LuaSay("由于你的答题被打断，现在选择是否继续答题。")
			AddMenuItem("@7是否继续答题","")
			AddMenuItem("@3继续","jx5")
			AddMenuItem("@3放弃","fq")
		else
			if(LuaQuery("rightanswer")>=16) then          --5成功     16
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，恭喜你@3第5关闯关成功！")
				AddMenuItem("@7领取奖励","")
				AddMenuItem("确定","num5")   
			else
				LuaSay("提示：真是可惜，最后一关功败垂成。")
				LuaSay("你答对了@3"..LuaQuery("rightanswer").."个题目@0，需要答对16题才能顺利通关。")
				LuaSetTask("Twenda",99) 
			end
		end
        
     elseif(Twenda==99) then 
        LuaSay("提示：你已经参加了今日的答题挑战，明天再来吧")        
     end 
     
      elseif(answer=="num1") then             --第1关奖励
	  local level= LuaQuery("level")
		if(level>80)then
		level=80
		end
          if(LuaQuery("rightanswer")>=5) then      --5
          if(LuaQuery("level")<20) then
          LuaAddJx("combat_exp",2000+level^2*10+level*200+LuaQuery("rightanswer")*500,"Twenda")
          else
          LuaAddJx("combat_exp",6000+level^2*10+level*600+LuaQuery("rightanswer")*2000,"Twenda")
          end
          LuaSetTask("Twendaa",99) 
          LuaDel("rightanswer")
          LuaSay("@7第2关：五言绝句")         --进入第2关 
          LuaSay("提示：需要答对20道题中的@38个题目@0，即可进入@3第3关。")
          AddMenuItem("@7是否答题","")
          AddMenuItem("试一试","A")
          AddMenuItem("放弃","giveup")
		  end
          
      elseif(answer=="num2") then             --第2关奖励
	  local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
          if(LuaQuery("rightanswer")>=8) then   --8
          if(LuaQuery("level")<20) then
          LuaAddJx("combat_exp",3000+level^2*20+level*300+LuaQuery("rightanswer")*500,"Twenda")
          else
          LuaAddJx("combat_exp",6000+level^2*20+level*1200+LuaQuery("rightanswer")*2000,"Twenda")
          end
          LuaDel("rightanswer")
          LuaSetTask("Twendab",99) 
          LuaDelTask("Twendaa")
          LuaSay("@7第3关：歌曲")             --进入第3关 
          LuaSay("提示：需要答对20道题中的@310个题目@0，即可进入@3第4关。")
          AddMenuItem("@7是否答题","")
          AddMenuItem("试一试","D")
          AddMenuItem("放弃","giveup") 
          end
          
          
	elseif(answer=="num3") then             --第3关奖励 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=10) then    --10
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",3000+level^2*30+level*400+LuaQuery("rightanswer")*500,"Twenda")
			else
				LuaAddJx("combat_exp",6000+level^2*30+level*1800+LuaQuery("rightanswer")*2000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaSetTask("Twendac",99) 
			LuaDelTask("Twendab")
			LuaSay("@7第4关：七言绝句")         --进入第4关 
			LuaSay("提示：需要答对20道题中的@314个题目@0，即可进入@3第5关。")
			AddMenuItem("@7是否答题","")
			AddMenuItem("试一试","B")
			AddMenuItem("放弃","giveup") 
		end
          
	elseif(answer=="num4") then             --第4关奖励 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=14) then     --14
			if(LuaQuery("level")<20) then
				LuaAddJx("combat_exp",4000+level^2*30+level*500+LuaQuery("rightanswer")*600,"Twenda")
			else
				LuaAddJx("combat_exp",6000+level^2*40+level*2400+LuaQuery("rightanswer")*3000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaSetTask("Twendad",99) 
			LuaDelTask("Twendac")
			LuaSay("@7第5关：百科")             --进入第5关 
			LuaSay("提示：需要答对20道题中的@316个题目@0，@3答题挑战成功")
			AddMenuItem("@7是否答题","")
			AddMenuItem("试一试","G")
			AddMenuItem("放弃","giveup")
		end
          
	elseif(answer=="num5") then             --第5关奖励 
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQuery("rightanswer")>=16) then            --16
			if(LuaQuery("level")<20) then
			LuaAddJx("combat_exp",4000+level^2*30+level*600+LuaQuery("rightanswer")*600,"Twenda")
			else
			LuaAddJx("combat_exp",6000+level^2*50+level*3000+LuaQuery("rightanswer")*4000,"Twenda")
			end
			LuaDel("rightanswer")
			LuaDelTask("Twendad")
			LuaSetTask("Twenda",99)
			LuaSay("提示：成功通过5关的答题。")             --进入第5关 
			--[[if(LuaQueryTask("Twendatime")<2) then
			LuaDelTask("Twenda")
			LuaSay("提示：你已经参加过了"..LuaQueryTask("Twendatime").."次答题机会，每天可参与答题2次。")
			end ]]
		end
	      
	elseif(answer=="A") then 
		if(LuaQueryTask("Twenda")<2) then
		LuaDelTask("Twendaa")
		LuaSetTask("Twenda",2)
		LuaSet("zcount",0) 
		TaskProcess("A")
		end
      elseif(answer=="B") then 
        if(LuaQueryTask("Twenda")<4) then
        LuaDelTask("Twendac")
	    LuaSetTask("Twenda",4)
		LuaSet("zcount",0) 
        TaskProcess("B")
        end
	  elseif(answer=="C") then 
	    if(LuaQueryTask("Twenda")<1) then
	    LuaSetTask("wendaTaskday",GetCurrentDay()) 
	    LuaAddTask("Twendatime",1) 
	    LuaSetTask("Twenda",1)  
	    LuaSet("zcount",0) 
        TaskProcess("C")
        end
      elseif(answer=="D") then
        if(LuaQueryTask("Twenda")<3) then
        LuaDelTask("Twendab")
	    LuaSetTask("Twenda",3) 
		LuaSet("zcount",0) 
        TaskProcess("D")
        end
	  elseif(answer=="G") then
	    if(LuaQueryTask("Twenda")<5) then
	    LuaDelTask("Twendad")
	    LuaSetTask("Twenda",5) 
		LuaSet("zcount",0) 
        TaskProcess("G")
        end

      elseif(answer=="giveup") then
        LuaSay("提示：你放弃了答题，不过什么时候都可以来继续的哦。")

elseif(answer=="jx1") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("C")
	else
		LuaSay("由于你今天答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx2") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("A")
	else
		LuaSay("由于你今天答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx3") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("D")
	else
		LuaSay("由于你今天答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx4") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("B")
	else
		LuaSay("由于你今天答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="jx5") then
	LuaAddTask("ddcs",1)
	if(LuaQueryTask("ddcs")<=3) then
		TaskProcess("G")
	else
		LuaSay("由于你今天答题过程中被打断@23次@0，视为@2放弃回答后面题目@0！")
		LuaSet("zcount",20)
		DoTalk("Twenda")
	end
elseif(answer=="fq") then
	LuaSet("zcount",20)
	DoTalk("Twenda")




elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("苻坚：你现在的等级是"..level.."级")
		if(level<10)then
			LuaSay("苻坚：可以在@2桃源村@0、@2迷雾之林@0、@2建康城郊@0做任务、打怪升级。")
		elseif(level<15)then
			LuaSay("苻坚：你适合在@2建康东郊@0、@2五斗山@0升级，在@2建康城@0的@3晋清公主@0还能参加@2建康城@0的@1领主的争夺@0哦！")
			LuaSay("苻坚：@2建康城南@0的@3种子商人@0那里的@1千里行商@0可是一个很好的赚钱机会，@2建康城南@0的@3种子商人@0那里能进入@2种植场@0，@3种子商人@0那里能购买到各式各样的种子，悄悄的告诉你，摘花不算偷@!")
			--LuaSay("苻坚：再罗嗦一句，@2建康城南@0的@3种子商@0能让你体验到极限的@1问答挑战@0，谁更聪明呢，拭目以待哦。")
		elseif(level<20)then
			LuaSay("苻坚：适合在@2五斗山@0、@2山寨@0、@2山寨@0地牢升级！")
			LuaSay("苻坚：每天在@2建康城南@0的@3药品商人@0那里都有@1每日药品派送@0，免费的午餐不得不吃@!")
		elseif(level<25)then
			LuaSay("苻坚：适合在@2北府军营@0、@2军营前哨@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("苻坚：这时候@2建康城@0@3活动使者@0的@1勇闯迷宫活动@0、@2建康城@0@3行脚商人@0处的@1世界寻宝@0全都展现在你的面前来了哦！")
			LuaSay("苻坚：@2北府军营@0的@3比武使者@0现在可是你大展身手的好地方，挑战群雄、大展你的雄姿，统一指日可待")
			LuaSay("苻坚：还想知道点什么吗，还是告诉你吧，在@2建康城@0的@3防具商人@0那里现在能进行@1绑定装备@0、@2洗装备属性@0、@2降低装备等级需求@0，这些你都懂的哦@!")
		elseif(level<30)then
			LuaSay("苻坚：适合在@2淝水对岸@0、@2洛阳郊外@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
			LuaSay("苻坚：升级的同时也不要忘记去@2建康南郊@0@3守城卫兵@0那里帮助下新人哦，好人必定会有好报，有时候听人唠叨未必不是一件好事哦@!")
		elseif(level<35)then
			LuaSay("苻坚：适合在@2渭水之滨@0、@2西蜀竹林@0升级，在升级的同时不要忘记了还有更多的有趣的玩法等你玩哦@!")
			LuaSay("苻坚：如果你已经找到了你的另一半，那么这个时候你可以带着她（他）一起去@2建康城@0@3晋清公主@0那里结婚了哦，我祝福你们永远幸福@!")
		elseif(level<40)then
			LuaSay("苻坚：适合在@2食人谷@0、@2白骨洞@0升级，在升级的同时不要忘记了还有更多的有趣的每日任务等你玩哦@!")
		else
			LuaSay("苻坚：你现在的能力已经足够闯荡江湖了")
		end





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
array[18]={18,"o_mix_book023","4级合成书","大量低级材料需要升级",4}
array[19]={19,"o_mix_book024","5级合成书","大量低级材料需要升级",5}
--以上30级前普通品
array[20]={20,"o_drug_hp3","玉清散(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[21]={21,"o_drug_mp3","天香露(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[22]={22,"o_drug_hp2","三叶散","小药品不能满足阵前的需要,我需要收集更好的药",3}
array[23]={23,"o_drug_hp3","玉清散(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[24]={24,"o_drug_mp2","花灵露","小药品不能满足阵前的需要,我需要收集更好的药",3}
array[25]={25,"o_drug_mp3","天香露(不绑定的)","小药品不能满足阵前的需要,我需要收集更好的药",5}
array[26]={26,"o_food01","宠物食品[粗]","我的军犬饿了",5}--出售品
array[27]={27,"o_material_13","3级毛","毛是基本的军需材料",15}--材料
array[28]={28,"o_material_22","3级皮","皮是基本的军需材料",15}
array[29]={29,"o_material_31","3级肉","肉是基本的军需材料",15}
array[30]={30,"o_material_40","3级木","木是基本的军需材料",15}
array[31]={31,"o_material_49","3级矿","矿是基本的军需材料",15}
array[32]={32,"o_material_58","3级晶","晶是基本的军需材料",15}
array[33]={33,"o_state053j","阎王之血(+500)(绑定的)","哦",70}
array[34]={34,"o_state056j","巫师水晶(+500)(绑定的)","哦",70}
array[35]={35,"o_state001j","双攻符[1小时](绑定的)","哦",70}
array[36]={36,"o_state012j","双防符[1小时](绑定的)","哦",70}
array[37]={37,"o_state065j","血池1(绑定的)","哦",70}
array[38]={38,"o_state068j","魔池1(绑定的)","哦",80}
array[39]={39,"o_state008j","初级经验符(绑定的)","哦",80}
--以上一般副产品
array[40]={40,"o_mission153","金枝","这可是价值连城的宝贝",50}
array[41]={41,"o_mission145","矿精","矿精乃是百年难得一遇的矿中精华",50}
array[42]={42,"o_mission018","破旧古董","我也不知道这东西的用处，不过它很值钱",50}
array[43]={43,"o_mission168","甲鱼","营里自己吃点一般的鱼就算了,给上面将军的食材可不能含糊",50}
array[44]={44,"o_food02","宠物食品[优]","我的军犬不知被哪个小瘪三打伤了,需要调养",50}--宠物任务才能得的任务品
--以上稀有品
array[45]={45,"o_food03","宠物食品[精]","哦",350}--增值品
array[46]={46,"o_state016y","还魂丹(不绑定的)","哦",120}
array[47]={47,"o_state053y","阎王之血(+500)(不绑定的)","哦",250}
array[48]={48,"o_state056y","巫师水晶(+500)(不绑定的)","哦",250}
array[49]={49,"o_state001y","双攻符[1小时](不绑定的)","哦",250}
array[50]={50,"o_state012y","双防符[1小时](不绑定的)","哦",250}
array[51]={51,"o_state065y","血池1(不绑定的)","哦",120}
array[52]={52,"o_state068y","魔池1(不绑定的)","哦",130}
array[53]={53,"o_state008y","初级经验符(不绑定的)","哦",250}
array[54]={54,"o_state017y","力量符+50(不绑定的)","哦",250}
array[55]={55,"o_state022y","智慧符+50(不绑定的)","哦",250}
array[56]={56,"o_state027y","敏捷符+50(不绑定的)","哦",250}
--array[65]={65,"o_food03","宠物食品","哦",50}
--以上增值品

count=56	--开放种类!!!新加array记得此处加量!!!
	if(level~=0)then--0则不重新生成
		if(level<20)then--按级别产生任务扩展后使用
		collection=LuaRandom(9)+1
		elseif(level<30)then
		collection=LuaRandom(19)+1
		elseif(level<40)then
		collection=LuaRandom(39)+1
		elseif(level<50)then
			if(LuaQueryTask("80count")/20==floor(LuaQueryTask("80count")/20))then
			collection=LuaRandom(count)+1
			else
			collection=LuaRandom(44)+1
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
  --earn=150+LuaRandom(100)+2*cdata[5]+LuaQueryTask("80count")--铜币上限控制old
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