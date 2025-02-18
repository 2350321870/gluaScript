NPCINFO = {
serial="126" ,
base_name="laoweng" ,
icon=2558,
NpcMove=2558,
name="汉族老翁" ,
iconaddr=1 ,
butt="10|10|55" ,
name_color="CEFFCE",
lastsay="生逢乱世，哀哉，痛哉！",
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
		if((LuaQueryTask("Tsnpc_58")==1 or LuaQueryTask("Tsnpc_58")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_58")
		if(LuaQueryTask("Tsnpc_58")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_58")==1 or LuaQueryTask("Tenpc_58")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_58")
		if(LuaQueryTask("Tenpc_58")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T738") ==2 or LuaQueryTask("T738") ==3) then
		AddTopSayMenuItem("@2治理病人【剧情】","T738")
		if(LuaQueryTask("T738")==2) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T730")==1 or LuaQueryTask("T730")==2) then
		AddTopSayMenuItem("@2拓跋仁心【剧情】","T730")
		if(LuaQueryTask("T730")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T744")==1 or LuaQueryTask("T744")==2) then
		AddTopSayMenuItem("@2老翁的故事【剧情】","T744")
	end
	if(LuaQueryTask("T745")==1 or LuaQueryTask("T745")==2) then
		AddTopSayMenuItem("@2老翁的关怀【剧情】","T745")
		if(LuaQueryTask("T745")==2) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T648")==2) then
		AddTopSayMenuItem("@2次子的关怀【剧情】","T648")
		havetask2 =1
	end
	if(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==0)  then
		AddTopSayMenuItem("@2解馋【剧情】@0","T734a")
		havetask2 =1
	end
	if(LuaQueryTask("Tbprw003")==5 or LuaQueryTask("Tbprw003")==6)then
		AddTopSayMenuItem("@2探听风云【每日】","Tbprw003")
		if(LuaQueryTask("Tbprw003")==5)then
			havetask2=1
		end
	end

--以上为黄色问号部分
	if(LuaQueryTask("T743") ==1) then
		AddTopSayMenuItem("@2狩猎【循环】","T743")
		havetask4 =1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T743")==0 and  LuaQuery("level")>=41 and  LuaQuery("level")<=45 ) then
		AddTopSayMenuItem("狩猎【循环】","T743")
		havetask1 =1
	end
	if(LuaQueryTask("T744")==0 and  LuaQuery("level")>=42 ) then
		AddTopSayMenuItem("老翁的故事【剧情】","T744")
		havetask1 =1
	end
	if(LuaQueryTask("T745")==0 and  LuaQuery("level")>=42 ) then
		AddTopSayMenuItem("老翁的关怀【剧情】","T745")
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
--------------------------------------------------------------------------------
    if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")              --头顶问号
	elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
    elseif(havetask ==1) then
        AddTopSayMenuItem("聊天","liaotian","1")                --头顶叹号
    else
	AddTopSayMenuItem("聊天","liaotian","0")
    end
	return 1
--------------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("汉族老翁:天下纷争，何时才能太平，咱老百姓的日子，难啊！难啊！")   --聊天

--------------------------------------------------------------------------------
elseif(answer=="T730")then
	if(LuaQueryTask("T730")==1)then
		LuaSay("汉族老翁：阁下是谁？到此有何贵干！")
		LuaSay(""..LuaQueryStr("name").."：我是受@4陷落关口@0的@3拓拔仪@0之托，前来探望您老人家的，老人家您身体还好吧！")
		LuaSay("汉族老翁：原来如此，辛苦阁下了。烦劳阁下速去回复@3拓拔仪@0，帮我谢谢他，我就糟老头一个，叫他不必如此挂心！")
		LuaSetTask("T730",2)
		AddLog("拓跋仁心【剧情】",730)
		UpdateMenu()
		UpdateNPCMenu("laoweng")
    elseif(LuaQueryTask("T730")==2)then
        LuaSay("汉族老翁：你还有什么事要办吗，怎么还不去@4陷落关口@0找@3拓拔仪@0回复。")
	end
elseif(answer=="T738")then
	if(LuaQueryTask("T738")==2) then
		 LuaSay(""..LuaQueryStr("name").."：拓拔仪叫我来看看老人家你好些了么？")
		 LuaSay("汉族老翁：哎，我是好了，可@3拓拔仪@0他被传染了，他刚叫你过来找我的吧，他刚把你支走他就昏迷了。")
         LuaSay("汉族老翁：我找了点药，应该能缓解一下病情，你帮我送去给他吧。哎，好人没好报，老天无眼！")
         LuaSetTask("T738",3)
		 AddLog("治理病人【剧情】",738) 
		 UpdateMenu()
		 UpdateNPCMenu("tuobayi")
	elseif(LuaQueryTask("T738")==3) then
		 LuaSay("汉族老翁：你咋就不知道轻重急缓呢，@4陷落关口@0的@3拓拔仪@0现在危在旦夕，你咋还没把药送过去啊！")
	end	  

elseif(answer=="T743") then
	if(LuaQueryStrTask("743day")~=GetCurrentDay())then
			LuaDelTask("T743num")
	end
	if(LuaQueryTask("T743")==0)then
		LuaSay("汉族老翁：@4陷落关口@0的@3霸虎@0在田里作怪，今年粮食又要减产了！速去杀死@330只霸虎@0吧！")
		LuaSetTask("T743",1)
		LuaAddTask("T743num",1)
		LuaSetTask("743day",GetCurrentDay())
		LuaSetTask("task_kill/mon_046/T743",1)
		AddLog("狩猎【循环】",743)
		UpdateMenu()
	elseif(LuaQueryTask("T743")==1)then
		if(LuaQueryTask("task_kill/mon_046/T743")>=31) then
			LuaSay("汉族老翁：多谢你的帮助！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T743jl")
		else
			LuaSay("汉族老翁：你还没有杀够@330只霸虎@0！")
			UpdateTopSay("杀够30只霸虎再来找我")
		end
	end

		elseif(answer=="T743jl")then
			local level=LuaQuery("level")
			if(level>80)then
				level=80
			end
			if(LuaQueryTask("task_kill/mon_046/T743")>=31) then
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
			if(LuaQueryTask("T743num")<=30)then
  			 jingyan=(58870+level^2*20)
			 LuaGive("coin",money,"T743")
			else
			 LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			jingyan=(58870+level^2*20)/2
			end

				LuaAddJx("combat_exp",jingyan,"T743")
				if(LuaQueryTask("T743_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T743_a",99)
				end

				LuaDelTask("task_kill/mon_046/T743")
				LuaDelTask("T743")
				DelLog("743")
				UpdateMenu()
			end



elseif(answer=="T744") then
	if(LuaQueryTask("T744")==0) then
		LuaSay(""..LuaQueryStr("name").."：@3汉族老翁@0你是为何独自一人在这荒废的村落，你的家人呢？")
		LuaSay("汉族老翁：胡人入侵，杀害了我全家，后被@3慕容垂@0所救做了他家仆人，因@3浑太后@0玩弄权术被我发现，欲加害于我，于是隐居于此才保住了小命啊！")
		LuaSay(""..LuaQueryStr("name").."：真不知道@3慕容家族@0竟有这样的故事啊！真是让人难以相信！")
		LuaSay("汉族老翁：看少侠也是深明大义之人，不信就到@4陷落关口@0的@3拓拔仪@0处询问便知！")
		LuaSetTask("T744",1)
		AddLog("汉族老翁的故事【剧情】",744)
		UpdateMenu()
		UpdateNPCMenu("tuobayi")
	elseif(LuaQueryTask("T744")==1) then
		LuaSay("汉族老翁：你不是要求证吗？怎么还不去找@4陷落关口@0找@3拓拔仪@0？")
	end
	
	

elseif(answer=="T745") then
	if(LuaQueryTask("T745")==0) then
		LuaSay("汉族老翁：慕容垂有一子，性格孤僻，但生性善良。从小就爱和我这个老头子呆在一起，我一直把他当孙子看待。")
		LuaSay("汉族老翁：现在多年过去了也不知道他过得怎样！我给你书信一封，你到@4太行古径@0去帮我@3看望慕容麟@0吧！")
		AddLog("汉族老翁的关怀【剧情】",745)
		LuaSetTask("T745",1)
		UpdateMenu()
	elseif(LuaQueryTask("T745")==1) then
		LuaSay("汉族老翁：还没有到@4太行古径@0的@3慕容麟@0那里去啊！")
	elseif(LuaQueryTask("T745")==2) then
		LuaSay("汉族老翁：他现在过的怎么样？")
		LuaSay(" "..LuaQueryStr("name").."：他过的挺好的，你不用挂念他" )
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T745jl")
	end
 	elseif(answer=="T745jl")then
			if(LuaQueryTask("T745")==2)  then
			LuaSetTask("T745",99)
			DelLog("745")
			LuaAddJx("combat_exp",459000,"T745")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",500,"T745")
			UpdateMenu()
			end		   


elseif(answer=="T648")then
	if(LuaQueryTask("T648")==2)then
		LuaSay(""..LuaQueryStr("name").."：慕容麟让我告诉你，让您在家好好休养，过段时间他会亲自来看望您老人家的！")
		LuaSay("汉族老翁：呜呜~~恩！有劳少侠费心了！")
		LuaSetTask("T648",3)
		AddLog("次子的关怀【剧情】",648)
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T648jl")
		UpdateMenu()
	end
		elseif(answer=="T648jl")then
			if(LuaQueryTask("T648")==3)  then
			LuaSetTask("T648",99)
			DelLog("648")
			LuaAddJx("combat_exp",598000,"T648")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T648")
			UpdateMenu()
			end
			
elseif(answer=="T734a") then
                if(LuaQueryTask("T734a") ==0 and LuaItemCount("o_mission300")>=1) then
    			 DelItem("o_mission300",1)
    			 LuaSay("汉族老翁：我已经很久不知肉味了，拓拔仪真是想得周到")
    			 LuaSay("汉族老翁：帮我谢谢拓拔仪")
    			 LuaSetTask("T734a",99)
     			 UpdateMenu()
     			 UpdateNPCMenu("tuobayi")
		end			
			
elseif(answer=="Tbprw003")then          -----------------------探听风云
	if(LuaQueryStrTask("Tbprw003day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw003")==5)then
			LuaSay(LuaQueryStr("name").."：听说您是大家公认的智者，在下远道而来，想请教您几个问题，不知可否？")
			LuaSay("汉族老翁：看你这么虚心好学的份上，给你指点一二，有什么问题啊？")
			LuaSay(LuaQueryStr("name").."：帮派势力越来越大，面临的挑战也越来越多，该怎么办呢？")
			LuaSay("汉族老翁：无论势力有多大，不要忘了当初的帮派宗旨，不要偏离方向就行了！")
			LuaSetTask("Tbprw003",6)
			UpdateMenu()

		elseif(LuaQueryTask("Tbprw003")==6)then
			LuaSay("汉族老翁：快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
		end
	else
		LuaSay("汉族老翁：由于你昨天的@2探听风云【每日】未完成，现在自动重置，到@4晋帝@0那重新接任务吧！")
		LuaSetTask("Tbprw003day",GetCurrentDay()) 
		LuaDelTask("Tbprw003")
		UpdateMenu()
	end


elseif(answer=="Tsnpc_58")then
	if(LuaQueryTask("Tsnpc_58")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("汉族老翁：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_58",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_58")==2)then
		LuaSay("汉族老翁：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_58")then
	if(LuaQueryTask("Tenpc_58")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("汉族老翁：这都是大人的功劳啊")
		LuaSetTask("Tenpc_58",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_58")==2)then
		LuaSay("汉族老翁：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end
