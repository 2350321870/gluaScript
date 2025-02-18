NPCINFO = {
serial= "32" ,
base_name="zhongzis",
icon= 2541,
NpcMove=2541,
name= "种子商人【商】" ,
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" ,
lastsay="种植可获得丰厚奖励和经验",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=4,
{"o_seed001",0,8},
{"o_seed002",0,8},
{"o_seed005",0,8},
{"o_seed015",0,8},
}

QLYB_SZ={} --千里押镖数组
QLYB_SZ[1]={"一品镖货",o_biaohuo001,o_biaohuo002}
QLYB_SZ[2]={"@7二品镖货@0",o_biaohuo003,o_biaohuo004}
QLYB_SZ[3]={"@5三品镖货@0",o_biaohuo005,o_biaohuo006}
QLYB_SZ[4]={"@3四品镖货@0",o_biaohuo007,o_biaohuo008}
QLYB_SZ[5]={"@1五品镖货@0",o_biaohuo009,o_biaohuo0010}

function do_talk(answer)
if(answer=="ask") then
	havetask =0
	local level=LuaQuery("level")
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("@3种子买卖","buy1")
	if(LuaQueryTask("T211")==0 and level>=12)then
		AddTopSayMenuItem("采集种植【教程】","T211")
		havetask1=1
	end
	if(level>=30)then
		if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
			--AddTopSayMenuItem("@7千里行商【每日】","Tqlxs")
			AddTopSayMenuItem("@7千里押镖【每日】","QLYB")
			havetask1=1
		else
			--AddTopSayMenuItem("@7千里行商【每日】","Tqlxs")
			AddTopSayMenuItem("@7千里押镖【每日】","QLYB")
		end
	elseif(level>=25)then
		if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
			--AddTopSayMenuItem("@2[新]@0@7千里行商【每日】","Tqlxs")
			AddTopSayMenuItem("@2[新]@0@7千里押镖【每日】","QLYB")
			havetask1=1
		else
			--AddTopSayMenuItem("@2[新]@0@7千里行商【每日】","Tqlxs")
			AddTopSayMenuItem("@2[新]@0@7千里押镖【每日】","QLYB")
		end
	
	end
	if((LuaQueryTask("Tsnpc_19")==1 or LuaQueryTask("Tsnpc_19")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_19")
		if(LuaQueryTask("Tsnpc_19")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_19")==1 or LuaQueryTask("Tenpc_19")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_19")
		if(LuaQueryTask("Tenpc_19")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_18")==1 or LuaQueryTask("Tsnpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_18")
		if(LuaQueryTask("Tsnpc_18")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_18")==1 or LuaQueryTask("Tenpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_18")
		if(LuaQueryTask("Tenpc_18")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_2")==1 or LuaQueryTask("TfindNPC_2")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask2=1
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_2")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end

	if(LuaQueryTask("T211")==1)then
		AddTopSayMenuItem("@2采集种植【教程】","T211")
		havetask2=1
	end

	if(LuaQueryTask("Tcoc")==15)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
		havetask2 =1
		end
	if(LuaQueryTask("T265")==1 and LuaQueryTask("T265E")==0)  then
		AddTopSayMenuItem("@2初临建康【剧情】","T265E")
		havetask2 =1
		end
		
    	if(LuaQueryTask("T302")==4 and LuaQueryTask("T302D")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302D")
		havetask2 =1
	end
	AddTopSayMenuItem("@9进入种植场","jrzzc")
	if(LuaQueryTask("T211")==99)  then
	AddTopSayMenuItem("种植说明","plant_intro")
	end
	if(LuaQueryTask("T211")==99 and level>=20)then
		AddTopSayMenuItem("@9采集种植【教程】","T211")
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
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end 
return 1 
elseif(answer=="buy1") then
	--LuaSay("种子商人:目前种子暂时缺货,你可以通过一些任务得到些种子,至于什么任务,你自己探索好了.")
	DoBuy()
elseif(answer=="liaotian") then
	LuaSay("种子商人:唉!土地资源紧张啊,都被圈去建房了,无地下种啊...")
			LuaDelTask("T214")
		         DelLog("214")
elseif(answer=="Tybzz") then
	if(LuaQuery("level")<25) then
	     LuaSay("种子商人：25级以上的玩家才可以参与活动。赶快加油提高吧。@!")
         LuaSendMenu()
	    return 0
	end
	if(GetCurrentDay()~=LuaQueryStrTask("ybzz_day")) then
		LuaSetTask("ybzz_ev",0)
		LuaSetTask("ybzz_day",GetCurrentDay())
	end
	LuaSay("种子商人：最近收集到一些非常珍稀的种子，数量有限，每个人每天只可以获取一个.")
    AddMenuItem("@7种子列表@0","")
    	AddMenuItem("@7相关说明","ybzz_sm")
		AddMenuItem("初级经验种子","ybzz_jy")
		AddMenuItem("力量符+50","ybzz_j50")
		AddMenuItem("智慧符+50","ybzz_jzh50")
		AddMenuItem("敏捷符+50","ybzz_jmj50")
elseif(answer=="ybzz_sm") then
	LuaSay("种子商人：购买种子的时候看清楚，种植地点，成熟时间，成熟保护时间，不要买错了。")
	LuaSay("种子商人：对自己的植物可以除草，采集，查询状态；对别人的植物可以进行放虫，查询状态，过了保护期才可以采集。") 
	LuaSay("种子商人：采集自己的植物需要消耗采集石，采集碎石，铜币等，购买的时候请看每个种子的说明.")
	LuaSay("种子商人：采集别人的植物需要消耗采集碎石，不管自己的植物还是别人的植物，物品不足，都不可以采集。") 
	LuaSay("种子商人：@2采集石@0只能通过给自己的植物除草获得，@2采集碎片@0只能通过放虫别人的植物获得.")
	LuaSay("种子商人：@2除草@0可以加速植物的生长，消耗@2除草剂@0，@2放虫@0会降低植物生长速度，消耗@2虫子@0，购买的时候请看每个种子的数量说明.")
	LuaSay("种子商人：@2除草剂和虫子@0，可以在建康东郊，五斗山，山寨打怪获取，所有怪物有效。") 
elseif(answer=="ybzz_jy") then
	LuaSay("种子商人：@3初级经验种子@0，种植地点初级，中级，高级种植场，成熟时间4小时，成熟保护期10分钟，需要采集等级8，过了保护期小心被别人采集哦。")
	LuaSay("种子商人：自己种植采集消耗5个采集石@0和5个采集碎石或者10000铜币，采集别人种植的，消耗10个采集碎石或者20000铜币，不足不能采集。")
	LuaSay("种子商人：除草消耗5个除草剂，获取一个采集石；放虫消耗5个虫子，获取一个采集碎石.")
	LuaSay("种子商人：@3初级经验种子@0采集可以获取一个初级经验卷【一小时】，种子价值5000铜币，是否购买?") 
	AddMenuItem("@7是否购买@0","")
		AddMenuItem("不买","ybzz_nob")
    	AddMenuItem("购买","ybzz_buy")
		
elseif(answer=="ybzz_nob") then
elseif(answer=="ybzz_buy") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=5000)then
		 	   LuaGive("o_seed044",1,"ybzz_buyy")
		 	   LuaGive("coin",-5000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("种子商人：铜币不足5000.")
		  end
	else
		LuaSay("种子商人:你今天购买过种子了。")
	end
-----------------------------------
elseif(answer=="ybzz_j50") then
	LuaSay("种子商人：@3力量符+50种子@0，种植地点初级，中级，高级种植场，成熟时间4小时，成熟保护期10分钟，需要采集等级1，过了保护期小心被别人采集哦。")
	LuaSay("种子商人：自己种植采集消耗5个采集石@0和5个采集碎石或者10000铜币，采集别人种植的，消耗10个采集碎石或者20000铜币，不足不能采集。")
	LuaSay("种子商人：除草消耗5个除草剂，获取一个采集石；放虫消耗5个虫子，获取一个采集碎石.")
	LuaSay("种子商人：@3力量符+50种子@0无虫子，采集5次就可以成熟，采集可以获取一个力量符+50【一小时】，种子价值1000铜币，是否购买?") 
	AddMenuItem("@7是否购买@0","")
		AddMenuItem("不买","ybzz_nobj50")
    	AddMenuItem("购买","ybzz_buyj50")
		
elseif(answer=="ybzz_nobj50") then
elseif(answer=="ybzz_buyj50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed045",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("种子商人：铜币不足1000.")
		  end
	else
		LuaSay("种子商人:你今天购买过种子了。")
	end
elseif(answer=="ybzz_jzh50") then
	LuaSay("种子商人：@3智慧符+50种子@0，种植地点初级，中级，高级种植场，成熟时间4小时，成熟保护期10分钟，需要采集等级1，过了保护期小心被别人采集哦。")
	LuaSay("种子商人：自己种植采集消耗5个采集石@0和5个采集碎石或者10000铜币，采集别人种植的，消耗10个采集碎石或者20000铜币，不足不能采集。")
	LuaSay("种子商人：除草消耗5个除草剂，获取一个采集石；放虫消耗5个虫子，获取一个采集碎石.")
	LuaSay("种子商人：@3智慧符+50种子@0无虫子，采集5次就可以成熟，采集可以获取一个智慧符+50【一小时】，种子价值1000铜币，是否购买?") 
	AddMenuItem("@7是否购买@0","")
		AddMenuItem("不买","ybzz_nobjzh50")
    	AddMenuItem("购买","ybzz_buyjzh50")
		
elseif(answer=="ybzz_nobjzh50") then
elseif(answer=="ybzz_buyjzh50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed046",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("种子商人：铜币不足1000.")
		  end
	else
		LuaSay("种子商人:你今天购买过种子了。")
	end
elseif(answer=="ybzz_jmj50") then
	LuaSay("种子商人：@3敏捷符+50种子@0，种植地点初级，中级，高级种植场，成熟时间4小时，成熟保护期10分钟，需要采集等级1，过了保护期小心被别人采集哦。")
	LuaSay("种子商人：自己种植采集消耗5个采集石@0和5个采集碎石或者10000铜币，采集别人种植的，消耗10个采集碎石或者20000铜币，不足不能采集。")
	LuaSay("种子商人：除草消耗5个除草剂，获取一个采集石；放虫消耗5个虫子，获取一个采集碎石.")
	LuaSay("种子商人：@3敏捷符+50种子@0无虫子，采集5次就可以成熟，采集可以获取一个敏捷符+50【一小时】，种子价值1000铜币，是否购买?") 
	AddMenuItem("@7是否购买@0","")
		AddMenuItem("不买","ybzz_nobjmj50")
    	AddMenuItem("购买","ybzz_buyjmj50")
		
elseif(answer=="ybzz_nobjmj50") then
elseif(answer=="ybzz_buyjmj50") then
	if(LuaQueryTask("ybzz_ev")==0) then
		 if(LuaItemCount("coin") >=1000)then
		 	   LuaGive("o_seed047",1,"ybzz_buyy")
		 	   LuaGive("coin",-1000,"")
		 	   LuaSetTask("ybzz_ev",1)
		  else
		  	  LuaSay("种子商人：铜币不足1000.")
		  end
	else
		LuaSay("种子商人:你今天购买过种子了。")
	end
-------------------------------------------
elseif(answer=="T302D") then
	if(LuaQueryTask("T302D")==0) then
		LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
		LuaSay("种子商人：想不到我卖种子也远近闻名了!")
		DelItem("o_mission076",1)
		LuaSetTask("T302D",99)
		UpdateMenu()
	end

elseif(answer=="plant_intro")then
	LuaSay("种子商人:@1想种植必须先了解种植的规矩，仔细听好了！")
	LuaSay("种子商人:植物种子说明中都有每阶段的成长时间，种下后采集会告诉你有几个阶段，成长完成后20分钟内都属于播种者。")
	--LuaSay("种子商人:如果植物还属于播种者，其它人偷采会被扣所采物品价值两倍的钱并把钱补偿给播种者，但@2播种者不在线不会得到补偿。")
	LuaSay("种子商人:植物@2成长完成20分钟后@0就不属于播种者了，别人采了@2不会扣钱@0而且@2不会给播种者补偿。")
	LuaSay("种子商人:要问为什么？呵呵，土地资源紧张，都被划去搞房地产了，每张地图最多只能种十几棵。")
	LuaSay("种子商人:如果成熟了你还占着地不采，那别人就没法种了。")
	LuaSay("种子商人:@7听明白了吗？如果没有听明白再听一遍，我的种子可是包卖不包退的。")

elseif(answer=="jrzzc") then
	AddMenuItem("种植场","")
	AddMenuItem("初级种植场1","cp1_1")
	AddMenuItem("初级种植场2","cp1_2")
	AddMenuItem("中级种植场1","cp2_1")
	AddMenuItem("中级种植场2","cp2_2")
	AddMenuItem("高级种植场1","cp3_1")	
	AddMenuItem("高级种植场2","cp3_2")
elseif(answer=="cp1_1") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant01")
	else
	LuaSay("只有本国人才能进入")
	end
elseif(answer=="cp1_2") then
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant01_2")
	else
	LuaSay("只有本国人才能进入")
	end
elseif(answer=="cp2_1")then
	local level=LuaQuery("level")
	if(level>=25 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant02")
	else
	LuaSay("25级以上的本国人才能进入")
	end
elseif(answer=="cp2_2")then
	local level=LuaQuery("level")
	if(level>=25 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant02_2")
	else
	LuaSay("25级以上的本国人才能进入")
	end
elseif(answer=="cp3_1")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant03")
	else
	LuaSay("40级以上的本国人才能进入")
	end
elseif(answer=="cp3_2")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_plant03_2")
	else
	LuaSay("40级以上的本国人才能进入")
	end


elseif(answer=="Tcoc")then---------------------商贾向背8 Tcoc===15
	if(LuaQueryTask("Tcoc")==15)then
		LuaSay("种子商人:唉,我都打算改行了,若是商会能给我提供新的商业方向,我自当加入.")
		LuaSetTask("Tcoc",16)
		LuaSetTask("T955",16)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265E") then                       -----初临建康 
			if(LuaQueryTask("T265E") ==0) then
    			LuaSay("种子商人：鄙人没什么可送你的，便赠你几颗种子吧!可去种植场种植，获得意外收获哦@!")
    			LuaSay("种子商人：什么？你不懂种植？那你可要在我这好好学学哟~在@4我这里@0便可@2传送进入种植场@0了。@!")
			LuaSetTask("T265E",99)
			UpdateMenu()
			UpdateNPCMenu("xiean")
			end

elseif(answer=="T211") then                   -------种植任务
		if(LuaQueryTask("T211") == 0) then
			LuaSay("种子商人：打开背包后，@3直接使用种子@0，种植就成功，植物成熟以后，即可进行采集。")
			LuaSay("种子商人：在植物旁边使用@3采集技能@0就可进行采集。种植需在种植场中，种植后采集@21朵茉莉花@0来给我。")
			LuaSay("种子商人：我这里有@22颗茉莉花种子@0，你到初级种植场帮我种植吧，在@3我这里可以进入种植场@0。")
			LuaSay("@5种子商人：需要特别说明一下的是，任务花种的种子和采集到的花都是在任务背包哦。你可以通过查看种子说明查看属于什么花种@!")
			LuaSay("@7温馨提示@0：如果种植场已经种满了，也可以采集别人种植的茉莉花来完成任务哦。@!完成本任务将会有丰厚的奖励！")
			LuaSetTask("T211",1)
			LuaGive("o_seed025",2)
			AddLog("种植",211)
			UpdateMenu()
			UpdateTopSay("去初级种植场种植")
		elseif(LuaQueryTask("T211") == 1) then
			if(LuaItemCount("o_mission093") >0) then
				LuaSay("种子商人：没想到你这么快就学会了种植和采集，真是前途不可限量啊")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T211jl")
			else
				LuaSay("种子商人：你还没有帮我采集到茉莉花呢，将茉莉花种植在种植场，等30分钟就可采集了")
				LuaSay("@1温馨提示：如果种植场已经种满了，也可以采集别人种植的茉莉花来完成任务哦。@!")
				if(LuaItemCount("o_seed025")==0) then
					LuaGive("o_seed025",2)
				end
			end
		elseif(LuaQueryTask("T211") == 99)then
			LuaSay("种子商人：打开背包后，@3直接使用种子@0，就种植成功，植物成熟以后，即可进行采集")
			LuaSay("种子商人：在植物傍边使用@3采集技能@0就可进行采集。种植需在种植场中，可在我这里进入种植场。")
			LuaSay("提示：该任务已完成")
		end
	elseif(answer=="T211jl")then
		if(LuaQueryTask("T211")==1) then
			if(LuaItemCount("o_mission093") >0) then
				LuaSetTask("T211",99)
				DelItem("o_mission093",LuaItemCount("o_mission093"))
				LuaAddJx("combat_exp",80000,"T211")
				LuaGive("coin",2000,"T211")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("211")
				UpdateMenu()
			end
		end

elseif(answer=="T214") then
	if(LuaQueryTask("T214") == 0) then
		LuaSay("种子商人:传说中，数以万计的商人进行过千里行商，而很多的宝物掉落在@4天涯海角@0的商路上。")
		LuaSay("种子商人:我给你一个@2铁锹@0，你去@4天涯海角@0的@3第一块指路牌@0附近，挖出宝物后来给我吧，我会给你丰厚的奖励。")
		LuaSay("种子商人:可以从@3我这里@0进行@3千里行商@0进入@4天涯海角@0地图。用@2任务背包中的铁锹@0挖宝。")
		LuaSay("@7温馨提示@0：@!完成本任务将会有丰厚的奖励！")
		LuaSetTask("T214",1)
	        LuaGive("o_mission023",1)
		AddLog("行商的宝藏【剧情】",214)
		UpdateTopSay("去天涯海角挖取行商的宝藏")
		UpdateMenu()
	elseif(LuaQueryTask("T214") == 1) then
		if(LuaItemStatusNormalCount("o_mission016")>=1)then
			LuaSay("种子商人:恩，不错！这就是我梦寐以求的行商宝藏，辛苦你了。@!")
			LuaSay("@7温馨提示@0:只要走到@4天涯海角的尽头@0见到@3幸运老人@0，再回复@3种子商人@0，完成@3千里行商@0，会有非常丰厚的奖励。去试试吧。@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T214jl")
		elseif(LuaItemStatusNormalCount("o_mission016")==0)then
			LuaSay("种子商人:你还没有得到行商宝藏，可以从@3我这里@0进行@3千里行商@0进入@4天涯海角@0地图。")
			LuaSay("种子商人:在@4天涯海角@0的@3第一块指路牌@0附近，用@2任务背包中的铁锹@0挖出宝物后来给我吧，我会给你丰厚的奖励。")
		end 
	end 

	elseif(answer=="T214jl")then
		         if(LuaQueryTask("T214")==1) then
			     LuaSetTask("T214",99)
		         LuaSetTask("214time",GetCurrentTime())
		         DelItem("o_mission016",1)
		         DelItem("o_mission023",1)
		         LuaAddJx("combat_exp",60000,"T214")
			 LuaGive("coin",2000,"T214")
		         DelLog("214")
                 UpdateMenu()
                 end
elseif(answer=="Tqlxs") then                     -----------千里行商
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("qlxsTaskday")) then
		LuaSetTask("Tqlxs",0)
		LuaSetTask("T952",0)
		LuaSetTask("Tqlxsdotime",0)
		local a=LuaItemCount("o_mission037")
		if(a>0) then
		DelItem("o_mission037",a)
		end   
	end
	local shijiancha=GetCurrentTime()-LuaQueryTask("qlxstime")
	if(shijiancha>1800 or LuaQueryTask("T214")==1) then
		if(LuaQueryTask("Tqlxs")==0) then  
			if(LuaQueryTask("Tqlxsdotime")<3) then   
				LuaSay("种子商人：听说@4天涯海角@0有一位@3幸运老人@0，他那里有很多奇珍异宝，却愿意换取我们的普通物品。")
				LuaSay("种子商人：那@4天涯海角@0实在是太过遥远，你只要帮我用这些货物换回@2夜明珠@0就可以得到高额奖励。")
				if(LuaQueryTask("Tqlxswxts")==0) then 
				LuaSay("@7温馨提示@0：天涯海角是统一ol乃至其他所有游戏中最大的地图之一。请耐心前进吧@!祝您游戏愉快！")
				end
				AddMenuItem("@7是否直接传送","")
				AddMenuItem("自己跑","myself")
				AddMenuItem("直接传送","chuansong")
			else
			LuaSay("种子商人：做人可不能太贪心了，今天我已经和幸运老人交换了3次物品，你明天再来帮我吧。")
			LuaSay("种子商人：不过你还可以去天涯海角溜达，你要去天涯海角吗@!")
			if(LuaQueryTask("huan7")==1)then
				LuaSay("种子商人：第七环完成，去回复建康城的司马元显吧@!")
				LuaSetTask("huan7",2)
				UpdateMenu()
			end
			AddMenuItem("@7是否去","")
			AddMenuItem("去","goto")
			end
     
		elseif(LuaQueryTask("Tqlxs")==1) then 	
			LuaSay("种子商人：传说中@3幸运老人@0就在@4天涯海角@0的最右边，考验你毅力的时刻到了。") 
			AddMenuItem("@7是否去","")
			AddMenuItem("去","goto")
			AddMenuItem("直接传送","chuansongyi")
		     
		elseif(LuaQueryTask("Tqlxs")==2) then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaItemCount("o_mission034")>=5) then
				LuaSay("种子商人：终于得偿所望，什么时候我能亲眼见到他老人家就好了。")
				if(LuaQueryTask("Tqlxswxts")==0) then 
					LuaSetTask("Tqlxswxts",99)
				end
				local time=GetCurrentTime()
				LuaSetTask("qlxstime",time)
				if(LuaRandom(20)==19) then
					LuaSay("提示：你人品真是太好了，得到一个@3幸运宝盒@0，快快使用吧，惊喜等着你。")
					LuaGive("o_box002",1,"Tdiaoyutg")
				end
				DelItem("o_mission034",LuaItemCount("o_mission034"))
				if(LuaQueryTask("huan7")==1)then
				LuaSay("种子商人：第七环完成，去回复建康城的司马元显吧@!")
				LuaSetTask("huan7",2)
				UpdateMenu()
				end
				local jingyan=20000+level^2*24+level*2500
				if(level<20) then 
			       LuaGive("coin",1500,"Tqlxs")
			       else
			       LuaGive("coin",2500,"Tqlxs")
			       end
				if(LuaQueryTask("bprszj") == 1 and TeamCount()>= 2) then
				LuaSay("种子商人：原来阁下已得天子密令，恭喜你为贵帮增加了一个名额！")
				LuaAddMembers(1)
				else
				LuaSetTask("bprszj",0)
				end
			LuaAddJx("combat_exp",jingyan,"Tqlxs")
			LuaSetTask("Tqlxs",0)
			DelLog("952")
			end
		end   
 else
 LuaSay("种子商人：该任务需要间隔30分钟才能继续接取。请耐心等待。@!")
 end

    elseif(answer=="chuansong") then		
	   if(LuaItemCount("o_state005j")>0) then
	   DelItem("o_state005j",1)
		LuaSetTask("Tqlxs",1) 
		LuaSetTask("T952",1) 
		AddLog("千里行商【每日】",952)
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
	   ChangeMap("lu_tyhj",32556,184)
	   elseif(LuaItemCount("o_state005")>0) then
	   LuaSay("提示：任务奖励的暴击丸无法使用，我这里只收商城的暴击丸@!")			
	   else
	   LuaSay("提示：你只需要给我一个@2金币的小暴击丸@0，就可以传送到天涯海角的的老人处。")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("提示：点击菜单后再按商店键就可打开商城，选择金币商城就好了。")
		else	
			LuaSay("提示：点击右键后再按2键就可打开商城，选择金币商城就好了。")
		end
	   end 

    elseif(answer=="chuansongyi") then		
	   if(LuaItemCount("o_state005j")>0) then
	   ChangeMap("lu_tyhj",32556,184)
	   DelItem("o_state005j",1)
	   elseif(LuaItemCount("o_state005")>0) then
	   LuaSay("提示：任务奖励的暴击丸无法使用，我这里只收商城的暴击丸@!")			
	   else
	   LuaSay("提示：你只需要给我一个@2金币的小暴击丸@0，就可以传送到天涯海角的的老人处。")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("提示：点击菜单后再按商店键就可打开商城，选择金币商城就好了。")
		else
			LuaSay("提示：点击右键后再按2键就可打开商城，选择金币商城就好了。")
		end
	   end 

	elseif(answer=="myself") then
		LuaSetTask("Tqlxs",1) 
		LuaSetTask("T952",1) 
		AddLog("千里行商【每日】",952)
		    LuaAddTask("Tqlxsdotime",1)     
		    LuaGive("o_mission037",20)
		    LuaSetTask("qlxsTaskday",GetCurrentDay())
		    ChangeMap("lu_tyhj")

	elseif(answer=="goto") then
	 ChangeMap("lu_tyhj")

--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1) then
				if(LuaQueryTask("TfindNPC_2")==1)then
					LuaSay("种子商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了国家战事的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_2",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_2")==2)then
					LuaSay("种子商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了国家战事的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_2",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("种子商人：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("种子商人：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end


elseif(answer=="Tsnpc_19")then
	if(LuaQueryTask("Tsnpc_19")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的加急信件，看上去很慌张")
		LuaSay("种子商人：我看看再说")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_19",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_19")==2)then
		LuaSay("种子商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_19")then
	if(LuaQueryTask("Tenpc_19")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，军中粮食紧缺，得需要大量的种子")
		LuaSay("种子商人：我这就加紧准备")
		LuaSetTask("Tenpc_19",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_19")==2)then
		LuaSay("种子商人：回去找你家主子领赏吧")
	end	
elseif(answer=="Tsnpc_18")then
	if(LuaQueryTask("Tsnpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的加急信件，看上去很慌张")
		LuaSay("种子商人：我先看看")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_18")==2)then
		LuaSay("种子商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_18")then
	if(LuaQueryTask("Tenpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你说他上次做了一个很奇怪的梦")
		LuaSay("种子商人：日有所思，夜有所梦，就是梦最好的解释")
		LuaSetTask("Tenpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_18")==2)then
		LuaSay("种子商人：回去找你家主子领赏吧")
	end	
elseif(answer=="QLYB") then                     -----------千里押镖
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("qlybTaskday")) then
		LuaSetTask("QLYB",0)
		LuaSetTask("qlybTaskday",GetCurrentDay())
	end
	if(LuaQueryTask("QLYB_pinzhi")==0)then
	    LuaSetTask("QLYB_pinzhi",1)
	end
	local qlyb_pinzhi=LuaQueryTask("QLYB_pinzhi")
		if(LuaQueryTask("QLYB")==0) then
				AddMenuItem("当前可接取"..(QLYB_SZ[qlyb_pinzhi][1]).."！","")
				AddMenuItem("铜币刷品质","QLYB_tongbi")
				AddMenuItem("元宝刷品质","QLYB_yuanbao")
				if(LuaQuery("VIPlv")>=5)then --vip5级享受待遇
				AddMenuItem("刷到最好品质","QLYB_yuanbaomanji")
				end
				AddMenuItem("领取镖货","QLYB_lingqu")
				AddMenuItem("进入押镖地图","QLYB_ditu")
				AddMenuItem("玩法说明","QLYB_shuoming")
				UpdateMenu()
		elseif(LuaQueryTask("QLYB")==1) then
			LuaSay("种子商人：你已经领了镖货了，快押镖过去吧！")
			AddMenuItem("已经接取"..(QLYB_SZ[qlyb_pinzhi][1]).."！","")
			AddMenuItem("进入押镖地图","QLYB_ditu")
			AddMenuItem("玩法说明","QLYB_shuoming")
			UpdateMenu()
		elseif(LuaQueryTask("QLYB")==99) then
			LuaSay("种子商人：今天你已经押镖过了，明天再来吧。")
		end
elseif(answer=="QLYB_shuoming") then ------玩法说明
	LuaSay("种子商人：押镖前可以刷镖货的品级，然后领取20个镖货(铜币刷为标准概率，元宝刷则较高概率刷出高品镖货)，走地图去交任务，路上会被劫杀！")
	LuaSay("种子商人：可抢任意级别的玩家，每天1次任务！20个镖货中，15个死亡后不会掉落，5个死亡后会掉落即：保底有75%的奖励，25%的奖励可以被人抢走！")
	LuaSay("种子商人：专门抢别人镖货的无上限，即：有可能抢到10个三品镖货，20四品镖货，50个五品镖货！")
	LuaSay("种子商人：兑换奖励时，每个品级的镖货超过20个多余部分不计算！比如：50个五品镖货，兑换奖励时按20个计算！")
elseif(answer=="QLYB_tongbi") then ------铜币刷
    local level= LuaQuery("level")
    if(LuaItemCount("coin")>=level*1000) then
        local r =LuaRandom(100)
        if(LuaQueryTask("QLYB_pinzhi")==1 and r<60)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",2)
        	LuaSay("种子商人：你的镖货品级已经达到@7二品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==2 and r<40)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",3)
        	LuaSay("种子商人：你的镖货品级已经达到@5三品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==3 and r<20)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",4)
        	LuaSay("种子商人：你的镖货品级已经达到@3四品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==4 and r<10)then
            LuaGive("coin",-1*level*1000,"QLYB")
        	LuaSetTask("QLYB_pinzhi",5)
        	LuaSay("种子商人：你的镖货品级已经达到@1五品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==5)then
            LuaSay("种子商人：你的镖货品级已经达到五品，无需在刷")
        else
         	LuaGive("coin",-1*level*1000,"QLYB")
         	LuaSay("种子商人：刷新失败，镖货品级不变！")
        end
    else
        LuaSay("种子商人：需要@3"..(level*1000).."铜币@0才能刷新镖货的品级！")
    end
elseif(answer=="QLYB_yuanbao") then
    local level= LuaQuery("level")
    if(LuaQueryMoney()>=2) then
        local r =LuaRandom(100)
        if(LuaQueryTask("QLYB_pinzhi")==1 and r<60)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("QLYB_pinzhi",2)
        	LuaSay("种子商人：减少了2元宝，你的镖货品级已经达到@7二品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==2 and r<40)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("QLYB_pinzhi",3)
        	LuaSay("种子商人：减少了2元宝，你的镖货品级已经达到@5三品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==3 and r<20)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("QLYB_pinzhi",4)
        	LuaSay("种子商人：减少了2元宝，你的镖货品级已经达到@3四品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==4 and r<10)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("QLYB_pinzhi",5)
        	LuaSay("种子商人：减少了2元宝，你的镖货品级已经达到@1五品@0！")
        elseif(LuaQueryTask("QLYB_pinzhi")==5)then
            LuaSay("种子商人：你的镖货品级已经达到五品，无需在刷")
        else
          	LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
          	LuaSay("种子商人：减少了2元宝，刷新失败，镖货品级不变！")
        end
    else
        LuaSay("种子商人：需要@32元宝@0才能刷新镖货的品级！")
    end
elseif(answer=="QLYB_yuanbaomanji") then
	if(LuaQuery("VIPlv")>=5 and LuaQueryMoney()>=30)then
     	LuaAddYB(1,-30)
     	LuaSay("减少了30元宝")
        LuaSetTask("QLYB_pinzhi",5)
	else
	    LuaSay("种子商人：需要@330元宝@0才能将镖货的品级提升到@1五品@0！")
	end
elseif(answer=="QLYB_lingqu") then
	if(LuaQueryTask("QLYB_pinzhi")==1)then
		LuaGive("o_biaohuo001",15,"QLYB")
		LuaGive("o_biaohuo002",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==2)then
		LuaGive("o_biaohuo003",15,"QLYB")
		LuaGive("o_biaohuo004",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==3)then
		LuaGive("o_biaohuo005",15,"QLYB")
		LuaGive("o_biaohuo006",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==4)then
		LuaGive("o_biaohuo007",15,"QLYB")
		LuaGive("o_biaohuo008",5,"QLYB")
	elseif(LuaQueryTask("QLYB_pinzhi")==5)then
		LuaGive("o_biaohuo009",15,"QLYB")
		LuaGive("o_biaohuo010",5,"QLYB")
	end
	LuaSetTask("QLYB",1)
	ChangeMap("lu_qlyb")
elseif(answer=="QLYB_ditu") then
	ChangeMap("lu_qlyb")

-----------------------

end
LuaSendMenu()
return 1
end

