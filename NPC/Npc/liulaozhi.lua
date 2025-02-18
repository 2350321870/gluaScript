NPCINFO = {
serial="56" ,
base_name="liulaozhi",
icon=2542,
NpcMove=2542,
name="刘牢之" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="我定要助谢将军拿下淝水之土",
LuaType=1,
}
-------------------------------------------------------------
function do_talk(answer)
	if(answer=="ask")then
	havetask=0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
        AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_41")==1 or LuaQueryTask("Tsnpc_41")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_41")
		if(LuaQueryTask("Tsnpc_41")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_41")==1 or LuaQueryTask("Tenpc_41")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_41")
		havetask2=1
	end		
	if(LuaQueryTask("T405") == 1)then
		AddTopSayMenuItem("@2协助【剧情】","T405")
		havetask2 =1
	end	
	if(LuaQueryTask("T451") == 1)then
		AddTopSayMenuItem("@2治病良药【剧情】","T451")
		havetask2 =1
	end	
	if(LuaQueryTask("T454") == 1 or LuaQueryTask("T454") == 2)then
		AddTopSayMenuItem("@2运送物资【剧情】","T454")
		if (LuaItemCount("o_mission367")>=1)then
		havetask2 =1
		end 
	end
	if(LuaQueryTask("T443") == 1)then
		AddTopSayMenuItem("@2北府大将【剧情】","T443")
		havetask2 =1
	end
--以上为黄色问号部分		
	if(LuaQueryTask("T450") == 0 and level>=27)then
		AddTopSayMenuItem("鳄胆入药【剧情】","T450")
		havetask1 =1
	end
	
	if(LuaQueryTask("T451") == 0 and LuaQueryTask("T450") == 99)then
		AddTopSayMenuItem("治病良药【剧情】","T451")
		havetask1 =1
	end
	
	if(LuaQueryTask("T452") == 0 and level>=27)then
		AddTopSayMenuItem("物资匮乏【剧情】","T452")
		havetask1 =1
	end
	
	if(LuaQueryTask("T453") == 0 and LuaQueryTask("T452") == 99)then
		AddTopSayMenuItem("物资匮乏2【剧情】","T453")
		havetask1 =1
	end
	
	if(LuaQueryTask("T454") == 0 and LuaQuery("level") >= 26)then
		AddTopSayMenuItem("运送物资【剧情】","T454")
		havetask1 =1
	end
----------------------------------------------------------------------
	if(LuaQueryTask("T452") == 1)then
		AddTopSayMenuItem("@2物资匮乏【剧情】","T452")
		havetask4 =1
	end
	
	if(LuaQueryTask("T453") == 1)then
		AddTopSayMenuItem("@2物资匮乏2【剧情】","T453")
		havetask4 =1
	end
	if(LuaQueryTask("T450") == 1)then
		AddTopSayMenuItem("@2鳄胆入药【剧情】","T450")
		havetask4 =1
	end

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

 elseif(answer=="liaotian") then
	LuaSay("刘牢之：若有朱序相助，北伐指日可待!")

 elseif(answer=="T405")then       -----------------------------  协助
	if(LuaQueryTask("T405") == 1) then
	LuaSay(""..LuaQueryStr("name").."：@3谢琰@0将军让我助你一臂之力！")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T405jl")
	end
elseif(answer=="T405jl")then
	if(LuaQueryTask("T405")==1) then
		LuaAddJx("combat_exp",204000,"T405")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("405")
		LuaSetTask("T405",99)
		UpdateMenu()
                end
