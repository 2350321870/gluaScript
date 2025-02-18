NPCINFO = { 
serial="67" ,
base_name="yaochang",
icon=2587,
NpcMove=2587 ,
name="姚苌" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="我妻子张氏就在旁边",
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
	if((LuaQueryTask("Tsnpc_51")==1 or LuaQueryTask("Tsnpc_51")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_51")
		if(LuaQueryTask("Tsnpc_51")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_51")==1 or LuaQueryTask("Tenpc_51")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_51")
		if(LuaQueryTask("Tenpc_51")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T565") ==1)  then
		AddTopSayMenuItem("@2潜入竹林【剧情】","T565")
	end
	if(LuaQueryTask("T505")==1) then
		AddTopSayMenuItem("@2探查军情【剧情】","T505")
		havetask2=1
	end 

	if(LuaQueryTask("T561")==1 or LuaQueryTask("T561")==2) then
		AddTopSayMenuItem("@2败将阴谋【剧情】","T561")
		if(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T562")==1 or LuaQueryTask("T562")==2)then
		AddTopSayMenuItem("@2姚苌的阴谋【剧情】","T562")
		if(LuaQueryTask("T562")==1) then
		havetask2=1
		end
	end 
	
	if(LuaQueryTask("T302")==16 and LuaQueryTask("T302P")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302P")
		havetask2 =1
	end
--以上为黄色问号部分
	if(LuaQueryTask("T560")==1) then
		AddTopSayMenuItem("@2败军困扰【剧情】","T560")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T507")==99 and LuaQueryTask("T565")==0) then
		AddTopSayMenuItem("潜入竹林【剧情】","T565")
		havetask1 =1
	end
	if(level>=33 and LuaQueryTask("T561")==0 and LuaQueryTask("T560")==99) then
		AddTopSayMenuItem("败将阴谋【剧情】","T561")
		havetask1=1
	end
	if(level>=32 and LuaQueryTask("T560")==0) then
		AddTopSayMenuItem("败军困扰【剧情】","T560")
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
elseif(answer=="liaotian") then
	LuaSay("姚苌：寄人篱下，不如自立为王!")
	----------------------------------
elseif(answer=="T302P") then
	   if(LuaQueryTask("T302P")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("姚苌：有人给我写信,不知所为何事？")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302P",99)
	   UpdateMenu()
	   end
elseif(answer=="T505") then
	if(LuaQueryTask("T505")==1) then
    		LuaSay("姚苌：本将军不甘啊，这场大战本来已经要赢了，谁知突然狂风大作天昏地暗，主公的儿子也死在了乱军之中！")
	   	AddMenuItem("@7任务完成","")
   		AddMenuItem("领取奖励","T505jl")
	end
	elseif(answer=="T505jl")then
		if(LuaQueryTask("T505")==1) then
			LuaAddJx("combat_exp",224000,"T505") --原294000 终 153937
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T505",99)
			DelLog("505")-------日志的删除
			UpdateMenu()
  			end
-------------------------------------------------
elseif(answer=="T565")then
	if(LuaQueryTask("T565")==0)then
		LuaSay("姚苌：现在大军已经归附苻坚，老夫已经是走投无路，望少侠给我一次效忠苻坚的机会。")
		LuaSay(""..LuaQueryStr("name").."：好吧，现在正是用人之际，我就不计前嫌了。")
    		LuaSay("姚苌：少侠假装败军去投降@3乞伏国仁@0，一定能够探查到军情。")
		AddLog("潜入竹林【剧情】",565)
		LuaSetTask("T565",1)
		UpdateMenu()
		UpdateTopSay("假装败军去投降乞伏国仁")
	elseif(LuaQueryTask("T565")==1) then
		LuaSay("姚苌：假装败军去投降@3乞伏国仁@0。")
  	end                                                  
  --------------------------------------------
elseif(answer=="T560") then
	if(LuaQueryTask("T560")==0) then
		LuaSay("姚苌：如今败军不仅士气低落，而且还不断的受到@4渭水之滨@0的@2嚎兽@0的困扰，请@3"..LuaQueryStr("name").."@0英雄去帮本将军杀@230只嚎兽@0！")
		UpdateTopSay("到@4渭水之滨@0杀@230只嚎兽@0")
		LuaSetTask("task_kill/mon_028/T560",1)   ------mon_028   嚎兽  开启杀怪计数器
		LuaSetTask("T560",1)
		UpdateMenu()
		AddLog("败军困扰【剧情】",560)-------日志的添加
	elseif(LuaQueryTask("T560")==1) then
  		if(LuaQueryTask("task_kill/mon_028/T560") <31) then
  		LuaSay("姚苌：你还没有杀够@230个嚎兽@0，请到@4渭水之滨@0接着杀吧")
       		else
		LuaSay("姚苌：多谢英雄为本将军排忧解难，好处是少不了你的！")
      		AddMenuItem("@7任务完成","")
   		AddMenuItem("领取奖励","T560jl")
       		end
	end
	elseif(answer=="T560jl")then
 	if(LuaQueryTask("T560")==1) then
 		if(LuaQueryTask("task_kill/mon_028/T560")>=31)then
 			LuaAddJx("combat_exp",224000,"T560")  --原294000 终 153937
			LuaGive("coin",2400,"T560")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T560",99)
			DelLog("560")-------日志的删除
			LuaDelTask("task_kill/mon_028/T560")
			UpdateMenu()
			end
  		end
----------------------------------------------------	
elseif(answer=="T561") then
	if(LuaQueryTask("T561")==0) then
		LuaSay("姚苌：如今败局已定，我想让英雄去问问在@3渭水之滨@0的妻子@3张氏@0该如何是好！")
		LuaSetTask("T561",1)
		AddLog("败将阴谋【剧情】",561)-------日志的添加
		UpdateMenu()
		UpdateNPCMenu("zhangshi")
	elseif(LuaQueryTask("T561")==1) then
		LuaSay("姚苌：到@3渭水之滨@0找@3张氏@0！")
	elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==0) then
		LuaSay("姚苌：告诉你去@4渭水之滨@0找@3张氏@0，还是你去找了张氏，她没给你什么信物！")
		LuaSay("姚苌：我就不信我妻子就什么@2信物@0都没给你，你居然把它弄丢了！")
		LuaSay("姚苌：算了，本将军也不是小肚鸡肠的人，你重新去我妻子@3张氏@0那把她带有答案的@2信物@0给我拿回来！")
		UpdateTopSay("到渭水之滨的张氏那把她带有答案的信物拿给我！")
	elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
		LuaSay("@3姚苌@0看着那把匕首，楞了一下，说到：哈哈，没想到我妻子会给我带来这么一个好消息！")
		LuaSay("提示：姚苌得到匕首突然发难刺向你，你身受重伤")

   		AddMenuItem("@7任务完成","")
       		AddMenuItem("领取奖励","T561jl")
	end
	elseif(answer=="T561jl") then
	if(LuaQueryTask("T561")==2) then
		if(LuaFreeBag()>=1)then
			LuaAddJx("combat_exp",261000,"T561")	--原301000 终 173659
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission304",LuaItemCount("o_mission304") )
			LuaGive("e_clothes012",1,LuaRandom(2)+1,"T561")
			LuaSetTask("T561",99)
			DelLog("561")-------日志的删除
			UpdateMenu()
			UpdateNPCMenu("zhangshi")
		else
			LuaSay("提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉")
		end
	end
    
    
    
elseif(answer=="T562") then
	if(LuaQueryTask("T562")==1) then
		LuaSay(""..LuaQueryStr("name").."：我听你的部下说你要脱离@3苻坚@0将军，而且要刺杀他。")
		LuaSay("姚苌楞了一下，说道：英雄，人可以乱杀，但话可不能乱讲，我哪个部下说的，我叫他来当面对质。")		
		LuaSay(""..LuaQueryStr("name").."想到：我还是把这消息告诉@3苻坚@0吧，让他来解决！于是说道：那好，我就告辞了。")
		LuaSetTask("T562",2)
		AddLog("姚苌的阴谋【剧情】",562)-------日志的添加
		UpdateMenu()
	elseif(LuaQueryTask("T562")==2) then
		UpdateTopSay("到洛阳城找苻坚") 
	end
		
elseif(answer=="Tsnpc_51")then
	if(LuaQueryTask("Tsnpc_51")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("姚苌：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_51",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_51")==2)then
		LuaSay("姚苌：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_51")then
	if(LuaQueryTask("Tenpc_51")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("姚苌：这都是大人的功劳啊")
		LuaSetTask("Tenpc_51",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_51")==2)then
		LuaSay("姚苌：话已经带到了，快回去领取奖励吧")
	end				

end
LuaSendMenu()
return 1                                 
end 

