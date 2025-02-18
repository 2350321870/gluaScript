NPCINFO = { 
serial="71" ,
base_name="jiezuwushi",
icon=2527,
NpcMove=2527 ,
name="羯族巫师" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="只要老朽咒语一念，风云变色",
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
	if((LuaQueryTask("Tsnpc_55")==1 or LuaQueryTask("Tsnpc_55")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_55")
		if(LuaQueryTask("Tsnpc_55")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_55")==1 or LuaQueryTask("Tenpc_55")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_55")
		if(LuaQueryTask("Tenpc_55")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T593")==2)then
		AddTopSayMenuItem("@2伏魔号角【剧情】","T593")
		if(LuaItemCount("o_mission353")>=1) then
			havetask2=1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T612")==1 or LuaQueryTask("T612")==2)then
		AddTopSayMenuItem("@2严刑逼供【剧情】","T612")
		if(LuaQueryTask("T612")==1) then
			havetask2=1
		elseif(LuaQueryTask("T612")==2) then
			if(LuaItemCount("o_mission322")>=10) then
				havetask2=1
			else
				havetask4=1
			end
		end
	end
	if(LuaQueryTask("T601")==1)then
		AddTopSayMenuItem("@2救治亡魂【剧情】","T601")
	end
	if(LuaQueryTask("T602")==3) then
		AddTopSayMenuItem("@2初探巫师【剧情】","T602")
		havetask2=1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T604")==1)then
		AddTopSayMenuItem("@2巫师的刁难【循环】","T604")
		havetask4=1
	end
	if(LuaQueryTask("T600")==1)then
		AddTopSayMenuItem("@2巫师阴谋【剧情】","T600")
		havetask4=1
	end
--以上为灰色部分
	if(level>=37 and LuaQueryTask("T600")==0)then
		AddTopSayMenuItem("巫师阴谋【剧情】","T600")
		havetask1=1 
	end	
	if(level>=37 and LuaQueryTask("T601")==0)then
		AddTopSayMenuItem("救治亡魂【剧情】","T601")
		havetask1=1
	end
	if(LuaQueryTask("T604")==0 and level>=35 and level<40)then
		AddTopSayMenuItem("巫师的刁难【循环】","T604")
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
-----------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("羯族巫师：嘛咪嘛咪哄!哄咪哄咪嘛！啊哦啊哦哦啊！神灵快显灵！") 
elseif(answer=="T600")then
	if(LuaQueryTask("T600")==0)then
		LuaSay("羯族巫师：少侠匆匆忙忙有何事？")
		LuaSay(""..LuaQueryStr("name").."：被你说中，我这次来是为了@3乞伏奎@0，想让你放了他。")
		LuaSay("羯族巫师：想救他？你能在@315@0分钟内消灭20个噬龙和20个骷髅我可以考虑，他们就在@3食人谷@0.")
		LuaSetTask("T600",1)
		UpdateTopSay("在食人谷15分钟内消灭20个噬龙和20个骷髅")
		AddLog("巫师阴谋【剧情】",600)
		LuaSetTask("task_kill/mon_031/T600",1)             -- 噬龙计数器 
		LuaSetTask("task_kill/mon_032/T600",1)             -- 骷髅计数器 
		LuaSetTask("T600time",GetCurrentTime())            --获取当前时间
		UpdateMenu()
	elseif(LuaQueryTask("T600")==1)then
		local shijiancha= GetCurrentTime() - LuaQueryTask("T600time") --判断时间差 
		if(shijiancha<=900) then
			if( LuaQueryTask("task_kill/mon_031/T600")>=21 and LuaQueryTask("task_kill/mon_032/T600")>=21)  then
			LuaSay(""..LuaQueryStr("name").."：我回来了（满脸是血）.")
			LuaSay("羯族巫师：本想借噬龙之手除掉你，没想到它们那么弱，想见到@3乞伏奎@0，痴心妄想.")
			LuaSay(""..LuaQueryStr("name").."：你...没想到天下竟有这等之人，我现在应该怎么办？还是去找@3鬼夫人@0吧!")
			AddMenuItem("@7任务完成","")
		    	AddMenuItem("领取奖励","T600jl")
			else
			LuaSay("羯族巫师：小子，你没能在15分钟内消灭20个噬龙和20个骷髅，就别想见到@3乞伏奎@0.")
			end
		else
			LuaSay("羯族巫师:都15分钟过去了，你还没消灭20个噬龙和20个骷髅，你还想见@3乞伏奎@0啊！")
			LuaSay("羯族巫师：我再给你一次机会，你要是没这个能力，就早点回去吧！")
			LuaDelTask("T600")
			LuaDelTask("T600time")
			LuaDelTask("task_kill/mon_031/T600") --删除mon_031计数器 
			LuaDelTask("task_kill/mon_032/T600") --删除mon_032计数器 
			UpdateMenu()  
		end
	end 
	
	elseif(answer=="T600jl")  then
		if(LuaQueryTask("task_kill/mon_031/T600")>=21 and LuaQueryTask("task_kill/mon_032/T600")>=21) then
			LuaSay("温馨提示:想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装@!")
			LuaGive("e_pants013",1,1,"T600")
			LuaAddJx("combat_exp",339000,"T600") --原349000终272039
			LuaGive("coin",2200,"T600")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T600",99)
			LuaDelTask("T600time") --删除T600time 
			DelLog("600")     --删除任务日志 
			LuaDelTask("task_kill/mon_031/T600") --删除mon_031计数器 
			LuaDelTask("task_kill/mon_032/T600") --删除mon_032计数器 
			UpdateMenu()
		end 
		
-------------------------------------------------
elseif(answer=="T593")then
	if(LuaQueryTask("T593")==2) then
        LuaSay(""..LuaQueryStr("name").."：巫师，你还不束手就擒吗？我有@2异族号角@0在此！")
        if(LuaItemCount("o_mission353")>=1) then
		LuaSay("羯族巫师：大侠饶命，小的知错，@3乞伏奎@0被带到@4白骨洞@0中献祭了，还请大侠饶了我吧？")
		LuaSay(""..LuaQueryStr("name").."：看你可怜，就暂且饶过你！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T593jl")
	else
		LuaSay("羯族巫师：小子，你以为你说大话我就会被你吓到吗？哈哈哈哈哈！")
        end
	end
	elseif(answer=="T593jl") then
	if(LuaQueryTask("T593")==2) then
        if(LuaItemCount("o_mission353")==1) then
		LuaAddJx("combat_exp",339000,"T593") --原349000终272039
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T593",99)
		DelItem("o_mission353",1)
		DelLog("593")
		UpdateMenu()
	end
	end
		
-------------------------------------------------
elseif(answer=="T612") then
	if(LuaQueryTask("T612")==1) then
		LuaSay(""..LuaQueryStr("name").."：我想要压制白骨洞的怨气，乞伏奎说你老人家有办法！")
		LuaSay("羯族巫师：英雄啊，那大神的意志无法改变，老朽也爱莫能助！")
		LuaSay(""..LuaQueryStr("name").."想到：老匹夫，什么年头了还用大神来唬我，我用@210份竹节毒@0就不信你不就范！")
		LuaSetTask("T612",2)
		AddLog("严刑逼供【剧情】",612)
		UpdateMenu()
	elseif(LuaQueryTask("T612")==2 and LuaItemCount("o_mission322")<10) then
		LuaSay("去西蜀竹林杀@2竹节怪收集10份竹节毒！")
	elseif(LuaQueryTask("T612")==2 and LuaItemCount("o_mission322")>=10) then
		LuaSay("提示："..LuaQueryStr("name").."乘羯族巫师不注意的时候，把竹节毒强行给羯族巫师服下")
		LuaSay("提示：等羯族巫师反应过来的时候已经身中剧毒，不禁破口大骂：#0&3！#")
		LuaSay("羯族巫师：好吧，我屈服，保证以后不再守着野蛮的旧制，接受开化。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T612jl")	 
	end		       
elseif(answer=="T612jl")then
	if(LuaQueryTask("T612")==2) then
		LuaAddJx("combat_exp",391000,"T612") --原371000终334555
		LuaGive("coin",2100,"T612") 
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T612",99)
		DelLog("612")-------日志的删除
		UpdateMenu()
		UpdateTopSay("少侠既然如此执着，老夫介绍你去找一个人。") 
  	end
elseif(answer=="T601") then
	if(LuaQueryTask("T601")==0) then
		LuaSay("羯族巫师：这个世界上只有对灵魂有研究之人才能救助亡魂！")
		LuaSay(""..LuaQueryStr("name").."：宗庙就是干这行的，莫非是@3宗庙长老@0？")
		LuaSay("羯族巫师:少侠真是聪慧过人，只有你死了之后才能见到@3宗庙长老@0，要救助亡魂就得付出代价") 
		LuaSay("提示：当人物角色死亡之后选择正常死亡即可进入宗庙，见到宗庙长老；当然你也可以同过世界传送@!。")
		LuaSetTask("T601",1)
		AddLog("救治亡魂【剧情】",601)-------日志的添加
		UpdateMenu()
	elseif(LuaQueryTask("T601")==1) then
		LuaSay("去@4宗庙@0找@3宗庙长老@0！死亡后选择@2正常死亡@0，即可进入宗庙！")
	end 	
-----	-------------------------------------------------剧情部分
    elseif(answer=="T602")then
	if(LuaQueryTask("T602")==3)then
		LuaSay(""..LuaQueryStr("name").."：阁下是专程来拜访巫师的。")
		LuaSay("羯族巫师：我看你是有备而来吧，别相信那些小罗喽的话，他们的话哪能相信。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T602jl")
	end	
	elseif(answer=="T602jl")then
	if(LuaQueryTask("T602")==3)then	 
		LuaAddJx("combat_exp",369000,"T602")--原341000终334555 
		LuaSetTask("T602",99)
		DelLog("602")-------日志的删除
		UpdateMenu()
		end
		       
elseif(answer=="T604")then
	if(LuaQueryStrTask("604day")~=GetCurrentDay())then
		LuaDelTask("T604num")
	end
	if(LuaQueryTask("T604")==0)then
			LuaSay("羯族巫师：小子，你这般弱小也敢来@4食人谷@0，哼哼！敢去消灭@230只噬龙@0吗？消灭够了再来找我！")
			LuaSetTask("T604",1)
			UpdateTopSay("消灭30只噬龙再来找我")
			AddLog("巫师的刁难【循环】",604)
			LuaSetTask("604day",GetCurrentDay())
			LuaAddTask("T604num",1)
			LuaSetTask("task_kill/mon_031/T604",1)             -- 噬龙计数器 
			UpdateMenu()

	elseif(LuaQueryTask("T604")==1)then
			if( LuaQueryTask("task_kill/mon_031/T604")>=31)  then
			LuaSay("羯族巫师：哼哼，别以为有点小本事就想让我怕你！")
			AddMenuItem("@7任务完成","")
		    	AddMenuItem("领取奖励","T604jl")
			else
			LuaSay("羯族巫师：小子，你还没有消灭30只噬龙呢，消灭够了再来找我。")
			end
	end 
	elseif(answer=="T604jl")  then
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("task_kill/mon_031/T604")>=31) then
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
		

		if(LuaQueryTask("T604num")<=30)then
			LuaGive("coin",money,"T604")
			jingyan=(27569+level^2*20)
		else
			LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			jingyan=(27569+level^2*20)/2
		end
		LuaAddJx("combat_exp",jingyan,"T604")
		if(LuaQueryTask("T604_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T604_a",99)
		end
	
                LuaDelTask("T604")
		DelLog("604")     --删除任务日志 
		LuaDelTask("task_kill/mon_031/T604") --删除mon_031计数器 
                UpdateMenu()
		end 
elseif(answer=="Tsnpc_55")then
	if(LuaQueryTask("Tsnpc_55")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("羯族巫师：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_55",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_55")==2)then
		LuaSay("羯族巫师：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_55")then
	if(LuaQueryTask("Tenpc_55")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("羯族巫师：这都是大人的功劳啊")
		LuaSetTask("Tenpc_55",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_55")==2)then
		LuaSay("羯族巫师：话已经带到了，快回去领取奖励吧")
	end
	

end
LuaSendMenu()
return 1
end 

