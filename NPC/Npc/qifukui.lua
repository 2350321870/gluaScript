NPCINFO = { 
serial="72" ,
base_name="qifukui",
icon=2540,
NpcMove=2540,
name="乞伏奎" ,
iconaddr=1 ,
butt="5|5|46" ,
name_color="CEFFCE" ,
lastsay="亡魂啊，为何你们如此充满怨恨？",
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
	local sum=LuaQueryTask("sum")
	local level= LuaQuery("level")
	local T610=LuaQueryTask("T610")
	AddTopSayMenuItem("@7任务列表","")
	if(T610==1)then
	    AddTopSayMenuItem("@2幼子仁心【剧情】","T610")
	end


	if(LuaQueryTask("T612")==1)then
		AddTopSayMenuItem("@2严刑逼供【剧情】","T612")
	end
	if(LuaQueryTask("T613")==1)then
		AddTopSayMenuItem("@2追踪邪恶【剧情】","T613")
	    havetask2=1
	end
	if(LuaQueryTask("T614")==1 or LuaQueryTask("T614")==2)then
		AddTopSayMenuItem("@2邪恶根源【BOSS】","T614")
		if(LuaQueryTask("T614")==2) then
		havatask2=1
		end
	end
	if(LuaQueryTask("T601")==3)then
		AddTopSayMenuItem("@2救治亡魂【剧情】","T601")
		havetask2=1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T615")==1)then
	    AddTopSayMenuItem("@2消灭尸虫【循环】","T615")
	    havetask4=1
	end
	if(LuaQueryTask("T611")==1)then
		AddTopSayMenuItem("@2压制魔性【剧情】","T611")
	    havetask4=1
	end
--以上为灰色问号部分
	if(level>=38 and T610==0)then
	    AddTopSayMenuItem("幼子仁心【剧情】","T610")
	    havetask1=1
	end
	if(level>=38 and LuaQueryTask("T611")==0)then
		AddTopSayMenuItem("压制魔性【剧情】","T611")
	    havetask1=1
	end
	if(level>=39 and LuaQueryTask("T612")==0)then
		AddTopSayMenuItem("严刑逼供【剧情】","T612")
	    havetask1=1
	end
	if(level>=39 and LuaQueryTask("T614")==0)then
		AddTopSayMenuItem("邪恶根源【BOSS】","T614")
		havatask1=1
	end
	if(level>=39 and LuaQueryTask("T613")==0)then
		AddTopSayMenuItem("追踪邪恶【剧情】","T613")
		havetask1=1
	end
	if(LuaQueryTask("T615")==0 and level>=37 and level<42)then
		AddTopSayMenuItem("消灭尸虫【循环】","T615")
		havetask1=1
	end
--以上是黄色感叹号
		

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
	
	--骷髅兵 尸虫 33
	--骷髅魂 修罗兵 34

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
elseif(answer=="T610") then
	local T610=LuaQueryTask("T610")
    if(T610==0)then
        LuaSay(""..LuaQueryStr("name").."：@3乞伏奎@0先生，我终于找到你了，跟我回去吧！")
        LuaSay("乞伏奎：我不走，因为我听到亡魂的悲鸣（呜呜呜呜。。。。）.")

        LuaSay("乞伏奎：小兄弟，你帮我把这封信带给鬼夫人吧，我暂时没有危险，想要拯救白骨洞中的亡灵后才离开")
        LuaSetTask("T610",1)
		AddLog("幼子仁心【剧情】",610)
        LuaGive("o_mission308",1)
		
		UpdateMenu()
		UpdateTopSay("去把我的信交给鬼夫人")
	elseif(T610==1) then
		LuaSay("乞伏奎：快去把我的信交给@3鬼夫人@0")
	end 
        
-----------------------------------------------
elseif(answer=="T611") then
	if(LuaQueryTask("T611")==0) then
		LuaSay("乞伏奎：@4白骨洞@0中的@3尸虫@0与@3修罗兵@0都是死者的亡魂所化，我很是担心.")
		LuaSay("乞伏奎：我想让英雄去消灭他们各20只以压制他们的怨气.")
		LuaSetTask("T611",1)      
		LuaSetTask("task_kill/mon_033/T611",1)   -----------开启杀怪计数器
		LuaSetTask("task_kill/mon_034/T611",1)
		AddLog("压制魔性【剧情】",611)
		UpdateMenu()
		UpdateTopSay("去白骨洞消灭20只尸虫和20只修罗兵")
	elseif(LuaQueryTask("T611")==1) then
		if(LuaQueryTask("task_kill/mon_033/T611")<21 and LuaQueryTask("task_kill/mon_034/T611")>=21) then
		LuaSay("乞伏奎：@3修罗兵@0是够了，但@3尸虫@0还不够，接着去@4白骨洞@0杀@3尸虫@0吧.")
		elseif(LuaQueryTask("task_kill/mon_034/T611")<21 and LuaQueryTask("task_kill/mon_033/T611")>=21) then
		LuaSay("乞伏奎：@3尸虫@0是够了，但@3修罗兵@0还不够，接着去@4白骨洞@0杀@3修罗兵@0吧.")
		elseif(LuaQueryTask("task_kill/mon_033/T611")>=21 and LuaQueryTask("task_kill/mon_034/T611")>=21) then
		LuaSay("乞伏奎：多谢英雄！")	 
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T611jl")    
		else 
		LuaSay("乞伏奎：去@3白骨洞@0消灭20只尸虫和20只修罗兵.")
		end
	end
elseif(answer=="T611jl")then  -----------------给经验
	if(LuaQueryTask("T611")==1) then
		if(LuaFreeBag()>=1)then
			LuaAddJx("combat_exp",357000,"T611")--原357000终302585
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",2300,"T611")
			LuaGive("e_shoes007",1,2,"T611")
			LuaDelTask("task_kill/mon_033/T611")    -----------关闭杀怪计数器
			LuaDelTask("task_kill/mon_034/T611")
			DelLog("611")        -------日志的删除
			LuaSetTask("T611",99)
			UpdateMenu()
		else
			LuaSay("@5温馨提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉哦@!")
		end
	end


elseif(answer=="T612") then
	if(LuaQueryTask("T612")==0) then
		LuaSay("乞伏奎：我发现怨念没有丝毫减弱，我想让英雄去找@3羯族巫师@0，他会有办法！")
		LuaSetTask("T612",1)
		AddLog("严刑逼供【剧情】",612)-------日志的添加
		UpdateMenu()
	elseif(LuaQueryTask("T612")==1) then
		LuaSay("乞伏奎：少侠去@4食人谷@0找@4羯族巫师.") 
		UpdateTopSay("去食人谷找羯族巫师") 
	end
	
elseif(answer=="T613")then
	if(LuaQueryTask("T613")==0)then
		LuaQueryTask("乞伏奎：你等十分钟以后再来找我吧，让我好好的想想。")
		LuaQueryTask(""..LuaQueryStr("name").."：嗯，我十分钟之后再来找你.")
		LuaSetTask("T613",1)
		AddLog("追踪邪恶【剧情】",163)
		LuaSetTask("T613time",GetCurrentTime()) 
		UpdateMenu()

	elseif(LuaQueryTask("T613")==1)then
		local shijiancha= GetCurrentTime() - LuaQueryTask("T613time")
		if(shijiancha>=600)then
			LuaSay("乞伏奎：好吧，我想到了根本原因，就是那白骨洞深处的修罗魔菇才是根源.")
            LuaSay(""..LuaQueryStr("name").."：原来是这样的啊！") 
            AddMenuItem("@7任务完成","")
		    AddMenuItem("领取奖励","T613jl") 
		else
			LuaSay("乞伏奎：我还没想好呢， 你等会再来吧！")
		end
	end
	
	elseif(answer=="T613jl") then
		LuaAddJx("combat_exp",371000,"T600")--原371000终334555
		LuaAddAchievementSchedule("Task_num",1)	
        LuaSetTask("T613",99)
		
		DelLog("613")
		LuaDelTask("T613time")
		UpdateMenu()
		UpdateTopSay("少侠快来帮我消灭修罗蘑菇！")
		 
------------------------------------------------  邪恶根源
elseif(answer=="T614") then
	if(LuaQueryTask("T614")==0)  then
	   LuaSay("@3乞伏奎@0：根源就是白骨洞深处的@3修罗魔菇@0，我现在是没有力气来消灭它了，大侠去帮帮忙吧！")
	   LuaSay("@3"..LuaQueryStr("name").."@0：在下义不容辞！")
	   LuaSay("@1温馨提示@0：当你与人组队，并且是你击杀boss，有机会获得@540多级蓝色武器一把@0！队伍人数越多，机会越大！")
	   LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
	   LuaSetTask("T614",1)
	   AddLog("邪恶根源【BOSS】",614) 
	   UpdateMenu()
	   UpdateTopSay("去消灭白骨洞深处的修罗魔菇")	
	elseif(LuaQueryTask("T614")==1)then
		LuaSay("少侠你已经消灭了白骨洞深处的@3修罗魔菇@0了吗？")
		LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
	elseif(LuaQueryTask("T614")==2) then
	    LuaSay("@3乞伏奎@0：小伙子你真棒！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T614jl")
	end 
	
	elseif(answer=="T614jl")then
		LuaAddJx("combat_exp",450000,"T614")--原800000终334555
		LuaSay("温馨提示:想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装哦@!")
		LuaGive("e_earring007",1,1,"T614")
		LuaGive("coin",15050,"T614")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T614",99)	
		DelLog("614")
		UpdateMenu()
		UpdateTopSay("少侠，快去把喜讯告知鬼夫人")

elseif(answer=="T601") then
	if(LuaQueryTask("T601")==3)  then
		LuaSay(""..LuaQueryStr("name").."：我已经在白骨洞使用了超生咒，情况有了好转，但仍然没有彻底解决！")
	 
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T601jl")
	end
elseif(answer=="T601jl")then  -----------------给经验
	if(LuaQueryTask("T601")==3) then
		LuaAddJx("combat_exp",339000,"T601") --原349000终272029
		LuaAddAchievementSchedule("Task_num",1)	

        DelLog("601")        -------日志的删除
		LuaSetTask("T601",99)
        UpdateMenu()
        UpdateTopSay("还有事需要少侠帮忙") 
        
    end 
		
----------------------------------------------- 
elseif(answer=="liaotian") then
	LuaSay("乞伏奎：蛮夷泯灭人性，我必诛灭之!") 

elseif(answer=="T615") then
	if(LuaQueryStrTask("615day")~=GetCurrentDay())then
		LuaDelTask("T615num")
	end		
	if(LuaQueryTask("T615")==0) then
			LuaSay("乞伏奎：@4白骨洞@0中的@3尸虫@0为害，英雄速速助在下消灭30个尸虫吧，我会给你不错的报酬哦。")
			LuaSetTask("T615",1)  
			LuaAddTask("T615num",1)
			LuaSetTask("615day",GetCurrentDay())
			LuaSetTask("task_kill/mon_033/T615",1)   -----------开启杀怪计数器
			AddLog("消灭尸虫【循环】",615)
			UpdateMenu()
			UpdateTopSay("白骨洞消灭30个尸虫后再来找我")
	elseif(LuaQueryTask("T615")==1) then
		if(LuaQueryTask("task_kill/mon_033/T615")>=31) then
		LuaSay("乞伏奎：英雄年纪轻轻就有如此能耐，真是吾辈之楷模啊。这是给你的奖励。")	 
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T615jl")    
		else 
		LuaSay("乞伏奎：去@4白骨洞@0消灭@230个尸虫@0后再来回复我吧，你还没有消灭足够的尸虫哦。")
		end
	end
elseif(answer=="T615jl")then  -----------------给经验
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T615")==1) then
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
		if(LuaQueryTask("T615num")<=30)then
			if(TeamCount()>=2)then
				LuaSay("@1提示：获得组队经验加成")
				jingyan=(84835+level^2*20)
			else
				jingyan=(48765+level^2*30)
			end
			LuaGive("coin",money,"T615")
		else
			LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			jingyan=(48765+level^2*30)/2
		end
		LuaAddJx("combat_exp",jingyan,"T615")
		
		if(LuaQueryTask("T615_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T615_a",99)
		end
		LuaDelTask("task_kill/mon_033/T615")    -----------关闭杀怪计数器
		DelLog("615")        -------日志的删除
		LuaDelTask("T615")
		UpdateMenu()
		end



end
LuaSendMenu()
return 1
end 

