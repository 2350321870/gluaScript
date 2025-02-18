NPCINFO = {
serial= "36" ,
base_name="ydhuoji",
icon= 2508, 
NpcMove=2508,
name= "药品商人【商】" ,
iconaddr=1,
butt="20|15|73", 
name_color = "CEFFCE" , 
lastsay="15级以下可以去建康东郊升级",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=10,
{"o_drug_hp1" , 0  , 8 },
{"o_drug_hp2" , 0  , 8 },
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mp2" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
{"o_mix_book021" , 2000  , 8 },
{"o_mix_book022" , 2000  , 8 },
{"o_mix_book023" , 2000  , 8 },
{"o_mix_book024" , 2000  , 8 },
}
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
        local level= LuaQuery("level")
	local T41= LuaQueryTask("T41")
		AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("@3买卖","buy1")
		--if(LuaQueryTempStr("online")=="117" or LuaQueryTempStr("online")=="107")then
		if(T41==0)  then
			AddTopSayMenuItem("物品合成【教程】","T41")
			havetask =1
		end 
		AddTopSayMenuItem("@3每日药品派送","Tyaopin")
		if((LuaQueryTask("Tsnpc_23")==1 or LuaQueryTask("Tsnpc_23")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_23")
			if(LuaQueryTask("Tsnpc_23")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_23")==1 or LuaQueryTask("Tenpc_23")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_23")
			if(LuaQueryTask("Tenpc_23")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_5")==1 or LuaQueryTask("TfindNPC_5")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_5")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
		end
		if(T41==1)  then
			AddTopSayMenuItem("@2物品合成【教程】","T41")
			havetask =2
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265D")==0)  then
			AddTopSayMenuItem("@2初临建康【剧情】","T265D")
			havetask =2
			end
		if(LuaQueryTask("Tcoc")==7)then
			AddTopSayMenuItem("@2商贾向背【每日】","Tcoc")
			havetask =2
			end
		if(LuaQueryTask("pettask") ==7) then
			AddTopSayMenuItem("@2送货【每日】","pettask")
			havetask=2
			end		 
		if(LuaQueryTask("T291") ==1)then
			AddTopSayMenuItem("@2司马的报复【剧情】","T291")
			havetask =2
			end 
		if(LuaQueryTask("T391")==1 or LuaQueryTask("T391")==2)then
			AddTopSayMenuItem("@2救治英雄【剧情】","T391")
			havetask=2
		end
		if(LuaQueryTask("T640")==1)then
			AddTopSayMenuItem("@2解毒救人【剧情】","T640")
			havetask =2
		end
		if(LuaQueryTask("T732") ==2)then
			AddTopSayMenuItem("@2缺稀药物【剧情】","T732")
			havetask =2
		end 
		
		if(LuaQueryTask("T302")==7 and LuaQueryTask("T302G")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302G")
		havetask =2
		end
		AddTopSayMenuItem("@5学习如何挂机@0","Tgjsm")
			AddTopSayMenuItem("前往百草园","Cf1")
			
		if(T41==99 and level<20)  then
			AddTopSayMenuItem("@9物品合成【教程】","T41")--保留一段时间提示
		end
	if(havetask==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1
elseif(answer=="liaotian") then
     if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("药品商人：这位客官，我看你还是把药品放到快捷键中吧，点击菜单，再点击背包键进入背包，选中药品，最后点击快捷键栏中的任意一个快捷键小格，就可以将其放到快捷键栏中")
     else
	LuaSay("药品商人：这位客官，我看你还是把药品放到快捷键中吧，按【确认】键+3键进入背包，选中药品后按【1379】键即可。")
    end 
	    
elseif(answer=="buy1") then
   if(LuaQuery("level")<10) then
		DoBuy()   
      else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
		LuaSay("药品商人：@1由于你的贷款已过期限未还，商界对你的信誉产生了不满，暂时禁止对你进行买卖。")
		LuaSay("药品商人：@1等你去还了钱庄的贷款再来买卖吧，不及时还贷会禁止更多功能的。")
		else
		DoBuy()
		end
    end    

elseif(answer=="Tyaopin") then 
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("Typtaskday")) then
		LuaSetTask("Tyaopin",0)
	end
	if(LuaQueryTask("Tyaopin")==0) then
		if(level>9) then
			 LuaSay("提示：欢迎领取今天的第一次药品派送，@3价值1w2的20个蓝药，20个红药@0，派送药品是无法赠送他人的哦！1小时后还能再领取一次！")
			 LuaSetTask("Tyaopin",1)
			 LuaSetTask("Typtaskday",GetCurrentDay())
			 LuaSetTask("Tyaopintime",GetCurrentTime())
			 LuaGive("o_drug_hp4",20,"Tyaopin")
			 LuaGive("o_drug_mp4",20,"Tyaopin")
    		else
    			LuaSay("提示：达到15级的玩家，每日可领取价值1w2的药品2次！")
  		end
	elseif(LuaQueryTask("Tyaopin")==1) then
		if(GetCurrentTime() - LuaQueryTask("Tyaopintime")>=3600) then
			LuaSay("提示：欢迎领取今天的第二次药品派送，@3价值1w2的20个蓝药，20个红药@0，派送药品是无法赠送他人的哦！")
			LuaSetTask("Tyaopin",99)
			LuaSetTask("Typtaskday",GetCurrentDay())
			LuaGive("o_drug_hp4",20,"Tyaopin")
			LuaGive("o_drug_mp4",20,"Tyaopin")
		else
			LuaSay("提示：第一次领取后1小时，还可以再可领取价值1w2的药品1次！")
		end
	elseif(LuaQueryTask("Tyaopin")==99) then
		LuaSay("提示：你已经领取了今天的2次药品派送，明天再来吧")
	end

elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==7) then
	LuaSay("药品商人:嗯谢谢你了,驯兽师养的仙麝的麝香品质就是不一样")
	LuaSetTask("pettask",8)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()		
	

elseif(answer=="T302G") then
	   if(LuaQueryTask("T302G")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("药品商人：最近药材紧张，要是有好消息可就好了。@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302G",99)
	   UpdateMenu()
	   end



elseif(answer=="Tcoc")then---------------------商贾向背4 Tcoc===7
	if(LuaQueryTask("Tcoc")==7)then
	LuaSay("药品商人:你说我一个卖药的,平时就靠病人和武林人士赚点养家的钱,恐怕入不了大商贾之流.")
	LuaSetTask("Tcoc",8)
	LuaSetTask("T955",8)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_hp4",5,"Tcoc")
		LuaGive("o_drug_mp4",5,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265D") then                       -----初临建康 
			if(LuaQueryTask("T265D") ==0) then
    			LuaSay("药品商人：@2购买药物@0可以来找我。战斗时将药物放入快捷栏，使用更方便哦。我就赠你些药物吧@!")
    			LuaSay("药品商人：点我身上的聊天，我会告诉你设置药物快捷键的方法。@!")
			LuaSetTask("T265D",99)
			LuaGive("o_drug_hp4",5,"T265D")
			LuaGive("o_drug_mp4",5,"T265D")
			UpdateMenu()
			UpdateNPCMenu("xiean")
			end

elseif(answer=="T291") then              -----------------------司马的报复
		if(LuaQueryTask("T291")==1 ) then  
		LuaSay("药品商人：英雄为了大晋百姓兵谏天子，让谢安大人掌握天下兵马，乃是我大晋百姓的恩人。")
		LuaSay("药品商人：这是店里的镇店之宝，掌柜的让英雄你服下便可痊愈。")
		LuaSay("你服下药品商人给的药，顿感神清气爽，功力亦有长进。")
		AddMenuItem("@7任务完成","")
	        AddMenuItem("领取奖励","T291jl")
		end 
		elseif(answer=="T291jl")then	            
		       if(LuaQueryTask("T291")==1)then
				LuaSetTask("T291",99) 
				LuaAddJx("combat_exp",145000,"T291") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("291") 
				UpdateMenu() 
				end

elseif(answer=="T391")then      -----------------------------救治英雄
		if(LuaQueryTask("T391")==1)then
		LuaSay("药品商人：阁下什么症状，需要什么药品啊?")
		LuaSay(LuaQueryStr("name").."：情况紧急，不及细说，@4山寨地牢@0的@3王凝之@0身中剧毒，有解毒的药品吗？银子不是问题！")
		LuaSay("药品商人：又是天师道干的？这群混蛋！我这里有解毒的药品，送给你好了，但希望尔等惩恶扬善，消除邪恶！")
		LuaSetTask("T391",2)
		LuaGive("o_mission181",2)
		AddLog("救治英雄【剧情】",391)
		UpdateMenu()
		elseif(LuaQueryTask("T391")==2)then
		LuaSay("药品商人：快点回去吧，别耽搁了时日，去找@4山寨地牢@0的@3王凝之@0。")
		end
				
----------------------------------------------
elseif(answer=="T640")then	
	if(LuaQueryTask("T640")==1)then	
		LuaSay(""..LuaQueryStr("name").."；@3慕容麟@0受奸人所害，中毒，忘兄台出手相助")
		LuaSay("药品商人：解此毒需要一个3级晶和一个优质鱼肉，外用内服方能化解！你收集好后，去给@3慕容麟@0服下")
		LuaSetTask("T640",2)
		AddLog("解毒救人【剧情】",640)
		UpdateMenu()
		UpdateNpcMenu()
	end
		
elseif(answer=="T732") then              ------------------------购买药物
	if(LuaQueryTask("T732")==2) then
		LuaSay(""..LuaQueryStr("name").."：我听人说你这有起死回生的@3天山雪莲@0，不知阁下能不能割爱卖给我。")
		LuaSay("药品商人：药品商店的至宝@3天山雪莲@0！要买也可以，不过有些昂贵！不知你是否愿意花@33500铜币@0购买？")
	    AddMenuItem("选择列表","")
	    AddMenuItem("购买","T732y")
	    AddMenuItem("放弃","T732n1")
	elseif(LuaQueryTask("T732")==3) then
	    LuaSay("药品商人：你不是急着去救你的朋友@3拓拔仪@0吗？赶快去吧！")
	 end
    elseif(answer=="T732y")then
		if(LuaItemCount("coin")>=3500) then
		    LuaSay("药品商人：@3天山雪莲@0！拿好喽。")
		    LuaGive("coin",-3500,"T732")
		    LuaGive("o_mission015",1)
		    LuaSetTask("T732",3)
		    AddLog("购买药物【剧情】",732)
		    UpdateMenu()
		 else
		    LuaSay("药品商人：阁下钱不够@33500铜@0啊，急着救人也不能白拿啊，我卖你的也就成本价了。")
		 end
	 elseif(answer=="T732n1")then
		LuaSay("药品商人：这点小钱都不愿意花，还说什么急着救人，唉...！再考虑考虑吧！")
		AddMenuItem("选择列表","")
		AddMenuItem("购买","T732y")
		AddMenuItem("放弃","T732n2")
    elseif(answer=="T732n2")then
        LuaSay("药品商人：不买算了，我又不愁卖不出去。")


elseif(answer=="Cf1") then
	local level= LuaQuery("level")
	if(level>=10 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_farm01")
	else
	LuaSay("初级采集场需本国人员10级才能进入.")
	end

elseif(answer=="T41") then                                       -------------物品合成
	if(LuaQueryTask("T41")== 0) then
		LuaSay("药品商人：我看你年轻有为，这就教你如何合成@2高级材料@0。")
		LuaSay("药品商人：用@218个1级材料@0可以合成@21个2级材料@0，@218个2级材料@0合成@21个3级材料@0，以此类推。")
		LuaSay("药品商人：使用@2背包@0里的@22级材料合成书@0，就可进行材料的合成了。")
		LuaGive("o_mix_book021",1,"T41")
		LuaGive("o_material_11",6,"T41")
		LuaSetTask("T41",1)
		AddLog("物品合成【教程】",41)
		UpdateMenu()
		UpdateTopSay("用背包中的合成书合成1个2级毛")
	elseif(LuaQueryTask("T41")== 1) then
		if(LuaItemCount("o_material_12") >0) then
			LuaSay("药品商人：你真是聪明啊，这么快就合成了1个2级毛。你可以找@4建康东郊@0的@3桓冲@0领奖！")
			LuaSay("药品商人：@2向右走@0出城，在@4建康东郊@0就可以见到@3桓冲@0了！")
			AddMenuItem("@7是否@0寻路至@4建康东郊","")
			AddMenuItem("自动寻路至建康东郊","xl_jkdj")

		else
			LuaSay("药品商人：你还没有合成@22级毛@0呢，点击背包里的@22级材料合成书@0就可以合成了。")
			UpdateTopSay("使用合成书合成1个2级毛")
		end
	elseif(LuaQueryTask("T41")== 99) then	 
		LuaSay("药品商人：@218个1级材料@0可以合成@21个2级材料@0，@218个2级材料@0合成@21个3级材料@0，以此类推。")
		LuaSay("药品商人：合成得时候必须要用材@2料合成书@0点击背包的材料合成书，会弹出一个选择对话框。")
		LuaSay("药品商人：分别为合成2级皮，合成2级毛，合成2级矿，合成2级晶，合成2级木，合成2级肉。")
		LuaSay("药品商人：只要背包中有足够的材料，点击相应的按钮，就能获得高一等级的材料，很简单吧。")
		LuaSay("提示：该任务已完成")
	end
	elseif(answer=="xl_jkdj")then
		AutoPathByTaskStep("T41",1)

--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_5")==1)then
					LuaSay("药品商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_5",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_5")==2)then
					LuaSay("药品商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_5",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("药品商人：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("药品商人：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

elseif(answer=="Tsnpc_23")then
	if(LuaQueryTask("Tsnpc_23")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("药品商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_23",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_23")==2)then
		LuaSay("药品商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_23")then
	if(LuaQueryTask("Tenpc_23")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话表扬你的贡献，希望你再接再厉")
		LuaSay("药品商人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_23",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_23")==2)then
		LuaSay("药品商人：话已经带到了，快回去领取奖励吧")
	end
elseif(answer=="Tgjsm") then
	LuaSay("挂机方法：在我这里（@2建康城的药品商人@0）购买@3挂机楔子@0，到你想挂机的地图@2使用挂机楔子@0，条件满足即可挂机，挂机时间到后请@2再次使用挂机楔子@0领取挂机收益。")
	LuaSay("注意事项：@2挂机成功后不能切图@0（传送门、NPC传送、飞世界、正常死亡、抓捕...等造成的切图），@1否则将视为放弃挂机，自动重置挂机系统@0，@7挂机可以下线@0（@2国外挂机下线再上线后在未领取挂机收益前请不要离开边境@0）。")
	LuaSay("提示：1，@2等级限制@0：@110级以上才能挂机@0；2，@2地图限制@0：@1非boss或非副本地图@0；3，@2怪物等级限制@0：@1挂机怪物不能高出自己等级3级@0；4，挂机方式：通宝挂机和铜币挂机，通宝可在取消键-商城-元宝商城中购买。")	
	LuaSay("挂机方式区别：@2通宝挂机过程有挂机免战状态@0，能避免其他玩家对你抓捕所造成的被动切图；铜币挂机则没有挂机免战状态")
	LuaSay("挂机成功后，@2扣除相应通宝或铜币@0，挂机开始后若因且切图造成挂机失败，@1不返还任何通宝或铜币@0。")
	LuaSay("挂机时间到后，请@1尽快使用挂机楔子领取挂机收益@0，避免造成切图挂机失败所造成的损失，领取收益后@2扣除挂机楔子一个@0,@7有很大概率获得其他商城道具@0哦.")



end
LuaSendMenu()
return 1
end