NPCINFO = {
serial= "66" ,
base_name="ydhuoji1",
icon= 2508, 
NpcMove=2508,
name= "药品商人【商】" ,
iconaddr=1,
butt="20|20|77", 
name_color = "CEFFCE" , 
lastsay="自动补血药商城药品店有售",
have_sell_item=1,
LuaType=1,
}

addBuyitem={
count=10,
{"o_drug_hp1" , 0, 8 },
{"o_drug_hp2" , 0, 8 },
{"o_drug_hp3" , 0, 8 },
{"o_drug_mp1" , 0, 8 },
{"o_drug_mp2" , 0, 8 },
{"o_drug_mp3" , 0, 8 },
{"o_mix_book025" , 2000  , 8 },
{"o_mix_book026" , 2000  , 8 },
{"o_mix_book027" , 2000  , 8 },
{"o_mix_book028" , 2000  , 8 },
}
function do_talk(answer)
 if (answer=="ask") then
	 local T492 = LuaQueryTask("T492")
	 local T482 = LuaQueryTask("T482")
	 local T701 = LuaQueryTask("T701")
	 local level = LuaQuery("level")
	 local T485 = LuaQueryTask("T485")
	 local T551 = LuaQueryTask("T551")
	 local T552 = LuaQueryTask("T552")
	 local T647 = LuaQueryTask("T647")
	 local T741 = LuaQueryTask("T741")
	 local T732 = LuaQueryTask("T732")
	 local T737 = LuaQueryTask("T737")
	 local Tbprw9=LuaQueryTask("Tbprw9")
	 local Tbprw9_3=LuaQueryTask("Tbprw9_3")
	havetask =0		 
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	local havetask4=0	--灰色问号
	AddTopSayMenuItem("@7任务列表","")
        AddTopSayMenuItem("买卖","buy1")
 		AddTopSayMenuItem("@3抢粮【活动】","Tcf4")
		if(T552==0 and level>=31 and level<36) then
			 AddTopSayMenuItem("收集熊掌【循环】","T552")
			havetask1=1	--感叹号
		end
		if((LuaQueryTask("Tsnpc_50")==1 or LuaQueryTask("Tsnpc_50")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_50")
			if(LuaQueryTask("Tsnpc_50")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_50")==1 or LuaQueryTask("Tenpc_50")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_50")
			if(LuaQueryTask("Tenpc_50")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("Tcoc")==21)then
			AddTopSayMenuItem("@2商贾向背","Tcoc")
			havetask2 =1
		end
		if(T485==1 or T485==2) then
			AddTopSayMenuItem("@2救助难民【剧情】","T485")
			if(T485==1)then
			havetask2=1
			end
		end
		if(T552==1) then
			 AddTopSayMenuItem("@2收集熊掌【循环】","T552")
			 if(LuaItemCount("o_mission325")>=5) then	--显示黄色问号
				 havetask2=1
			else
				havetask4=1
			end
		end
		if(T647==1 or T647==2) then
			AddTopSayMenuItem("@2解救次子【剧情】","T647")
			if(LuaQueryTask("T647")==1) then	--显示黄色问号
				havetask2=1
			end
		end
		if(T737==1 or T737==2) then
			AddTopSayMenuItem("@2购买药物【剧情】","T737")
			if(LuaQueryTask("T737")==1) then	--显示黄色问号
				havetask2=1
			end
		end
		if(T732 ==1 or T732 ==2) then
 			AddTopSayMenuItem("@2稀缺药物【剧情】","T732")
 			if(LuaQueryTask("T732")==1) then
 			havetask =2
 			end
		end		
		if(T482==1 or T482==2) then
			AddTopSayMenuItem("@2医治难民【剧情】","T482")
			if(T482==1) then	--显示黄色问号
				havetask2=1
			elseif(T482==2) then
				if(LuaItemCount("o_mission329")==1) then	--显示黄色问号
					havetask2=1
				else
					havetask4=1	--灰色问号
				end
			end
		end
		if(LuaQueryTask("Tbprw9_3")==1) then
			AddTopSayMenuItem("@2购买物资【每日】","Tbprw9_3")
			havetask=2
		end
		AddTopSayMenuItem("@5学习如何挂机@0","Tgjsm")
			AddTopSayMenuItem("前往百花谷","Cf2")
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
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1
elseif(answer=="buy1") then
		DoBuy()


elseif(answer=="liaotian") then
      LuaSay("药品商人：杀人越货，药品必须")
      
elseif(answer=="Tgjsm") then
	LuaSay("挂机方法：在我这里（@2建康城的药品商人@0）购买@3挂机楔子@0，到你想挂机的地图@2使用挂机楔子@0，条件满足即可挂机，挂机时间到后请@2再次使用挂机楔子@0领取挂机收益。")
	LuaSay("注意事项：@2挂机成功后不能切图@0（传送门、NPC传送、飞世界、正常死亡、抓捕...等造成的切图），@1否则将视为放弃挂机，自动重置挂机系统@0，@7挂机可以下线@0（@2国外挂机下线再上线后在未领取挂机收益前请不要离开边境@0）。")
	LuaSay("提示：1，@2等级限制@0：@110级以上才能挂机@0；2，@2地图限制@0：@1非boss或非副本地图@0；3，@2怪物等级限制@0：@1挂机怪物不能高出自己等级3级@0；4，挂机方式：通宝挂机和铜币挂机，通宝可在取消键-商城-元宝商城中购买。")	
	LuaSay("挂机方式区别：@2通宝挂机过程有挂机免战状态@0（不能被锁定、抓捕、斩首、行刑），能避免其他玩家对你抓捕所造成的被动切图；铜币挂机则没有挂机免战状态")
	LuaSay("挂机成功后，@2扣除相应通宝或铜币@0，挂机开始后若因且切图造成挂机失败，@1不返还任何通宝或铜币@0。")
	LuaSay("挂机时间到后，请@1尽快使用挂机楔子领取挂机收益@0，避免造成切图挂机失败所造成的损失，领取收益后@2扣除挂机楔子一个@0,@7有很大概率获得其他商城道具@0哦.")


elseif(answer=="Tcf4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then			
	LuaSay("在上午@212:00~13:00@0，下午@223:00~24:00@0时分开放@2抢采农场@0,有机会采到高级材料，耐心等待吧。@!")
	AddMenuItem("要进入@2抢采农场@0吗","")
	AddMenuItem("不进入","no")
	AddMenuItem("@2进入","yescf4")
	else
	LuaSay("在上午@212:00~13:00@0，下午@223:00~24:00@0时分开放@2抢采农场@0,有机会采到高级材料，耐心等待吧。@!")
	LuaSay("现在服务器时间是:@2"..hour.."时"..minute.."分@0.不是抢采时间")
	end
elseif(answer=="yescf4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
	ChangeMap("lu_farm04")
	end
elseif(answer=="no")then
	LuaSay("药品商人：白占的便宜都不想占，孺子不可教也！")

elseif(answer=="Cf2") then 
	local level = LuaQuery("level")
	if(level>=40)then
		if(LuaQuery("till")>=500)then
		ChangeMap("lu_farm02")
		else
		LuaSay("采集熟练度不够,你的采集次数达到500以上才能进入.")
		end
	else
	LuaSay("中级采集场40级才能进入")
	end
elseif(answer=="Tcoc")then---------------------商贾向背8 Tcoc===19
	if(LuaQueryTask("Tcoc")==21)then
		LuaSay("药品商人:能为大众谋福，我当然加入.")
		LuaSetTask("Tcoc",22)
		LuaSetTask("T955",22)
		AddLog("商贾向背【每日】",955)
		LuaGive("coin",1000,"Tcoc")
		LuaGive("o_drug_mp4",3,"Tcoc")
		UpdateMenu()
	end

		
elseif(answer=="T485") then
	if(LuaQueryTask("T485")==1) then
		LuaSay("药品商人：现在天下大乱，民不聊生啊！洛阳郊外一带最为严重，得了，我这有一张@3炊饼@0，你先给@4洛阳郊外@0的@3难民@0带去吧")
		LuaSetTask("T485",2)
		LuaGive("o_mission321",1)
		AddLog("救助难民【剧情】",485)
		UpdateMenu()
	elseif(LuaQueryTask("T485")==2) then
		LuaSay("药品商人：将炊饼先给@4洛阳郊外@0的@3难民@0带去让他吃了")
	end			                              
---------------------------- 收集熊掌
elseif(answer=="T552") then         
		if(LuaQueryTask("T552") == 0 ) then
				LuaSay("药品商人：来了可不能闲着啊")
				LuaSay(""..LuaQueryStr("name").."小二哥，有什么事尽管说吧!")
				LuaSay("药品商人：我们药店正在收集熊掌制作药品，少侠去@4洛阳郊外@0收集@35个鬃毛熊熊掌@0吧")
				LuaSetTask("T552",1)
		  		UpdateTopSay("去洛阳郊外收集5个鬃毛熊熊掌")
		      		AddLog("收集熊掌【循环】",552)
		  		UpdateMenu()
		elseif(LuaQueryTask("T552") == 1 ) then
		  	if(LuaItemCount("o_mission325")>=5) then
            		LuaSay("药品商人：多谢阁下帮忙了，如果阁下有心，可以帮我多找些啊。")
		    	AddMenuItem("@7任务完成","")
		    	AddMenuItem("领取奖励","T552jl")
			else
		    	LuaSay("药品商人：你还没有收集够@35个鬃毛熊熊掌@0呢。")
            		UpdateTopSay("快去收集5个鬃毛熊熊掌")
          		end
		end
        
		elseif(answer=="T552jl")then
			local level = LuaQuery("level")
				if(level>80)then
		level=80
	end
          		if(LuaQueryTask("T552")==1) then
		 		if(LuaItemCount("o_mission325")>=5) then
		    		DelItem("o_mission325",LuaItemCount("o_mission325"))
		    		LuaDelTask("T552")	
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
				if(TeamCount()>=2)then
					LuaSay("@1提示：获得组队经验加成")
					jingyan=(80835+level^2*20)
				else
					jingyan=(42000+level^2*20)
				end
				LuaAddJx("combat_exp",jingyan,"T552")
				DelLog("552")
				LuaGive("coin",money,"T552")
				if(LuaQueryTask("T552_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T552_a",99)
				end
		    		UpdateMenu()
		    		end
			end 
			
 elseif(answer=="T482") then
	if(LuaQueryTask("T482")==1) then
                LuaSay(""..LuaQueryStr("name").."：你这里可有@2金疮药@0？")
	        LuaSay("药品商人：有的，五十个铜币一袋。")
                LuaSay(""..LuaQueryStr("name").."：啊？？我竟然忘记带钱了，这可怎么办啊，这可是用来救命的啊。")
		LuaSay("药品商人：如果没有钱，就帮我我寻找一张@2熊皮@0，杀死洛阳郊外的鬃毛熊 ，可以得到熊皮。")
		LuaSetTask("T482",2)		
	        AddLog("医治难民【剧情】",482)
		UpdateMenu()
	elseif(LuaQueryTask("T482")==2) then
	     if(LuaItemCount("o_mission329")==1) then
		LuaSay("药品商:这么快啊，这是一瓶@3金疮药@0，快去救人吧")
         	DelItem("o_mission329",1)
                LuaGive("o_mission335",1)
      	        LuaSetTask("T482",3)
	        AddLog("医治难民【剧情】",482)
		UpdateMenu()
	     else
		LuaSay("药品商人:杀死洛阳郊外的@3鬃毛熊@0 ，可以得到@3熊皮@0,快去吧")
	     end
	else
	LuaSay("药品商人:@3金疮药@0在你的背包里，快去救人吧！")
	end
	     
	                                                

elseif(answer=="T647") then              ------------------------求医
	if(LuaQueryTask("T647")==1) then
		LuaSay(LuaQueryStr("name").."：我朋友喝了这@2琼花佳酿@0身中剧毒，请问可有解救之法？")
		LuaSay("药品商人：这可是剧毒啊！是谁如此狠毒？这需要@21个三级晶@0和@21个优质鱼肉@0外用内服方能化解此毒！")
		LuaSay("药品商人：三级晶要到@2太行山谷击杀太行古猿@0得到，优质鱼肉可以到@2建康城渔翁那里钓鱼@0取得！")
		LuaSay(LuaQueryStr("name").."：有劳了！")
                LuaSetTask("T647",2)
		UpdateTopSay("路途艰险，少侠多保重啊")
                AddLog("解救次子【剧情】",647)
                UpdateMenu()
	elseif(LuaQueryTask("T647")==2 ) then
	LuaSay("药品商人：病人危在旦夕，速去搜集药材吧！")
	end




elseif(answer=="T737") then              ------------------------购买药物
	if(LuaQueryTask("T737")==1) then
		LuaSay(""..LuaQueryStr("name").."：我听人说你这有起死回生的@3天山雪莲@0，不知阁下能不能割爱卖给我，我急着救人。")
		LuaSay("药品商人：本店至宝@3天山雪莲@0！要买也可以，不过有些昂贵！不知你是否愿意花@33300铜币@0购买？")
	    AddMenuItem("选择列表","")
	    AddMenuItem("购买","T737y")
	    AddMenuItem("放弃","T737n1")
    elseif(LuaQueryTask("T737")==2) then
        LuaSay("药品商人：你不是急着去救人吗，怎么还在这里")
	 end 
    elseif(answer=="T737y")then
		if(LuaQueryTask("T737")==1 and LuaItemCount("coin")>=3300) then
            LuaSay("药品商人：@3天山雪莲@0！拿好喽。")
			LuaGive("o_mission015",1)
            AddLog("购买药物【剧情】",737)
            LuaSetTask("T737",2)
            UpdateMenu()
		 else
		    LuaSay("药品商人：我可不会送给穷人哦，身上没有3300铜币我可不给。")
		 end
	 elseif(answer=="T737n1")then
        LuaSay("药品商人：这点小钱都不愿意花，还说什么急着救人，唉...！再考虑考虑吧")
        AddMenuItem("选择列表","")
	    AddMenuItem("购买","T737y")
	    AddMenuItem("放弃","T737n2")
    elseif(answer=="T737n2")then
        LuaSay("药品商人：不买算了，我就不信会没人来买")

elseif(answer=="T732") then              ------------------------稀缺药物
	if(LuaQueryTask("T732")==1) then
		LuaSay(LuaQueryStr("name").."：你这里不是有@3天山雪莲@0吗，给我一株，多少钱我都出")
		LuaSay("药品商人：镇店之宝多了就不叫镇店之宝了，你到@4建康城南@0的@3药品商人@0那里去看看吧！")
		UpdateTopSay("去找建康城南的药品商人买天山雪莲")
		LuaSetTask("T732",2)
		AddLog("稀缺药物【剧情】",732)
		AddMenuItem("是否传送至建康城南？","")
		AddMenuItem("是","Tshi")
		AddMenuItem("否","Tfou")
		UpdateMenu()
    elseif(LuaQueryTask("T732")==2)then
        LuaSay("药品商人：你不是要到@4建康城南@0的@3药品商人@0那里去看看吗，怎么还没去啊")
		UpdateMenu()
    end
	elseif(answer=="Tshi")then
		ChangeMap("lu_jkcn")
	elseif(answer=="Tfou")then
		LuaSay("药品商人：暂时还不想去啊，那你再逛逛@!")
						
		
elseif(answer=="Tbprw9_3")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw9_3")==1) then
		LuaSay(""..LuaQueryStr("name").."：我奉晋帝的圣旨前来购买@3晋国御用药品@0，还望行个方便。")
		LuaSay("药品商人：购买@3晋国御用药品@0要使用@33000铜币@0")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("药品商人：快去把@3晋国御用药品@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
	end
else
		LuaSay("药品商人：新的一天，新的开始，你今天以前的@3购买物资【每日】@0任务还没完成！")
		LuaSay("药品商人：现在到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0重新接取任务@3购买物资【每日】@0任务吧！")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission405",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("药品商人：快去把@3晋国御用药品@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_3",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("药品商人：你身上只有@3"..LuaItemCount("coin").."铜币@0,不足@33000铜币@0啊！")
			LuaSay("药品商人：你虽然是晋帝派来买@3晋国御用药品@0的，但也不能让我做亏本生意啊！")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		LuaSay("药品商人：这么小气，@33000铜币@0都不愿出。")
		LuaSay("药品商人：听说晋帝很大气哦，你替他办事，他绝对不会亏待你的。")
		LuaSay("药品商人：还是买吧，回去好交差。")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_3")== 1) then
		LuaSay("药品商人：哎，这不买就算了吧，我也不强迫你，可穷死我了。")
	end

elseif(answer=="Tsnpc_50")then
	if(LuaQueryTask("Tsnpc_50")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("药品商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_50",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_50")==2)then
		LuaSay("药品商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_50")then
	if(LuaQueryTask("Tenpc_50")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("药品商人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_50",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_50")==2)then
		LuaSay("药品商人：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end
