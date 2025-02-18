NPCINFO = { 
serial="62" ,
base_name="wangzhene",
icon=2586,
NpcMove=2586,
name="王镇恶" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="乌鹊绕树何枝可依",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	local havetask4=0	--灰色问号
	local level= LuaQuery("level")
	local T513=LuaQueryTask("T513")
	local T512=LuaQueryTask("T512")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_46")==1 or LuaQueryTask("Tsnpc_46")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_46")
		if(LuaQueryTask("Tsnpc_46")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_46")==1 or LuaQueryTask("Tenpc_46")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_46")
		if(LuaQueryTask("Tenpc_46")==1)then
			havetask2=1
		end
	end
	if(T513==1 or T513==2) then
		AddTopSayMenuItem("@2十万火急【剧情】","T513")
		if(LuaQueryTask("T513")==2) then
		havetask2=1
		end
	end
	if(T512==1 or T512==2) then
		AddTopSayMenuItem("@2另觅他主【剧情】","T512")
		if(LuaQueryTask("T512")==2)then
		havetask2 =1
		end
	end
	
	if(LuaQueryTask("T302")==14 and LuaQueryTask("T302N")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302N")
		havetask2 =1
	end
	if(LuaQueryTask("T514")==1) then
		AddTopSayMenuItem("@2偷砖体验【剧情】","T514")
		if(LuaItemStatusNormalCount("o_mission212")>=1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(LuaQueryTask("T385")~=0 and LuaQueryTask("T385")~=99)  then
		AddTopSayMenuItem("@2半壁江山【循环】","T385")
		if(LuaQueryTask("T385")==1)then
		havetask4=1
		elseif(LuaQueryTask("T385")==98)then
		havetask2=1
		end
	end
--以上为黄色问号部分
	--if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	--	AddTopSayMenuItem("@8新国@0@4冲@0@3级@0@2活@0@1动@0","Newcountry")
	--end
	--[[if(LuaQueryTask("Tczfks")==0 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@7充值疯狂送@0","Tczfks")
	elseif(LuaQueryTask("Tczfks")==1 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@2充值疯狂送@0","Tczfks")
	elseif(LuaQueryTask("Tczfks")==99 and level<=50)then
		AddTopSayMenuItem("@9充值疯狂送@0","Tczfks")
	end]]
	if(level>=35)then
		AddTopSayMenuItem("@3富甲@0@5天下@0","Tfjtx")
	elseif(level>=30)then
		AddTopSayMenuItem("@2[新]@0@3富甲@0@5天下@0","Tfjtx")
	
	end
	if(level>=35)then
		AddTopSayMenuItem("@7世界寻宝【每日】@0","T515")
	elseif(level>=30)then
		AddTopSayMenuItem("@2[新]@0@7世界寻宝【每日】@0","T515")
	end
--以上为特殊部分
	if((LuaQueryTask("T385")==0 or LuaQueryTask("T385")==99) and level>=30)  then
		AddTopSayMenuItem("半壁江山【循环】","T385")
		havetask1=1
	end
	if(level>=30 and LuaQueryTask("T514")==0) then
		AddTopSayMenuItem("偷砖体验【剧情】","T514")
		havetask1=1
	end
	if(T513==0 and level>=31) then
		AddTopSayMenuItem("十万火急【剧情】","T513")
		havetask1=1
	end
	if(T512==0 and level>=32) then
		AddTopSayMenuItem("另觅他主【剧情】","T512")
		havetask1 =1
	end
--以上为黄色感叹号部分	
	AddTopSayMenuItem("@9富甲天下介绍","Tfjtx_sm")

		
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
--------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1
---------------------------------------十万火急 


------------------------------------------------
elseif(answer=="liaotian") then
	local a= floor(LuaQuery("onlinetime")/60)
	LuaSay("王镇恶；良禽择木而栖，贤臣择主而侍!")
	--LuaSay("@5测试专用：今日在线时间为"..LuaQuery("onlinetime").."秒，合计"..a.."分钟！")
		--[[DelItem("o_mission427",LuaItemCount("o_mission427"))
		DelItem("o_mission426",LuaItemCount("o_mission426"))
		DelItem("e_mission425",LuaItemCount("e_mission425"))
		DelItem("e_mission426",LuaItemCount("e_mission426"))
		DelItem("e_mission427",LuaItemCount("e_mission427"))
		DelItem("e_mission428",LuaItemCount("e_mission428"))
		DelItem("e_mission429",LuaItemCount("e_mission429"))
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		LuaDelTask("allnum")
		LuaDelTask("Refresh")--每天刷新一次
		for i=1,70,1 do --打怪掉落
			LuaDelTask("Tfjtx_mon"..i.."")
		end
		for i=1,69,1 do --送信和对话
			LuaDelTask("Tsnpc_"..i.."")
			LuaDelTask("Tenpc_"..i.."")
		end
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end]]
elseif(answer=="T514") then    -------------偷砖体验
	if(LuaQueryTask("T514")==0) then
		LuaSay("王镇恶；那个...嘿嘿，少侠你想偷砖么？本国人不能偷自己国家的砖头，只能偷别的国家的。")
		LuaSay("王镇恶；你还不知道怎么去别的国家么？先正常下线，再重新登陆，进入大区选个国家进入，然后你就会在该国家边境上线了！")
		LuaSay("王镇恶；去该国家@4洛阳城@0，找到@3国家库房总管@0，就能挖墙脚了！")
		LuaSay("王镇恶；大多数只能挖到青砖，运气好可以挖到银砖，人品爆发就能挖到金砖了！带着砖头回国，交给自己国家的@3国家库房总管@0领奖")
		LuaSay("王镇恶；回国的方法与出国相似！先正常下线，再重新登陆，进入大区选自己国家进入，然后你就会在自己国家边境上线了！")
		LuaSay("王镇恶；少侠可以试着去别的国家挖一块@3青砖@0给我，嘿嘿！")
		AddLog("偷砖体验【剧情】",514)
		LuaSetTask("T514",1)
		UpdateMenu()
	elseif(LuaQueryTask("T514")==1) then
		if(LuaItemStatusNormalCount("o_mission212")>=1)then
			if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
			LuaSay("王镇恶；少侠果然聪明，一点即通，这么快挖到一块了！嘿嘿！")
			LuaAddJx("combat_exp",330000,"T514")
			DelItem("o_mission212",1)
			LuaSetTask("T514",99)
			DelLog("514")
			UpdateMenu()
			else
			LuaSay("王镇恶；少侠果然聪明，这么快挖到一块了！不过得回国交任务！出国容易被外国人杀掉！")
			LuaSay("王镇恶；回国的方法与出国相似！先正常下线，再重新登陆，进入大区选自己国家进入，然后你就会在自己国家边境上线了！")
			end 
		else
		LuaSay("王镇恶；那个...嘿嘿，就让我再给少侠解说下吧！本国人不能偷自己国家的砖头，只能偷别的国家的。")
		LuaSay("王镇恶；你还不知道怎么去别的国家么？先正常下线，再重新登陆，进入大区选个国家进入，然后你就会在该国家边境上线了！")
		LuaSay("王镇恶；去该国家@4洛阳城@0，找到@3国家库房总管@0，就能挖墙脚了！")
		LuaSay("王镇恶；大多数只能挖到青砖，运气好可以挖到银砖，人品爆发就能挖到金砖了！带着砖头回国，交给自己国家的@3国家库房总管@0领奖")
		LuaSay("王镇恶；回国的方法与出国相似！先正常下线，再重新登陆，进入大区选自己国家进入，然后你就会在自己国家边境上线了！")
		LuaSay("王镇恶；少侠可以试着去别的国家挖一块@3青砖@0给我，嘿嘿！")
		end 
	elseif(LuaQueryTask("T514")==99) then
	LuaSay("王镇恶；少侠已经完成该体验任务了，嘿嘿！")
	end 
		
elseif(answer=="T302N") then
	   if(LuaQueryTask("T302N")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
	   LuaSay("王镇恶：有我的信，快拿来看看！")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302N",99)
	   UpdateMenu()
	   end

elseif(answer=="T513") then
	if(LuaQueryTask("T513")==0) then
		LuaSay("王镇恶；少侠来的正是时候，我这里有一件急事，需要火速报告给@3苻坚@0，少侠是否有信心完成？")
		LuaSay(""..LuaQueryStr("name").."我做事一向追求快速，定不会让阁下失望。")
		LuaSay("王镇恶；你现在马上去吧，这件事告诉@3苻坚@0，然后1分钟之内把@3苻坚@0的信息带回来给我，如果不能按时带回来给我，@2对你我都没好处@0！")
		LuaSetTask("T513",1)
		AddLog("十万火急【剧情】",513)
		local time=GetCurrentTime()
		LuaSetTask("513time",time)
		UpdateTopSay("1分钟内把苻坚的回复给我，快去吧") 
		UpdateMenu()
		UpdateNPCMenu("fujian")
	elseif(LuaQueryTask("T513")==1) then
		LuaSay("王镇恶：没想到你还偷懒啊，还没有去找@3苻坚@0啊！")
	elseif(LuaQueryTask("T513")==2) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("513time"))
		if(shijiancha<=60) then
                LuaSay("王镇恶：少侠果然神速，这么快就回来了。")
                LuaSay("王镇恶：@3苻坚@0大人的见识真是不凡，我知道怎么做了。少侠帮了我大忙了，这点东西请少侠收下！")
                AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T513jl")
                UpdateMenu()
		else
		LuaSay("王镇恶：唉，你的速度真是太慢了，我的损失太大了。我需要对你做小小的惩罚，少侠有兴趣，等一下重新来过吧")
		LuaSetTask("T513",0)
		LuaGive("coin",-100,"T513")
		LuaDelTask("513time")
		UpdateMenu()
		end
	end
		elseif(answer=="T513jl") then
		if(LuaQueryTask("T513")==2) then
			LuaGive("e_sword018",1)
			LuaAddJx("combat_exp",303000,"T513")
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",2000,"T513")
			LuaSetTask("T513",99)
			DelLog("513")
			UpdateMenu()
			end	
		
 elseif(answer=="T512") then
	if(LuaQueryTask("T512")==0) then
		LuaSay("王镇恶：如今我要另觅他主，可是不知道谁是当今贤主。")
		LuaSay(""..LuaQueryStr("name").."：据在下所知，阁下乃@3苻坚@0手下第一大将王猛之孙，曾经辅助苻坚基本统一了北方。你既然是忠良之后，为何不投奔@3苻坚@0呢?")	
		LuaSay(""..LuaQueryStr("name").."：@3苻坚@0乃当今贤主，心胸宽广，一定会不计前嫌，收留阁下的，要是你不放心的话，我可以帮阁下说服@3苻坚@0收留你。")	
		LuaSay("王镇恶：少侠真是好人，我就在这里敬候佳音。")
		LuaSetTask("T512",1)	
		AddLog("另觅他主【剧情】",512)
		UpdateMenu()
		UpdateNPCMenu("fujian")
		UpdateTopSay("帮我去说服苻坚")
	elseif(LuaQueryTask("T512")==2)then
		LuaSay(""..LuaQueryStr("name").."：阁下可以放心去投奔@3苻坚@0了，他早就盼望将军投奔他，共图大业。")
		LuaSay(" 王镇恶：哎，主公真是贤主，在下真是惭愧，日后定当效忠主公。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T512jl")
	else
		LuaSay("王镇恶：快去说服@3苻坚@0")
	end
	elseif(answer=="T512jl")then
	if(LuaQueryTask("T512")==2) then
	LuaSetTask("T512",99)
	DelLog("512")
	LuaAddJx("combat_exp",314000,"T512")--奖励
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	UpdateNPCMenu("fujian")
	end		       
		
elseif(answer=="T515")then--世界寻宝,藏宝图
local level= LuaQuery("level")
if(level>=20)then
   if(GetCurrentDay()~=LuaQueryStrTask("515Taskday")) then
      LuaSetTask("T515",0)
      LuaSetTask("515etime",0)
      LuaSetTask("515Taskday",GetCurrentDay())
   end
	if(LuaQueryTask("T515")<2) then
		if(LuaItemCount("o_cangbaotu")==0)then
		LuaSay("王镇恶：走南闯北这些年淘了不少好东西，精力都放在经商上，收到的一些@2藏宝图@0却无法兑换成实实在在的东西。")
		LuaSay("王镇恶：如今天下战乱，是为天地立心，为生民立命的时候了，拿着这些@2藏宝图@0，找到藏着的宝藏，拿它们救民于水火吧！")
		LuaSay("王镇恶：我也是个慈善家，不能不赚不是，1000铜币一张，每天我只卖2张，每次1张，挖完回来我再给你下一张。")
		LuaSay("王镇恶：当然如果你是个非常勤劳的人，经常在线，每在线时间超过3小时我会额外送1张，每天最多送出额外3张。")
		AddMenuItem("选择列表","")
		AddMenuItem("好来一张","T515ok")
		AddMenuItem("我没空跑腿","T515no")
		else
		LuaSay("王镇恶：你还没去寻宝呢，寻完一个才能寻下一个。")
		end
	else
		if(LuaQuery("onlinetime")-LuaQueryTask("515etime")>10800 and LuaQueryTask("T515")<5)then
		LuaSay("王镇恶：你是个勤劳的人，这张宝图算我送你的。")
		LuaSetTask("515etime",LuaQueryTask("515etime")+10800)
		LuaAddTask("T515",1)
		LuaGive("o_cangbaotu",1,"T515")
		else
		LuaSay("王镇恶：今天你已经领完2张藏宝图了，每在线时间超过3小时我会额外送1张,每天最多送出额外3张。")
		end
	end
else
LuaSay("王镇恶：寻宝要有足够高的历练才能行，你现在还不到20级，宝图指示的地方你都不一定去的了，还是20级后再来吧。")
 UpdateTopSay("20级后每天可以去寻宝")
end
elseif(answer=="T515ok" and LuaQueryTask("T515")  < 3 ) then
	LuaSay("王镇恶：挖到好东西回来告诉我，也让我高兴高兴。")
	if(LuaItemCount("coin")>=1000)then
		if(LuaGive("o_cangbaotu",1))then
		LuaGive("coin",-1000,"Tcangbaotu")
		LuaAddTask("T515",1)
		LuaDelTask("Tbaotu")
		else
		LuaSay("背包空间不足！")
		end
	else
		LuaSay("王镇恶：生意人做赔本生意也得收回点本呀，这宝图可不能白给，1000铜币1张！")
	end	

elseif(answer=="Newcountry")then
		AddMenuItem("@7新国冲级活动","")
		--if(LuaQueryTempStr("online")==LuaQueryStr("country_id") and (LuaQueryStr("country_id")=="ew20" or LuaQueryStr("country_id")=="ew26" or LuaQueryStr("country_id")=="ew28" or LuaQueryStr("country_id")=="ew29" or LuaQueryStr("country_id")=="ew22"))then
			--AddMenuItem("@7领取奖励","Newcountry_jl1") 
			--AddMenuItem("@5活动说明","Newcountry_sm1")
		--else
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then --类型1是只有第一名有套装奖励，类型2奖励前10名
			AddMenuItem("@5领取奖励","Newcountry_jl2")
			AddMenuItem("@5活动说明","Newcountry_sm2")
		end
elseif(answer=="Newcountry_jl1")then
	local level=LuaQuery("level")
	if(LuaQuery("quisle_count")==0)then
		if(LuaQueryTask("Newcountry")==0)then
			if(level>=40)then
				if(LuaPublicQuery("New_Number")==0)then
					if(LuaFreeBag()>=8)then
						LuaSay("王镇恶：恭喜你获得本国的第一个40级的玩家，特此系统奖励您40级套装一套")
						LuaNotice("恭喜玩家@2"..LuaQueryStr("name").."@0为本国第一位到达@340级@0的玩家，特此系统奖励40级套装一套！")
						LuaNotice("后面到达40级的玩家也可以到洛阳城王镇恶处领取奖励，先到先得哦@!")
						LuaPublicSet("New_Number",1)
						if(LuaQueryStr("class")=="shen") then      --战士
							LuaGive("e_falchion151",1,2,"Newcountry")
							LuaGive("e_shield151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="wu") then       --侠客
							LuaGive("e_sword151",1,2,"Newcountry")
							LuaGive("e_knife151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="xian") then       --谋士
							LuaGive("e_book151",1,2,"Newcountry")
							LuaGive("e_pen151",1,2,"Newcountry")
						end
						LuaGive("e_head151",1,2,"Newcountry")		--强者冠
						LuaGive("e_clothes151",1,2,"Newcountry")	--强者袍
						LuaGive("e_pants151",1,2,"Newcountry")		--强者护腿
						LuaGive("e_shoes151",1,2,"Newcountry")		--强者靴	
						LuaGive("e_earring151",1,2,"Newcountry")	--强者耳坠
						LuaGive("e_necklace151",1,2,"Newcountry")	--强者项链
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						LuaSetTask("Newcountry",98)
					else
						LuaSay("提示：必须保持8格的背包空间才能领取本国的第一的奖励哦@!")
					end
				else
					if(LuaFreeBag()>=3)then
						LuaSay("王镇恶：恭喜你到达四十级哦，这是本官给你的一点小小的奖励。")
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						local r=LuaRandom(3)
						if(r==0)then
							LuaGive("o_state012j",1,"Newcountry")------防
							LuaGive("o_state008j",1,"Newcountry")------经
						elseif(r==1)then
							LuaGive("o_state012j",1,"Newcountry")------防
							LuaGive("o_state065j",1,"Newcountry")----小血池
						elseif(r==2)then
							LuaGive("o_state001j",1,"Newcountry")------攻
							LuaGive("o_state068j",1,"Newcountry")----小魔池
						end
						LuaGive("o_box004j",2,"Newcountry") --白银宝箱
						LuaSetTask("Newcountry",99)
					else
						LuaSay("提示：必须保持3格的背包空间才能领取奖励哦")
					end
				end
			else
				if(LuaPublicQuery("New_Number")==0)then
					LuaSay("王镇恶：赶快加油哦，第一个到达本国第一个四十级的玩家本官将会奖励40级套装一套！")
				else
					
					LuaSay("王镇恶：赶快加油哦，到达四十级我将会重赏")
					LuaSay("@5温馨提示：叛国的玩家将不会得到任何的奖励哦")
				end
			end
		else
			LuaSay("王镇恶：你已经参加完了此活动并领取了奖励了哦，祝您游戏愉快！")
		end
	else
		LuaSay("王镇恶：你是叛国者，我这可不欢迎，就更没有奖励可以领取了哦")
	end
elseif(answer=="Newcountry_jl2")then
	local level=LuaQuery("level")
	if(LuaQuery("quisle_count")==0)then
		if(LuaQueryTask("Newcountry")==0)then
			if(level>=40)then
				if(LuaPublicQuery("New_Number")<10)then
					if(LuaFreeBag()>=8)then
						local a=LuaPublicQuery("New_Number")+1
						LuaSay("王镇恶：恭喜你获得本国的第"..a.."个40级的玩家，特此系统奖励您40级套装一套")
						LuaNotice("恭喜玩家@2"..LuaQueryStr("name").."@0为本国第"..a.."位到达@340级@0的玩家，特此系统奖励40级套装一套！")
						LuaNotice("后面到达40级的玩家也可以到洛阳城王镇恶处领取奖励，先到先得哦@!")
						LuaPublicAdd("New_Number",1)
						if(LuaQueryStr("class")=="shen") then      --战士
							LuaGive("e_falchion151",1,2,"Newcountry")
							LuaGive("e_shield151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="wu") then       --侠客
							LuaGive("e_sword151",1,2,"Newcountry")
							LuaGive("e_knife151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="xian") then       --谋士
							LuaGive("e_book151",1,2,"Newcountry")
							LuaGive("e_pen151",1,2,"Newcountry")
						end
						LuaGive("e_head151",1,2,"Newcountry")		--强者冠
						LuaGive("e_clothes151",1,2,"Newcountry")	--强者袍
						LuaGive("e_pants151",1,2,"Newcountry")		--强者护腿
						LuaGive("e_shoes151",1,2,"Newcountry")		--强者靴	
						LuaGive("e_earring151",1,2,"Newcountry")	--强者耳坠
						LuaGive("e_necklace151",1,2,"Newcountry")	--强者项链
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						LuaSetTask("Newcountry",98)
					else
						LuaSay("提示：必须保持8格的背包空间才能领取本国的前十的冲级奖励哦@!")
					end
				else
					if(LuaFreeBag()>=3)then
						LuaSay("王镇恶：恭喜你到达四十级哦，这是本官给你的一点小小的奖励。")
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						local r=LuaRandom(3)
						if(r==0)then
							LuaGive("o_state012j",1,"Newcountry")------防
							LuaGive("o_state008j",1,"Newcountry")------经
						elseif(r==1)then
							LuaGive("o_state012j",1,"Newcountry")------防
							LuaGive("o_state065j",1,"Newcountry")----小血池
						elseif(r==2)then
							LuaGive("o_state001j",1,"Newcountry")------攻
							LuaGive("o_state068j",1,"Newcountry")----小魔池
						end
						LuaGive("o_box004j",2,"Newcountry") --白银宝箱
						LuaSetTask("Newcountry",99)
					else
						LuaSay("提示：必须保持3格的背包空间才能领取奖励哦")
					end
				end
			else
				if(LuaPublicQuery("New_Number")==0)then
					LuaSay("王镇恶：赶快加油哦，前十个到达本国四十级的玩家本官将会奖励40级套装一套！")
				else
					
					LuaSay("王镇恶：赶快加油哦，到达四十级我将会重赏")
					LuaSay("@5温馨提示：叛国的玩家将不会得到任何的奖励哦")
				end
			end
		else
			LuaSay("王镇恶：你已经参加完了此活动并领取了奖励了哦，祝您游戏愉快！")
		end
	else
		LuaSay("王镇恶：你是叛国者，我这可不欢迎，就更没有奖励可以领取了哦")
	end
elseif(answer=="Newcountry_sm1")then
	LuaSay("王镇恶：本主公在此举行新国冲级活动，本区第一个到达四十级的玩家，将可以在我这里领取到@340级极品套装@0一套")
	LuaSay("王镇恶：没有领取到套装的玩家不要灰心。每一个参加冲级活动的玩家到达四十级也将可以在我这里海量的@3商场道具@0。")
	LuaSay("王镇恶：特别提示一下，@1叛国@0的玩家将不会得到任何的奖励哦。")
elseif(answer=="Newcountry_sm2")then
	LuaSay("王镇恶：本主公在此举行新国冲级活动，本区前十个到达四十级的玩家，将可以再我这里领取到@340级极品套装@0一套")
	LuaSay("王镇恶：没有领取到套装的玩家不要灰心。每一个参加冲级活动的玩家到达四十级也将可以再我这里海量的@3商场道具@0。")
	LuaSay("王镇恶：特别提示一下，@1叛国@0的玩家将不会得到任何的奖励哦。")




elseif(answer=="Tczfks")then
	local level= LuaQuery("level")
	if(level<30)then
		LuaSay("王镇恶：当你到达30级之后才能接取此任务哦，赶快升级吧@!")
		LuaSay("王镇恶：只要你累计充值达到500元宝就能够获得@1经验88万@0、@188888铜@0、@1+60级套装@0随机一件")
		LuaSay("王镇恶：还在等什么呢，心动不如行动 ，快快升级吧")
	else

		if(LuaQueryTask("Tczfks")==0)then
			LuaSay("王镇恶：你只需要充值500元宝，便可以来我这领取丰厚的奖励哦@!")
			LuaSay("王镇恶：其中包括银宝箱中的@160+套装（绑定）@0一件、@1经验88万@0、@188888铜@0，还能获得@3豪爽君子@0的称号。")
			LuaSay("王镇恶：心动不如行动，赶快去充值，然后来找我领取奖励吧@!")
			LuaSetTask("Tczfks",1)
			UpdateMenu()
		elseif(LuaQueryTask("Tczfks")==1)then
			if(LuaRechargeQuery(3,"Tcz201201001")=="1")then
				if(LuaFreeBag()>=1)then
					LuaSay("恭喜你完成充值疯狂送任务，获得白银宝箱中的@160+套装@0一件、@1经验88万@0、@188888铜@0，并且获得@3豪爽君子@0（一天使用期限）的称号@!")
					LuaGive("coin",88888,"Tczfks")		--铜币
					LuaAddJx("combat_exp",880000,"Tczfks")	--经验
					re=LuaRandom(7)				--装备
					SetTitleMeg(103)			--称号
					if(re==0)then
						LuaGive("e_head154",1,2,"Tczfks")
					elseif(re==1)then
						LuaGive("e_clothes154",1,2,"Tczfks")
					elseif(re==2)then
						LuaGive("e_pants154",1,2,"Tczfks")
					elseif(re==3)then
						LuaGive("e_shoes154",1,2,"Tczfks")
					elseif(re==4)then
						LuaGive("e_earring154",1,2,"Tczfks")
					elseif(re==5)then
						LuaGive("e_necklace154",1,2,"Tczfks")
					elseif(re==6)then
						if(LuaQueryStr("class")=="shen") then
							LuaGive("e_falchion154",1,2,"Tczfks")	
						elseif(LuaQueryStr("class")=="wu") then
							LuaGive("e_sword154",1,2,"Tczfks")
						elseif(LuaQueryStr("class")=="xian") then
							LuaGive("e_pen154",1,2,"Tczfks")
						end
					elseif(re==7)then
						if(LuaQueryStr("class")=="shen") then
							LuaGive("e_shield154",1,2,"Tczfks")	
						elseif(LuaQueryStr("class")=="wu") then
							LuaGive("e_knife154",1,2,"Tczfks")
						elseif(LuaQueryStr("class")=="xian")then
							LuaGive("e_book154",1,2,"Tczfks")
						end
					end
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0完成@3充值疯狂送@0的任务，获得了一大堆的奖励，大家快去抢啊")
					LuaRechargeSet(3,"Tcz201201001")
					LuaSetTask("Tczfks",99)
					UpdateMenu()
				else
					LuaSay("提示：请保留至少一格的背包空位哦，不然奖励物品可能因为你背包空间不足而丢失哦@!")
				end
			else
				LuaSay("王镇恶：你只需要充值500元宝，便可以来我这领取丰厚的奖励哦@!")
				LuaSay("王镇恶：其中包括银宝箱中的@160+套装@0一件、@1经验88万@0、@188888铜@0，还能获得@3豪爽君子@0的称号。")
				LuaSay("王镇恶：心动不如行动，赶快去充值，然后来找我领取奖励吧@!")
			end
		else
			LuaSay("你已经完成了了充值疯狂送的任务了哦，一个账号只能做一次此任务哦@!")
			LuaSay("你也可以推荐你的朋友来完成此任务，只要累计充值达到500元宝就能够获得@1经验88万@0、@188888铜@0、@1+60级套装@0随机一件")
		end
	end



elseif(answer=="Tsnpc_46")then
	if(LuaQueryTask("Tsnpc_46")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("王镇恶：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_46",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_46")==2)then
		LuaSay("王镇恶：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_46")then
	if(LuaQueryTask("Tenpc_46")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("王镇恶：这都是大人的功劳啊")
		LuaSetTask("Tenpc_46",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_46")==2)then
		LuaSay("王镇恶：话已经带到了，快回去领取奖励吧")
	end

-->>>富甲天下开始


elseif(answer=="Tfjtx")then

if(LuaQuery("level")>=30)then
	if(LuaQueryStrTask("Tfjtxday")~=GetCurrentDay()) then --删除前一天的所有数据
		DelItem("o_mission427",LuaItemCount("o_mission427"))
		DelItem("o_mission426",LuaItemCount("o_mission426"))
		DelItem("e_mission425",LuaItemCount("e_mission425"))
		DelItem("e_mission426",LuaItemCount("e_mission426"))
		DelItem("e_mission427",LuaItemCount("e_mission427"))
		DelItem("e_mission428",LuaItemCount("e_mission428"))
		DelItem("e_mission429",LuaItemCount("e_mission429"))
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		LuaDelTask("allnum")
		LuaDelTask("Refresh")--每天刷新一次
		for i=1,70,1 do --打怪掉落
			LuaDelTask("Tfjtx_mon"..i.."")
		end
		for i=1,69,1 do --送信和对话
			LuaDelTask("Tsnpc_"..i.."")
			LuaDelTask("Tenpc_"..i.."")
		end
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end
		LuaSay("王镇恶：富甲天下新增奖励类型选择，每天你都有一次免费的机会选择哦，例如你选择了铜币模式，那么任务的奖励将会是铜币，不选择默认为经验模式。")
		LuaSay("王镇恶：如果您再同一天还想再次转换模式，你只需要花费一通宝，便可以获得一次转换奖励模式的机会哦，选择模式请点击@9富甲天下介绍@0")
	end
	if(LuaQueryTask("task1")==99 and LuaQueryTask("task2")==99 and LuaQueryTask("task3")==99 and LuaQueryTask("task4")==99 and LuaQueryTask("task5")==99)then
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end
		UpdateMenu()	
	end
	local allnum=LuaQueryTask("allnum") + 1		--allnum	总次数
	local roundnum=floor(allnum/5) + 1		--roundnum	总环数
	if(LuaQueryTask("Tfjtx")==0)then
		LuaSay("富甲兴天下，有钱就能养小三@!*这是你今天的@A第@3"..roundnum.."@0环@A")
		LuaSetTask("Tfjtxday",GetCurrentDay())
		local r=LuaRandom(15)
		local j=1
		AddMenuItem("@7富甲天下","")
		for i=1,5,1 do
			local r=LuaRandom(15)
			LuaSetTask("color"..j.."",r)
			if(r==0)then --紫@2、黄@3、蓝@5、绿@7、白
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@2杀暴安良","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@2夺回物资","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@2驿站小吏","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@2千里传音","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@2探听虚实","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@2招兵买马","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@2收集军资","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==1 or r==2)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@3杀暴安良","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@3夺回物资","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@3驿站小吏","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@3千里传音","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@3探听虚实","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@3招兵买马","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@3收集军资","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==3 or r==4 or r==5)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@5杀暴安良","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@5夺回物资","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@5驿站小吏","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@5千里传音","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@5探听虚实","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@5招兵买马","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@5收集军资","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==6 or r==7 or r==8 or r==9)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@7杀暴安良","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@7夺回物资","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@7驿站小吏","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@7千里传音","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@7探听虚实","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@7招兵买马","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@7收集军资","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			else
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("杀暴安良","task"..j.."")
				elseif(type==2)then
					AddMenuItem("夺回物资","task"..j.."")
				elseif(type==3)then
					AddMenuItem("驿站小吏","task"..j.."")
				elseif(type==4)then
					AddMenuItem("千里传音","task"..j.."")
				elseif(type==5)then
					AddMenuItem("探听虚实","task"..j.."")
				elseif(type==6)then
					AddMenuItem("招兵买马","task"..j.."")
				elseif(type==7)then
					AddMenuItem("收集军资","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			end
			j=j+1
		end
		LuaSetTask("Tfjtx",1)
		UpdateMenu()
	elseif(LuaQueryTask("Tfjtx")==1)then
		local type1=LuaQueryTask("type1")
		local type2=LuaQueryTask("type2")
		local type3=LuaQueryTask("type3")
		local type4=LuaQueryTask("type4")
		local type5=LuaQueryTask("type5")
		--local color1=LuaQueryTask("color1")
		--local twocolor=LuaQueryTask("twocolor")
		--local threecolor=LuaQueryTask("threecolor")
		--local fourcolor=LuaQueryTask("fourcolor")
		--local fivecolor=LuaQueryTask("fivecolor")
		local j=1
		AddMenuItem("@7任务进行中第@0@A@3"..roundnum.."@0@A@7环","")
		for i=1,5,1 do
			local r=LuaQueryTask("color"..j.."")
			if(r==0)then --紫@2、黄@3、蓝@5、绿@7、白
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@2杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@2夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@2驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@2千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@2探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@2招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@2收集军资","task"..j.."")
				end
			elseif(r==1 or r==2)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@3杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@3夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@3驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@3千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@3探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@3招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@3收集军资","task"..j.."")
				end
			elseif(r==3 or r==4 or r==5)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@5杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@5夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@5驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@5千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@5探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@5招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@5收集军资","task"..j.."")
				end
			elseif(r==6 or r==7 or r==8 or r==9)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@7杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@7夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@7驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@7千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@7探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@7招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@7收集军资","task"..j.."")
				end
			elseif(r==99)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@9杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@9夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@9驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@9千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@9探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@9招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@9收集军资","task"..j.."")
				end
			else
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("杀暴安良","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("夺回物资","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("驿站小吏","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("千里传音","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("探听虚实","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("招兵买马","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("收集军资","task"..j.."")
				end
			end
			j=j+1
		end	
	end	
else
	LuaSay("提示：当你到达30级之后就能接取此任务了，加油升级吧！")
end
-- 以上是菜单部分


elseif(answer=="task1")then--紫@2、黄@3、蓝@5、绿@7、白
--LuaSay("第一个任务"..LuaQueryTask("task1").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task1")==0)then
		if(LuaQueryTask("type1")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task1type1col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：当朝战争泛滥，常有怪物出没危害人民生活，你去@4"..coldata[2].."@0去击杀@3"..coldata[4].."@0只@2"..coldata[3].."@0吧，以保卫当地的安全！")
			LuaSetTask(coldata[5],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task1type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：怪物很是猖獗，最近@4"..coldata[2].."@0的@2"..coldata[3].."@0偷走了我的@2"..coldata[5].."@0，就有劳少侠去帮我找回来，必有重赏!")
			LuaSetTask(coldata[4],1) --给怪物编号
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task1type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：这是内部信件，你将它交给@4"..coldata[2].."@0的@3"..coldata[3].."@0，可不要弄丢了哦@!")
			LuaGive("o_mission426",1)--富甲天下
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task1type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：最近战事吃紧，信件也不是那么安全，还是活人比较安全，你去给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话，……%￥#￥…&(&…")
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task1type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你拿着这个信号烟火，到@4"..coldata[2].."@0去燃放，通知所有军队集结，将会有下一步的安排")
			LuaGive("e_mission425",1)--信号烟火
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task1type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你的任务是寻找一个与@3"..r.."级@0相差不到5级的玩家并一同组队前来找我")
			LuaSay("王镇恶：比如找和41级相差不到5级的玩家，那么你找到36-47等级的任意玩家便可完成任务")
			LuaSetTask("task1level",r)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type1")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task1type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶："..coldata[5].."，你去帮我收集@2"..coldata[4].."个"..coldata[3].."@0后来向我回复！")
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		end
		LuaSetTask("task1",1)
		UpdateMenu()
	elseif(LuaQueryTask("task1")==1)then
			if(LuaQueryTask("type1")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type1col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[5]) --怪物计数器
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type1col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去去"..coldata[2].."去击杀"..coldata[4].."只"..coldata[3].."，任务还未完成")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type1")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task1type2col"))}
				if(LuaItemCount("o_mission427")>=1)then --破碎剑柄
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是从@4"..coldata[2].."@0的@2"..coldata[3].."@0身上找回我的@2"..coldata[5].."@0，任务还未完成")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
						
				end
			elseif(LuaQueryTask("type1")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是将我给你的信件送给@4"..coldata[2].."@0的@3"..coldata[3].."@0，你还未完成哦")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
						
				end
			elseif(LuaQueryTask("type1")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task1type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话&…………&%&（）））……￥，你还未完成哦")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
						
				end
			elseif(LuaQueryTask("type1")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask("task1type5map")
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是到@4"..coldata[2].."@0去燃放@2信号烟火@0,集结军队，任务还未完成")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
						
				end
			
			elseif(LuaQueryTask("type1")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type6col"))}
				local Teamlevel=LuaQueryTask("task1level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
						LuaDelTask(coldata[6]) --任务颜色
						LuaSetTask("task1",99)
						LuaSetTask("color1",99)
						LuaDelTask("task1type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，任务还未完成")
						if(LuaQueryTask("color1")==0)then 
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
						elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
						elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
						elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
						else
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
						end
					end
				else
					LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我@!")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type1")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去帮我收集@2"..coldata[4].."个"..coldata[3].."@0，你还未完成")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			end
	elseif(LuaQueryTask("task1")==99)then
		LuaSay("提示：你已经完成该任务，当五个任务都完成之后新的任务菜单将会自动刷新")
	end







elseif(answer=="task2")then
	--LuaSay("第二个任务"..LuaQueryTask("task2").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task2")==0)then
		if(LuaQueryTask("type2")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task2type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：当朝战争泛滥，常有怪物出没危害人民生活，你去@4"..coldata[2].."@0去击杀@3"..coldata[4].."@0只@2"..coldata[3].."@0吧，以保卫当地的安全！")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")

			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task2type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：怪物很是猖獗，最近@4"..coldata[2].."@0的@2"..coldata[3].."@0偷走了我的@2"..coldata[5].."@0，就有劳少侠去帮我找回来，必有重赏!")
			LuaSetTask(coldata[4],1) --给怪物编号
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task2type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：这是内部信件，你将它交给@4"..coldata[2].."@0的@3"..coldata[3].."@0，可不要弄丢了哦@!")
			LuaGive("o_mission426",1)--富甲天下
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task2type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：最近战事吃紧，信件也不是那么安全，还是活人比较安全，你去给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话，……%￥#￥…&(&…")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task2type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你拿着这个信号烟火，到@4"..coldata[2].."@0去燃放，通知所有军队集结，将会有下一步的安排")
			LuaGive("e_mission426",1)--信号烟火
			LuaSetTask("task2type5map",coldata[3])--保存地图名称
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task2type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你的任务是寻找一个与@3"..r.."级@0相差不到5级的玩家并一同组队前来找我")
			LuaSay("王镇恶：比如找和41级相差不到5级的玩家，那么你找到36-47等级的任意玩家便可完成任务")
			LuaSetTask("task2level",r)
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type2")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task2type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶："..coldata[5].."，你去帮我收集@2"..coldata[4].."个"..coldata[3].."@0后来向我回复！")
			if(LuaQueryTask("color2")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		end
		LuaSetTask("task2",1)
		UpdateMenu()
	elseif(LuaQueryTask("task2")==1)then	
			if(LuaQueryTask("type2")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type2col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[5]) --怪物计数器
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去去"..coldata[2].."去击杀"..coldata[4].."只"..coldata[3].."，任务还未完成")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type2")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task2type2col"))}
				if(LuaItemCount("o_mission427")==1)then --破碎剑柄
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是从@4"..coldata[2].."@0的@2"..coldata[3].."@0身上找回我的@2"..coldata[5].."@0，任务还未完成")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type2")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是将我给你的信件送给@4"..coldata[2].."@0的@3"..coldata[3].."@0，你还未完成哦")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type2")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task2type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话..........，你还未完成哦")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type2")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask("task2type5map")
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是到@4"..coldata[2].."@0去燃放@2信号烟火@0,集结军队，任务还未完成")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			
			elseif(LuaQueryTask("type2")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type6col"))}
				local Teamlevel=LuaQueryTask("task2level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --任务颜色
						LuaSetTask("task2",99)
						LuaSetTask("color2",99)
						LuaDelTask("task2type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，任务还未完成")
						if(LuaQueryTask("color2")==0)then 
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
						elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
						elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
						elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
						else
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
						end
					end
				else
					LuaSay("提示：你的任务是寻找一个与@3"..LuaQueryTask(coldata[2]).."级@0相差不到5级的玩家并一同组队前来找我，你连队伍都没有，怎么完成任务呢@!")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type2")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去帮我收集@2"..coldata[4].."个"..coldata[3].."@0，你还未完成")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			end
	elseif(LuaQueryTask("task2")==99)then
		LuaSay("提示：你已经完成该任务，当五个任务都完成之后新的任务菜单将会自动刷新")
	end
elseif(answer=="task3")then
	--LuaSay("第三个任务"..LuaQueryTask("task3").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task3")==0)then
		if(LuaQueryTask("type3")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task3type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：当朝战争泛滥，常有怪物出没危害人民生活，你去@4"..coldata[2].."@0去击杀@3"..coldata[4].."@0只@2"..coldata[3].."@0吧，以保卫当地的安全！")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task3type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：怪物很是猖獗，最近@4"..coldata[2].."@0的@2"..coldata[3].."@0偷走了我的@2"..coldata[5].."@0，就有劳少侠去帮我找回来，必有重赏!")
			LuaSetTask(coldata[4],1) --给怪物编号
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task3type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：这是内部信件，你将它交给@4"..coldata[2].."@0的@3"..coldata[3].."@0，可不要弄丢了哦@!")
			LuaGive("o_mission426",1)--富甲天下
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task3type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：最近战事吃紧，信件也不是那么安全，还是活人比较安全，你去给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话，……%￥#￥")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task3type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你拿着这个信号烟火，到@4"..coldata[2].."@0去燃放，通知所有军队集结，将会有下一步的安排")
			LuaGive("e_mission427",1)--信号烟火
			LuaSetTask("task3type5map",coldata[3])--保存地图名称
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task3type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你的任务是寻找一个与@3"..r.."级@0相差不到5级的玩家并一同组队前来找我")
			LuaSay("王镇恶：比如找和41级相差不到5级的玩家，那么你找到36-47等级的任意玩家便可完成任务")
			LuaSetTask("task3level",r)
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type3")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task3type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶："..coldata[5].."，你去帮我收集@2"..coldata[4].."个"..coldata[3].."@0后来向我回复！")
			if(LuaQueryTask("color3")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		end
		LuaSetTask("task3",1)
		UpdateMenu()
	elseif(LuaQueryTask("task3")==1)then
			if(LuaQueryTask("type3")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type3col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[5]) --怪物计数器
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去去"..coldata[2].."去击杀"..coldata[4].."只"..coldata[3].."，任务还未完成")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type3")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task3type2col"))}
				if(LuaItemCount("o_mission427")==1)then --破碎剑柄
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是从@4"..coldata[2].."@0的@2"..coldata[3].."@0身上找回我的@2"..coldata[5].."@0，任务还未完成")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type3")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是将我给你的信件送给@4"..coldata[2].."@0的@3"..coldata[3].."@0，你还未完成哦")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type3")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task3type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话..........，你还未完成哦")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type3")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask("task3type5map")
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是到@4"..coldata[2].."@0去燃放@2信号烟火@0,集结军队，任务还未完成")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			
			elseif(LuaQueryTask("type3")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type6col"))}
				local Teamlevel=LuaQueryTask("task3level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --任务颜色
						LuaSetTask("task3",99)
						LuaSetTask("color3",99)
						LuaDelTask("task3type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，任务还未完成")
						if(LuaQueryTask("color3")==0)then 
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
						elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
						elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
						elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
						else
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
						end
					end
				else
					LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，你连队伍都没有，怎么完成任务呢@!")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type3")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去帮我收集@2"..coldata[4].."个"..coldata[3].."@0，你还未完成")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			end
	elseif(LuaQueryTask("task3")==99)then
		LuaSay("提示：你已经完成该任务，当五个任务都完成之后新的任务菜单将会自动刷新")
	end
elseif(answer=="task4")then
	--LuaSay("第四个任务"..LuaQueryTask("task4").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task4")==0)then
		if(LuaQueryTask("type4")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task4type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：当朝战争泛滥，常有怪物出没危害人民生活，你去@4"..coldata[2].."@0去击杀@3"..coldata[4].."@0只@2"..coldata[3].."@0吧，以保卫当地的安全！")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task4type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：怪物很是猖獗，最近@4"..coldata[2].."@0的@2"..coldata[3].."@0偷走了我的@2"..coldata[5].."@0，就有劳少侠去帮我找回来，必有重赏!")
			LuaSetTask(coldata[4],1) --给怪物编号
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task4type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：这是内部信件，你将它交给@4"..coldata[2].."@0的@3"..coldata[3].."@0，可不要弄丢了哦@!")
			LuaGive("o_mission426",1)--富甲天下
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task4type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：最近战事吃紧，信件也不是那么安全，还是活人比较安全，你去给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话，……%￥#￥")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task4type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你拿着这个信号烟火，到@4"..coldata[2].."@0去燃放，通知所有军队集结，将会有下一步的安排")
			LuaGive("e_mission428",1)--信号烟火
			LuaSetTask("task4type5map",coldata[3])--保存地图名称
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task4type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你的任务是寻找一个与@3"..r.."级@0相差不到5级的玩家并一同组队前来找我")
			LuaSay("王镇恶：比如找和41级相差不到5级的玩家，那么你找到36-47等级的任意玩家便可完成任务")
			LuaSetTask("task4level",r)
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type4")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task4type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶："..coldata[5].."，你去帮我收集@2"..coldata[4].."个"..coldata[3].."@0后来向我回复！")
			if(LuaQueryTask("color4")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
				LuaSay("@1任务颜色：@3黄")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
				LuaSay("@1任务颜色：@5蓝")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		end
		LuaSetTask("task4",1)
		UpdateMenu()
	elseif(LuaQueryTask("task4")==1)then
			if(LuaQueryTask("type4")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type4col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[5]) --怪物计数器
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去去"..coldata[2].."去击杀"..coldata[4].."只"..coldata[3].."，任务还未完成")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type4")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task4type2col"))}
				if(LuaItemCount("o_mission427")==1)then --破碎剑柄
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是从@4"..coldata[2].."@0的@2"..coldata[3].."@0身上找回我的@2"..coldata[5].."@0，任务还未完成")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type4")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是将我给你的信件送给@4"..coldata[2].."@0的@3"..coldata[3].."@0，你还未完成哦")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type4")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task4type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话..........，你还未完成哦")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type4")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask("task4type5map")
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是到@4"..coldata[2].."@0去燃放@2信号烟火@0,集结军队，任务还未完成")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			
			elseif(LuaQueryTask("type4")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type6col"))}
				local Teamlevel=LuaQueryTask("task4level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --任务颜色
						LuaSetTask("task4",99)
						LuaSetTask("color4",99)
						LuaDelTask("task4type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，任务还未完成")
						if(LuaQueryTask("color4")==0)then 
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
						elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
						elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
						elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
						else
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
						end
					end
				else
					LuaSay("提示：你的任务是寻找一个与@3"..LuaQueryTask(coldata[2]).."级@0相差不到5级的玩家并一同组队前来找我，你连队伍都没有，怎么完成任务呢@!")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type4")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去帮我收集@2"..coldata[4].."个"..coldata[3].."@0，你还未完成")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			end
	elseif(LuaQueryTask("task4")==99)then
		LuaSay("提示：你已经完成该任务，当五个任务都完成之后新的任务菜单将会自动刷新")
	end
elseif(answer=="task5")then
	--LuaSay("第五个任务"..LuaQueryTask("task5").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task5")==0)then
		if(LuaQueryTask("type5")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task5type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：当朝战争泛滥，常有怪物出没危害人民生活，你去@4"..coldata[2].."@0去击杀@3"..coldata[4].."@0只@2"..coldata[3].."@0吧，以保卫当地的安全！")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task5type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：怪物很是猖獗，最近@4"..coldata[2].."@0的@2"..coldata[3].."@0偷走了我的@2"..coldata[5].."@0，就有劳少侠去帮我找回来，必有重赏!")
			LuaSetTask(coldata[4],1) --给怪物编号
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task5type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：这是内部信件，你将它交给@4"..coldata[2].."@0的@3"..coldata[3].."@0，可不要弄丢了哦@!")
			LuaGive("o_mission426",1)--富甲天下
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task5type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：最近战事吃紧，信件也不是那么安全，还是活人比较安全，你去给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话，……%￥#￥")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task5type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你拿着这个信号烟火，到@4"..coldata[2].."@0去燃放，通知所有军队集结，将会有下一步的安排")
			LuaGive("e_mission429",1)--信号烟火
			LuaSetTask("task5type5map",coldata[3])--保存地图名称
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task5type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶：你的任务是寻找一个与@3"..r.."级@0相差不到5级的玩家并一同组队前来找我")
			LuaSay("王镇恶：比如找和41级相差不到5级的玩家，那么你找到36-47等级的任意玩家便可完成任务")
			LuaSetTask("task5level",r)
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		elseif(LuaQueryTask("type5")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task5type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("王镇恶："..coldata[5].."，你去帮我收集@2"..coldata[4].."个"..coldata[3].."@0后来向我回复！")
			if(LuaQueryTask("color5")==0)then   --保存任务的颜色，以确定任务奖励的多少 
				LuaSetTask(coldata[6],5)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
			end
		end
		LuaSetTask("task5",1)
		UpdateMenu()
	elseif(LuaQueryTask("task5")==1)then
			if(LuaQueryTask("type5")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type5col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[5]) --怪物计数器
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去去"..coldata[2].."去击杀"..coldata[4].."只"..coldata[3].."，任务还未完成")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type5")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task5type2col"))}
				if(LuaItemCount("o_mission427")==1)then --破碎剑柄
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是从@4"..coldata[2].."@0的@2"..coldata[3].."@0身上找回我的@2"..coldata[5].."@0，任务还未完成")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type5")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是将我给你的信件送给@4"..coldata[2].."@0的@3"..coldata[3].."@0，你还未完成哦")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type5")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task5type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是给@4"..coldata[2].."@0的@3"..coldata[3].."@0捎话..........，你还未完成哦")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type5")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					LuaDelTask(coldata[4])
					LuaDelTask("task5type5map")
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是到@4"..coldata[2].."@0去燃放@2信号烟火@0,集结军队，任务还未完成")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			
			elseif(LuaQueryTask("type5")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type6col"))}
				local Teamlevel=LuaQueryTask("task5level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --任务颜色
						LuaSetTask("task5",99)
						LuaSetTask("color5",99)
						LuaDelTask("task5type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，任务还未完成")
						if(LuaQueryTask("color5")==0)then 
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
						elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
						elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
						elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
						else
							LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
						end
					end
				else
					LuaSay("提示：你的任务是寻找一个与@3"..Teamlevel.."级@0相差不到5级的玩家并一同组队前来找我，你连队伍都没有，怎么完成任务呢@!")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			elseif(LuaQueryTask("type5")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("恭喜你完成了今天的第@3"..a.."@0次任务了")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --任务颜色
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1提示：你的任务是去帮我收集@2"..coldata[4].."个"..coldata[3].."@0，你还未完成")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@2紫")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@3黄")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@5蓝")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0@7绿")
					else
						LuaSay("@1任务难度：@0@3"..coldata[7].."@0*@1任务颜色：@0白")
					end
				end
			end
	elseif(LuaQueryTask("task5")==99)then
		LuaSay("提示：你已经完成该任务，当五个任务都完成之后新的任务菜单将会自动刷新")
	end

elseif(answer=="Tfjtx_sm")then---紫@2、黄@3、蓝@5、绿@7、白
	LuaSay("此任务每次列表将为你显示5个任务，任务共分为5种颜色，@2紫色@0、@3黄色@0、@5蓝色@0、@7绿色@0、白色")
	LuaSay("@2紫色@0任务经验最高，@3黄色@0次之，白色最低，当然经验不光与任务的颜色有关，还和任务难度玩家等级相关。")
	LuaSay("任务列表里的任务完成之后会显示@9灰色@0，五个任务全部完成之后任务菜单会自动刷新，进行下一轮。")
	--LuaSay("全新刷新任务列表服务已经开启，你只需要使用一颗毁天灭地丸，就可以刷新任务列表颜色了哦。")
	LuaSay("全新任务奖励机制，只要你做的多，装备、宠物、坐骑、无所不有，更有机会获得合成书。")
	LuaSay("全新任务奖励选择模式也已经开启，带着你的队友一起来统一OL吧")
	if(LuaQueryTask("Refresh")==0)then
		AddMenuItem("@7奖励模式","")
		AddMenuItem("经验模式","Tfjtx_jytype")
		AddMenuItem("铜币模式","Tfjtx_tbtype")
	else
		LuaSay("提示：你今天已经转换过了奖励模式")
	end


elseif(answer=="Tfjtx_jytype")then --经验模式 0
	LuaDelTask("Refresh")
	LuaSay("@1提示：您选择了经验模式，再次点击菜单即可开始任务")
elseif(answer=="Tfjtx_tbtype")then --经验模式 0
	LuaSetTask("Refresh",1)
	LuaSay("@1提示：您选择了铜币模式，再次点击菜单即可开始任务")

--富甲天下结束

--半壁江山循环开始
elseif(answer=="T385")then
	local level= LuaQuery("level")
	if(LuaQueryStrTask("T385day")~=GetCurrentDay() or LuaQueryTask("T385hour")~=GetCurrentHour())then
		LuaDelTask("T385")
		LuaDelTask("T385num")
		LuaSay("@5提示：不是在本小时接任务，任务自动重置")
		UpdateMenu()
	end

	if(TeamCount()==2)then
		if(LuaQueryTask("T385num")<=10)then
			if(TeamQuery("level")>=30)then
				if(TeamQueryTask("T385num")<=10)then
					if(LuaQueryTask("T385")==0 or LuaQueryTask("T385")==99)then
						if(LuaQueryTask("T385hour")~=GetCurrentHour() or LuaQueryStrTask("T385day")~=GetCurrentDay())then
							if(TeamQueryTask("T385")==0 or TeamQueryTask("T385")==99)then
								coldata={AutoSearchTask_NPC(0)}
								LuaSetTask("T385col",coldata[1])
								LuaSay("王镇恶：我清剿乱贼多年，现在胜局在握，你将这副@2"..coldata[4].."@0交给"..coldata[2].."的"..coldata[3].."吧，让他也了解下如今的战场局势。")
								LuaSay("王镇恶：同时我也会将@2"..coldata[5].."@0交给你的队友让他与你一同送去，"..coldata[3].."看到上下卷之后你就可以来找我领取奖励了哦")
								LuaGive(coldata[6],1)
								LuaSetTask("T385S",1)
								LuaSetTask(coldata[8],1)
								LuaSetTask("T385",1)
								LuaSetTask("T385day",GetCurrentDay())
								LuaSetTask("T385hour",GetCurrentHour())
								UpdateMenu()
							elseif(TeamQueryTask("T385")==1)then
								if(TeamQueryTask("T385S")==1)then
									coldata1={AutoSearchTask_NPC(TeamQueryTask("T385col"))}
									LuaSetTask("T385col",coldata1[1])
									LuaSay("王镇恶：我清剿乱贼多年，现在胜局在握，你将这副@2"..coldata1[5].."@0交给给"..coldata1[2].."的"..coldata1[3].."吧。。")
									LuaSay("王镇恶：我已经将上卷交给了你的队友，你和他一同送到"..coldata1[3].."那里去，"..coldata1[3].."看到上下卷之后你就可以来找我领取奖励了哦")
									LuaGive(coldata1[7],1)
									LuaSetTask("T385X",1)
									LuaSetTask(coldata1[8],2)
									LuaSetTask("T385",1)
									LuaSetTask("T385day",GetCurrentDay())
									LuaSetTask("T385hour",GetCurrentHour())
									UpdateMenu()
								elseif(TeamQueryTask("T385X")==1)then
									coldata1={AutoSearchTask_NPC(TeamQueryTask("T385col"))}
									LuaSetTask("T385col",coldata1[1])
									LuaSay("王镇恶：我清剿乱贼多年，现在胜局在握，你将这副@2"..coldata1[4].."@0交给"..coldata1[2].."的"..coldata1[3].."吧，让他也了解下如今的战场局势。")
									LuaSay("王镇恶：我已经将@2"..coldata1[5].."@0交给你的队友让他与你一同送去，"..coldata1[3].."看到上下卷之后你就可以来找我领取奖励了哦")
									LuaGive(coldata1[6],1)
									LuaSetTask("T385S",1)
									LuaSetTask(coldata1[8],1)
									LuaSetTask("T385",1)
									LuaSetTask("T385day",GetCurrentDay())
									LuaSetTask("T385hour",GetCurrentHour())
								end
							else
								LuaSay("提示：你的队友已经在和别人做这个任务了，你可以提醒他放弃当前的任务，再同你一起接取，放弃任务不计任务次数哦@!")
							end
						else
							LuaSay("王镇恶：该任务一小时只能做一次，请在@2"..LuaQueryTask("T385hour").."点@0之后再来接取哦")
						end
					elseif(LuaQueryTask("T385")==1)then
						coldata2={AutoSearchTask_NPC(LuaQueryTask("T385col"))}
						if(LuaQueryTask(coldata2[8])==1)then
							LuaSay("王镇恶：将@2江山画卷[上]@0给"..coldata2[2].."的"..coldata2[3].."送去，这可是机密，事不宜迟，赶快动身吧")
						elseif(LuaQueryTask(coldata2[8])==2)then
							LuaSay("王镇恶：将@2江山画卷[下]@0给"..coldata2[2].."的"..coldata2[3].."送去，这可是机密，事不宜迟，赶快动身吧")
						end
						AddMenuItem("@7任务选项","")
						AddMenuItem("@7继续任务","T385_jixu")
						AddMenuItem("@1放弃任务","T385_fangqi")

					elseif(LuaQueryTask("T385")==98)then
						if(TeamQueryTask("T385")>=98 or TeamQueryTask("T385")==99)then
							LuaSay("王镇恶：做的好，你们将江山画卷都送到了，我就放心了@!")
							AddMenuItem("@7领取奖励","")
							AddMenuItem("@7领取奖励","T385_jl")
						elseif(TeamQueryTask("T385")<98)then
							LuaSay("王镇恶：赶快让你队友把剩下的一部分送去你们才能领取奖励哦@!")
							LuaSay("王镇恶：或者是因为你上次组队的队友以及离队，你可以选择放弃任务，在重新接取，本次放弃任务不计任务完成次数！")
							AddMenuItem("@7任务选项","")
							AddMenuItem("@7继续任务","T385_jixu")
							AddMenuItem("@1放弃任务","T385_fangqi")
						end	
					elseif(LuaQueryTask("T385")==99)then
						LuaSay("王镇恶：你的队友还未领取任务奖励哦！")
					elseif(LuaQueryTask("T385")==100)then
					LuaSetTask("T385",0)
					end
				else
					LuaSay("王镇恶：今天你的队友已经做了10次该任务了哦，另外找个朋友来一起做吧@!")	
				end
			else
				LuaSay("王镇恶：你的队友没有达到接取此任务的等级条件")
			end
		
		else
			LuaSay("王镇恶：今天你已经做了10次该任务了哦，歇歇明天再来吧@!")
		end
	else
		LuaSay("王镇恶：此任务需要两人组队才能接取和完成哦")
	end
	elseif(answer=="T385_jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		local coldata={AutoSearchTask_NPC(LuaQueryTask("T385col"))}
			if(LuaQueryTask("T385")==98)then
				LuaDelTask(coldata[8])
				local jingyan=(78818+level^2*20)
				LuaGive("coin",2000,"T385")
				LuaAddTask("T385num",1)
				LuaAddJx("combat_exp",jingyan,"T385")
				LuaSetTask("T385",99)
				LuaDelTask("T385S")
				LuaDelTask("T385X")
				if(QueryAllTeamMemberTaskSuccess("T385",99)==1)then
					SetAllTeamMemberValueTask("T385",0)
				end
				UpdateMenu()
			end

	elseif(answer=="T385_jixu")then
		LuaSay("王镇恶：你选择了继续任务，完成之后有高额的奖励哦")
	elseif(answer=="T385_fangqi")then
		LuaSay("王镇恶：你选择了放弃任务")
		DelItem("o_mission417",LuaItemStatusNormalCount("o_mission417"))
		DelItem("o_mission418",LuaItemStatusNormalCount("o_mission418"))
		LuaDelTask("T385")
		UpdateMenu()

end
LuaSendMenu()
return 1
end 


function AutoFind(type,level,collection)
task={}
tasknum="fjtx"
task={} --task[编号]={ID,"地图名","怪物",杀怪数,计数器,color}
task[1]={1,"迷雾之林","土甲虫",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
task[2]={2,"迷雾之林","土甲虫",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
task[3]={3,"迷雾之林","土甲虫",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
--↑↑       0~10
task[4]={4,"建康东郊","金蛊",10,"task_kill/mon_007/T"..tasknum.."","color",1.2}
task[5]={5,"五斗山","青狼",10,"task_kill/mon_010/T"..tasknum.."","color",1.2}
task[6]={6,"五斗山","天师匪兵",10,"task_kill/mon_011/T"..tasknum.."","color",1.2}
task[7]={7,"山寨","天师教徒",10,"task_kill/mon_012/T"..tasknum.."","color",1.2}
task[8]={8,"山寨","彩鹫",10,"task_kill/mon_013/T"..tasknum.."","color",1.3}
task[9]={9,"山寨","彩鹫",10,"task_kill/mon_013/T"..tasknum.."","color",1.3}
task[10]={10,"山寨地牢","赤蛛",10,"task_kill/mon_014/T"..tasknum.."","color",1.3}
task[11]={11,"山寨地牢","天师守卫",10,"task_kill/mon_015/T"..tasknum.."","color",1.3}
--↑↑       10~20
task[12]={12,"北府军营","北府锤兵",12,"task_kill/mon_016/T"..tasknum.."","color",1.3}
task[13]={13,"军营前哨","北府精锐",12,"task_kill/mon_019/T"..tasknum.."","color",1.3}
task[14]={14,"军营前哨","愚民",12,"task_kill/mon_020/T"..tasknum.."","color",1.3}
task[15]={15,"淝水之滨","淝水鳄",13,"task_kill/mon_021/T"..tasknum.."","color",1.3}
task[16]={16,"淝水之滨","穴居蛛",13,"task_kill/mon_022/T"..tasknum.."","color",1.3}
task[17]={17,"淝水对岸","青水虫",13,"task_kill/mon_023/T"..tasknum.."","color",1.3}
task[18]={18,"淝水对岸","碧水蛟",13,"task_kill/mon_024/T"..tasknum.."","color",1.3}
--↑↑       20~30
task[19]={19,"洛阳郊外","氐族哨兵",15,"task_kill/mon_025/T"..tasknum.."","color",1.3}
task[20]={20,"洛阳郊外","鬃毛熊",15,"task_kill/mon_026/T"..tasknum.."","color",1.3}
task[21]={21,"渭水之滨","氐族战士",15,"task_kill/mon_027/T"..tasknum.."","color",1.3}
task[22]={22,"渭水之滨","嚎兽",15,"task_kill/mon_028/T"..tasknum.."","color",1.3}
task[23]={23,"西蜀竹林","竹节怪",15,"task_kill/mon_029/T"..tasknum.."","color",1.3}
task[24]={24,"西蜀竹林","竹叶妖",15,"task_kill/mon_030/T"..tasknum.."","color",1.3}
task[25]={25,"食人谷","噬龙",15,"task_kill/mon_031/T"..tasknum.."","color",1.3}
task[26]={26,"食人谷","骷髅",15,"task_kill/mon_032/T"..tasknum.."","color",1.3}
task[27]={27,"白骨洞","尸虫",16,"task_kill/mon_033/T"..tasknum.."","color",1.3}
task[28]={28,"白骨洞","修罗兵",16,"task_kill/mon_034/T"..tasknum.."","color",1.3}
--↑↑       30~40
task[29]={29,"太行古径","穷奇",20,"task_kill/mon_035/T"..tasknum.."","color",1.3}
task[30]={30,"太行古径","金纹巨灵",20,"task_kill/mon_036/T"..tasknum.."","color",1.3}
task[31]={31,"太行山谷","绿石人",20,"task_kill/mon_037/T"..tasknum.."","color",1.3}
task[32]={32,"太行山谷","太行古猿",20,"task_kill/mon_038/T"..tasknum.."","color",1.3}
task[33]={33,"陷落关口","霸虎",20,"task_kill/mon_046/T"..tasknum.."","color",1.3}
task[34]={34,"陷落关口","夜叉",20,"task_kill/mon_047/T"..tasknum.."","color",1.3}
--↑↑       40~50
task[35]={35,"参合坡","龙兵",25,"task_kill/mon_039/T"..tasknum.."","color",1.3}
task[36]={36,"参合坡","蟾卒",25,"task_kill/mon_040/T"..tasknum.."","color",1.3}
task[37]={37,"参合坡","象帅",25,"task_kill/mon_041/T"..tasknum.."","color",1.3}
task[38]={38,"燕王陵","鬼火",25,"task_kill/mon_042/T"..tasknum.."","color",1.3}
task[39]={39,"燕王陵","蝠灵",25,"task_kill/mon_043/T"..tasknum.."","color",1.3}
task[40]={40,"地下陵墓","毒僵尸",25,"task_kill/mon_044/T"..tasknum.."","color",1.3}
task[41]={41,"地下陵墓","血僵尸",25,"task_kill/mon_045/T"..tasknum.."","color",1.3}
task[42]={42,"关外","巨蹄",28,"task_kill/mon_048/T"..tasknum.."","color",1.3}
task[43]={43,"关外","草原熊",28,"task_kill/mon_049/T"..tasknum.."","color",1.3}
--↑↑       50~60
task[44]={44,"云中郊外","鲜卑蛮兵",30,"task_kill/mon_050/T"..tasknum.."","color",1.3}
task[45]={45,"云中郊外","龙蝎",30,"task_kill/mon_051/T"..tasknum.."","color",1.3}
task[46]={46,"古战场","鲜卑精锐",33,"task_kill/mon_052/T"..tasknum.."","color"}
task[47]={47,"古战场","战熊",33,"task_kill/mon_053/T"..tasknum.."","color",1.3}
task[48]={48,"古战场","战熊",33,"task_kill/mon_053/T"..tasknum.."","color",1.3}
task[49]={49,"契丹部落","冰魔狼",35,"task_kill/mon_055/T"..tasknum.."","color",1.3}
task[50]={50,"契丹部落","战争兽",35,"task_kill/mon_056/T"..tasknum.."","color",1.3}
task[51]={51,"沙漠绿洲","沙暴",35,"task_kill/mon_054/T"..tasknum.."","color",1.3}
task[52]={52,"沙漠绿洲","砂鼹",35,"task_kill/mon_064/T"..tasknum.."","color",1.3}
--↑↑       60~70
task[53]={53,"沙漠迷宫","沙虫",35,"task_kill/mon_057/T"..tasknum.."","color",1.3}
task[54]={54,"沙漠迷宫","沙魁",35,"task_kill/mon_058/T"..tasknum.."","color",1.3}
task[55]={55,"漠北大荒","荒原兽",35,"task_kill/mon_059/T"..tasknum.."","color",1.3}
task[56]={56,"漠北大荒","大荒猬",35,"task_kill/mon_060/T"..tasknum.."","color",1.3}
task[57]={57,"柔然领地","柔然拳将",35,"task_kill/mon_061/T"..tasknum.."","color",1.3}
task[58]={58,"柔然领地","天师邪兵",35,"task_kill/mon_062/T"..tasknum.."","color",1.3}
task[59]={59,"极西走廊","獠龙",35,"task_kill/mon_065/T"..tasknum.."","color",1.3}
task[60]={60,"极西走廊","剑蜥",35,"task_kill/mon_066/T"..tasknum.."","color",1.3}
task[61]={61,"匈奴王庭","匈奴力士",35,"task_kill/mon_067/T"..tasknum.."","color",1.3}
task[62]={62,"匈奴王庭","匈奴萨满",35,"task_kill/mon_068/T"..tasknum.."","color",1.3}
--↑↑       70~80
task[63]={63,"巫魂山","巫魂",35,"task_kill/mon_069/T"..tasknum.."","color",1.3}
task[64]={64,"巫魂山","巫山老妖",35,"task_kill/mon_070/T"..tasknum.."","color",1.3}
task[65]={65,"魍魉塔一层","魍魉",35,"task_kill/mon_071/T"..tasknum.."","color",1.3}
task[66]={66,"魍魉塔一层","血犀",35,"task_kill/mon_072/T"..tasknum.."","color",1.3}
--↑↑       80~90
task[67]={67,"魍魉塔二层","地龙",38,"task_kill/mon_073/T"..tasknum.."","color",1.3}
task[68]={68,"魍魉塔二层","猩红炎魔",38,"task_kill/mon_074/T"..tasknum.."","color",1.3}
task[69]={69,"魔王殿","魔人格霸",38,"task_kill/mon_075/T"..tasknum.."","color",1.3}
task[70]={70,"魔王殿","双头魔龙",38,"task_kill/mon_076/T"..tasknum.."","color",1.3}
--↑↑      90~ 
--打怪掉落物品部分
task[71]={71,"迷雾之林","土甲虫","Tfjtx_mon1","破碎剑柄","color",1.4}
task[72]={72,"迷雾之林","土甲虫","Tfjtx_mon2","破碎剑柄","color",1.4}
task[73]={73,"迷雾之林","土甲虫","Tfjtx_mon3","破碎剑柄","color",1.4}
--↑↑       0~10
task[74]={74,"建康东郊","金蛊","Tfjtx_mon4","破碎剑柄","color",1.4}
task[75]={75,"五斗山","青狼","Tfjtx_mon5","破碎剑柄","color",1.4}
task[76]={76,"五斗山","天师匪兵","Tfjtx_mon6","破碎剑柄","color",1.4}
task[77]={77,"山寨","天师教徒","Tfjtx_mon7","破碎剑柄","color",1.4}
task[78]={78,"山寨","彩鹫","Tfjtx_mon8","破碎剑柄","color",1.4}
task[79]={79,"山寨","彩鹫","Tfjtx_mon9","破碎剑柄","color",1.4}
task[80]={80,"山寨地牢","赤蛛","Tfjtx_mon10","破碎剑柄","color",1.4}
task[81]={81,"山寨地牢","天师守卫","Tfjtx_mon11","破碎剑柄","color",1.4}
--↑↑       10~20
task[82]={82,"北府军营","北府锤兵","Tfjtx_mon12","破碎剑柄","color",1.4}
task[83]={83,"军营前哨","北府精锐","Tfjtx_mon13","破碎剑柄","color",1.4}
task[84]={84,"军营前哨","愚民","Tfjtx_mon14","破碎剑柄","color",1.4}
task[85]={85,"淝水之滨","淝水鳄","Tfjtx_mon15","破碎剑柄","color",1.4}
task[86]={86,"淝水之滨","穴居蛛","Tfjtx_mon16","破碎剑柄","color",1.4}
task[87]={87,"淝水对岸","青水虫","Tfjtx_mon17","破碎剑柄","color",1.4}
task[88]={88,"淝水对岸","碧水蛟","Tfjtx_mon18","破碎剑柄","color",1.4}
--↑↑       20~30
task[89]={89,"洛阳郊外","氐族哨兵","Tfjtx_mon19","破碎剑柄","color",1.4}
task[90]={90,"洛阳郊外","鬃毛熊","Tfjtx_mon20","破碎剑柄","color",1.4}
task[91]={91,"渭水之滨","氐族战士","Tfjtx_mon21","破碎剑柄","color",1.4}
task[92]={92,"渭水之滨","嚎兽","Tfjtx_mon22","破碎剑柄","color",1.4}
task[93]={93,"西蜀竹林","竹节怪","Tfjtx_mon23","破碎剑柄","color",1.4}
task[94]={94,"西蜀竹林","竹叶妖","Tfjtx_mon24","破碎剑柄","color",1.4}
task[95]={95,"食人谷","噬龙","Tfjtx_mon25","破碎剑柄","color",1.4}
task[96]={96,"食人谷","骷髅","Tfjtx_mon26","破碎剑柄","color",1.4}
task[97]={97,"白骨洞","尸虫","Tfjtx_mon27","破碎剑柄","color",1.4}
task[98]={98,"白骨洞","修罗兵","Tfjtx_mon28","破碎剑柄","color",1.4}
--↑↑       30~40
task[99]={99,"太行古径","穷奇","Tfjtx_mon29","破碎剑柄","color",1.4}
task[100]={100,"太行古径","金纹巨灵","Tfjtx_mon30","破碎剑柄","color",1.4}
task[101]={101,"太行山谷","绿石人","Tfjtx_mon31","破碎剑柄","color",1.4}
task[102]={102,"太行山谷","太行古猿","Tfjtx_mon32","破碎剑柄","color",1.4}
task[103]={103,"陷落关口","霸虎","Tfjtx_mon33","破碎剑柄","color",1.4}
task[104]={104,"陷落关口","夜叉","Tfjtx_mon34","破碎剑柄","color",1.4}
--↑↑       40~50
task[105]={105,"参合坡","龙兵","Tfjtx_mon35","破碎剑柄","color",1.4}
task[106]={106,"参合坡","蟾卒","Tfjtx_mon36","破碎剑柄","color",1.4}
task[107]={107,"参合坡","象帅","Tfjtx_mon37","破碎剑柄","color",1.4}
task[108]={108,"燕王陵","鬼火","Tfjtx_mon38","破碎剑柄","color",1.4}
task[109]={109,"燕王陵","蝠灵","Tfjtx_mon39","破碎剑柄","color",1.4}
task[110]={110,"地下陵墓","毒僵尸","Tfjtx_mon40","破碎剑柄","color",1.4}
task[111]={111,"地下陵墓","血僵尸","Tfjtx_mon41","破碎剑柄","color",1.4}
task[112]={112,"关外","巨蹄","Tfjtx_mon42","破碎剑柄","color",1.4}
task[113]={113,"关外","草原熊","Tfjtx_mon43","破碎剑柄","color",1.4}
--↑↑       50~60
task[114]={114,"云中郊外","鲜卑蛮兵","Tfjtx_mon44","破碎剑柄","color"}
task[115]={115,"云中郊外","龙蝎","Tfjtx_mon45","破碎剑柄","color",1.4}
task[116]={116,"古战场","鲜卑精锐","Tfjtx_mon46","破碎剑柄","color",1.4}
task[117]={117,"古战场","战熊","Tfjtx_mon47","破碎剑柄","color",1.4}
task[118]={118,"古战场","战熊","Tfjtx_mon47","破碎剑柄","color",1.4}
task[119]={119,"契丹部落","冰魔狼","Tfjtx_mon49","破碎剑柄","color",1.4}
task[120]={120,"契丹部落","战争兽","Tfjtx_mon50","破碎剑柄","color",1.4}
task[121]={121,"沙漠绿洲","沙暴","Tfjtx_mon51","破碎剑柄","color",1.4}
task[122]={122,"沙漠绿洲","砂鼹","Tfjtx_mon52","破碎剑柄","color",1.4}
--↑↑       60~70
task[123]={123,"沙漠迷宫","沙虫","Tfjtx_mon53","破碎剑柄","color",1.4}
task[124]={124,"沙漠迷宫","沙魁","Tfjtx_mon54","破碎剑柄","color",1.4}
task[125]={125,"漠北大荒","荒原兽","Tfjtx_mon55","破碎剑柄","color",1.4}
task[126]={126,"漠北大荒","大荒猬","Tfjtx_mon56","破碎剑柄","color",1.4}
task[127]={127,"柔然领地","柔然拳将","Tfjtx_mon57","破碎剑柄","color",1.4}
task[128]={128,"柔然领地","天师邪兵","Tfjtx_mon58","破碎剑柄","color",1.4}
task[5129]={129,"极西走廊","獠龙","Tfjtx_mon59","破碎剑柄","color",1.4}
task[130]={130,"极西走廊","剑蜥","Tfjtx_mon60","破碎剑柄","color",1.4}
task[131]={131,"匈奴王庭","匈奴力士","Tfjtx_mon61","破碎剑柄","color",1.4}
task[132]={132,"匈奴王庭","匈奴萨满","Tfjtx_mon62","破碎剑柄","color",1.4}
--↑↑       70~80
task[133]={133,"巫魂山","巫魂","Tfjtx_mon63","破碎剑柄","color",1.4}
task[134]={134,"巫魂山","巫山老妖","Tfjtx_mon64","破碎剑柄","color",1.4}
task[135]={135,"魍魉塔一层","魍魉","Tfjtx_mon65","破碎剑柄","color",1.4}
task[136]={136,"魍魉塔一层","血犀","Tfjtx_mon66","破碎剑柄","color",1.4}
--↑↑       80~90
task[137]={137,"魍魉塔二层","地龙","Tfjtx_mon67","破碎剑柄","color",1.4}
task[138]={138,"魍魉塔二层","猩红炎魔","Tfjtx_mon68","破碎剑柄","color",1.4}
task[139]={139,"魔王殿","魔人格霸","Tfjtx_mon69","破碎剑柄","color",1.4}
task[140]={140,"魔王殿","双头魔龙","Tfjtx_mon70","破碎剑柄","color",1.4}
--↑↑      90~ 
--task[141]={141,"地图名","NPC名称",任务标记,物品名称,color}

task[141]={141,"桃源径","冉闵","Tsnpc_1","富甲天下","color",1.1}
task[142]={142,"桃源村","老村长","Tsnpc_2","富甲天下","color",1.1}
task[143]={143,"桃源村","浣衣娘","Tsnpc_3","富甲天下","color",1.1}
task[144]={144,"桃源村","孟铁匠","Tsnpc_4","富甲天下","color",1.1}
task[145]={145,"迷雾之林","田伍长","Tsnpc_5","富甲天下","color",1.1}
task[146]={146,"迷雾之林","士兵甲","Tsnpc_6","富甲天下","color",1.1}
task[147]={147,"迷雾之林","王主簿","Tsnpc_7","富甲天下","color",1.1}
task[148]={148,"建康南郊","守城士兵","Tsnpc_8","富甲天下","color",1.1}
task[149]={149,"建康城","渔翁","Tsnpc_9","富甲天下","color",1.1}
task[150]={150,"建康城","副本使者","Tsnpc_10","富甲天下","color",1.1}
task[151]={151,"建康城","晋清公主","Tsnpc_11","富甲天下","color",1.1}
task[152]={152,"建康城","钱庄掌柜","Tsnpc_12","富甲天下","color",1.1}
task[153]={153,"建康城","司马元显","Tsnpc_13","富甲天下","color",1.1}
task[154]={154,"建康城","司马元显","Tsnpc_14","富甲天下","color",1.1}
task[155]={155,"建康城","活动使者","Tsnpc_15","富甲天下","color",1.1}
task[156]={156,"建康城","驯兽师","Tsnpc_16","富甲天下","color",1.1}
task[157]={157,"建康城","行脚商人","Tsnpc_17","富甲天下","color",1.1}
task[158]={158,"建康城","种子商人","Tsnpc_18","富甲天下","color",1.1}
task[159]={159,"建康城南","种子商人","Tsnpc_19","富甲天下","color",1.1}
task[160]={160,"建康城南","防具商人","Tsnpc_20","富甲天下","color",1.1}
task[161]={161,"建康城南","武器商人","Tsnpc_21","富甲天下","color",1.1}
task[162]={162,"建康城南","饰品商人","Tsnpc_22","富甲天下","color",1.1}
task[163]={163,"建康城南","药品商人","Tsnpc_23","富甲天下","color",1.1}
task[164]={164,"建康城南","谢安","Tsnpc_24","富甲天下","color",1.1}
task[165]={165,"建康城南","刘裕","Tsnpc_25","富甲天下","color",1.1}
task[166]={166,"宫殿","晋帝","Tsnpc_26","富甲天下","color",1.1}
task[167]={167,"宫殿","司马道子","Tsnpc_27","富甲天下","color",1.1}
task[168]={168,"宫殿","战争使者","Tsnpc_28","富甲天下","color",1.1}
task[169]={169,"建康东郊","桓冲","Tsnpc_29","富甲天下","color",1.1}
task[170]={170,"建康东郊","王恭","Tsnpc_30","富甲天下","color",1.1}
task[171]={171,"五斗山","桓玄","Tsnpc_31","富甲天下","color",1.1}
task[172]={172,"五斗山","天师教徒","Tsnpc_32","富甲天下","color",1.1}
task[173]={173,"山寨","孙恩","Tsnpc_33","富甲天下","color",1.1}
task[174]={174,"山寨","谢道韫","Tsnpc_34","富甲天下","color",1.1}
task[175]={175,"山寨地牢","王凝之","Tsnpc_35","富甲天下","color",1.1}
task[176]={176,"北府军营","谢玄","Tsnpc_36","富甲天下","color",1.1}
task[177]={177,"北府军营","比武使者","Tsnpc_37","富甲天下","color",1.1}
task[178]={178,"北府军营","驿站小吏","Tsnpc_38","富甲天下","color",1.1}
task[179]={179,"军营前哨","谢琰","Tsnpc_39","富甲天下","color",1.1}
task[180]={180,"淝水之滨","何谦","Tsnpc_40","富甲天下","color",1.1}
task[181]={181,"淝水之滨","刘牢之","Tsnpc_41","富甲天下","color",1.1}
task[182]={182,"淝水对岸","朱序","Tsnpc_42","富甲天下","color",1.1}
task[183]={183,"洛阳郊外","难民","Tsnpc_43","富甲天下","color",1.1}
task[184]={184,"洛阳郊外","苻融","Tsnpc_44","富甲天下","color",1.1}
task[185]={185,"洛阳城","苻坚","Tsnpc_45","富甲天下","color",1.1}
task[186]={186,"洛阳城","王镇恶","Tsnpc_46","富甲天下","color",1.1}
task[187]={187,"洛阳城","防具商人","Tsnpc_47","富甲天下","color",1.1}
task[188]={188,"洛阳城","武器商人","Tsnpc_48","富甲天下","color",1.1}
task[189]={189,"洛阳城","饰品商人","Tsnpc_49","富甲天下","color",1.1}
task[190]={190,"洛阳城","药品商人","Tsnpc_50","富甲天下","color",1.1}
task[191]={191,"渭水之滨","姚苌","Tsnpc_51","富甲天下","color",1.1}
task[192]={192,"渭水之滨","张氏","Tsnpc_52","富甲天下","color",1.1}
task[193]={193,"西蜀竹林","乞伏国仁","Tsnpc_53","富甲天下","color",1.1}
task[194]={194,"西蜀竹林","乞伏国仁","Tsnpc_54","富甲天下","color",1.1}
task[195]={195,"食人谷","羯族巫师","Tsnpc_55","富甲天下","color",1.1}
task[196]={196,"洛城废墟","陶渊明","Tsnpc_56","富甲天下","color",1.1}
task[197]={197,"陷落关口","拓拔仪","Tsnpc_57","富甲天下","color",1.1}
task[198]={198,"陷落关口","汉族老翁","Tsnpc_58","富甲天下","color",1.1}
task[199]={199,"太行古径","慕容垂","Tsnpc_59","富甲天下","color",1.1}
task[200]={200,"太行古径","慕容麟","Tsnpc_60","富甲天下","color",1.1}
task[201]={201,"太行山谷","石越","Tsnpc_61","富甲天下","color",1.1}
task[202]={202,"参合坡","浑太后","Tsnpc_62","富甲天下","color",1.1}
task[203]={203,"参合坡","慕容评","Tsnpc_63","富甲天下","color",1.1}
task[204]={204,"中山城","侍者","Tsnpc_64","富甲天下","color",1.1}
task[205]={205,"中山城","燕王","Tsnpc_65","富甲天下","color",1.1}
task[206]={206,"中山城","杂货商","Tsnpc_66","富甲天下","color",1.1}
task[207]={207,"燕王陵","守墓老人","Tsnpc_67","富甲天下","color",1.1}
task[208]={208,"关外","崔宏","Tsnpc_68","富甲天下","color",1.1}
task[209]={209,"云中城","拓跋圭","Tsnpc_69","富甲天下","color",1.1}

--task[141]={141,"地图名","NPC名称",任务标记,,color}

task[210]={210,"桃源径","冉闵","Tenpc_1","物品名称","color",1.1}
task[211]={211,"桃源村","老村长","Tenpc_2","物品名称","color",1.1}
task[212]={212,"桃源村","浣衣娘","Tenpc_3","物品名称","color",1.1}
task[213]={213,"桃源村","孟铁匠","Tenpc_4","物品名称","color",1.1}
task[214]={214,"迷雾之林","田伍长","Tenpc_5","物品名称","color",1.1}
task[215]={215,"迷雾之林","士兵甲","Tenpc_6","物品名称","color",1.1}
task[216]={216,"迷雾之林","王主簿","Tenpc_7","物品名称","color",1.1}
task[217]={217,"建康南郊","守城士兵","Tenpc_8","物品名称","color",1.1}
task[218]={218,"建康城","渔翁","Tenpc_9","物品名称","color",1.1}
task[219]={219,"建康城","副本使者","Tenpc_10","物品名称","color",1.1}
task[220]={220,"建康城","晋清公主","Tenpc_11","物品名称","color",1.1}
task[221]={221,"建康城","钱庄掌柜","Tenpc_12","物品名称","color",1.1}
task[222]={222,"建康城","司马元显","Tenpc_13","物品名称","color",1.1}
task[223]={223,"建康城","司马元显","Tenpc_14","物品名称","color",1.1}
task[224]={224,"建康城","活动使者","Tenpc_15","物品名称","color",1.1}
task[225]={225,"建康城","驯兽师","Tenpc_16","物品名称","color",1.1}
task[226]={226,"建康城","行脚商人","Tenpc_17","物品名称","color",1.1}
task[227]={227,"建康城","种子商人","Tenpc_18","物品名称","color",1.1}
task[228]={228,"建康城南","种子商人","Tenpc_19","物品名称","color",1.1}
task[229]={229,"建康城南","防具商人","Tenpc_20","物品名称","color",1.1}
task[230]={230,"建康城南","武器商人","Tenpc_21","物品名称","color",1.1}
task[231]={231,"建康城南","饰品商人","Tenpc_22","物品名称","color",1.1}
task[232]={232,"建康城南","药品商人","Tenpc_23","物品名称","color",1.1}
task[233]={233,"建康城南","谢安","Tenpc_24","物品名称","color",1.1}
task[234]={234,"建康城南","刘裕","Tenpc_25","物品名称","color",1.1}
task[235]={235,"宫殿","晋帝","Tenpc_26","物品名称","color",1.1}
task[236]={236,"宫殿","司马道子","Tenpc_27","物品名称","color",1.1}
task[237]={237,"宫殿","战争使者","Tenpc_28","物品名称","color",1.1}
task[238]={238,"建康东郊","桓冲","Tenpc_29","物品名称","color",1.1}
task[239]={239,"建康东郊","王恭","Tenpc_30","物品名称","color",1.1}
task[240]={240,"五斗山","桓玄","Tenpc_31","物品名称","color",1.1}
task[241]={241,"五斗山","天师教徒","Tenpc_32","物品名称","color",1.1}
task[242]={242,"山寨","孙恩","Tenpc_33","物品名称","color",1.1}
task[243]={243,"山寨","谢道韫","Tenpc_34","物品名称","color",1.1}
task[244]={244,"山寨地牢","王凝之","Tenpc_35","物品名称","color",1.1}
task[245]={245,"北府军营","谢玄","Tenpc_36","物品名称","color",1.1}
task[246]={246,"北府军营","比武使者","Tenpc_37","物品名称","color",1.1}
task[247]={247,"北府军营","驿站小吏","Tenpc_38","物品名称","color",1.1}
task[248]={248,"军营前哨","谢琰","Tenpc_39","物品名称","color",1.1}
task[249]={249,"淝水之滨","何谦","Tenpc_40","物品名称","color",1.1}
task[250]={250,"淝水之滨","刘牢之","Tenpc_41","物品名称","color",1.1}
task[251]={251,"淝水对岸","朱序","Tenpc_42","物品名称","color",1.1}
task[252]={252,"洛阳郊外","难民","Tenpc_43","物品名称","color",1.1}
task[253]={253,"洛阳郊外","苻融","Tenpc_44","物品名称","color",1.1}
task[254]={254,"洛阳城","苻坚","Tenpc_45","物品名称","color",1.1}
task[255]={255,"洛阳城","王镇恶","Tenpc_46","物品名称","color",1.1}
task[256]={256,"洛阳城","防具商人","Tenpc_47","物品名称","color",1.1}
task[257]={257,"洛阳城","武器商人","Tenpc_48","物品名称","color",1.1}
task[258]={258,"洛阳城","饰品商人","Tenpc_49","物品名称","color",1.1}
task[259]={259,"洛阳城","药品商人","Tenpc_50","物品名称","color",1.1}
task[260]={260,"渭水之滨","姚苌","Tenpc_51","物品名称","color",1.1}
task[261]={261,"渭水之滨","张氏","Tenpc_52","物品名称","color",1.1}
task[262]={262,"西蜀竹林","乞伏国仁","Tenpc_53","物品名称","color",1.1}
task[263]={263,"西蜀竹林","乞伏国仁","Tenpc_54","物品名称","color",1.1}
task[264]={264,"食人谷","羯族巫师","Tenpc_55","物品名称","color",1.1}
task[265]={265,"洛城废墟","陶渊明","Tenpc_56","物品名称","color",1.1}
task[266]={266,"陷落关口","拓拔仪","Tenpc_57","物品名称","color",1.1}
task[267]={267,"陷落关口","汉族老翁","Tenpc_58","物品名称","color",1.1}
task[268]={268,"太行古径","慕容垂","Tenpc_59","物品名称","color",1.1}
task[269]={269,"太行古径","慕容麟","Tenpc_60","物品名称","color",1.1}
task[270]={270,"太行山谷","石越","Tenpc_61","物品名称","color",1.1}
task[271]={271,"参合坡","浑太后","Tenpc_62","物品名称","color",1.1}
task[272]={272,"参合坡","慕容评","Tenpc_63","物品名称","color",1.1}
task[273]={273,"中山城","侍者","Tenpc_64","物品名称","color",1.1}
task[274]={274,"中山城","燕王","Tenpc_65","物品名称","color",1.1}
task[275]={275,"中山城","杂货商","Tenpc_66","物品名称","color",1.1}
task[276]={276,"燕王陵","守墓老人","Tenpc_67","物品名称","color",1.1}
task[277]={277,"关外","崔宏","Tenpc_68","物品名称","color",1.1}
task[278]={278,"云中城","拓跋圭","Tenpc_69","物品名称","color",1.1}

--task[141]={141,"地图名","地图编号",任务标记,"",color}

task[279]={279,"桃源径","lu_tyj","Tmap_1","","color",1.2}
task[280]={280,"桃源村","lu_tyc","Tmap_2","","color",1.2}
task[281]={281,"迷雾之林","lu_mwzl","Tmap_3","","color",1.2}
task[282]={282,"巨石洞","lu_jsd","Tmap_4","","color",1.2}
task[283]={283,"建康南郊","lu_jknj","Tmap_5","","color",1.2}
task[284]={284,"建康东郊","lu_jkdj","Tmap_6","","color",1.2}
task[285]={285,"五斗山","lu_wds","Tmap_7","","color",1.2}
task[286]={286,"山寨","lu_sz","Tmap_8","","color",1.2}
task[287]={287,"山寨地牢","lu_szdl","Tmap_9","","color",1.2}
task[288]={288,"北府军营","lu_bfjy","Tmap_10","","color",1.2}
task[289]={289,"军营前哨","lu_jyqs","Tmap_11","","color",1.2}
task[290]={290,"淝水之滨","lu_fszb","Tmap_12","","color",1.2}
task[291]={291,"淝水对岸","lu_fsda","Tmap_13","","color",1.2}
task[292]={292,"淝水河底","lu_fshd","Tmap_14","","color",1.2}
task[293]={293,"洛阳郊外","lu_lyjw","Tmap_15","","color",1.2}
task[294]={294,"渭水之滨","lu_wszb","Tmap_16","","color",1.2}
task[295]={295,"西蜀竹林","lu_xszl","Tmap_17","","color",1.2}
task[296]={296,"食人谷","lu_srg","Tmap_18","","color",1.2}
task[297]={297,"白骨洞","lu_bgd","Tmap_19","","color",1.2}
task[298]={298,"洛城废墟","lu_jgd","Tmap_20","","color",1.2}
task[299]={299,"陷落关口","lu_fqcl","Tmap_21","","color",1.2}
task[300]={300,"太行古径","lu_thgj","Tmap_22","","color",1.2}
task[301]={301,"太行山谷","lu_thsg","Tmap_23","","color",1.2}
task[302]={302,"参合坡","lu_chp","Tmap_24","","color",1.2}
task[303]={303,"燕王陵","lu_ywl","Tmap_25","","color",1.2}
task[304]={304,"地下陵墓","lu_dxlm","Tmap_26","","color",1.2}
task[305]={305,"地下陵穴","lu_dxlx","Tmap_27","","color",1.2}
task[306]={306,"关外","lu_clc","Tmap_28","","color",1.2}
task[307]={307,"云中郊外","lu_yzjw","Tmap_29","","color",1.2}
task[308]={308,"古战场","lu_gzc","Tmap_30","","color",1.2}
task[309]={309,"契丹部落","lu_qdbl","Tmap_31","","color",1.2}
task[310]={310,"漠北大荒","lu_mbdh","Tmap_32","","color",1.2}
task[311]={311,"沙漠绿洲","lu_smlz","Tmap_33","","color",1.2}
task[312]={312,"沙漠迷宫","lu_smmg","Tmap_34","","color",1.2}
task[313]={313,"柔然领地","lu_rrld","Tmap_35","","color",1.2}
task[314]={314,"极西走廊","lu_jxzl","Tmap_36","","color",1.2}
task[315]={315,"匈奴王庭","lu_xnwt","Tmap_37","","color",1.2}
task[316]={316,"巫魂山","lu_whs","Tmap_38","","color",1.2}
task[317]={317,"魍魉塔一层","lu_wltyc","Tmap_39","","color",1.2}
task[318]={318,"魍魉塔二层","lu_wltec","Tmap_40","","color",1.2}
task[319]={319,"魔王殿","lu_mwd","Tmap_41","","color",1.2}


task[320]={320,"p_lv","1","任务标记","1","color",1.2}


--task[321]={321,"编号","物品名","数量","color",1}


task[321]={321,"o_material_11","1级毛",2,"最近作坊毛料紧缺","color",1}
task[322]={322,"o_material_20","1级皮",2,"最近战事吃紧，要多给战士们做点衣服","color",1}
task[323]={323,"o_material_29","1级肉",2,"有肉吃才能干活，或哟哟","color",1}
task[324]={324,"o_material_38","1级木",2,"现在有一批群众需要转移，但是马车不够","color",1}
task[325]={325,"o_material_47","1级矿",2,"大量的战事消耗了很多兵器，现在急需一批兵器","color",1}
task[326]={326,"o_material_56","1级晶",2,"国库空虚，现在正在征集各种晶体","color",1}
task[327]={327,"o_material_12","2级毛",2,"最近作坊毛料紧缺","color",1.2}
task[328]={328,"o_material_21","2级皮",2,"战事吃紧，要多给战士们做点衣服来御寒","color",1.2}
task[329]={329,"o_material_30","2级肉",2,"有肉吃才能干活，或哟哟","color",1.2}
task[330]={330,"o_material_39","2级木",2,"现在有一批群众需要转移，但是马车不够","color",1.2}
task[331]={331,"o_material_48","2级矿",2,"大量的战事消耗了很多兵器，现在急需一批兵器","color",1.2}
task[332]={332,"o_material_57","2级晶",2,"现在正在征集各种晶体","color",1.2}
task[333]={333,"o_mission020","劣质鱼肉",1,"给士兵们也吃点好的","color",1}
task[334]={334,"o_mission039","优质鱼肉",1,"也该给中等将士改善下生活了","color",1.1}
task[335]={335,"o_mission040","精品鱼肉",1,"一军之帅也需要吃点好的啊","color",1.3}
task[336]={336,"o_mission168","甲鱼",1,"甲鱼可是美容壮阳的极品","color",1.5}
task[337]={337,"o_mission153","金枝",1,"宫中小姐捎信来说要点金枝","color",1.5}
task[338]={338,"o_mission145","矿精",1,"打造上等兵器需要矿精","color",1.5}
task[339]={339,"o_mission018","破旧古董",1,"宫中太监欺人太盛，让给找古董不找又不行，唉","color",1.5}
task[340]={340,"o_drug_hp3","玉清散(不绑定的)",3,"很多战士受伤了","color",1}
task[341]={341,"o_drug_mp3","天香露(不绑定的)",3,"伤兵们的伤都很严重","color",1}
task[342]={342,"o_drug_hp2","三叶散",3,"受伤的人很多","color",1}
task[343]={343,"o_drug_mp2","花灵露",3,"很多士兵奇痒难忍","color",1}
-->>>>>>>>>>>>>>>>>>>>以下为增值道具<<<<<<<<<<<<<<<<<<<<<--
task[343]={343,"o_state016y","还魂丹",1,"最近的瘟疫折腾的大家都精神恍惚，你去弄一个未绑定的来","color",1.5}
task[343]={343,"o_state053y","阎王之血（+500）",1,"我们大将军杀敌需要阎王之血，貌似将军只要未绑定的哦","color",2}
task[343]={343,"o_state056y","巫师水晶（+500）",1,"我们大祭祀需要巫师水晶，貌似祭祀只要未绑定的哦","color",2}
task[343]={343,"o_state065y","血池1",1,"神秘的事物，将军吩咐我们收集它，貌似将军只要未绑定的哦","color",2.5}
task[343]={343,"o_state068y","魔池1 ",1,"神秘的事物，将军吩咐我们收集它，貌似将军只要未绑定的哦","color",3.5}
task[343]={343,"o_state001y","双防符[1小时]",1,"我们要给予最猛烈的将士嘉奖我可是要未绑定的哦","color",2}
task[343]={343,"o_state012y","双攻符[1小时]",1,"我们要给予最猛烈的将士嘉奖我可是要未绑定的哦","color",2}
task[343]={343,"o_state017y","力量符+50",1,"我们要给予最猛烈的将士嘉奖我可是要未绑定的哦","color",2}
task[343]={343,"o_state022y","智慧符+50",1,"我们要给予最猛烈的将士嘉奖我可是要未绑定的哦","color",2}
task[343]={343,"o_state027y","敏捷符+50",1,"我们要给予最猛烈的将士嘉奖我可是要未绑定的哦","color",2}
task[343]={343,"o_gold1y","通宝",1,"国泰民安，国库空虚","color",1.8}
task[343]={343,"o_state034y","多倍贪婪金（1小时）",1,"我们需要自给自足，但是我们需要一个小道具，但是我可是要未绑定的哦","color",2.5}
task[343]={343,"o_state005j","小暴击丸",1,"最强悍的将士是需要嘉奖的","color",2}

if(type~=0)then
	if(type==1)then --直接杀怪 杀暴安良
		if(level<=20)then
			collection=(LuaRandom(3)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(3)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=30)then
			collection=(LuaRandom(11)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(11)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			--collection=(LuaRandom(18)+1)
			collection=(LuaRandom(15)+3)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(18)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(35)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(34)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(40)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(40)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(45)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(62)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(62)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(66)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(66)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(70)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(70)+1)
			for i=1,5,1 do	
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==2)then --杀怪掉落 夺回物资
		local level=LuaQuery("level")
		if(level<=20)then
			collection=(LuaRandom(3)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(3)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=30)then
			collection=(LuaRandom(11)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(11)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(18)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(18)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(30)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(34)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(35)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(40)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(45)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(52)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(62)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(62)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(66)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(66)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(70)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(70)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==3)then --NPC送物品 驿站小吏
		if(level<=30)then
			collection=(LuaRandom(35)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(35)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(50)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(50)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(55)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(55)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(61)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(61)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(69)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(69)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==4)then --NPC对话   千里传音
		if(level<=30)then
			collection=(LuaRandom(35)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(35)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(50)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(50)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(55)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(55)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(61)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(61)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(69)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(69)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==5)then --使用物品  探听虚实
		if(level<=30)then
			collection=(LuaRandom(9)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(9)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(15)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(15)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(19)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(19)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(23)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(23)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(28)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(28)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(33)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(33)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(37)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(37)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(39)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(39)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(41)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(41)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end

	elseif(type==6)then --找人      招兵买马
		collection=320
	elseif(type==7)then --收集物品  收集军资
		if(LuaQueryTask("Tfjtx_num")>=50)then
			collection=(LuaRandom(36)+321)
		else
			collection=(LuaRandom(23)+321)
		end
			
	end
end
	str1=task[collection][2]
	str2=task[collection][3]
	str3=task[collection][4]
	str4=task[collection][5]
	str5=task[collection][6]
	str6=task[collection][7]
	return collection,str1,str2,str3,str4,str5,str6
end

function GiveAward(level,difficuity,color,allnum)
--经验暂定为这么多
local level=LuaQuery("level")
local exp=(50000+level*level*color*difficuity*color)*difficuity
local k = floor(allnum/5);j = allnum/5
if(k==j)then
	LuaSay("@5提示：获得额外奖励")
	LuaGive("coin",1000,"Tfjtx")
	if(floor(allnum/50)==allnum/50)then
		local r=LuaRandom(7)
		if(r==0)then
			LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tfjtx")	--4级材料随其一
		elseif(r==1)then
			LuaGive("o_state054j",1,"Tfjtx")
		elseif(r==2)then
			LuaGive("o_state057j",1,"Tfjtx")
		elseif(r==3)then
			LuaGive("o_state057j",1,"Tfjtx")
		elseif(r==4)then
			LuaGive("o_state087j",1,"Tfjtx")
		elseif(r==5)then
			local ref=LuaRandom(3)
			if(LuaQuery("level")<43)then
				if(ref==0)then
					LuaGive("e_knife00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				elseif(ref==1)then
					LuaGive("e_book00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				else
					LuaGive("e_shield00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				end
			else
				if(ref==0)then
					LuaGive("e_knife00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				elseif(ref==1)then
					LuaGive("e_book00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				else
					LuaGive("e_shield00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				end
			end
		elseif(r==6)then
			local res=LuaRandom(2)
			if(LuaQuery("level")<40)then
			        if(res==0)then
				LuaGive("e_necklace00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				else
				LuaGive("e_earring00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				end
			else
				if(res==0)then
				LuaGive("e_necklace00"..(LuaRandom(8)+1).."",1,2,"Tfjtx")
				else
				LuaGive("e_earring00"..(LuaRandom(8)+1).."",1,2,"Tfjtx")
				end
			end
		end
	elseif(floor(allnum/30)==allnum/30)then
		local r=LuaRandom(10)
		local r1=LuaRandom(8)+1
		if(r==0)then
			LuaGive("o_box002",1,"Tfjtx")
		elseif(r==1)then
			LuaGive("o_state016j",1,"Tfjtx")                    
		elseif(r==2)then
			LuaGive("o_state056j",1,"Tfjtx")--------巫师水晶+1000----9
		elseif(r==3)then
			LuaGive("o_state053j",1,"Tfjtx")--------阎王之血+1000----7
		elseif(r==4)then
			--LuaGive("o_sendmap",1,"Tfjtx")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3级材料随其一
		elseif(r==5)then
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3级材料随其一
		elseif(r==6)then
			LuaGive("e_horse0"..r1.."3t",1,"Tfjtx")
		elseif(r==7)then
			if(level<30)then
				LuaGive("e_shoes00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
			else
				LuaGive("e_shoes00"..(LuaRandom(6)+3).."",1,2,"Tfjtx")
			end
		end
			
	elseif(floor(allnum/10)==allnum/10)then
		local r=LuaRandom(10)
		if(r==0)then
			LuaGive("o_box002",1,"Tfjtx")
		elseif(r==1)then
			LuaGive("o_state016j",1,"Tfjtx")                    
		elseif(r==2)then
			LuaGive("o_state056j",1,"Tfjtx")--------巫师水晶+1000----9
		elseif(r==3)then
			LuaGive("o_state053j",1,"Tfjtx")--------阎王之血+1000----7
		elseif(r==4)then
			--LuaGive("o_sendmap",1,"Tfjtx")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3级材料随其一
		elseif(r==5)then
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3级材料随其一
		end
	end
end
	if(LuaQueryTask("Refresh")==0)then--经验模式
		LuaAddJx("combat_exp",exp,"Tfjtx")
	else
		LuaGive("coin",exp/30,"Tfjtx")
	end
end


function AutoSearchTask_NPC(collection)
findNPC={}
findNPC[1]={1,"建康城南","谢安","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_1"}
findNPC[2]={2,"建康城南","种子商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_2"}
findNPC[3]={3,"建康城南","武器商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_3"}
findNPC[4]={4,"建康城南","饰品商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_4"}
findNPC[5]={5,"建康城南","药品商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_5"}
findNPC[6]={6,"建康城南","防具商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_6"}
findNPC[7]={7,"建康城","渔翁","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_7"}
findNPC[8]={8,"建康城","司马元显","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_8"}
findNPC[9]={9,"建康城","晋清公主","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_9"}
findNPC[10]={10,"建康城","行脚商人","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_10"}
findNPC[11]={11,"建康城","驯兽师","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_11"}--之前的有个错别字
findNPC[12]={12,"建康城种植园","包租公","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_12"}
findNPC[13]={13,"建康东郊","桓冲","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_13"}
findNPC[14]={14,"建康东郊","王恭","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_14"}
findNPC[15]={15,"五斗山","桓玄","江山画卷[上]","江山画卷[下]","o_mission417","o_mission418","TfindNPC_15"}


if(collection==0)then
	local r=LuaRandom(15)
	if(r==0)then collection=1
	elseif(r==1)then collection=2
	elseif(r==2)then collection=3
	elseif(r==3)then collection=4
	elseif(r==4)then collection=5
	elseif(r==5)then collection=6
	elseif(r==6)then collection=7
	elseif(r==7)then collection=8
	elseif(r==8)then collection=9
	elseif(r==9)then collection=10
	elseif(r==10)then collection=11
	elseif(r==11)then collection=12
	elseif(r==12)then collection=13
	elseif(r==13)then collection=14
	elseif(r==14)then collection=15
	end
end

	local str2=findNPC[collection][2]--地图名
	local str3=findNPC[collection][3]--NPC名称
	local str4=findNPC[collection][4]--画卷上
	local str5=findNPC[collection][5]--画卷下
	local str6=findNPC[collection][6]--上卷编号
	local str7=findNPC[collection][7]--下卷编号
	local str8=findNPC[collection][8]--任务编号

	return collection,str2,str3,str4,str5,str6,str7,str8
end