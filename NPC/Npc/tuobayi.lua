NPCINFO = {
serial="125" ,
base_name="tuobayi",
icon=2570,
NpcMove=2570 ,
name="拓拔仪" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="乱世之中苦的还是百姓啊",
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
	local T730=LuaQueryTask("T730")
	local T731=LuaQueryTask("T731")
	local T732=LuaQueryTask("T732")
	local T733=LuaQueryTask("T733")
	local T734=LuaQueryTask("T734")
	local T735=LuaQueryTask("T735")
	local T624=LuaQueryTask("T624")
	local T625=LuaQueryTask("T625")
	local T742=LuaQueryTask("T742")
	local T744=LuaQueryTask("T744")
	local T732=LuaQueryTask("T732")
	local T737=LuaQueryTask("T737")
	local T738=LuaQueryTask("T738")
	local T744=LuaQueryTask("T744")
	local T690=LuaQueryTask("T690")
	local T691=LuaQueryTask("T691")
	local T736=LuaQueryTask("T736")
	local Tbprw10=LuaQueryTask("Tbprw10")
	AddTopSayMenuItem("@7任务列表","")
		if((LuaQueryTask("Tsnpc_57")==1 or LuaQueryTask("Tsnpc_57")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_57")
		if(LuaQueryTask("Tsnpc_57")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_57")==1 or LuaQueryTask("Tenpc_57")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_57")
		if(LuaQueryTask("Tenpc_57")==1)then
			havetask2=1
		end
	end
	if(T730 ==1  or T730 ==2) then
 		AddTopSayMenuItem("@2拓跋仁心【剧情】","T730")
 		if(LuaQueryTask("T730")==2 ) then
 		havetask2 =1
 		end
	end

	if(T732 ==1 or T732 ==3) then
 		AddTopSayMenuItem("@2稀缺药物【剧情】","T732")
 		if(LuaItemCount("o_mission015")>=1) then
 		havetask2 =1
		else
		havetask4 =1
 		end
	end
	if(T733==1) then
 		AddTopSayMenuItem("@2援助太行径【剧情】","T733")
	end
	 if(T734==1 or T734==2) then
 		AddTopSayMenuItem("@2解馋【剧情】","T734")
 		if(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==99 and LuaQueryTask("T734b")==99)then
 			havetask2 =1
 		end
 	end
 	if(T735==1 or T735==2) then
 		AddTopSayMenuItem("@2粥济难民【剧情】","T735")
 		if(LuaQueryTask("T735")==2)then
 		havetask2 =1
 		end
 	end
	if(T624==1) then
 		AddTopSayMenuItem("@2鲜卑皇室【剧情】","T624")
 		havetask2 =1
	end
	if(T625==1)  then
		AddTopSayMenuItem("@2文艺复兴【剧情】","T625")
		havetask2 =1
	end
	if(T737 ==1 or T737 ==2)  then
		AddTopSayMenuItem("@2购买药物【剧情】","T737")
		if(LuaItemCount("o_mission015")>=1) then
			havetask2 =1
		end
	end
	if(T738 ==1 or T738==2 or T738==3 ) then
		AddTopSayMenuItem("@2治理病人【剧情】","T738")
		if(T738 ==1 or T738==3 ) then
		havetask2 =1
		end
	end
	if(T744==1 or T744==2 or T744==3) then
		AddTopSayMenuItem("@2老翁的故事【剧情】","T744")
		if(T744==1 or T744==3) then
		havetask2 =1
		end
	end
	if(T690==2 or T690==3)then
		AddTopSayMenuItem("@2慕容垂之诺【剧情】@0","T690")
		if(LuaQueryTask("T690")==2)then
		havetask2=1
		end
	end
	if(T691==2 or T691==3)then
		AddTopSayMenuItem("@2商榷【剧情】@0","T691")
		if(LuaQueryTask("T691")==2)then
			havetask2=1
		end
	end
	if(T736==1 or T736==2)then
		AddTopSayMenuItem("@2义助崔宏【剧情】@0","T736")
		havetask2 =1
	end
	if(LuaQueryTask("Tbprw10")==1 or LuaQueryTask("Tbprw10")==2) then
		AddTopSayMenuItem("@2运送粮食【每日】","Tbprw10")
		havetask2=1
	end
	if(LuaQueryTask("T302")==18 and LuaQueryTask("T302R")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302R")
		havetask2 =1
	end 
--以上为黄色问号部分
	if(T731 ==1) then
 		AddTopSayMenuItem("@2消除隐患【循环】","T731")
 		havetask4 =1
	end
--以上为灰色问号部分
	if(T730 ==0 and  LuaQuery("level")>=42) then
 		AddTopSayMenuItem("拓跋仁心【剧情】","T730")
 		havetask1 =1
	end
	if(T731 ==0 and LuaQueryTask("T730")==99 and  level>=41 and level<=46 ) then
 		AddTopSayMenuItem("消除隐患【循环】","T731")
 		havetask1 =1
	end
	if(T732 ==0 and T738==99 and level>=43) then
 		AddTopSayMenuItem("稀缺药物【剧情】","T732")
 		havetask =1
	end
	 if(T733 ==0 and  LuaQuery("level")>=43 ) then
 		AddTopSayMenuItem("援助太行径【剧情】","T733")
 		havetask1 =1
	end
	if(T734==0 and  LuaQuery("level")>=42  ) then
 		AddTopSayMenuItem("解馋【剧情】","T734")
 		havetask1 =1
 	end
	if(T736==0 and level>=47)then
		AddTopSayMenuItem("义助崔宏【剧情】","T736")
		havetask1=1
	end	
	if(T735==0 and  LuaQuery("level")>=55) then
 		AddTopSayMenuItem("粥济难民【剧情】","T735")
 		havetask1 =1
 	end
 	if(T737 ==0 and  LuaQuery("level")>=43 )  then
		AddTopSayMenuItem("购买药物【剧情】","T737")
		havetask1 =1
	end
	if(LuaQueryTask("T738")==0 and T737 ==99 and level>=43) then
		AddTopSayMenuItem("治理病人【剧情】","T738")
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
if(havetask ==2)then                                         --npc问号
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")                 --npc叹号
else
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
--------------------------------------------------------------------------------

elseif(answer=="liaotian") then
	LuaSay("拓拔仪：雄心壮志，欲建盖世功勋!")             --聊天

--------------------------------------------------------------------------------
elseif(answer=="T302R") then
	   if(LuaQueryTask("T302R")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("拓拔仪：有劳少侠送信！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302R",99)
	   UpdateMenu()
	   end

elseif(answer=="T730") then
	if(LuaQueryTask("T730")==0)then
		LuaSay("拓拔仪：乱世之下，最苦的还是黎民百姓！你帮我去@4陷落关口@0看望一下@3汉族老翁@0！")
		LuaSetTask("T730",1)
		AddLog("拓跋仁心【剧情】",730)
		UpdateMenu()
		UpdateNPCMenu("laoweng")
	elseif(LuaQueryTask("T730")==1 ) then
 		LuaSay("拓拔仪：你为何还不去探望@4陷落关口@0的@3汉族老翁@0!")
	elseif(LuaQueryTask("T730")==2 ) then
 		LuaSay(""..LuaQueryStr("name").."：老翁叫我谢谢你，叫你不用如此挂心!")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T730jl")
 	end

		elseif(answer=="T730jl")then
			if(LuaQueryTask("T730")==2) then
			LuaSetTask("T730",99)
			LuaAddJx("combat_exp",459000,"T730")
			LuaGive("coin",3000,"T730")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("730")
			UpdateMenu()
			UpdateNPCMenu("laoweng")
			end



elseif(answer=="T731") then
	if(LuaQueryStrTask("731day")~=GetCurrentDay())then
			LuaDelTask("T731num")
	end
	if(LuaQueryTask("T731")==0)	then
		LuaSay("拓拔仪：@4陷落关口@0的@3霸虎@0会对汉族老翁不利,请你立即去击杀@330只霸虎@0以作威慑！")
		LuaSetTask("T731",1)
		LuaSetTask("task_kill/mon_046/T731",1)
		LuaAddTask("T731num",1)
		LuaSetTask("731day",GetCurrentDay())
		AddLog("消除隐患【循环】",731)
		UpdateMenu()
	elseif(LuaQueryTask("T731")==1)then
		if(LuaQueryTask("task_kill/mon_046/T731")>=31) then
			LuaSay("拓拔仪：多谢你的帮助！村子暂时安宁了！")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T731jl")
		else
			LuaSay("拓拔仪：你还没有杀够@330只霸虎@0！")
			UpdateTopSay("杀够30只霸虎再来找我")
		end
	end

	elseif(answer=="T731jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T731")==1) then
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
			LuaDelTask("task_kill/mon_046/T731")
			local jy
			if(LuaQueryTask("T731num")<=30)then
			LuaGive("coin",money,"T731")
  			 jy=(42025+level^2*20)
			else
			 LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
			 jy=(42025+level^2*20)/2
			end
			LuaAddJx("combat_exp",jy,"T731")
			if(LuaQueryTask("T731_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T731_a",99)
			end
	
			LuaSetTask("T731",99)
			LuaDelTask("T731")
			DelLog("731")
			UpdateMenu()
		end



elseif(answer=="T732") then
	if(LuaQueryTask("T732")==0)	then
		LuaSay(""..LuaQueryStr("name")..":你的病怎么样了，好些了么？")
		LuaSay("拓拔仪：哎，都怪我一时大意，恐命不久已！")
		LuaSay(""..LuaQueryStr("name")..":不要担忧，我即刻为你到@4洛阳城@0@3药品商人@0那里去买药！")
		LuaSetTask("T732",1)
		AddLog("稀缺药物【剧情】",732)
		UpdateMenu()
	elseif(LuaQueryTask("T732")==1)then
		LuaSay("拓拔仪：你不是说去帮我买药吗？")
	elseif(LuaQueryTask("T732")==3)then
		if(LuaItemCount("o_mission015")>=1) then
		LuaSay("拓拔仪：多亏少侠相救，在下无以为报！")
    		AddMenuItem("@7任务完成","")
    		AddMenuItem("领取奖励","T732jl")
		else
		LuaSay("拓拔仪：你还没买到药啊，命不久已，英雄，你再去买买看吧")
		LuaSay(""..LuaQueryStr("name")..":我再到@4洛阳城@0的@3药品商人@0那里买吧。") 
			LuaSetTask("T732",2)
			AddLog("稀缺药物【剧情】",732)
			UpdateMenu()
		end
	end

		elseif(answer=="T732jl")then
			if(LuaQueryTask("T732")==3) then
			LuaAddJx("combat_exp",502000,"T732")
			LuaGive("coin",3000,"T732")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T732",99)
			DelLog("732")
			DelItem("o_mission015",1)
			UpdateMenu()
			end



elseif(answer=="T733") then
	if(LuaQueryTask("T733")==0)	then
		LuaSay("拓拔仪：，拓跋氏和慕容氏同为鲜卑族，欲要达成合作，共创统一大业。我想让你去援助@4太行古径@0的@3慕容垂@0统一鲜卑慕容族吧！")
		LuaSetTask("T733",1)
		AddLog("援助太行古径【剧情】",733)
		UpdateMenu()
	elseif(LuaQueryTask("T733")==1)then
		LuaSay("拓拔仪：你怎么还没有去找@4太行古径的慕容垂@0啊？")
	 end


elseif(answer=="T734") then
	if(LuaQueryTask("T734")==0)	then
		LuaSay("拓拔仪：@3汉族老翁@0和@3陶渊明@0都曾帮助过我，我听说老虎的肉很可口，我想让你去击杀@3霸虎@0得两块@3霸虎肉@0。") 
		LuaSetTask("T734",1)
		AddLog("解馋【剧情】",734)
		UpdateMenu()
	elseif(LuaQueryTask("T734")==1)then
		if(LuaItemCount("o_mission300")>=2)then
			LuaSay("拓拔仪：把这两块@3霸虎肉@0分别送给@4陷落关口@0的@3汉族老翁@0和@4洛城废墟@0的@3陶渊明@0")
			LuaSetTask("T734",2)
			AddLog("解馋【剧情】",734)
			UpdateMenu()
			UpdateNPCMenu("laoweng")                      
		else
			LuaSay("拓拔仪：你还没有得到我想要的@3两块霸虎肉@0，得到两块@3霸虎肉@0再来找我吧！")
			UpdateTopSay("杀霸虎得到两块霸虎肉")
		end
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")~=99)then
		LuaSay("拓拔仪：你怎么还没有把@3霸虎肉@0送给@4陷落关口@0的@3汉族老翁@0？ ")
	
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734b")~=99)then
		LuaSay("拓拔仪：你怎么还没有把@3霸虎肉@0送给@4洛城废墟@0的@3陶渊明@0？ ")
	
	elseif(LuaQueryTask("T734")==2 and LuaQueryTask("T734a")==99 and LuaQueryTask("T734b")==99)then
		LuaSay("拓拔仪：多谢，多谢！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T734jl")
 	end

		elseif(answer=="T734jl")then
			if(LuaQueryTask("T734")==2) then
			LuaSetTask("T734",99)
			LuaAddJx("combat_exp",459000,"T734")
			LuaGive("coin",3000,"T734")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("734")
			UpdateMenu()
			end
		 
				               

elseif(answer=="T735") then
	if(LuaQueryTask("T735")==0)	then
		LuaSay("拓拔仪：中原百姓饱受摧残，百姓生于水深火热之中。")
		LuaSay("拓拔仪：你到@4云中城@0告诉我兄长@3拓跋圭@0，让他开仓解救难民，以得民心！")
		LuaSetTask("T735",1)
		AddLog("粥济难民【剧情】",735)
		AddMenuItem("是否传送？","")
		AddMenuItem("是","Tshi")
		AddMenuItem("否","Tfou")
		UpdateMenu()
	elseif(LuaQueryTask("T735")==1)then
		LuaSay("拓拔仪：你怎么还没有到@4云中城@0去找我兄长@3拓跋圭@0啊？")
	elseif(LuaQueryTask("T735")==2)then
		LuaSay(""..LuaQueryStr("name").."：难民有救啦！拓跋圭马上运粮解救难民！")
		LuaSay("拓拔仪：辛苦少侠了！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T735jl")
 	end

		elseif(answer=="T735jl")then
			if(LuaQueryTask("T735")==2) then
			LuaSetTask("T735",99)
			LuaAddJx("combat_exp",459000,"T735")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("735")
			UpdateMenu()
			end
		elseif(answer=="Tshi")then
		ChangeMap("lu_yzc")

elseif(answer=="T737") then
	if(LuaQueryTask("T737")==0) then
	    LuaSay("拓拔仪：@3汉族老翁@0现在危在旦夕，我想让你帮我去@3洛阳城@0的@2药品商人@0那里买株@3天山雪莲@0")
		LuaSetTask("T737",1)
		AddLog("购买药物【剧情】",737)
		AddMenuItem("是否自动传送至洛阳城？","")
		AddMenuItem("是","T")
		AddMenuItem("否","F")
   		UpdateMenu()
   	elseif(LuaQueryTask("T737")==1)then
   	    LuaSay("拓拔仪：：你怎么还没有到@4洛阳城@0@3药品商人@0那里去买@3天山雪莲@0啊？")
	elseif(LuaQueryTask("T737")==2)then
		if(LuaItemCount("o_mission015")>=1) then
		LuaSay("拓拔仪：有劳英雄为我奔波")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T737jl")
		UpdateMenu()
		else
		LuaSay("拓拔仪：你买的药呢，怎么弄没了，再到@4洛阳城@0@3药品商人@0那里去买一株@3天山雪莲@0")
		AddMenuItem("是否自动传送至洛阳城？","")
		AddMenuItem("是","T")
		AddMenuItem("否","F")
	end
	end
    elseif(answer=="T")then
		ChangeMap("lu_lyc")
	elseif (answer=="T737jl") then
		if(LuaQueryTask("T737")==2)then
			LuaAddJx("combat_exp",502000,"T737")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T737",99)
			DelLog("737")
			DelItem("o_mission015",1)
			UpdateMenu()
		end


elseif(answer=="T738")then
	if(LuaQueryTask("T738")==0) then
		LuaSay("拓拔仪：我正在给老翁熬药服食，你10分钟后再去找我吧！")
		local time=GetCurrentTime()
		LuaSetTask("738time",time)
		AddLog("治理病人【剧情】",738)
		LuaSetTask("T738",1)
		UpdateMenu()
	elseif(LuaQueryTask("T738")==1) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("738time"))
		if(shijiancha<600)then
			LuaSay("拓拔仪：我还喂老翁吃药，再过会来吧！")
		else
			LuaSay("拓拔仪：老翁的病情已经稳定下来，你去帮我看看他吧")
			LuaSetTask("T738",2)
			AddLog("治理病人【剧情】",738) 
			UpdateMenu()                   
			UpdateNPCMenu("laoweng")
		end
	elseif(LuaQueryTask("T738")==2) then
		LuaSay("拓拔仪：快去帮我看看@4陷落关口@0的@3汉族老翁@0好些没有！")
		UpdateNPCMenu("laoweng")
	elseif(LuaQueryTask("T738")==3) then
		LuaSay(""..LuaQueryStr("name").."：你怎么样了，老翁找了一味药，他说能缓解你的病情。")
		LuaSay("拓拔仪：那就多谢了。")                      
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T738jl")
		UpdateMenu()
		UpdateNPCMenu("laoweng")
	end

	elseif (answer=="T738jl") then
		if(LuaQueryTask("T738")==3)then
			LuaAddJx("combat_exp",502000,"T738")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T738",99)
			DelLog("738")
			UpdateMenu()
		end 
		 

elseif(answer=="T624") then
	if(LuaQueryTask("T624")==1)	then
		LuaSay(""..LuaQueryStr("name").."：在下受@3陶渊明@0之托前来与你探讨统一之道！")
		LuaSay("拓拔仪：在下虽乃北方鲜卑族人，但对汉文化极为推崇，已研究多年，@3陶渊明@0实乃高人也，@3仁义治国@0方可平天下！")
   		AddLog("鲜卑皇室【剧情】",624)
   		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T624jl")
	end

	    elseif(answer=="T624jl")then
			if(LuaQueryTask("T624")==1) then
				LuaSetTask("T624",99)
				LuaAddJx("combat_exp",417000,"T624")
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("624")
				UpdateMenu()
			end 



 elseif(answer=="T625") then
	if(LuaQueryTask("T625")==1)	then
		LuaSay(""..LuaQueryStr("name").."：胡人入侵，中原百姓饱受摧残，@2陶渊明@0请你推行汉文化，复兴往日峥嵘！")
		LuaSay("拓拔仪：此言有理！其实我兄@3拓跋圭@0已经开始推行汉文化了")
   		AddMenuItem("@7任务完成","")                           	 
		AddMenuItem("领取奖励","T625jl")
	end

	    elseif(answer=="T625jl")then
			if(LuaQueryTask("T625")==1) then
			LuaSetTask("T625",99)
			LuaAddJx("combat_exp",417000,"T625")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("625")
			UpdateMenu()
			end


elseif(answer=="T744") then
	if(LuaQueryTask("T744")==1)	then
		LuaSay(""..LuaQueryStr("name").."：我听老翁说他的命运很悲惨，你知道这是真的还是假的？")
		LuaSay("拓拔仪：我只知道他是@3慕容家族@0的仆人，后来为何到此，在下也不知！")
		LuaSay("拓拔仪：你可以询问@4太行古径@0的@3慕容垂@0，想必会找到答案的，我也好奇老翁的人生，你赶紧去问问吧！")
		LuaSetTask("T744",2)
   		AddLog("老翁的故事【剧情】",744)
   		UpdateMenu()
	elseif(LuaQueryTask("T744")==2) then
		LuaSay("拓拔仪：你赶紧去@4太行古径@0找@3慕容垂@0问啊")
	elseif(LuaQueryTask("T744")==3) then
		LuaSay("拓拔仪：原来是真的，也只能以后多帮助他一下了。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T744jl")
	end
	elseif(answer=="T744jl")then
		if(LuaQueryTask("T744")==3) then
			LuaSetTask("T744",99)
			LuaAddJx("combat_exp",459000,"T744")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("744")
			UpdateMenu()
		end 



elseif(answer=="T690")then             ---------------------------------慕容垂之诺【剧情】
		if(LuaQueryTask("T690")==2)then
		LuaSay(""..LuaQueryStr("name").."：@3慕容垂@0托我转告你，他愿与你共商统一大业,不知您是否愿意？？？")
		LuaSay("拓拔仪：原来如此，回去转告@3慕容垂@0,我等候着他共商统一之事！")
		LuaSetTask("T690",3)
		AddLog("慕容垂之诺【剧情】",690)
		UpdateTopSay("转告太行古径的慕容垂")
		UpdateMenu()

		elseif(LuaQueryTask("T690")==3)then
		LuaSay("拓拔仪：速去转告@4太行古径@0的@3慕容垂@0！")
		end

elseif(answer=="T691")then    --------------------------------商榷【剧情】
		if(LuaQueryTask("T691")==2)then
		LuaSay(LuaQueryStr("name").."：@3慕容垂@0让我过来跟你讨论统一之事！")
		LuaSay("拓拔仪：现在是时候了，但是现在觉得那些邪术是破坏统一的不安定因素,回去转告@3慕容垂@0吧！")
		LuaSetTask("T691",3)
		AddLog("商榷【剧情】",691)
		UpdateTopSay("回复慕容垂")
		UpdateMenu()

		elseif(LuaQueryTask("T691")==3)then
		LuaSay("拓拔仪：快去回复@3慕容垂@0！")
		end

elseif(answer=="T736")then          -----------------------------义助崔宏【剧情】
		if(LuaQueryTask("T736")==0)then
			if(LuaQuery("level")>=55)then
				LuaSay("拓拔仪：上次讲到邪恶是影响统一的不安定的因素。@2崔宏@0，听说此人在这方面有所见地，当初力劝@3浑太后@0不听，一气之下北上投奔拓跋氏去了.")
				LuaSay("拓拔仪：@2崔宏@0现在应该在@4关外@0，快去找他吧！")
				LuaSetTask("T736",2)
				AddLog("义助崔宏【剧情】",736)
				UpdateTopSay("去关外找崔宏")
				UpdateMenu()
			else
				LuaSay("拓拔仪：你现在实力还太弱，将你的等级提升至55级再来找我吧")
				LuaSetTask("T736",1)
				AddLog("义助崔宏【剧情】",736)
				UpdateMenu()
			end
		elseif(LuaQueryTask("T736")==1)then
			if(LuaQuery("level")>=55)then
				LuaSay("拓拔仪：上次讲到邪恶是影响统一的不安定的因素。@3崔宏@0，听说此人在这方面有所见地，当初力劝@3浑太后@0不听，一气之下北上投奔拓跋氏去了，现在应该在@4关外@0，快去找他吧！")
				LuaSetTask("T736",2)
				AddLog("义助崔宏【剧情】",736)
				UpdateTopSay("去关外找崔宏")
				UpdateMenu()
			else
				LuaSay("拓拔仪：你现在还太弱，将你的等级提升至55级再来找我哦@!")
			end
		elseif(LuaQueryTask("T736")==2)then
			LuaSay("拓拔仪：到@4关外@0去找找@3崔宏@0，他应该就在那里！")
		end
elseif(answer=="Tbprw10") then
if(LuaQueryStrTask("Tbprw10day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw10")==1) then
		if(LuaItemCount("o_mission406")>=1) then
			LuaSay(""..LuaQueryStr("name").."：@3晋帝@0知道你仁义天下，叫我把这些@3粮食@0送给你。")
			LuaSay("拓拔仪：真是太感谢了，代我和那些可怜的难民谢谢@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0。")
			LuaSetTask("Tbprw10",2)
			DelItem("o_mission406",1)
			UpdateMenu()
			end
		elseif(LuaQueryTask("Tbprw10")==2) then
			LuaSay("拓拔仪：去找@4宫殿@0的@3晋帝@0。")
		end
	else
		LuaSay("拓拔仪：新的一天，新的开始，由于你今天以前的@3运送粮食【每日】没完成@0，现在自动删除！")
		LuaSay("拓拔仪：现在你又能到@4宫殿@0的@3晋帝@0处接受@3运送粮食【每日】@0任务了！")
		LuaSetTask("Tbprw10day",GetCurrentDay()) 
		LuaSetTask("Tbprw10",0)
		DelItem("o_mission406",LuaItemCount("o_mission406"))
		UpdateMenu()
	end


elseif(answer=="Tsnpc_57")then
	if(LuaQueryTask("Tsnpc_57")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("拓拔仪：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_57",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_57")==2)then
		LuaSay("拓拔仪：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_57")then
	if(LuaQueryTask("Tenpc_57")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("拓拔仪：这都是大人的功劳啊")
		LuaSetTask("Tenpc_57",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_57")==2)then
		LuaSay("拓拔仪：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end