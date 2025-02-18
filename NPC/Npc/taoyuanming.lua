NPCINFO = {
serial="73" ,
base_name="taoyuanming",
icon=2559,
NpcMove=2559 ,
name="陶渊明" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="仁义治国，方可平天下",
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
	local T620= LuaQueryTask("T620")
	local T621= LuaQueryTask("T621")
	local T622= LuaQueryTask("T622")
	local T624= LuaQueryTask("T624")
	local T625= LuaQueryTask("T625")
	local T626= LuaQueryTask("T626")
	local T594=LuaQueryTask("T594")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_56")==1 or LuaQueryTask("Tsnpc_56")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_56")
		if(LuaQueryTask("Tsnpc_56")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_56")==1 or LuaQueryTask("Tenpc_56")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_56")
		if(LuaQueryTask("Tenpc_56")==1)then
			havetask2=1
		end
	end
	if(T620>0 and T620<99 )  then
		AddTopSayMenuItem("@2高人教诲【剧情】","T620")
		havetask2 =1
	end
	
	if(T622==1)  then
		AddTopSayMenuItem("@2统一之道1【剧情】","T622")
		if(LuaItemCount("o_mission020")>=2 and LuaItemCount("o_mission039")>=2) then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(T624==1) then
		AddTopSayMenuItem("@2鲜卑皇室【剧情】","T624")
	end
	if(T625==1)  then
		AddTopSayMenuItem("@2文艺复兴【剧情】","T625")
	end		
	if(T626==1 or T626==2)  then
		AddTopSayMenuItem("@2寻求明主【剧情】","T626")
		if(T626==2)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T734")==2 and LuaQueryTask("T734b")==0)  then
		AddTopSayMenuItem("@2解馋【剧情】","T734b")
		if(LuaItemCount("o_mission300")>=1)then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T594")==2) then
		AddTopSayMenuItem("@2获救喜讯【剧情】","T594")
		havetask2=1
	end
	
	
	if(LuaQueryTask("T302")==15 and LuaQueryTask("T302O")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302O")
		havetask2 =1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T627")==1 )  then
		AddTopSayMenuItem("@2消灭夜叉【循环】","T627")
		havetask4 =1
	end
	if(T621==1 )  then
		AddTopSayMenuItem("@2统一之道2【剧情】","T621")
		havetask4 =1
	end
--以上为灰色问号部分
	if(T620==0 and LuaQuery("level")>=40)  then
		AddTopSayMenuItem("高人教诲【剧情】","T620")
		havetask1 =1
	end
	if(T622==0 and  LuaQuery("level")>=40)  then
		AddTopSayMenuItem("统一之道1【剧情】","T622")	
		havetask1 =1
	end
	if(T621==0  and LuaQueryTask("T622")==99) then
		AddTopSayMenuItem("统一之道2【剧情】","T621")
		havetask1 =1
	end
	if(T624==0 and T626==99 and level>=41) then
		AddTopSayMenuItem("鲜卑皇室【剧情】","T624")
		havetask1 =1
	end
	if(T625==0 and T624==99)  then
		AddTopSayMenuItem("文艺复兴【剧情】","T625")
		havetask1 =1	
	end	
	if(T626==0  and LuaQuery("level")>=41)  then
		AddTopSayMenuItem("寻求明主【剧情】","T626")
		havetask1 =1
		end
	if(LuaQueryTask("T627")==0  and level>=40 and level<45)  then
		AddTopSayMenuItem("消灭夜叉【循环】","T627")
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
------------------------------------------------
if(havetask ==2 )then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1  
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("陶渊明：洛邑洛城废墟，衰败不堪，胡人的侵入给中原文明造成了不可磨灭的损失。")     --聊天
	
elseif(answer=="T302O") then
	   if(LuaQueryTask("T302O")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("陶渊明：多谢少侠不远千里送信！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302O",99)
	   UpdateMenu()
	   end


elseif(answer=="T620") then                     -----陶渊明的问题
       if(LuaQueryTask("T620")==0) then
		LuaSay("陶渊明：如今天下战乱，请少侠回答一些关于@3治理天下@0的问题吧！")
		LuaSay("陶渊明：@3以仁义治天下@0是哪家提出的思想？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("[误]杂家","NO_11")
		AddMenuItem("[正]儒家","N11_ANSWER")
		AddMenuItem("[误]墨家","NO_11")
		AddMenuItem("[误]法家","NO_11")

       elseif(LuaQueryTask("T620") == 1 ) then
	    LuaSay("陶渊明：@3赏罚治民@0是哪家提出的思想？")
	    AddMenuItem("@7答案选项","")
	    AddMenuItem("[误]兵家","NO_21")
	    AddMenuItem("[误]纵横家","NO_21")
	    AddMenuItem("[误]农家","NO_21")
	    AddMenuItem("[正]法家","N21_ANSWER")

        elseif(LuaQueryTask("T620") == 2 ) then
        LuaSay("陶渊明：@3百家争鸣@0指的是中国哪个时期？")
        AddMenuItem("@7答案选项","")
	    AddMenuItem("[误]唐朝","NO_31")
	    AddMenuItem("[误]清朝","NO_31")
	    AddMenuItem("[正]战国时期","N31_ANSWER")
	    AddMenuItem("[误]明朝","NO_31")

        elseif(LuaQueryTask("T620") == 3 ) then
	    LuaSay("陶渊明：@3无为而治@0是谁提出的？")
	    AddMenuItem("@7答案选项","")
	    AddMenuItem("[误]孔子","NO_41","")
	    AddMenuItem("[正]老子","N41_ANSWER","")
	    AddMenuItem("[误]韩非子","NO_41","")
	    AddMenuItem("[误]墨子","NO_41","")
		end

	   elseif(answer=="NO_11") then
           LuaSetTask("T620",0)
           LuaSay("陶渊明：不会吧，这么简单的问题也答错？重新再答！")

	   elseif(answer=="N11_ANSWER") then
			if(LuaQueryTask("T620")<1) then
           	LuaSetTask("T620",1)
          	LuaAddJx("combat_exp",80000,"T620")
            LuaSay("陶渊明：这么简单的问题你答对了也没什么稀奇的，我再问你")
            DoTalk("T620")
            end
		elseif(answer=="NO_21") then
             LuaSetTask("T620",1)
	         LuaSay("陶渊明：你答错了，重新再答！")

		elseif(answer=="N21_ANSWER") then
            if(LuaQueryTask("T620")<2) then
		     LuaSetTask("T620",2)
          	 LuaAddJx("combat_exp",95000,"T620")
          	 LuaSay("陶渊明：看来你还是有两下子嘛，我再问你")
          	 DoTalk("T620")
          	 end

		elseif(answer=="NO_31") then
             LuaSetTask("T620",2)
	         LuaSay("陶渊明：这个问题确实有一点难度啊，给你机会重新选择。")

		elseif(answer=="N31_ANSWER") then
           if(LuaQueryTask("T620")<3) then
            LuaSetTask("T620",3)
           	LuaAddJx("combat_exp",125000,"T620")
           	LuaSay("陶渊明：你真是聪明啊，这个也知道啊，再问你一个问题。")
           	DoTalk("T620")
          	end

		elseif(answer=="NO_41") then
            LuaSetTask("T620",3)
            LuaSay("陶渊明：这个问题确实很有难度啊，给你机会重新选择。")

		elseif(answer=="N41_ANSWER") then
            if(LuaQueryTask("T620")<99) then
            LuaSetTask("T620",99)
	        LuaSay("陶渊明：你真是太聪明了，居然全部都知道。")
		LuaSay("陶渊明：。。。。悄悄的告诉你，想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装哦@!")
	        LuaGive("coin",2000,"T620")
		LuaGive("e_head014",1,2,"T620")
            LuaAddJx("combat_exp",120000,"T620")
			LuaAddAchievementSchedule("Task_num",1)	
            DelLog("620")
            UpdateMenu()
            end 
                                                                               -------钓鱼任务
elseif(answer=="T622") then
	local T622= LuaQueryTask("T622")
	if(T622==0)then
		LuaSay("陶渊明：钓鱼可以轻松获得@3经验@0、@2铜币@0和@3材料@0哦！")
		LuaSay("陶渊明：收集到@2两块优质鱼肉和两块劣质鱼肉@0后来给我！鱼肉可以在建康城渔翁处通过钓鱼获得哦@!")
	   	LuaSetTask("T622",1)
	  	AddLog("统一之道1【剧情】",622)
		UpdateMenu()
	elseif(T622==1) then
		if(LuaItemCount("o_mission020")>=2 and LuaItemCount("o_mission039")>=2) then
			LuaSay("陶渊明：天下各族就像池中之鱼一般，杀光了小鱼，大鱼也无法生存，治世之道在于统一与平衡，仁爱与融合。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T622jl")
		else
			LuaSay("陶渊明：我要的@3两块劣质鱼肉@0和@3两块优质鱼肉@0呢？你还没得到我想要的东西。")
        		UpdateTopSay("建康城渔翁那里钓两块优质鱼肉和两块劣质鱼肉给我！")
        end
	end
    elseif(answer=="T622jl")then
		if(LuaQueryTask("T622")==1) then
			LuaSetTask("T622",99)
        		LuaAddJx("combat_exp",385000,"T622") --原385000终369574
			LuaGive("coin",2700,"T622")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("622")
			DelItem("o_mission020",2)
			DelItem("o_mission039",2)
			UpdateMenu()
        end
 
 elseif(answer=="T621") then                                                 -------杀怪任务
	if(LuaQueryTask("T621")==0) then
		LuaSay("陶渊明：夜叉危害百姓,请速去击杀@4陷落关口@0的@330个夜叉@0。")
		LuaSetTask("task_kill/mon_047/T621",1)
		LuaSetTask("T621",1)
		AddLog("统一之道2【剧情】",621)
		UpdateTopSay("消灭30个夜叉")
		UpdateMenu()
	elseif(LuaQueryTask("T621")==1) then
		if(LuaQueryTask("task_kill/mon_047/T621")>=31) then
		LuaSay("陶渊明：北方各族都像这些桀骜不驯的夜叉，对于冥顽不灵，甚至是残暴不仁的人就要以暴制暴。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T621jl")
		else
		LuaSay("陶渊明：你还没杀够@230个夜叉@0。")
		UpdateTopSay("杀够30个夜叉再来找我")
		end
	end
	
	elseif(answer=="T621jl")then
		if(LuaQueryTask("T621")==1) then
			LuaDelTask("task_kill/mon_047/T621")
			LuaSetTask("T621",99)
			LuaAddJx("combat_exp",385000,"T621")--原385000终369574
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("621")
			UpdateMenu()
			end                                                                                        ---- 对话任务
  elseif(answer=="T624") then
	local T624= LuaQueryTask("T624")
	 if(T624==0)then
			LuaSay("为今北方乱世有统一潜力的，只有北方鲜卑族的@3拓跋氏@0，去找@4陷落关口@0的@3拓拔仪@0，探讨统一之道")
			LuaSetTask("T624",1)
			AddLog("鲜卑皇室【剧情】",624)
			UpdateMenu()
  		elseif(T624==1) then
	      	LuaSay("陶渊明:你怎么还没有到@4陷落关口@0的@3拓拔仪@0那里去啊？")
 	 	end



elseif(answer=="T594") then
	if(LuaQueryTask("T594")==2) then
		LuaSay("陶渊明:阁下真是少年英雄啊！")
		AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T594jl")
	end
	elseif(answer=="T594jl") then
		if(LuaQueryTask("T594")==2) then
		LuaAddJx("combat_exp",334555,"T594")--原280000终334555
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T594",99)
		DelLog("594")
		UpdateMenu()
   	 	end
 	

elseif(answer=="T625")then
	if(LuaQueryTask("T625")==0)then
		LuaSay("陶渊明：到@4废弃村路@0的@3拓拔仪@0处告诉他推行中原文明。")
		LuaSetTask("T625",1)
		AddLog("文艺复兴【剧情】",625)
		UpdateMenu()
	elseif(LuaQueryTask("T625")==1)then
		LuaSay("陶渊明：你为何还没到@2陷落关口@0的@3拓拔仪@0那里去啊？")
		UpdateTopSay("到陷落关口找拓拔仪") 
 	end


elseif(answer=="T626")then
	if(LuaQueryTask("T626")==0)then
		LuaSay("陶渊明：纵观天下群雄，北方最有实力者乃秦王苻坚也！到@4洛阳城@0的@3苻坚@0处告诉他推行中原文明。")
		LuaSay("陶渊明：我给你书信一封交给他，告诉他要广施仁政，以仁义治天下，方可统一天下！")
		LuaSetTask("T626",1)
		AddLog("寻求明主【剧情】",626)
		UpdateMenu()
	elseif(LuaQueryTask("T626")==1)then
		LuaSay("陶渊明：你为何还没到@2洛阳城@0的@3苻坚@0那里去啊？")
	elseif(LuaQueryTask("T626")==2)then
		LuaSay(""..LuaQueryStr("name")..":苻坚信还未看就撕掉了，叫你以后不要再去烦他！")
		LuaSay("陶渊明：哎！罢了！不足与之谋！")
		AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T626jl")
	end
	elseif(answer=="T626jl") then
		if(LuaQueryTask("T626")==2) then
			if(LuaFreeBag()>=1)then
				LuaAddJx("combat_exp",417000,"T626") --原417000终407273
				LuaGive("e_necklace007",1,2,"T626")
				LuaGive("coin",1000,"T626")
				LuaAddAchievementSchedule("Task_num",1)	
				LuaSetTask("T626",99)
				DelLog("626")
				UpdateMenu()
			else
				LuaSay("@5温馨提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉哦@!")
			end
   	 	end
            


elseif(answer=="T734b") then
                 if(LuaQueryTask("T734b") ==0 and LuaItemCount("o_mission300")>=1) then
    			 DelItem("o_mission300",1)
    			 LuaSay("陶渊明：我已经很久不知肉味了，拓拔仪真是想得周到。")
    			 LuaSay("陶渊明：帮我谢谢拓拔仪")
    			 LuaSetTask("T734b",99)
     			 UpdateMenu()
			end

elseif(answer=="T594") then
	if(LuaQueryTask("T594")==2) then
		LuaSay("陶渊明:阁下真是少年英雄啊！")
		AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T594jl")
	end
elseif(answer=="T594jl") then
	if(LuaQueryTask("T594")==2) then
		LuaAddJx("combat_exp",400000,"T594") --原400000终334555
		LuaSetTask("T594",99)
		DelLog("594")-------日志的删除
		UpdateMenu()
	end


 elseif(answer=="T627") then  -------消灭夜叉
	if(LuaQueryStrTask("627day")~=GetCurrentDay())then
		LuaDelTask("T627num")
	end
	if(LuaQueryTask("T627")==0) then	
			LuaSay("陶渊明：英雄来的正好，这里夜叉鱼肉百姓，助我速速去消灭30只夜叉吧。它们就在@4陷落关口@0。")
			if(TeamCount()>=2)then
				LuaSay("陶渊明：组队打怪不光有额外的经验加成，还能加快做任务的速度和交上朋友@!")
			else
				LuaSay("陶渊明：在越来越凶的怪物面前，单打独斗可是很吃力的哦，建议你组上队伍，还有额外的经验奖励哦@!")
			end
			LuaSetTask("task_kill/mon_047/T627",1)
			LuaSetTask("T627",1)
			LuaAddTask("T627num",1)
			LuaSetTask("627day",GetCurrentDay())
			AddLog("消灭夜叉【循环】",627)
			UpdateTopSay("消灭30个夜叉再来找我")
			UpdateMenu()
	elseif(LuaQueryTask("T627")==1) then
		if(LuaQueryTask("task_kill/mon_047/T627")>=31) then
		LuaSay("陶渊明：做的很好，这是给你的奖励。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T627jl")
		else
		LuaSay("陶渊明：你还没消灭够@230个夜叉@0，消灭了足够的夜叉再来找我吧。它们就在@4陷落关口@0。")
		end
	end
	
	elseif(answer=="T627jl")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaQueryTask("T627")==1 and LuaQueryTask("task_kill/mon_047/T627")>=31) then
			LuaDelTask("task_kill/mon_047/T627")
			LuaDelTask("T627")
			local jingyan
			local bexp
			local money
			if(LuaQuery("level")<20)then
				money=200
			elseif(LuaQuery("level")<30)then
				money=300
			elseif(LuaQuery("level")<40)then
				money=400
			elseif(LuaQuery("level")<40)then
				money=500
			elseif(LuaQuery("level")<100)then
				money=600
			end
			if(TeamCount()>=2)then
				bexp=90770
			else
				bexp=56770
			end
			if(LuaQueryTask("T627num")<=30)then
			LuaGive("coin",money,"T627")
			jingyan=(bexp+level^2*20)
			else
			LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			jingyan=(bexp+level^2*20)/2
			end
			LuaAddJx("combat_exp",jingyan,"T627")
			if(LuaQueryTask("T627_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T627_a",99)
			end
	
			DelLog("627")
			UpdateMenu()
			end 


elseif(answer=="Tsnpc_56")then
	if(LuaQueryTask("Tsnpc_56")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("陶渊明：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_56",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_56")==2)then
		LuaSay("陶渊明：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_56")then
	if(LuaQueryTask("Tenpc_56")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("陶渊明：这都是大人的功劳啊")
		LuaSetTask("Tenpc_56",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_56")==2)then
		LuaSay("陶渊明：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end
