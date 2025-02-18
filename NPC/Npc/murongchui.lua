NPCINFO = {
serial="74" ,
base_name="murongchui",
icon=2587,
NpcMove=2587,
name="慕容垂" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="我慕容父子到底何时才能冰释前嫌",
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

	


	if(LuaQueryTask("T632")==1) then
		AddTopSayMenuItem("@2上帝眷恋【剧情】","T632")
	end


	if((LuaQueryTask("Tsnpc_59")==1 or LuaQueryTask("Tsnpc_59")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_59")
		if(LuaQueryTask("Tsnpc_59")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_59")==1 or LuaQueryTask("Tenpc_59")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_59")
		if(LuaQueryTask("Tenpc_59")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T630")==1)then
		AddTopSayMenuItem("@2父亲的解释【剧情】","T630")
	end
	if(LuaQueryTask("T631")==1 or LuaQueryTask("T631")==2)then
		AddTopSayMenuItem("@2借兵【剧情】","T631")
		if(LuaQueryTask("T631")==2)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T645")==2 or LuaQueryTask("T645")==3)then
		AddTopSayMenuItem("@2负荆请罪【剧情】","T645")
		if(LuaQueryTask("T645")==2)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T633")==1)then
		AddTopSayMenuItem("@2筹措战备【循环】","T633")
		if(LuaItemStatusNormalCount("o_mission145") >= 1  ) then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T634")==1)then
		AddTopSayMenuItem("@2致命的误解【剧情】","T634")
	end

	if(LuaQueryTask("T636")==1 or LuaQueryTask("T636")==2)then
		AddTopSayMenuItem("@2父子之情【剧情】","T636")
		if(LuaQueryTask("T636")==2 ) then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T651")==2 ) then
		AddTopSayMenuItem("@2阴谋的真相【剧情】","T651")
		havetask2 =1
	end
	if(LuaQueryTask("T637")==1 ) then
		AddTopSayMenuItem("@2援助石越【剧情】","T637")
	end
	if(LuaQueryTask("T638")==1 ) then
		AddTopSayMenuItem("@2劝解之道【剧情】","T638")
	end
	if(LuaQueryTask("T644")==1 or LuaQueryTask("T644")==2) then
		AddTopSayMenuItem("@2父子和睦【剧情】","T644")
		if(LuaQueryTask("T644")==1)then
		havetask2 =1
		end
	end

	if(LuaQueryTask("T733")==1)then
		AddTopSayMenuItem("@2援助太行径【剧情】","T733")
		havetask2 =1
	end
	if(LuaQueryTask("T744")==2 or LuaQueryTask("T744")==3) then
		AddTopSayMenuItem("@2老翁的故事【剧情】","T744")
		if(LuaQueryTask("T744")==2)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T690")==1 or LuaQueryTask("T690")==2 or LuaQueryTask("T690")==3)then   
		AddTopSayMenuItem("@2慕容垂之诺【剧情】","T690")
		if(LuaQueryTask("T690")==1)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T691")==1 or LuaQueryTask("T691")==2 or LuaQueryTask("T691")==3)then
		AddTopSayMenuItem("@2商榷【剧情】","T691")
		if(LuaQueryTask("T691")==1 or LuaQueryTask("T691")==3)then
		havetask2=1
		end
	end
	if(LuaQueryTask("T500")==1) then
		AddTopSayMenuItem("@2苻坚的忠告【剧情】","T500")
		 havetask2=1
	end	        
	
	if(LuaQueryTask("T302")==20 and LuaQueryTask("T302T")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302T")
		havetask2 =1
	end            
--以上为黄色问号部分
	if(LuaQueryTask("T635")==1)then
		AddTopSayMenuItem("@2清理道路【循环】@0","T635")
		havetask4 =1
	end
	if(LuaQueryTask("T639")==1)then
		AddTopSayMenuItem("@2乱民的威胁【剧情】@0","T639")
		havetask4 =1
	end
--以上为灰色问号部分

	if(LuaQueryTask("T632")==0 and level>=43 and level<=49)then
		AddTopSayMenuItem("上帝眷恋【剧情】","T632")
		havetask1=1
	end




	if(LuaQueryTask("T633")==0 and level>=45 and level<=56)then
		AddTopSayMenuItem("筹措战备【循环】","T633")
		havetask1 =1
	end
	if(LuaQueryTask("T631")==0  and level>=43)then
		AddTopSayMenuItem("借兵【剧情】","T631")
		havetask1 =1
	end
	if(LuaQueryTask("T634")==0 and level>=43)then
		AddTopSayMenuItem("致命的误解【剧情】","T634")
		havetask1 =1
	end
	if(LuaQueryTask("T635")==0 and level>=43 and level<=48)then
		AddTopSayMenuItem("清理道路【循环】","T635")
		havetask1 =1
	end
	if(LuaQueryTask("T636")==0 and level>=43)then
		AddTopSayMenuItem("父子之情【剧情】","T636")
		havetask1 =1
	end
	if(LuaQueryTask("T637")==0 and LuaQueryTask("T651")==99 and level>=45)then
		AddTopSayMenuItem("援助石越【剧情】","T637")
		havetask1 =1
	end
	if(LuaQueryTask("T638")==0  and LuaQueryTask("T642")==99 and level>=44)then
		AddTopSayMenuItem("劝解之道【剧情】","T638")
		havetask1 =1
	end
	if(LuaQueryTask("T639")==0 and level>=45)then
		AddTopSayMenuItem("乱民的威胁【剧情】","T639")
		havetask1 =1
	end
	if(level>=44 and LuaQueryTask("T630")==0)then
		AddTopSayMenuItem("父亲的解释【剧情】","T630")
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
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
else	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
----------------------------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("慕容垂：@4太行古径@0南北向的山脉，东西向的古径，是通往东北的必经之路。")


-------------------------------------------------------------------------
elseif(answer=="T302T") then
	   if(LuaQueryTask("T302T")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("慕容垂：居然大老远跑来送信，脚力不错啊！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302T",99)
	   UpdateMenu()
	   end
--------------------


elseif(answer=="T632") then--------------------------------------上帝眷恋[剧情]
	if(LuaQueryTask("T632") ==0) then
		LuaSay("慕容垂：英雄是不是觉得最近升级慢，想不想做两全其美的事情呢？")
		LuaSay("慕容垂：最近小弟想讨得心上人小凌的欢喜，想搜集大量的红包到月老处.")
		LuaSay("慕容垂：准备结婚时，让小凌知道我对她的真心，希望大家帮我啊")
		LuaSay("慕容垂：希望英雄能够到找一个【未绑定】的@2红包@0交给我，促成有情人终成眷属。知道英雄是性情中人，如顺利送出自己的红包，我必定重谢，送您经验@2400w+@0、@2铜币10w@0。")
		LuaSay("慕容垂：红包可以在商城中的热卖店购买得到，行动吧！！！")
		--LuaSay("慕容垂：如果英雄觉的送红包是奢侈品，您也可以帮我解决一下霸虎的事情，小弟也绝不会为难你的。")
		--LuaSay("慕容垂：听说陷落关口的霸虎危害过往路人，路人上报朝廷，朝廷希望我能够平息此事。")
		--LuaSay("慕容垂：您如果能够杀够70个霸虎。我也有奖励哦。")
		--LuaSay("慕容垂：相比之下，还是那个更简单一点，听说英雄很有经济头脑，好好考虑下吧！！！")

		LuaSetTask("T632",1)
		--LuaSetTask("task_kill/mon_046/T632",1)
		UpdateTopSay("望英雄慷慨解囊哦")
		AddLog("@2上帝眷恋[剧情]",632)
		UpdateMenu()
	elseif(LuaQueryTask("T632") ==1) then
		if(LuaItemCount("e_state088y")>=1)then
			LuaSay("慕容垂：英雄果真十世真善人，再次见到你，我非常高兴！")
			LuaSay("慕容垂：日后我俩大婚之日比请英雄光临")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T632jl")
		
		--[[elseif(LuaItemCount("o_state088y")<1)then
			if(LuaQueryTask("task_kill/mon_046/T632")>=71)then
				LuaSay("慕容垂：英雄胆识过人，确实令在下佩服！")
				LuaSay("慕容垂：我定当举荐英雄，为国家引荐栋梁之才")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T632jl2")]]
		else
				LuaSay("慕容垂：都说英雄有仁义之心，想必不会让我失望")
				LuaSay("慕容垂：英雄是否忘记任务内容了，那我重新提示一下：望英雄找一个红包交给我，促成有情人终成眷属。知道英雄是性情中人，如顺利送出自己的红包，我必定重谢，送您经验400w+铜币10w。")	
				LuaSay("慕容垂：红包可以在商城中的热卖店购买得到，行动吧！！！")
				--[[LuaSay("慕容垂：听说陷落关口的霸虎危害过往路人，路人上报朝廷，朝廷希望我能够平息此事。")
				LuaSay("慕容垂：您如果能够消灭够70个霸虎。我也有奖励哦。")
				LuaSay("慕容垂：相比之下，还是那个更简单一点，听说英雄很有经济头脑，好好考虑下吧！！！")
				LuaSay("慕容垂：任务只能接一次哦，好好考虑下英雄!!!")]]
			
		 end
	elseif(LuaQueryTask("T632") == 99)then
			LuaSay("慕容垂：多谢英雄成全!!!")
			LuaSay("提示：该任务已完成")	
	end
elseif(answer=="T632jl") then
	if(LuaQueryTask("T632") ==1)then
		if(LuaItemCount("e_state088y")>=1)then
			LuaGive("coin",100000,"T632")
			LuaAddJx("combat_exp",4000000,"T632")
			DelItem("e_state088y",1)
			LuaSetTask("T632",99)
			DelLog("632")
			UpdateMenu()
		end
	end

--[[elseif(answer=="T632jl2") then
	if(LuaQueryTask("T632") ==1)then
		if(LuaItemCount("o_state088y")<1)then
			if(LuaQueryTask("task_kill/mon_046/T632")>=71) then
				LuaGive("coin",500000,"T632")
				LuaAddJx("combat_exp",500000,"T632")
				LuaDelTask("task_kill/mon_046/T632")
				LuaSetTask("T632",99)
				DelLog("632")
				UpdateMenu()

			end
		end
	end]]






































-------------------------------------------------------收集战备【循环】

elseif(answer=="T633") then                                                 
		if(LuaQueryTask("T633") == 0 ) then
		    if(LuaQueryStrTask("633Taskday")~=GetCurrentDay()) then
		      	 LuaSetTask("633dotime",0)
		    end
		       if(LuaQueryTask("633dotime")<10) then
		        	LuaSay(""..LuaQueryStr("name").."：相传@3慕容前辈@0正在筹措战备，大量收购@2战备物资，不知是真是假。")
		        	LuaSay("慕容垂：见阁下也是爽快之人，老夫也不相瞒。老夫确实正大量收购@2战备物资呢。")
		        	LuaSay("慕容垂：你去帮我收集@21块矿精@0吧")
				LuaSetTask("T633",1)
				LuaSetTask("633Taskday",GetCurrentDay())
				LuaAddTask("633dotime",1)
				UpdateTopSay("收集1块矿精")
				AddLog("筹措战备【循环】",633)
			UpdateMenu()
			else
				LuaSay("提示：你今天已经达到了收集上限，明天再来帮我吧")
			end
		elseif(LuaQueryTask("T633") == 1 ) then
			if(LuaItemStatusNormalCount("o_mission145") >= 1  ) then
				LuaSay(""..LuaQueryStr("name").."：这是我收集到的战备物资，增加的奖励在哪里，快快拿来。@!")
				LuaSay("慕容垂：我乃一堂堂大丈夫，岂会失信于你呢。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T633jl")
			else
				LuaSay("慕容垂：阁下既是爽快之人，为何没有收集1块矿精就来，难道来戏弄老夫？")
				UpdateTopSay("收集战备物资")
			end
		end
	    	    elseif(answer=="T633jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		         if(LuaQueryTask("T633")==1) then
				 LuaDelTask("T633")
				 DelItem("o_mission145",1)
				 local jingyan=(99691+level^2*20)
				 LuaAddJx("combat_exp",jingyan,"T633")
				 LuaAddAchievementSchedule("Task_num",1)	
				 DelLog("633")
				 UpdateMenu()
				 end
--------------------------------------------------------------------------------------借兵【剧情】
elseif(answer=="T631") then
	
	if(LuaQueryTask("T631")==0) then 
		LuaSay("慕容垂：当今@4洛阳城@0的@3苻坚@0佣兵百万，在下想请少侠去向苻坚借兵20万，以成大业，不知少侠是否愿意？")
		LuaSay(""..LuaQueryStr("name").."：在下愿意前往，只是空无一物，想必他也不肯借兵啊！")
		LuaSay("慕容垂：少侠莫忧！老夫有一义女，国色天香，打算许配给他，请少侠速速前去，一路上就有劳少侠照顾了！")
		LuaSetTask("T631",1)
		UpdateTopSay("到洛阳城找苻坚借兵")
		AddLog("借兵【剧情】",631)
		UpdateMenu()
	elseif(LuaQueryTask("T631")==1)then
		LuaSay("慕容垂：少侠怎么还没有到@4洛阳城@0找@3苻坚@0借兵啊？难道在玩弄在下？")
	elseif(LuaQueryTask("T631")==2)then
		LuaSay("慕容垂：真是感激不尽，有劳少侠了！复兴大业指日可待也！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T631jl")
	end
		elseif(answer=="T631jl")then
		       if(LuaQueryTask("T631")==2)then
				LuaSay("慕容垂：奖励给你给你一只耳环，但是要到你45级才能佩戴哦，想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装@!")
				LuaGive("e_earring008",1,2,"T631")
				LuaSetTask("T631",99)
				DelItem("o_mission369",1)
				LuaAddJx("combat_exp",502000,"T631") --原502000终491247
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("631")
				UpdateMenu()
			end


--------------------------------------------------------------------------------------致命的误解【剧情】

elseif(answer=="T634") then
	local level= LuaQuery("level")
	if(level<46)then
		LuaSay("慕容垂：你的等级还不够啊！等到了@246级@0再来吧！")
		else
	if(LuaQueryTask("T634") == 0 ) then
		LuaSay("慕容垂：你不用在装了，我知道你从洛阳而来，是@3苻坚@0的手下，你已经中了我的@2西域奇毒@0。")
		LuaSay(""..LuaQueryStr("name").."：啊！我并不是苻坚的手下啊！")
		LuaSay("慕容垂：不管你是何人！此毒只有@3苻坚@0才能解，@35分钟@0之后就会发作，无解药者无一存活！")
		LuaSay(""..LuaQueryStr("name").."：......")
		LuaSetTask("T634",1)
		UpdateTopSay("5分钟内找到苻坚")
		AddLog("致命的误解",634)
		local time=GetCurrentTime()
		LuaSetTask("634time",time)
		UpdateMenu()
	 elseif(LuaQueryTask("T634") == 1 ) then
	    LuaSay("慕容垂：你怎么还没到苻坚那里去啊？")
	    UpdateTopSay("到洛阳城找苻坚要解药")
	end
	end


 --------------------------------------------------------------------------清理道路【剧情】

elseif(answer=="T635") then
	if(LuaQueryStrTask("635day")~=GetCurrentDay())then
		LuaDelTask("T635num")
	end
			if(LuaQueryTask("T635")==0) then  
			
				LuaSay("慕容垂：我相信大侠的诚意，当今@4太行古径@0中的@3穷奇鼠@0影响进军，希望大侠帮忙@2清除30个穷奇鼠！@0")
				LuaSetTask("T635",1)
				LuaSetTask("task_kill/mon_035/T635",1)
				LuaAddTask("T635num",1)
				LuaSetTask("635day",GetCurrentDay())
				UpdateTopSay("消灭30个穷奇鼠")
				AddLog("清理道路【循环】",635)
				UpdateMenu()
			elseif(LuaQueryTask("T635")==1) then
				if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
				LuaSay("慕容垂：多亏少侠鼎力相助，此次进军方可如此顺利!")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T635jl")
				else
				LuaSay("慕容垂：还没有@2击杀完30个穷奇鼠@0啊！")
				UpdateTopSay("击杀30个穷奇鼠")
				end
			end
		elseif(answer=="T635jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		        if(LuaQueryTask("T635")==1) then
				if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
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
				if(LuaQueryTask("T635num")<=30)then
					jingyan=(47083+level^2*20)
					LuaGive("coin",money,"T635")
				else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
					jingyan=(47083+level^2*20)/2
				end
				LuaAddJx("combat_exp",jingyan,"T635")
				if(LuaQueryTask("T635_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T635_a",99)
				end	

				LuaDelTask("task_kill/mon_014/T635")
				DelLog("635")
				LuaSetTask("T635",99)
				LuaDelTask("T635")
				UpdateMenu()
				end
				end


 -----------------------------------------------------------------------------------父子之情【剧情】

    elseif(answer=="T636") then             
		if(LuaQueryTask("T636")==0) then
			LuaSay("慕容垂：请少侠帮我把这封信件带给@4太行古径@0的@3慕容麟@0，他是吾儿，请勿伤害他。")
			LuaSetTask("T636",1)
			LuaGive("o_mission368",1)
			UpdateTopSay("找太行古径的慕容麟")
			AddLog("父子之情【剧情】",636)
			UpdateMenu()
			UpdateNPCMenu("muronglin")
		elseif(LuaQueryTask("T636")==1) then
		       LuaSay("慕容垂：怎么还没有把信交给@3慕容麟@0啊？")
		       UpdateTopSay("把信交给慕容麟")
		elseif(LuaQueryTask("T636")==2 ) then
			LuaSay("慕容垂：多谢少侠送信，老夫感激不尽。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T636jl")
		end
		elseif(answer=="T636jl")then
		       if(LuaQueryTask("T636")==2)then
				LuaSetTask("T636",99)
				LuaAddJx("combat_exp",502000,"T636") --原502000终491247
				LuaGive("coin",3000,"T636") 
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("636")
				UpdateMenu()
			end


--------------------------------------------------------------------------------阴谋真相【剧情】

elseif(answer=="T651")then     
    if(LuaQueryTask("T651")==2)then
	LuaSay(LuaQueryStr("name").."：慕容麟公子让我告诉石越击杀@3太行古猿@0,我以为是你的意思,自作主张杀了@3太行古猿@0，触怒了山灵玄武兽。")
	LuaSay(LuaQueryStr("name").."：如今后方危急，@3石越@0让我来告知你。")
	LuaSay("慕容垂：啊？罢了！这也不能全怪罪于你，看来你是中了吾儿的计了！")
        AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T651jl")
	end
		elseif(answer=="T651jl")then
    			if(LuaQueryTask("T651")==2)then
				LuaSetTask("T651",99)
	     			LuaAddJx("combat_exp",651000,"T651") --原651000终587584
					LuaAddAchievementSchedule("Task_num",1)	
				DelLog("651")
				UpdateMenu()
				end

 --------------------------------------------------------------------------援助石越【剧情】

elseif(answer=="T637") then             
	if(LuaQueryTask("T637")==0) then
		LuaSay("慕容垂：现在形势危急，少侠速去援助@4太行山谷@0的@3石越@0吧！")
                LuaSetTask("T637",1)
		UpdateTopSay("快去太行山谷援助石越")
                AddLog("援助石越【剧情】",637)
         UpdateMenu()
         UpdateNPCMenu("shiyue")
	elseif(LuaQueryTask("T637")==1) then
		LuaSay("慕容垂：后方危机，形式严峻，你为何还没有到@3石越@0那里去啊？")
		UpdateTopSay("速去援助石越")
	end
								    							    
-------------------------------------------------------------------------劝解之路【剧情】								    
elseif(answer=="T638") then
    if(LuaQueryTask("T638")==0) then
	LuaSay("慕容垂：老夫征战多年一直忽视了吾儿，他心存怨恨也是理所当然,如今已不在奢望他还能认我这个爹！")
	LuaSay("慕容垂：劳烦少侠转告吾儿，慕容评只是在利用他而已！希望让他不要再认贼作父。我等他回来!")
	LuaSay(""..LuaQueryStr("name").."：可怜天下父母心！我想麟公子会明白的！在下即刻去劝解他，让他回心转意！")
	LuaSetTask("T638",1)
	AddLog("劝解之道【剧情】",638)
   	UpdateMenu()
   	UpdateNPCMenu("muronglin")
    elseif(LuaQueryTask("T638")==1) then
	LuaSay("慕容麟:去劝解吾儿@3慕容麟@0吧！有劳少侠了！")
   	end


----------------------------------------------------------------------------父子和睦【剧情】														   -----父子和睦【剧情】
elseif(answer=="T644") then
	if(LuaQueryTask("T644")==1)then
		LuaSay("慕容垂：他终于明白了！明白就好，明白就好！")
		LuaSay("慕容垂：我从来没怪罪过他，让他保重身体。我不是一个好父亲，望以后一家人和睦相处")
		LuaSetTask("T644",2)
		AddLog("父子和睦【剧情】",644)
		UpdateMenu()
	elseif(LuaQueryTask("T644")==2)then
		LuaSay("慕容去找找我的儿子，没准他能给你惊喜")
   	end



 --------------------------------------------------------------------------乱民的威胁【剧情】
elseif(answer=="T639") then                                                
	if(LuaQueryTask("T639")==0) then
		LuaSay("慕容垂：如今@4参合坡@0有大批@2龙兵@0作乱，速去维护当地秩序，杀掉30个@3龙兵@0。")
                LuaSetTask("T639",1)
                LuaSetTask("task_kill/mon_039/T639",1)
		UpdateTopSay("消灭30只龙兵")
		AddLog("乱民的威胁【剧情】",639)
	UpdateMenu()
	elseif(LuaQueryTask("T639")==1) then
		if(LuaQueryTask("task_kill/mon_039/T639")>=31) then
			LuaSay("慕容垂：多谢少侠的鼎力相助！@4参合坡@0暂时安定了！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T639jl")
		else
			LuaSay("慕容垂：你还没有杀够@4参合坡@0的@330个龙兵@0。")
			 UpdateTopSay("杀够30个龙兵再来找我")
		end
	end
	elseif(answer=="T639jl")then
		if(LuaQueryTask("T639")==1) then
			LuaAddJx("combat_exp",598000,"T639")--原598000终587584
			LuaGive("coin",3200,"T639")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaDelTask("task_kill/mon_014/T639")
			DelLog("639")
			LuaSetTask("T639",99)
                UpdateMenu()
                end



--------------------------------------------------------------------------援助太行径【剧情】
elseif(answer=="T733") then
	if(LuaQueryTask("T733")==1)	then
		LuaSay(""..LuaQueryStr("name").."：在下受@3拓拔仪@0之托前来助你统一鲜卑慕容族！")
		LuaSay("慕容垂：@3拓拔仪@0真是有心！那有劳少侠前来相助啦！")
		LuaSetTask("T733",2)
   		AddLog("援助太行径【剧情】",733)
   		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T733jl")
	end
	    elseif(answer=="T733jl")then
			if(LuaQueryTask("T733")==2) then
				LuaAddJx("combat_exp",502000,"T733") --原502000终491247
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("733")
				LuaSetTask("T733",99)
			UpdateMenu()
			end



---------------------------------------------------------------------------老翁的故事【剧情】

elseif(answer=="T744") then
	if(LuaQueryTask("T744")==2)	then
		LuaSay(""..LuaQueryStr("name").."：你可知@3老翁@0是何许人也？")
		LuaSay("慕容垂：他原本是我家家仆，一直侍奉我左右，后来因@3浑太后@0陷害也不知......哎！")
		LuaSay(""..LuaQueryStr("name").."：原来如此......想不到老翁一生竟如此坎坷！")
		LuaSetTask("T744",3)
   		AddLog("老翁的故事【剧情】",744)
	elseif(LuaQueryTask("T744")==3)	then
   		LuaSay("慕容垂：你不是说要去告诉@4陷落关口@0的@3拓拔仪@0吗，怎么还没去？")
		UpdateTopSay("到陷落关口找拓拔仪") 
	end

---------------------------------------------------------------------------- 父亲的解释【剧情】

elseif(answer=="T630")then
	if(LuaQueryTask("T630")==0)then
		LuaSay("慕容垂：吾儿错矣！他错以为我恨他，背叛了我，少侠去帮我给我儿子捎个话，让他回来，不要认贼作父了！")
		LuaSay("...可怜天下父子情")
		LuaSetTask("T630",1)
		AddLog("父亲的解释【剧情】",630)
		UpdateTopSay("去给我儿子慕容麟带话，他就在太行古径")
		UpdateMenu()
		UpdateNPCMenu("muronglin") 
	elseif(LuaQueryTask("T630")==1)then
		LuaSay("慕容垂：去给我儿子带话了吗？")
	end
-------------------------------------------------------------------------------负荆请罪【剧情】

elseif(answer=="T645")then
	if(LuaQueryTask("T645")==2)then
		LuaSay(""..LuaQueryStr("name").."：慕容公子对你误会颇深，让我带信他随后便来负荆请罪")
		LuaSay("慕容垂：我的儿啊，你终于理解为父的一片苦心，有劳少侠再回去转告下我儿子我已经原谅他，能在这乱世中好好的活下去就好！")
		LuaSetTask("T645",3)
		AddLog("负荆请罪【剧情】",645)
		DelItem("o_mission354",20)
		UpdateMenu()
		UpdateNPCMenu("moronglin")
	elseif(LuaQueryTask("T645")==3)then
		LuaSay("慕容垂：回去转告下我儿子我已经原谅他，没准他心情好，送你一把绝世武器")
	end


---------------------------------------------------------------------------慕容垂之诺【剧情】
elseif(answer=="T690")then             
		if(LuaQueryTask("T690")==1)then
			LuaSay(LuaQueryStr("name").."：@3燕王@0托我转告你，对于@3浑太后@0，希望你能网开一面，我也希望您能这样！")
			LuaSay("慕容垂：此事不用你担心，我会网开一面的！你先去@4陷落关口@0找@3拓拔仪@0，告诉他我愿与他共商统一大业！")
			LuaSetTask("T690",2)
			AddLog("慕容垂之诺【剧情】",690)
			UpdateTopSay("转告陷落关口的拓拔仪")
		UpdateMenu()
		
		elseif(LuaQueryTask("T690")==2)then
			LuaSay("慕容垂：速去转告@3拓拔仪@0！")

		elseif(LuaQueryTask("T690")==3)then
			LuaSay(LuaQueryStr("name").."：@3拓拔仪@0也表示愿意与您共商统一大业！")
			LuaSay("慕容垂：好，那你现在去回复@3燕王@0吧。")
		end



------------------------------------------------------------------------------商榷【剧情】

elseif(answer=="T691")then              
		if(LuaQueryTask("T691")==1)then
			LuaSay(LuaQueryStr("name").."：其实@3燕王@0也有苦衷的，现在让我过来跟你商议统一之事！")
			LuaSay("慕容垂：我明白的，统一是大事，需考虑周全，你先去找@3拓拔仪@0吧！")
			LuaSetTask("T691",2)
			AddLog("商榷【剧情】",691)
			UpdateTopSay("去找拓拔仪")
		UpdateMenu()

		elseif(LuaQueryTask("T691")==2)then
			LuaSay("慕容垂：快去找@3拓拔仪@0吧！")

		elseif(LuaQueryTask("T691")==3)then
			LuaSay(LuaQueryStr("name").."：@3拓拔仪@0告诉我，那些邪恶是影响统一的不安定因素。。。")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","T691jl")
		end

		elseif(answer=="T691jl")then     
			if(LuaQueryTask("T691")==3)then
				LuaSetTask("T691",99)
				DelLog("691")
				LuaAddJx("combat_exp",1211000,"T691") --原1211000终1206346
				LuaAddAchievementSchedule("Task_num",1)	
		UpdateMenu()
			end


--------------------------------------------------------------------------苻坚的忠告【剧情】

elseif(answer=="T500")then
	if(LuaQueryTask("T500")==1)then
		LuaSay(""..LuaQueryStr("name").."：@3苻坚@0让我转告你，他已经没有野心了，之前一直派@3石越@0来监视你，却没有音讯，估计是被你收买了。")			
		LuaSay("慕容垂：什么，他已经知道了，既然这样，不妨告诉你，其实@3石越@0早归降于我了。") 
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T500jl")
	end
	elseif(answer=="T500jl")then
		if(LuaQueryTask("T500")==1) then
			LuaAddJx("combat_exp",460000,"T623")--原460000终491247
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T500",99)
			DelLog("500")
		UpdateMenu()
		end

elseif(answer=="Tsnpc_59")then
	if(LuaQueryTask("Tsnpc_59")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("慕容垂：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_59",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_59")==2)then
		LuaSay("慕容垂：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_59")then
	if(LuaQueryTask("Tenpc_59")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("慕容垂：这都是大人的功劳啊")
		LuaSetTask("Tenpc_59",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_59")==2)then
		LuaSay("慕容垂：话已经带到了，快回去领取奖励吧")
	end


end
LuaSendMenu()
return 1
end



























