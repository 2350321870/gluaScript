NPCINFO = { 
serial="69" ,
base_name="qifuguoren",
icon=2565,
NpcMove=2565,
name="乞伏国仁" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="我与符坚不共戴天",
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
	local T565=LuaQueryTask("T565")
	local T580=LuaQueryTask("T580")
	local T581=LuaQueryTask("T581")
	local T587=LuaQueryTask("T587")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_53")==1 or LuaQueryTask("Tsnpc_53")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_53")
		if(LuaQueryTask("Tsnpc_53")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_53")==1 or LuaQueryTask("Tenpc_53")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_53")
		if(LuaQueryTask("Tenpc_53")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_54")==1 or LuaQueryTask("Tsnpc_54")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_54")
		if(LuaQueryTask("Tsnpc_54")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_54")==1 or LuaQueryTask("Tenpc_54")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_54")
		if(LuaQueryTask("Tenpc_54")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T565")==1) then
		AddTopSayMenuItem("@2潜入竹林【剧情】","T565")
		havetask2=1
	end	
	if(LuaQueryTask("T580")==2 or LuaQueryTask("T580")==1) then
		AddTopSayMenuItem("@2昔日往事【剧情】","T580")
		if(LuaQueryTask("T580")==2 and LuaItemCount("o_mission314")==0) then
		havetask2 =1
		end
	end 
	if(LuaQueryTask("T581")==1) then
		AddTopSayMenuItem("@2鬼妇叔嫂【剧情】","T581")
	end


	if(LuaQueryTask("T594")==1 or LuaQueryTask("T594")==2) then
		AddTopSayMenuItem("@2获救喜讯【剧情】","T594")
		if(LuaQueryTask("T594")==1) then
		havetask2=1
		end
	end

	if(LuaQueryTask("T584")==1)then
	    AddTopSayMenuItem("@2扭转乾坤【剧情】","T584")
	end 
	if(LuaQueryTask("T302")==17 and LuaQueryTask("T302Q")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302Q")
		havetask2 =1
	end 
--以上为黄色问号部分
	if(LuaQueryTask("T583")==1)then
	    AddTopSayMenuItem("@2制作毒药【剧情】","T583")
		if(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")>=1) then
			havetask2 =1
		else
			havetask4=1
		end
	end
	if(LuaQueryTask("T587")==1) then
		AddTopSayMenuItem("@2消灭竹妖【循环】","T587")
		havetask4=1
	end
	if(LuaQueryTask("T582")==1) then
		AddTopSayMenuItem("@2嗜血蛮族【剧情】","T582")
		havetask4=1
	end
--以上为灰色问号部分
	if(T580==0 and level>=34) then
		AddTopSayMenuItem("昔日往事【剧情】","T580")
		havetask1 =1
	end
	if(T581==0 and level>=34) then
		AddTopSayMenuItem("鬼妇叔嫂【剧情】","T581")
		havetask1 =1
	end
	if(T587==0 and level>=33 and level<=37) then
		AddTopSayMenuItem("消灭竹妖【循环】","T587")
		havetask1=1
	end
	if(level>=37 and LuaQueryTask("T582")==0) then
		AddTopSayMenuItem("嗜血蛮族【剧情】","T582")
		havetask1=1
	end	
	if(level>=36 and LuaQueryTask("T583")==0)then
	    AddTopSayMenuItem("制作毒药【剧情】","T583")
	    havetask1=1
	end
	if(LuaQueryTask("T581")==99 and LuaQueryTask("T584")==0)then
	    AddTopSayMenuItem("扭转乾坤【剧情】","T584")
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
--------------------------------------------------------  聊天 
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1

elseif(answer=="T302Q") then
	   if(LuaQueryTask("T302Q")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
		LuaSay("乞伏国仁：多谢少侠送信！")
		DelItem("o_mission076",1)
		LuaSetTask("T302Q",99)
		UpdateMenu()
	   end

------------------------------------------------  潜入竹林
elseif(answer=="T565") then
	  if(LuaQueryTask("T565")==1) then
	    LuaSay("乞伏国仁：虽然符坚乃是一代枭雄，但我与他仇恨不共戴天。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T565jl")
	 end
elseif(answer=="T565jl") then
	if(LuaQueryTask("T565")==1) then
	        LuaSetTask("T565",99)
	        DelLog("565")
	        LuaAddJx("combat_exp",261000,"T565") --原312000终173659
		LuaAddAchievementSchedule("Task_num",1)	
	        UpdateMenu()
	end


             

-------------------------------------------------- 昔日往事
elseif(answer=="T580") then
	 if(LuaQueryTask("T580")==0) then
	 	LuaSay("乞伏国仁：给你一个玉佩，你回去找苻坚，苻坚自然会告诉你以前的事。")
	    LuaSetTask("T580",1)
	    LuaGive("o_mission314",1)
	    AddLog("昔日往事【剧情】",580)
	    UpdateMenu()
	    UpdateTopSay("去洛阳城去找苻坚")
	elseif(LuaQueryTask("T580")==1) then
		LuaSay("乞伏国仁：去洛阳城去找@2苻坚")

	elseif(LuaQueryTask("T580")==2 and LuaItemCount("o_mission314")==0) then
	 	LuaSay("乞伏国仁:杀了人，以为用权势就可以补偿吗!")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T580jl")
    end

elseif(answer=="T580jl") then
	if(LuaQueryTask("T580")==2) then
	        LuaSetTask("T580",99)      
	        LuaAddJx("combat_exp",272000,"T580")--原312000终195128
		LuaAddAchievementSchedule("Task_num",1)	
	        DelLog("580")
	        UpdateMenu()
	end
------------------------------------------------------------鬼妇叔嫂
elseif(answer=="T581") then
	if(LuaQueryTask("T581")==0) then
		LuaSay("乞伏国仁:少侠去消灭竹林中的@3竹节怪@0，取得@320个竹节毒@0后交给我的叔婶@3鬼夫人@0，她就在附近不远处。")
		LuaSetTask("T581",1)
		AddLog("鬼妇叔嫂【剧情】",581)	
		UpdateMenu()
		UpdateTopSay("收集20个竹节毒")
		UpdateNPCMenu("guifuren")
				
	elseif(LuaQueryTask("T581")==1) then
		 LuaSay("收集20个竹节毒，然后交给鬼夫人人，她需要这个东西。")
	end
-----------------------------------  嗜血蛮族【剧情】
elseif(answer=="T582") then
	if(LuaQueryTask("T582")==0) then
		LuaSay(""..LuaQueryStr("name").."：在我没有到北方来之前听闻北方各族都是是吃人肉喝人血，不知道都是些什么种族？")
		LuaSay("乞伏国仁：想知道答案就去@3食人谷消灭30个骷髅@0！")
		LuaSetTask("task_kill/mon_032/T582",1)   ------mon_032   嚎兽  开启杀怪计数器
		LuaSetTask("T582",1)
		AddLog("嗜血蛮族【剧情】",582)-------日志的添加
		UpdateMenu()
	
	elseif(LuaQueryTask("T582")==1) then
  		if(LuaQueryTask("task_kill/mon_032/T582") <31) then
  			LuaSay("乞伏国仁：你还没有杀够@330个骷髅@0，请到@4食人谷@0接着杀吧！")
        else
         	AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T582jl")
        end
    end
elseif(answer=="T582jl")then
 	if(LuaQueryTask("T582")==1) then
 		if(LuaQueryTask("task_kill/mon_032/T582")>=31)then
 			LuaSay("乞伏国仁：少侠这么快就杀死了30个骷髅，果然能力不凡！我的叔嫂鬼夫人急需帮助，请少侠务必去帮帮@3鬼夫人@0。")
 			LuaDelTask("task_kill/mon_025/T582")
 			LuaAddJx("combat_exp",324900,"T582") --原349000 终272039
			LuaAddAchievementSchedule("Task_num",1)	
 			LuaGive("coin",2320,"T582")
			LuaSetTask("T582",99)
			DelLog("582")-------日志的删除
			UpdateMenu()
			UpdateTopSay("去帮助鬼夫人") 
		end
	end
elseif(answer=="T594") then
	if(LuaQueryTask("T594")==1) then
		LuaSay(""..LuaQueryStr("name").."：如今@3乞伏奎@0已经获救，@3鬼夫人@0让我来找你。")


		LuaSay("乞伏国仁：我听说有一个大学问的贤士，名叫@3陶渊明@0，我建议少侠去@4洛阳洛城废墟@0找@3陶渊明@0听听他的意见！")
		LuaSetTask("T594",2)
		AddLog("获救喜讯【剧情】",594)

		UpdateMenu()       
	elseif(LuaQueryTask("T594")==2) then
		LuaSay("乞伏国仁：到@4洛阳洛城废墟@0找@3陶渊明@0")
	end
	----------------------------------------循环
elseif(answer=="T587") then
		if(LuaQueryTask("T587") == 0 ) then
			if(LuaQueryStrTask("587day")~=GetCurrentDay())then
				LuaDelTask("T587num")
			end
			
				LuaSay("乞伏国仁：竹叶妖本来是很温和的，最近不知什么原因，变得残暴起来，伤害了不少过往行人")
				LuaSay("乞伏国仁：请少侠去斩杀20只@3竹叶妖@0，压制下他们")
				if(TeamCount()>=2)then
					LuaSay("乞伏国仁：看样子少侠已经懂得组队的好处了哦@!")
				else
					LuaSay("乞伏国仁：组队做任务能让你快很多，组队去副本更是能提高出好东西的几率哦@!")
				end
				LuaSetTask("T587",1)
				LuaSetTask("task_kill/mon_030/T587",1)
		      		AddLog("消灭竹妖【循环】",587)
				LuaSetTask("587day",GetCurrentDay())
				LuaAddTask("T587num",1)
		  		UpdateMenu()
		  		UpdateTopSay("在西蜀竹林消灭20只竹叶妖")

		elseif(LuaQueryTask("T587") == 1 ) then
     		if(LuaQueryTask("task_kill/mon_030/T587")>=21)then
            		LuaSay("乞伏国仁：多谢阁下帮忙了，如果阁下有心，可以帮我多压制他们一下吧。")
		    	AddMenuItem("@7任务完成","")
		    	AddMenuItem("领取奖励","T587jl")
			else
		    	LuaSay("乞伏国仁：你还没有杀够@220个竹叶妖@0呢。")
            		UpdateTopSay("快去杀20个竹叶妖")
          	end
		end

		elseif(answer=="T587jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T587")==1) then
     				if(LuaQueryTask("task_kill/mon_030/T587")>=21)then
       		 			LuaDelTask("task_kill/mon_030/T587")
		    			LuaDelTask("T587")
		    			DelLog("587")
					local jingyan
					local bexp
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
						bexp=82765
					else
						bexp=44765
					end
					if(LuaQueryTask("T587num")<=30)then
						jingyan=(bexp+level^2*20)
						LuaGive("coin",money,"T587")
					else
						LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
						jingyan=(bexp+level^2*20)/2
					end
					
		    				LuaAddJx("combat_exp",jingyan,"T587")
						if(LuaQueryTask("T587_a")==0) then
							LuaAddAchievementSchedule("Task_num",1)
							LuaSetTask("T587_a",99)
						end

		    			UpdateMenu()
		    		end
			end
------------------------    支线

elseif(answer=="T583") then
	if(LuaQueryTask("T583")==0) then
		LuaSay("乞伏国仁：我叔父乞伏步颓为苻坚那匹夫奔波一生，劳苦功高，结果却落得如此下场，现在我要为我叔父报仇，奈何苻坚那匹夫拥军百万.")
		LuaSay("乞伏国仁：我乞家自古传下一张制作毒药的秘方，制成后剧毒无比！")
		LuaSay("乞伏国仁：我想请英雄去收集两种材料，一种是@3竹节妖@0身上的@2竹叶毒粉@010份，还有一种是@3修罗魔菇@0身上的@2剧毒蘑菇@0一份")
		LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
		LuaSetTask("T583",1)      -------日志的添加
		AddLog("制作毒药【剧情】",583)
		UpdateMenu()
	elseif(LuaQueryTask("T583")==1) then
		if(LuaItemCount("o_mission326")<10 and LuaItemCount("o_mission327")<1) then
			LuaSay("到@4西蜀竹林@0杀竹节妖收集10份@2竹叶毒粉@0，再到@4白骨洞深处@0杀修罗魔菇收集一份@2剧毒蘑菇")
			LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
		elseif(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")<1) then
			LuaSay("乞伏国仁：竹叶毒粉够了，到@4白骨洞深处@0杀@3修罗魔菇@0收集一份@2剧毒蘑菇@0")
			LuaSay("@1温馨提示@0：boss掉落是给最后一刀杀死boss的人！祝你好运！")
		elseif(LuaItemCount("o_mission326")>=10 and LuaItemCount("o_mission327")>=1) then
			LuaSay("乞伏国仁：多谢英雄为我奔波，我这就制作毒药为我叔父报仇！")
			AddMenuItem("@7任务完成","")
	    		AddMenuItem("领取奖励","T583jl") 
		end
	end
elseif(answer=="T583jl")then  -----------------给经验
	if(LuaQueryTask("T583")==1) then
		LuaSetTask("T583",99)
		DelItem("o_mission326",10)---------删除道具 
		DelItem("o_mission327",1)
		LuaAddJx("combat_exp",295000,"T583") --原335000终244292
		LuaGive("coin","10000","T583")
		LuaAddAchievementSchedule("Task_num",1)	
        DelLog("583")        -------日志的删除		
        UpdateMenu()
	end
elseif(answer=="T584") then
	if(LuaQueryTask("T584")==0) then
		LuaSay("乞伏国仁沮丧的说道：我恨啊，在我快要把毒药配置好的时候，远方突然传来一阵马蹄声，驻目而望，苻坚那匹夫带领大军来了！")
		LuaSay("乞伏国仁：苻坚逼迫我乞伏家，我乞付家不从，结果大战开始，在混乱之时，乞伏奎被羯族所抓，")
		LuaSay("乞伏国仁：还好在乞伏家生死存亡的时候，鬼夫人修炼了一种邪术扭转乾坤,虽然我乞伏家还是支离破碎了，我想让英雄拿着这支可以增加十年功力的@2千年赤果@0去感谢@3鬼夫人@0。")
		LuaGive("o_mission332",1)
		LuaSetTask("T584",1)
		AddLog("扭转乾坤【剧情】",584)-------日志的添加
		UpdateMenu()
		UpdateNPCMenu("guifuren")
	elseif(LuaQueryTask("T584")==1) then
			LuaSay("到@4西蜀竹林@0找@3鬼夫人@0")
	end



--------------------------------- 
	

elseif(answer=="liaotian") then
	LuaSay("乞伏国仁：符坚杀我叔父，我定报此仇!") 
		       
-------------------------------------------------	
elseif(answer=="Tsnpc_53")then
	if(LuaQueryTask("Tsnpc_53")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("乞伏国仁：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_53",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_53")==2)then
		LuaSay("乞伏国仁：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_53")then
	if(LuaQueryTask("Tenpc_53")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("乞伏国仁：这都是大人的功劳啊")
		LuaSetTask("Tenpc_53",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_53")==2)then
		LuaSay("乞伏国仁：话已经带到了，快回去领取奖励吧")
	end	

--
elseif(answer=="Tsnpc_54")then
	if(LuaQueryTask("Tsnpc_54")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("乞伏国仁：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_54",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_54")==2)then
		LuaSay("乞伏国仁：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_54")then
	if(LuaQueryTask("Tenpc_54")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("乞伏国仁：这都是大人的功劳啊")
		LuaSetTask("Tenpc_54",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_54")==2)then
		LuaSay("乞伏国仁：话已经带到了，快回去领取奖励吧")
	end	
end
LuaSendMenu()
return 1
end 

