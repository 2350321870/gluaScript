NPCINFO = { 
serial="70" ,
base_name="guifuren",
icon=2551,
NpcMove=2551,
name="鬼夫人" ,
iconaddr=1 ,
butt="5|5|57" ,
name_color="CEFFCE" ,
lastsay="乱世出英雄",
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
	if(LuaQueryTask("T593")==1 or LuaQueryTask("T593")==2) then
 		AddTopSayMenuItem("@2伏魔号角【剧情】","T593")
	end
	if(LuaQueryTask("T610")==1) then
		AddTopSayMenuItem("@2幼子仁心【剧情】","T610")
 		havetask2=1
	end
	if(LuaQueryTask("T594")==1) then
		AddTopSayMenuItem("@2获救喜讯【剧情】","T594")
	end

	if(LuaQueryTask("T595")==1)then
		AddTopSayMenuItem("@2回首往事【剧情】","T595")
		if(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T597")==1)then
		AddTopSayMenuItem("@2回首往事2【剧情】","T597")
		if(LuaItemCount("o_seed015")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T584")==1)then
		AddTopSayMenuItem("@2扭转乾坤【剧情】","T584")
		havetask2=1
	end
	if(LuaQueryTask("T599")==1 or LuaQueryTask("T599")==2)then
		AddTopSayMenuItem("@2收伏苻坚【剧情】","T599")
		if(LuaQueryTask("T599")==2) then
		havetask2=1
		end
	end
--以上为黄色问号部分
	if(LuaQueryTask("T581")==1)  then
		AddTopSayMenuItem("@2鬼妇叔嫂【剧情】","T581")
		if(LuaItemCount("o_mission322")>=20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T590")==1) then
		AddTopSayMenuItem("@2压制毒素【剧情】","T590")
		if(LuaItemCount("o_mission322")>=20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T591")==1) then
		AddTopSayMenuItem("@2邪术异变【剧情】","T591")
		if(LuaItemCount("o_mission309") >= 20) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T592")==1) then
		AddTopSayMenuItem("@2幼子线索【剧情】","T592")
		if(LuaItemCount("o_mission310") == 1) then
			havetask2=1
		else
			havetask4=1
		end
	end
--以上为灰色问号部分
	if(level>=37 and LuaQueryTask("T593")==0) then
 		AddTopSayMenuItem("伏魔号角【剧情】","T593")
 		havetask1=1
	end
	if(LuaQueryTask("T590")==0 and level>=34) then
		AddTopSayMenuItem("压制毒素【剧情】","T590")
		havetask1=1
	end
	if(level>=35 and LuaQueryTask("T591")==0) then
		AddTopSayMenuItem("邪术异变【剧情】","T591")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T592")==0) then
		AddTopSayMenuItem("幼子线索【剧情】","T592")
		havetask1=1
	end
	if(level>=39 and LuaQueryTask("T594")==0 and LuaQueryTask("T614")==99) then
		AddTopSayMenuItem("获救喜讯【剧情】","T594")
		havetask1=1
	end
	if(level>=35 and LuaQueryTask("T595")==0)then
		AddTopSayMenuItem("回首往事【剧情】","T595")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T597")==0 and LuaQueryTask("T595")== 99)then
		AddTopSayMenuItem("回首往事2【剧情】","T597")
		havetask1=1
	end
	if(level>=36 and LuaQueryTask("T599")==0)then
		AddTopSayMenuItem("收伏苻坚【剧情】","T599")
		havetask1=1
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
-----------------------------------------------------------
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
---------------------------------------------------------
--------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("鬼夫人：我只是一个女人!")
    
    elseif(answer=="T591") then
	if(LuaQueryTask("T591")==0) then
		LuaSay("鬼夫人：如今我身上的邪术无法控制，需要@4食人谷噬龙身上的血@0才能压制邪术！")
		LuaSay("鬼夫人：请英雄前往@4食人谷@0，消灭@3噬龙@0取得@320份魔龙之血@0给我治疗.")
		LuaSetTask("T591",1)
		AddLog("邪术异变【剧情】",591)-------日志的添加
		UpdateMenu()
    elseif(LuaQueryTask("T591")==1) then
        if(LuaItemCount("o_mission309") == 0) then
        	LuaSay("鬼夫人：前往@4食人谷@0消灭@3噬龙@0取得@220份魔龙之血@0.") 
        	UpdateTopSay("前往食人谷消灭噬龙取得份魔龙之血")
        elseif(LuaItemCount("o_mission309")> 0 and LuaItemCount("o_mission309")< 20) then
			LuaSay("鬼夫人：你身上的@2魔龙之血@0还不够，继续去收集吧！")
        elseif(LuaItemCount("o_mission309") >= 20) then
        	LuaSay("鬼夫人：少侠真非常人也，这么快就收集好了！")
			AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T591jl")
		end
	end
elseif(answer=="T591jl")then
 	if(LuaQueryTask("T591")==1) then
		if(LuaFreeBag()>=1)then
			LuaGive("e_pants012",1,2,"591")	
			LuaAddJx("combat_exp",294000,"T591")--原324000终218724
			LuaGive("coin",2000,"T591")
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission309",LuaItemCount("o_mission309"))
			LuaSetTask("T591",99)
			DelLog("591")-------日志的删除
			UpdateMenu()
		else
			LuaSay("提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉哦@!")
		end
	end
elseif(answer=="T592") then
	if(LuaQueryTask("T592")==0) then
		LuaSay("鬼夫人：我的孩子@3乞伏奎@0被@3羯族@0抓走了，我想让英雄前往寻找线索！")
		LuaSay("鬼夫人：要消灭@4食人谷@0的@3骷髅@0才能得到带有线索的@2血书@0，请英雄把血书带来给我！")
      		LuaSetTask("T592",1)
		AddLog("幼子线索【剧情】",592)-------日志的添加
		UpdateMenu()
    elseif(LuaQueryTask("T592")==1) then
        if(LuaItemCount("o_mission310") == 0) then
        	LuaSay("鬼夫人：前往食人谷消灭@3骷髅取得血书.") 
        	UpdateTopSay("前往食人谷消灭骷髅取得血书")
        elseif(LuaItemCount("o_mission310") == 1) then
        	LuaSay("鬼夫人：原来我儿子被囚禁在食人谷的白骨洞之中.") 
		AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T592jl")
		end
	end
elseif(answer=="T592jl")then
 	if(LuaQueryTask("T592")==1) then
 		LuaAddJx("combat_exp",295000,"T592")--原335000终244292
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T592",99)
		DelLog("592")-------日志的删除
		DelItem("o_mission310",LuaItemCount("o_mission310"))
		LuaSay("鬼夫人：少侠能否@3帮我找回儿子，我定当厚报少侠！@0")
		UpdateMenu()
	end
elseif(answer=="T594") then
	if(LuaQueryTask("T594")==0) then
		LuaSay("鬼夫人：英雄，情况如何?")
		LuaSay(""..LuaQueryStr("name").."：@3乞伏奎@0已经获救了！")
		LuaSay("鬼夫人：感谢英雄，如今我心愿已了，我想让英雄去@4西蜀竹林@0找@3乞伏国仁@0，我想他会对英雄有所帮助！")
		LuaSetTask("T594",1)
		AddLog("获救喜讯【【剧情】",594)-------日志的添加
		UpdateMenu()
		UpdateNPCMenu("qifuguoren")
	elseif(LuaQueryTask("T594")==1) then
		LuaSay("鬼夫人：到@4西蜀竹林@0找@3乞伏国仁@0")
	end


------------------------------------------------     


elseif(answer=="T593")then
	if(LuaQueryTask("T593")==0) then
    		LuaSay(""..LuaQueryStr("name").."：鬼夫人，那老头说话不算话。")
		LuaSay("鬼夫人：哈哈，那老头还是那样，少侠，@3洛阳城@0的@3苻坚@0有一只@2异族号角@0可以制服羯族巫师，快去向他借来吧！")
		LuaSay(""..LuaQueryStr("name").."：好，我这就去借来，制伏羯族巫师，救出乞伏奎。")
		LuaSetTask("T593",1)
		AddLog("伏魔号角【剧情】",593)
		UpdateMenu()
		UpdateTopSay("到洛阳城去找苻坚")
	elseif(LuaQueryTask("T593")==1)then
		LuaSay("鬼夫人：到@4洛阳城@0去找@3苻坚@0借来@2异族号角@0，制伏羯族巫师") 
	elseif(LuaQueryTask("T593")==2)then
		LuaSay("鬼夫人：看样子你已经拿到了@2异族号角@0，事不宜迟，带着它去@4食人谷@0找@2羯族巫师@0。")
	 	
	end
------------------------------------------------
elseif(answer=="T610")  then
	if(LuaQueryTask("T610")==1) then
		LuaSay(""..LuaQueryStr("name").."：夫人，这是@3乞伏奎@0让我带给你的信并让我转告你，他很安全！")
		LuaSay("。。。。（鬼夫人用她那枯黄的双手慢慢的接过去了信）")
		LuaSay("鬼夫人：我儿身陷险地，竟然还能如此，我感到很欣慰！@7请少侠去助我儿一臂之力！") 
     		DelItem("o_mission308",1)
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T610jl")
	end
	
	elseif(answer=="T610jl") then
	if(LuaQueryTask("T610")==1) then
		LuaSay("温馨提示:想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装")
		LuaAddJx("combat_exp",357000,"T610")--原357000终302085
		LuaGive("e_clothes013",1,2,"T610")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaGive("coin",2000,"T610")
		LuaSetTask("T610",99)
		DelLog("610")
		UpdateMenu()
		end	
--------------------------------------------------
------------------------------------------------鬼妇叔嫂
elseif(answer=="T581") then
	if(LuaQueryTask("T581")==1) then
		 if(LuaItemCount("o_mission322")>=20) then
		 LuaSay("鬼夫人：真是英雄出少年啊!")
		 AddMenuItem("@7任务完成","")
		 AddMenuItem("领取奖励","T581jl")
		 else
		 LuaSay("鬼夫人：你还没有收集到@220个竹节毒。")
		 UpdateTopSay("收集够20个竹节毒再来找我")
		 end
	 end
	elseif(answer=="T581jl") then
		if(LuaQueryTask("T581")==1) then
			LuaAddJx("combat_exp",272000,"T581")--原312000终195218
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission322",LuaItemCount("o_mission322"))
			LuaSetTask("T581",99)
			UpdateMenu()
			UpdateNPCMenu("qifuguoren")
			DelLog("581")       
		end
		
-----------------------------------------------  压制毒素
elseif(answer=="T590") then
    if(LuaQueryTask("T590")==0) then
	LuaSay("鬼夫人:为了给丈夫报仇我修炼了一种邪术，需要不停得使用毒素压制才不至于失去自我，")
	LuaSay("鬼夫人:请少侠去为我收集@220@0个竹节毒为我解毒，@3竹节怪@0身上携带有大量的竹节毒")
	LuaSetTask("T590",1)
	AddLog("压制毒素【剧情】",590)
	UpdateMenu()
	UpdateTopSay("再去收集20个竹节毒")
   elseif(LuaQueryTask("T590")==1) then
		if(LuaItemCount("o_mission322")>=20) then
			LuaSay("鬼夫人：这么快就收集到了，少侠辛苦了!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T590jl")
		else
			LuaSay(""..LuaQueryStr("name")..":你还没有收集够@220@0个@2竹节毒@0，消灭竹节怪就能够获得")
			UpdateTopSay("收集够20个竹节毒再来找我")
		end
   end
	elseif(answer=="T590jl") then
	if(LuaQueryTask("T590")==1) then

		LuaAddJx("combat_exp",272000,"T590") --原312000终195218
		LuaGive("coin",2000,"T590")
		LuaAddAchievementSchedule("Task_num",1)	
                LuaSetTask("T590",99)
                DelItem("o_mission322",LuaItemCount("o_mission322"))
                DelLog("590")
                UpdateMenu()
	end

                
elseif(answer=="T595") then
	if(LuaQueryTask("T595")==0) then
		LuaSay("鬼夫人：想当年，我知道@3苻坚@0和@3乞伏步颓@0同时喜欢上了我，美女配英雄，我倾心于@3苻坚@0，但我又不愿伤了@3乞伏步颓@0，于是，我找了一个借口，")
		LuaSay("鬼夫人：我让他们每人送我一件礼物，我看上谁的礼物我就嫁给谁，@3苻坚@0送了我一颗@2野菊花@0的种子，而@3乞伏步@0颓送了我一颗@2杜鹃花@0的种子！")
		LuaSay("鬼夫人：英雄可以帮我弄一颗@2杜鹃花@0和一颗@2野菊花@0的种子吗？我想再看看这两种花的美丽")
		LuaSetTask("T595",1)      -------日志的添加
		AddLog("回首往事【剧情】",595)
		UpdateMenu()
	elseif(LuaQueryTask("T595")==1) then
		if(LuaItemCount("o_seed015")<1 and LuaItemCount("o_seed002")<1) then  -------mine_wseed010  吉祥草  mine_wseed012  玫瑰花
			LuaSay("杜鹃花和野菊花的种子可以挖到或者到建康城南的种子商人那买到。")
	   	elseif(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")<1) then
	   		LuaSay("鬼夫人：还差@2野菊花的种子@0!")
		elseif(LuaItemCount("o_seed015")<1 and LuaItemCount("o_seed002")>=1) then
	   		LuaSay("鬼夫人：还差@2杜鹃花的种子@0!")
	   	elseif(LuaItemCount("o_seed015")>=1 and LuaItemCount("o_seed002")>=1) then
	   		LuaSay("鬼夫人：多么美丽的花啊，杜鹃花太贵重了，我有了借口，于是便选了@3乞伏步颓@0")
			AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T595jl")
	    end
	end
	elseif(answer=="T595jl")then  -----------------给经验
	if(LuaQueryTask("T595")==1) then
		LuaSetTask("T595",99)
		DelItem("o_seed015",1)---------删除道具
		DelItem("o_seed002",1)
		LuaAddJx("combat_exp",284000,"T595")--原324000终218724
		LuaGive("coin",2000,"T595")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("595")        -------日志的删除
		UpdateMenu()
	end
elseif(answer=="T597") then
 if(LuaQueryTask("T597")==0) then
 		LuaSay("鬼夫人：苻坚对我恩爱有佳，然而好景不长，后来我才知道，他已经有了家室！我只能无奈的与乞伏步颓在一起！")
		LuaSay("鬼夫人：因为一句戏言，致使乞伏步颓叛离苻坚！命运弄人，我却有了苻坚的骨肉！苻坚与乞伏步颓闹矛盾把乞伏步颓给杀了！")
		LuaSay("鬼夫人：如今我只想去乞伏步颓的坟墓上看看他，还望英雄帮我买一颗@2杜鹃花@0的种子，我想种在他的坟前。")
		LuaSetTask("T597",1)      -------日志的添加
		AddLog("回首往事2【剧情】",597)
		UpdateMenu()
	 elseif(LuaQueryTask("T597")==1) then
	 	if(LuaItemCount("o_seed015")<1)	then
			LuaSay("杜鹃花的种子可以挖到或者到建康城南的种子商人那买到。")
		elseif(LuaItemCount("o_seed015")>=1) then
			LuaSay("鬼夫人：多谢英雄为奴家完成心愿！")
			AddMenuItem("@7任务完成","")
	    	AddMenuItem("领取奖励","T597jl")
		end
	end
	elseif(answer=="T597jl")then  -----------------给经验
	if(LuaQueryTask("T597")==1) then
		LuaSetTask("T597",99)
		DelItem("o_seed015",1)--------删除道具
		LuaAddJx("combat_exp",292000,"T597")--原312000终244292
		LuaGive("coin",2000,"T597")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("597")        -------日志的删除
		UpdateMenu()
		end
elseif(answer=="T584") then
	if(LuaQueryTask("T584")==1) then
		LuaSay("鬼夫人：多谢英雄！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T584jl")
		end
	elseif(answer=="T584jl")then  -----------------给经验
	if(LuaQueryTask("T584")==1) then
		LuaSetTask("T584",99)
		DelItem("o_mission332",1)--------删除道具
		LuaAddJx("combat_exp",272000,"T584") --原31200 终195218
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("584")        -------日志的删除		
		UpdateMenu()
		UpdateNPCMenu("qifuguoren")
		end 
elseif(answer=="T599") then
	if(LuaQueryTask("T599")==0) then    
 		LuaSay("鬼夫人：如今姚苌军被打败，我的孩子还在羯族手中，我想让苻坚救自己的孩子。")
 		LuaSay("鬼夫人：如果苻坚不愿意，你就告诉苻坚说那是他自己的孩子！如果他要证据，你就告诉他救不救他自己看着办，我是没办法了。")
		 
 		LuaSay("鬼夫人：请英雄代我问下苻坚！")
 		LuaSetTask("T599",1)      -------日志的添加
		AddLog("收伏苻坚【剧情】",599)
		UpdateMenu()
	elseif(LuaQueryTask("T599")==1) then
		LuaSay("去@4洛阳城@0找@3苻坚@0")
	elseif(LuaQueryTask("T599")==2) then
    		LuaSay("鬼夫人：多谢英雄！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T599jl") 
	end
	elseif(answer=="T599jl")then  -----------------给经验
	if(LuaQueryTask("T599")==2) then
		LuaSetTask("T599",99)
		LuaAddJx("combat_exp",305000,"T599") --原335000终244292
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("599")        -------日志的删除		
		UpdateMenu()
		end    	       
end
LuaSendMenu()
return 1
end 