elseif(answer=="T450")then            -----------鳄胆入药 
	if(LuaQueryTask("T450") == 0) then
	LuaSay("刘牢之：如此甚好，与吾同行的@3何谦@0将军生病了，劳烦少侠去击杀淝水鳄，收集@215个淝水鳄胆@0做药材！")
	LuaSetTask("T450",1)
	UpdateTopSay("获取15个淝水鳄胆")
	AddLog("鳄胆入药【剧情】",450)
	UpdateMenu()
	elseif(LuaQueryTask("T450")==1) then
		if (LuaItemCount("o_mission364")>=15)then
		LuaSay("刘牢之：这下好了，何谦的病有药可医治了！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T450jl")
		else
		LuaSay("刘牢之：大侠收集的@2淝水鳄胆@0不足15个。")
		UpdateTopSay("收集15个淝水鳄胆再来找我吧")
		end
	end
	elseif(answer=="T450jl")then
		if(LuaQueryTask("T450")==1) then
			if(LuaItemCount("o_mission364")>=15) then
				LuaAddJx("combat_exp",263000,"T450")
				LuaGive("coin",2300,"T450")
				if( LuaQueryStr("class")=="wu")then   --侠客，24级 匕首
					if(LuaRandom(4)==1)then
						LuaGive("e_knife004",1,2,"T450")
					else
						LuaGive("e_knife004",1,1,"T450")
					end
				elseif(LuaQueryStr("class")=="xian")then --谋士，27级 书
					if(LuaRandom(5)==1)then
						LuaGive("e_book003",1,2,"T450")
					else
						LuaGive("e_book003",1,1,"T450")
					end
				elseif(LuaQueryStr("class")=="shen")then--战士，27级 
					if(LuaRandom(5)==1)then
						LuaGive("e_shield004",1,2,"T450")
					else
						LuaGive("e_shield004",1,1,"T450")
					end
				end
			LuaAddAchievementSchedule("Task_num",1)
			DelItem("o_mission364",15)
			DelLog("450")
			LuaSetTask("T450",99)
			UpdateMenu()
			end
                end                
elseif(answer=="T451")then         ------治病良药
	 if(LuaQueryTask("T451") == 0)then
   		LuaSay("刘牢之：在下用鳄鱼胆做了几副药，劳烦少侠给@3何谦@0送过去，他就在@4淝水之滨@0！")
		LuaSetTask("T451",1)
		LuaGive("o_mission365",1)
 		UpdateTopSay("少侠快去找何谦吧")
 		AddLog("前往【剧情】",451)
		UpdateMenu()
		UpdateNPCMenu("heqian")
	 elseif (LuaQueryTask("T451") == 1)then
		LuaSay("谢安：把药交给@4淝水之滨@0的@3何谦@0！")
	 end
elseif(answer=="T452")then ------------物资匮乏
if(LuaQueryTask("T452") == 0) then
	LuaSay("刘牢之：少侠再去杀@225个淝水鳄@0，我会派将士也杀一点，这@2淝水鳄@0浑身是宝，可以入药。")
	LuaSay("刘牢之：组队能让你完成任务更加的简单，还能结交的更多的兄弟@!")
	LuaSetTask("T452",1)
	LuaSetTask("task_kill/mon_021/T452",1)
	UpdateTopSay("消灭25个淝水鳄")
	AddLog("物资匮乏【剧情】",452)
	UpdateMenu()
	elseif(LuaQueryTask("T452")==1) then
		if(LuaQueryTask("task_kill/mon_021/T452")>=26) then
		LuaSay("刘牢之：这淝水鳄入药既能给将士治伤，又能换钱，着实有用！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T452jl")
		else
		LuaSay("刘牢之：你还没杀够25个@2淝水鳄@0")
                UpdateTopSay("杀够25个淝水鳄再来找我")
		end
	end
	elseif(answer=="T452jl")then
		if(LuaQueryTask("T452")==1) then
			if(LuaQueryTask("task_kill/mon_021/T452")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",283000,"T452")
			else
				LuaAddJx("combat_exp",263000,"T452")
			end
			LuaGive("coin",2400,"T452")
			if(LuaRandom(10)==1)then --27耳环
				LuaGive("e_earring003",1,2,"T452")
			else
				LuaGive("e_earring003",1,2,"T452")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_021/T452")
			DelLog("452")
			LuaSetTask("T452",99)
			UpdateMenu()
			LuaSay("刘牢之：在我们北伐的同时，商业大道也是不能荒废的，如今建康城@2钱庄老板@0每天发放@4商贾向背@0任务。少侠可前去看看")
			LuaSay("刘牢之：合朋友一起做做每日任务，不光能得到经验铜币，还有机会获得商城道具哦@A")
			AddMenuItem("@7传送至钱庄老板","")
			AddMenuItem("确认传送","Tcs_qzlb")
			end
                end
	elseif(answer=="Tcs_qzlb")then
		ChangeMap("lu_jkc",334.614)
elseif(answer=="T453")then ------------物资匮乏2
	if(LuaQueryTask("T453") == 0) then
	LuaSay("刘牢之：少侠再去杀@225个穴居蛛@0，我会派将士也杀一点，顺便收集死蜘蛛，这@2穴居蛛@0浑身是宝，可以入药。")
	LuaSetTask("T453",1)
	LuaSetTask("task_kill/mon_022/T453",1)
	UpdateTopSay("消灭25个穴居蛛")
	AddLog("物资匮乏2【剧情】",453)
	UpdateMenu()
	elseif(LuaQueryTask("T453")==1) then
		if(LuaQueryTask("task_kill/mon_022/T453")>=26) then
		LuaSay("刘牢之：这穴居蛛入药既能给将士治伤，又能换钱，着实有用！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T453jl")
		else
		LuaSay("刘牢之：你还没杀够25个@2穴居蛛@0！")
                UpdateTopSay("杀够25个穴居蛛再来找我")
		end
	end
	elseif(answer=="T453jl")then
		if(LuaQueryTask("T453")==1) then
			if(LuaQueryTask("task_kill/mon_022/T453")>=26) then
			LuaAddJx("combat_exp",263000,"T453")
			LuaGive("coin",800,"T453")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_022/T453")
			DelLog("453")
			LuaSetTask("T453",99)
			UpdateMenu()
			end
                end
                
elseif(answer=="T454")then         ------运送物资
	 if(LuaQueryTask("T454") == 0 )then
		if(LuaQuery("level") <=30)then
   		LuaSay("刘牢之：本将事务繁忙，劳烦少侠去找@4建康城@0里的@3钱庄老板@0，帮忙运送物资来！")
		LuaSetTask("T454",1)
		LuaGive("o_mission317",1)
 		UpdateTopSay("快去建康城找钱庄老板")
 		AddLog("运送物资【剧情】",454)
		UpdateMenu()
		else
			LuaSay("刘牢之：你已经是30级以上的大侠了，不需要做此任务了！")
		end
	 elseif (LuaQueryTask("T454") == 1)then
		LuaSay("刘牢之：去@4建康城@0找@3钱庄老板@0，帮忙运送物资来！")
	 elseif (LuaQueryTask("T454") == 2)then
		if (LuaItemCount("o_mission367")>=1)then
      		LuaSay("刘牢之：路上辛苦了！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T454jl")
		end
     end
	elseif(answer=="T454jl")then
	if (LuaItemCount("o_mission367")>=1)then
		LuaSetTask("T454",99)
     		LuaAddJx("combat_exp",258000,"T454")
			LuaAddAchievementSchedule("Task_num",1)
     		LuaGive("coin",999,"T454")
		DelItem("o_mission367",1)
		DelLog(454)
		UpdateMenu()
		end
 ---------
elseif(answer=="T443") then              ------------------------北府大将
		if(LuaQueryTask("T443")==1) then
		LuaSay("刘牢之：哈哈，承蒙兄弟抬举了，既然小英雄你有心，那就在我这好好锻炼一番吧。@!")
	        AddMenuItem("@7任务完成","")
	        AddMenuItem("领取奖励","T443jl")
		end 
		elseif(answer=="T443jl")then	            
		       if(LuaQueryTask("T443")==1)then
				LuaSetTask("T443",99) 
				LuaAddJx("combat_exp",258000,"T443") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("443") 
				UpdateMenu() 
				end

elseif(answer=="Tsnpc_41")then
	if(LuaQueryTask("Tsnpc_41")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("刘牢之：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_41",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_41")==2)then
		LuaSay("刘牢之：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_41")then
	if(LuaQueryTask("Tenpc_41")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("刘牢之：这都是大人的功劳啊")
		LuaSetTask("Tenpc_41",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_41")==2)then
		LuaSay("刘牢之：话已经带到了，快回去领取奖励吧")
	end

end 
LuaSendMenu()
return 1
end
