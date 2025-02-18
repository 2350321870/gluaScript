NPCINFO = { 
serial="25" ,
base_name="jinqing" ,
icon=2562,
NpcMove=2562,
name="晋清公主【婚】" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="能促成热恋中的人儿步入婚姻殿堂，真是幸福",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
		 local level= LuaQuery("level")
		AddTopSayMenuItem("@7任务列表","")
		for i=4,10,1 do
			if(GetCurrentDay()=="2011-8-"..i.."")then
				AddTopSayMenuItem("@3七夕活动","Tqixijie")
			end
		end
		if(LuaQueryTask("TzhongqiudsA")==1 or LuaQueryTask("TzhongqiudsA")==2) then       --中秋活动
		AddTopSayMenuItem("@2诗漫中秋@0","Tzhongqiuds")
		havetask=2
		end
		AddTopSayMenuItem("@3婚姻平台","HYPT")
		if(LuaQueryTask("T123")==0 and LuaQueryTask("T126")==99) then
			AddTopSayMenuItem("北府军营【剧情】","T123")
			havetask =1
		end
		--if(LuaQueryTask("T126")==0 and level >=20)  then
			--AddTopSayMenuItem("推荐新人【教程】","T126")
			--havetask =1
		--end 
		if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jinqing")==0)  then	--端午节活动
			AddTopSayMenuItem("@2粽子传情","Tduanwu")
			havetask =2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_9")==1 or LuaQueryTask("TfindNPC_9")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_9")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
		end

		if(LuaQueryTask("T126")==1)  then
			AddTopSayMenuItem("@2推荐新人【教程】","T126")
			if(LuaQueryTask("T126A") == 99) then
			havetask =2
			end
		end 
		if(LuaQueryTask("T123")==1) then
			AddTopSayMenuItem("@2北府军营【剧情】","T123")
		end
		AddTopSayMenuItem("@3婚姻","hunyin")

		if((LuaQueryTask("Tsnpc_11")==1 or LuaQueryTask("Tsnpc_11")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_11")
			if(LuaQueryTask("Tsnpc_11")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_11")==1 or LuaQueryTask("Tenpc_11")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_11")
			if(LuaQueryTask("Tenpc_11")==1)then
				havetask2=1
			end
		end
		
		if(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@3金钱换经验","JQHJY")
		end

		if(LuaQueryTask("bao_B")~=0)then
			AddTopSayMenuItem("@2金枝传情【隐藏】","T127")
			havetask =2
		end
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			AddTopSayMenuItem("@3领主争夺【活动】","T1005")
		end
		if(LuaQueryTask("T302")==2 and LuaQueryTask("T302B")==0) then
			AddTopSayMenuItem("@2每日信使@0","T302B")	
			havetask =2 
		end 
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1

elseif(answer=="liaotian") then
	LuaSay("晋清公主：皇室腐朽，百姓受苦。让清儿这个做公主的，多做些事，为我皇室赎点罪孽吧。")

---------------------------端午节
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_jinqing")==0)  then
        if(LuaItemStatusNormalCount("o_mission205")>=1) then
        LuaSay("晋清公主：难得他想得周到，每年端午都给我送粽子")
		DelItem("o_mission205",1)
		LuaSetTask("Tdwj_zzcq_jinqing",99)
		UpdateMenu()
	else
  		LuaSay(""..LuaQueryStr("name").."：小的真是惭愧，竟然空手而来，这就去准备@3中品粽子")
        end
	end
elseif(answer=="Tzhongqiuds")then
    if(LuaQueryTask("TzhongqiudsA")==1)then
        LuaSay("晋清公主：少侠可是来寻诗的？让我看看你找的是什么诗？额！这诗写得真好！可惜我这里没有！")
        LuaSay("晋清公主：到@3幸运老人@0那里去碰碰运气，也许能得到你想要的诗！")
		LuaSetTask("TzhongqiudsA",2)
				AddMenuItem("选择","")
			     	AddMenuItem("传送天涯海角","cstyj")
			     	AddMenuItem("现在不去","zjptyj")
    elseif(LuaQueryTask("TzhongqiudsA")==2) then
		LuaSay("晋清公主:怎么你还没到@3幸运老人@0那里去呢？")
		AddMenuItem("选择","")
				     	AddMenuItem("传送天涯海角","cstyj")
				     	AddMenuItem("现在不去","zjptyj")
	end
 elseif(answer=="cstyj")then
					        ChangeMap("lu_tyhj")
					 elseif(answer=="zjptyj")then
					     LuaSay("提示：现在不去！")
----------------------------------------------------

elseif(answer=="T124") then         ------------------------仁慈公主
		if(LuaQueryTask("T124") == 0 ) then
		  LuaSay("晋清公主：北方苻坚百万大军压境，战火已经蔓延到了南方。清儿一介女流无法冲锋陷阵，做些其它事来帮忙吧！")
		  LuaSay("晋清公主：听说前线药物紧张，可否劳烦英雄帮清儿去@4建康城南@0的@3药品商人@0处购买@21份金创散@0。@!")
		  LuaSetTask("T124",1)
		  UpdateTopSay("去药品商人处购买1瓶金创散")
		  AddLog("仁慈公主【剧情】",124)
		  UpdateMenu()
		elseif(LuaQueryTask("T124") == 1 ) then
		  if(LuaItemCount("o_drug_hp1")>=1) then
		    LuaSay("晋清公主：多谢您的帮助，清儿及大晋司马家不会忘记您的恩情！")
		    LuaSay("@1温馨提示：您已经达到20级，可以去@4建康城@0的@3驯兽师@0处领取免费的@3经验宝宝@0时间哦！@!")
		    AddMenuItem("@7任务完成","")
		    AddMenuItem("领取奖励","T124jl")
		    else
		    LuaSay("晋清公主：你还没有去@3药品商人@0处购买@2一瓶金创散@0呢，购买来给清儿吧。")
		  end
		end
          elseif(answer=="T124jl")then
           if(LuaQueryTask("T124")==1) then
		    DelItem("o_drug_hp1",1)
		    LuaSetTask("T124",99)
		    DelLog("124")
		    LuaAddJx("combat_exp",119000,"T124")
			LuaAddAchievementSchedule("Task_num",1)
		    UpdateMenu()
		    end

elseif(answer=="T123") then              ------------------------北府军营 
		if(LuaQueryTask("T123")==0) then
		LuaSay("晋清公主：天下大乱，蛮夷肆虐，我华夏一族如今却只能偏安一隅，幸亏有北府军苦苦支撑我大晋朝。")
		LuaSay("晋清公主：阁下正值年少，何不去支援北府将士，顺便帮助本宫慰问北府军，你去找@4北府军营@0的@3谢玄@0吧，@2向左@0出城就到了。")
                LuaSetTask("T123",1)
		UpdateTopSay("去找北府军营的谢玄谈话")
                AddLog("北府军营【剧情】",123)
		UpdateMenu()
		elseif(LuaQueryTask("T123")==1) then
		LuaSay("晋清公主：快去找@3谢玄@0吧，会对你有所帮助的，他就在这@4北府军营@0中，@2向左@0出城就到了。")
		end

 ----------------------------------------------------------     婚姻

elseif(answer=="hunyin") then
	local level= LuaQuery("level")
	LuaSay("晋清公主：想要结婚需要在我这里先进行申请，申请成功后再去@4世外桃源@0结婚。@!")
	LuaSay("晋清公主：找建康城的副本管理员，就可进入@4世外桃源@0了。")
	AddMenuItem("@7婚姻","")
	AddMenuItem("申请结婚","sqjh")       --申请后，当天必需结婚，否则失效
	AddMenuItem("补办婚礼","buban")
	AddMenuItem("申请离婚","sqlh")
elseif(answer=="sqjh") then
	local level= LuaQuery("level")
        if(GetCurrentDay()~=LuaQueryStrTask("Tjhday")) then
		LuaDelTask("Thunyinsq")
		LuaDelTask("Tjhday")
        end
	if(TeamCount()== 2 and level>=30 and TeamQuery("level")>=30) then
		if(IsLassie()==0) then   --不是情侣   
			if(LuaQueryTask("Thunyinsq")==0) then 
				if(LuaItemCount("coin")>=20000) then
					LuaSay("提示：想要结婚的2人需要@3双双申请结婚@0，申请后就可以进入@4世外桃源@0举行婚礼了，申请后的期限只有当天哦@!")
					LuaSay("提示：为防止他人破坏婚礼，最好在@312点到24点间@0举行婚礼，这段时间内只有持@2婚礼请柬@0者才能进入@!")
					LuaNotice("@3"..LuaQueryStr("name").."@0和@3"..TeamQueryStr("name").."@0申请了结婚，欢迎大家前去@4世外桃源@0捧场哦@!")
					LuaGive("coin",-20000,"Thunyin")
					LuaSetTask("Thunyinsq",1) 
					LuaSetTask("Tjhday",GetCurrentDay())
				else
					LuaSay("提示：必需有@32W铜币@0才能申请结婚哦。@!")
				end
			else
				LuaSay("提示：你已经进行了结婚申请，不用再申请啦。@!")
			end
		else
			LuaSay("晋清公主：你们已经结婚了，不能再申请结婚，不过可以补办婚礼哦。@!")
		end
	else
		LuaSay("提示：2个@330级@0的@3没有配偶@0的玩家组队，方可申请结婚。")
	end                                                            
		
elseif(answer=="buban") then
	local level= LuaQuery("level")
	if(TeamCount()== 2 and IsLassie()==1) then
		if(LuaQueryTask("Thunyinsq")~=2) then 
			if(LuaItemCount("coin")>=100000) then 
				LuaGive("coin",-100000,"Thunyin")
				LuaSay("提示：在你们2人都申请补办婚礼后，就可以进入@4世外桃源@0举行婚礼了。需要2人都申请哦。@!")
				LuaSay("@5提示：需要注意的是补办婚礼只限当日有效哦，赶快抓紧时间")
				LuaSetTask("Thunyinsq",2)
				LuaSetTask("Tjhday",GetCurrentDay())
			else
				LuaSay("提示：身上必需有10W铜币才能申请补办婚礼。@!")
			end
		else
			LuaSay("提示：你已经申请了@3补办婚礼@0，不用再申请了。@!") 
		end 
	else
		LuaSay("提示：已经结了婚的玩家需要夫妻组队后才可申请补办婚礼，其他人只能@3申请结婚@0。@!")

	end 
      
elseif(answer=="sqlh") then
	LuaSay("提示：去找@4世外桃源@0的@3月老@0离婚吧")

-----------------------------------------------------------
elseif(answer=="T302B") then
	   if(LuaQueryTask("T302B")==0) then
	   LuaSay(""..LuaQueryStr("name").."：这是驿站小吏托我带给你的信件。")
       LuaSay("晋清公主：没想到如今人老珠黄，还有人给我写信，看来我还真是有魅力啊。@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302B",99)
	   UpdateMenu()
	   end


elseif(answer=="T120") then
   if(GetCurrentDay()~=LuaQueryStrTask("T120day")) then
      LuaSetTask("T120",0)
      LuaSetTask("T120A",0)
      LuaSetTask("T120B",0)
   end
   if(LuaQueryTask("T120")==0) then
       if(TeamCount()== 2 and IsLassie()==1) then
		   LuaSay("晋清公主：甜言蜜语，海誓山盟，在诱惑与困难面前是非常的苍白无力。")
		   LuaSay("晋清公主：那边的@3司马元显@0最是见不得出双入对的人儿，夫妻2人必须双双通过@3司马元显@0的考验。")
		   UpdateTopSay("去司马元显处接受考验吧。")
           LuaSetTask("T120day",GetCurrentDay())
           LuaSetTask("T120",1)
	   AddLog("爱的考验[每日]",120)
           UpdateNPCMenu("chenshimei")
	   else
         LuaSay("提示：必须夫妻2人组队，方可接此任务。")
	   end
	 elseif(LuaQueryTask("T120")==1) then
		if(TeamCount()== 2 and IsLassie()==1) then
		    if(LuaQueryTask("T120A")==99 and TeamQueryTask("T120A")==99) then
		      LuaSay("晋清公主：既然能够通过@3司马元显@0的考验，看来你们是真心相爱的，很多人都在金钱面前倒了下来呢。")
		      LuaSay("晋清公主：不过想要通过爱的考验，夫妻2人还得一起去找天涯海角最右边的@3幸运老人@0哦。@!")
		      LuaSetTask("T120",2)
		      AddLog("爱的考验[每日]",120)
		    elseif(LuaQueryTask("T120A")==98 or TeamQueryTask("T120A")==98) then
		     LuaSay("晋清公主：哎，又是一个为了金钱出卖爱情的人，真是可悲啊，你们没有通过@3司马元显@0的考验，不会得到任何的奖励。")
		     LuaSetTask("T120",99)
		     DelLog("120")
		     UpdateMenu()
		    elseif(LuaQueryTask("T120A")<98 and TeamQueryTask("T120A")<98) then
		     LuaSay("晋清公主：你们2人还没有去@3司马元显@0那里接受考验呢。")
		     UpdateTopSay("去司马元显处接受考验")
            else
             LuaSay("晋清公主：你们中的一人还没有去接受司马元显的考验呢。")
		   end
        else
            LuaSay("晋清公主：必须夫妻2人组队才能交此任务。@!")
        end
	elseif(LuaQueryTask("T120")==2) then
	 local level= LuaQuery("level")
	 	if(level>80)then
			level=80
		end
         if(TeamCount()==2 and IsLassie()==1) then
               if(TeamQueryTask("T120B")==99 and LuaQueryTask("T120B")==99) then
                 LuaSay("晋清公主：你们居然通过了重重考验，真是情比金坚啊。")
                 local jingyan=200000+35*level^2
                 LuaAddJx("combat_exp",jingyan,"T120")
                 LuaGive("coin",5000,"T120")
                 LuaSetTask("T120",99)
		 DelLog("120")
			   else
			     LuaSay("晋清公主：你们夫妻2人还没有一起去找天涯海角最右边的幸运老人呢。")
               end
           else
           LuaSay("晋清公主：必须夫妻2人组队才能交此任务。")
           end

	elseif(LuaQueryTask("T120")==99) then
		LuaSay("晋清公主：你已经做过了今天@3爱的考验@0任务，明天再来找我吧。")
   end

elseif(answer=="T126") then                    ------------推荐新人
	if(LuaQueryTask("T126") == 0) then
         LuaSay("晋清公主：是不是奇怪为什么别人不花钱就能拥有很多的神奇道具，是不是羡慕别人身后总是跟着一群小弟？")
         LuaSay("晋清公主：这些都是@3推荐系统@0的功劳，只要您成功推荐其他人一起玩统一，那您就有机会获得大量的积分以及积分换道具的机会。 ")
         LuaSay("晋清公主：真正不花钱就能享受有钱人的尊崇。快去@3布告牌@0那里了解一下推荐系统吧！ ")
	 LuaSetTask("T126",1)
         AddLog("推荐新人【教程】",126)
         UpdateMenu()  
	 UpdateTopSay("去布告牌了解推荐系统")
	elseif(LuaQueryTask("T126") == 1) then 
		LuaSay("建康城积聚了各类商人和玩家，在这里可以你可以结交到很多朋友哦")
		end
		  elseif(answer=="T126jl") then
                if(LuaQueryTask("T126") == 1 and LuaQueryTask("T126A") == 99) then
		        LuaSetTask("T126",99)
		        DelLog("126")
		        LuaAddJx("combat_exp",112500,"T126")
				LuaAddAchievementSchedule("Task_num",1)
		        LuaGive("coin",1000,"T126")
		        UpdateMenu()
			end
-------------------------------------------------------------
elseif(answer=="T127")then--TeamQuery

	if(LuaQueryStrTask("127Taskday")~=GetCurrentDay()) then
		LuaSetTask("127dotime",0)
	end
	if(LuaItemStatusNormalCount("o_mission153")>=1)then
		if(LuaQueryTask("127dotime")<10) then
			if(LuaQueryTask("T127")==0)then
				LuaSay("晋清公主：金枝是友善的信物，系统和玩家也需要沟通，你就在公聊频道说句：@3我爱统一@0,说完了来找我哦，一定要是最后一句哦")
				LuaSetTask("T127",1)
				AddLog("金枝传情",127)
				UpdateMenu()
			elseif(LuaQueryTask("T127")==1)then
				if(LuaQueryTempStr("last_channel_msg")=="我爱统一")then
					LuaSay("晋清公主：与系统交流成功，祝你游戏愉快！")
					if(LuaItemStatusNormalCount("o_mission153")>=1)then
						AddMenuItem("@7任务完成","")
						AddMenuItem("领取奖励","T127jl")
					else
						LuaSay("提示：你背包里面没有金枝，不能领取奖励")
					end
				elseif(LuaQueryTempStr("last_channel_msg")=="")then
					LuaSay("晋清公主：你个猪头什么也没说,哼~~！")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				elseif(LuaQueryTempStr("last_channel_msg")=="打死也不说")then
					LuaSay("晋清公主：你，你，你，你气死我啦~~~~~~！我真生气了！")
					LuaSet("hp",LuaRandom(10))
					FlushMyInfo(0)
					LuaNotice("玩家@3"..LuaQueryStr("name").."@0没听公主的话，被公主一耳光扇到在地，再也爬不起来了")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				elseif(LuaQueryTempStr("last_channel_msg")=="美女")then
					LuaSay("晋清公主：犯花痴是不对滴@!")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				else
					LuaSay("晋清公主：你是打错字了还是说了坏话啊，真不听话，领取一次任务就需要消耗一根金枝，不要浪费机会哦。")
					LuaDelTask("T127")
					LuaDelTask("bao_B")
					DelLog("127")
					DelItem("o_mission153",1)
					UpdateMenu()
				end
			end
		else
			LuaSay("晋清公主：今天接受你的祝福太多了，明天再来吧@!")
			LuaDelTask("bao_B")
			UpdateMenu()
		end
	else
		LuaSay("晋清公主：小伙子，本公主这么漂亮你也敢来耍？老实的告诉我，是不是偷偷的拿去寄卖啦@!")
	end
	
	elseif(answer=="T127jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaItemStatusNormalCount("o_mission153")>=1)then
			if(LuaQueryTask("T127")==1) then
				local jingyan
				LuaDelTask("T127")
				DelItem("o_mission153",1)
				LuaDelTask("bao_B")
				if(level<20)then
					jingyan=(21037+level^2*20)
				elseif(level<30)then
					jingyan=(33000+level^2*20)
				elseif(level<40)then
					jingyan=(43682+level^2*30)
				elseif(level<50)then
					jingyan=(53682+level^2*30)
				elseif(level<60)then
					jingyan=(64682+level^2*30)
				else
					jingyan=(84682+level^2*40)
				end
				LuaAddJx("combat_exp",jingyan,"T127")
				LuaGive("coin",3000+LuaRandom(7000),"T127")
				DelLog("127")
				UpdateMenu()
			end
		else
			LuaSay("@5提示：你没有携带金枝")
		end


---------------------------------

-------------------------------------------------金钱换经验
elseif(answer=="JQHJY") then
	if(LuaQueryStrTask("JQHJY_Taskday")~=GetCurrentDay()) then
		LuaSetTask("JQHJY_TIMES",0)
		LuaSetTask("TIMES_times",0)
		LuaSetTask("JQHJY_Taskday",GetCurrentDay())
	end
	--LuaSay("晋清公主：在我这里可以用@2金钱换经验@0。不但更快的培养治世能人，还能给军队增加资金，一举两得！")
	if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
		--LuaSay("晋清公主：你可以花费@35000@0铜币换取经验值，换取的经验值最少1万，多的可达100万！还能换@2"..(10-LuaQueryTask("JQHJY_TIMES")).."@0次！")
		AddMenuItem("选择列表","")
        AddMenuItem("1680元宝直升55级","JQHJY55_YES2")
		AddMenuItem("50w铜币换经验","JQHJY_YES2")
		AddMenuItem("5w铜币换经验","JQHJY10_YES2")        
		AddMenuItem("不换","JQHJY_NO2")		
	else
		if(LuaQuery("level")>98)then
			LuaSay("晋清公主：你已经99级了,自己要学会去升级啊,不能再吃软饭了");
		else
		LuaSay("晋清公主：你今天金钱换经验的次数已经达到10次！可以用500个@2元宝@0换取10次金钱换经验的机会！")
		AddMenuItem("选择列表","")
		AddMenuItem("换","JQHJY_YES")		
		AddMenuItem("不换","JQHJY_NO")
		end
		
	end
elseif(answer=="JQHJY_NO") then
	LuaSay("晋清公主：呵呵，自己艰苦修炼也不失为一种方法！")
elseif(answer=="JQHJY_YES") then
	--查询通宝LuaItemStatusNormalCount("o_gold1y")
	--DelItem("o_gold1y",500)
	if(LuaQueryMoney()>=500) then
        if(LuaQueryTask("TIMES_times")<200) then
        LuaAddYB(1,-500)
	    LuaSetTask("JQHJY_TIMES",0)
	    LuaAddTask("TIMES_times",1)
	    LuaSay("晋清公主：你又有10次金钱换经验的机会了！")
	    else
	    LuaSay("晋清公主：多谢英雄赞助，今天就到此为止吧！明天再来找我吧！")
	    end
	else
		LuaSay("晋清公主：你身上没有500个@9元宝@0！")
	end
elseif(answer=="JQHJY_NO2") then
	LuaSay("晋清公主：呵呵，自己艰苦修炼也不失为一种方法！")
elseif(answer=="JQHJY_YES2") then
    if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemCount("coin")>=500000) then
	    local r = LuaRandom(100)
	    local jingyan
		if(r>=80) then
			  jingyan=90000+level^2*40 
		elseif(r>=50 and r<80) then
			  jingyan=180000+level^2*40   
		elseif(r>=35 and r<50) then
			  jingyan=450000+level^2*40     
 		--elseif(<=64) then
		--	  jingyan=900000+level^2*40        
		else
			  jingyan=900000+level^2*40 
		end 
		LuaGive("coin",-500000,"JQHJY")
		LuaAddJx("combat_exp",jingyan*11,"JQHJY")
		LuaAddTask("JQHJY_TIMES",1)
	else
		LuaSay("晋清公主：你身上不足@3500000@0铜币！")
	end
    else
        LuaSay("晋清公主：你今天金钱换经验的次数已经达到10次！可以用500个@2元宝@0换取10次金钱换经验的机会！")
    end
elseif(answer=="JQHJY55_YES2")then
    local level= LuaQuery("level")
	if(level<55)then
        if(LuaQueryMoney()>=30)then		
            LuaAddYB(1,-1680)
            LuaAddJx("combat_exp",530000000,"JQHJY")
        else
            LuaSay("你没有足够的元宝！")  
        end        
	else
        LuaSay("你已超过55级,不需要再购买!")
	end    
elseif(answer=="JQHJY10_YES2") then
	if(LuaQueryTask("JQHJY_TIMES")<10 and LuaQuery("level")<=98) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemCount("coin")>=50000) then
	    local r = LuaRandom(100)
	    local jingyan
		if(r>=80) then
			  jingyan=90000+level*level*40 
		elseif(r>=50 and r<80) then
			  jingyan=180000+level*level*40   
		elseif(r>=35 and r<50) then
			  jingyan=450000+level*level*40     
 		--elseif(<=64) then
		--	  jingyan=900000+level^2*40        
		else
			  jingyan=900000+level*level*40 
		end 
		LuaGive("coin",-50000,"JQHJY")
		LuaAddJx("combat_exp",jingyan*2,"JQHJY")
		LuaAddTask("JQHJY_TIMES",1)
	else
		LuaSay("晋清公主：你身上不足@350000@0铜币！")
	end
    else
        LuaSay("晋清公主：你今天金钱换经验的次数已经达到10次！可以用500个@2元宝@0换取10次金钱换经验的机会！")
    end
--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_9")==1)then
					LuaSay("晋清公主：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_9",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_9")==2)then
					LuaSay("晋清公主：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_9",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("晋清公主：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("晋清公主：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end

	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

elseif(answer=="Tsnpc_11")then
	if(LuaQueryTask("Tsnpc_11")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的秘密信件，上面还三颗红心哇")
		LuaSay("晋清公主：呃，淡定。。。。。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_11",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_11")==2)then
		LuaSay("晋清公主：信我看到了，你回去复命吧，嘿嘿")
	end
elseif(answer=="Tenpc_11")then
	if(LuaQueryTask("Tenpc_11")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主子这次让我传话给你：世间无数丹青手，一片伤心画不成 ")
		LuaSay("晋清公主：有缘无分，何其谈也")
		LuaSetTask("Tenpc_11",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_11")==2)then
		LuaSay("晋清公主：回去告诉你们大人，我都知道了，可是我们永远不可能")
	end

	
elseif(answer=="HYSY")then

	if(LuaQueryStr("lassie")~="")  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(2,1,0))  then
			SYXT(2,0,1)
		else
		    LuaSay("提示：你只要在公聊频道宣誓：“@3"..SYXT(2,1,0).."@0”！然后就能领奖")
		end
	else
		LuaSay("提示：你没有结婚！无法进行此任务！")
	end


elseif(answer=="HYPT")then
	AddMenuItem("@7操作列表","","")
	AddMenuItem("@7申请到婚姻列表","SQ_HY","")
	AddMenuItem("@7我要结婚","zhao_HY","")
	AddMenuItem("@3婚姻誓言","HYSY")
	AddMenuItem("@3婚姻平台说明","HYPTSM")
elseif(answer=="HYPTSM")then
    LuaSay("提示：你只要申请列表成功，你的名字就会存到婚姻列表中！其他玩家就能对你进行求婚了！")
    LuaSay("提示：你选择相应的菜单，点击玩家名字后，你就能向该玩家求婚了了！前提是你要满足结婚条件！")
    LuaSay("提示：在婚姻列表上的名字可以保存3天！3天后会被系统自动删除！如果你结婚成功，你的名字也会被系统从列表删除！")
    LuaSay("提示：申请结婚列表的容量为200！每次申请结婚登记手续费为10000铜币！")
elseif(answer=="SQ_HY")then     ---成功后加入显示婚姻的列表 
	if(IsLassie()==1)then
		LuaSay("提示：您已经结婚不能再申请，可不能这么花心哦@!")
	else
		
		AddMenuItem("@7操作列表","","")
		AddMenuItem("@7申请到婚姻列表","SQ_HY_yes","")
	end
elseif(answer=="SQ_HY_yes")then
	if(LuaIsInRegister("marry")==0) then
		LuaSay("提示：申请结婚登记，要花费@310000铜币@0！")
		if(LuaItemCount("coin")>=10000) then
			LuaAddRegister("marry")
			if(LuaIsInRegister("marry")==1) then
				LuaSay("提示：申请成功！")	
				LuaGive("coin",-10000,"HYPT")
			end
		
		else
			LuaSay("提示：你身上铜币不足@310000@0！")
		end
	else
		LuaSay("提示：你已经处于列表中！")
	end
elseif(answer=="zhao_HY")then   ---显示
	LuaSendRegister("marry")	



--领主开始
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..领主争夺
elseif(answer=="T1005") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(GetCurrentDay()~=LuaQueryStrTask("1005Taskday")) then
		LuaDelTask("T1005")
		LuaDelTask("1005dotime")
		LuaDelTask("task_kill/mon_007/T1005/usefultime")
		LuaDelTask("1005killnum")
		--LuaDelTask("1005time") 
		LuaDelTask("task_kill/mon_007/T1005")
		LuaDelTask("1005Taskday")
	end
	AddMenuItem("@7任务列表","","")
	if(LuaQueryTask("T1005")==0) then 
		LuaSay("晋清公主：每天的11点就可开始参加本地的领主争夺，12点整活动结束，成为领主者，将获得大量经验奖励及蓝色装备1件")
		LuaSay("晋清公主：争夺形式以10分钟之内击杀@3金蛊@0数目最多来评定，可以多次提交成绩，取其中最好的一次作为最后的成绩")
		
		AddMenuItem("占领申请","shenqing","")
	elseif(LuaQueryTask("T1005")==1) then 
		AddMenuItem("成绩提交","tijiao","")
	elseif(LuaQueryTask("T1005")==2 and hour==11 and min<50) then 
		AddMenuItem("继续杀怪","mapown","")
	end
	AddMenuItem("领主信息","xinxi")
	AddMenuItem("领主称号","chenghao")
	AddMenuItem("领主奖励","jiangli")

elseif(answer=="shenqing") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(level<=50) then 
		if(hour==11) then
			LuaDelTask("1005firstget")
			if(IsMapHostNoParameter()~="true")then
				LuaSay("晋清公主：地图领主那可是无上的荣耀，想要成为建康城的领主吗？那就快快报名吧，只需要缴纳@32000铜币@0就可以了")
				LuaDelTask("647firstget")
				AddMenuItem("@7任务列表","","")
				AddMenuItem("报名","mapown","")
				AddMenuItem("放弃争夺","nomapown","")
			else
				LuaSay("晋清公主：在任领主不可参加其他领地的争夺")
			end
		elseif(hour<11)then
			LuaSay("晋清公主：建康城的领主争夺活动还没开始呢，11点整才正式开始")
		else
			LuaSay("晋清公主：真是可惜，建康城的争夺活动已经结束，每天的11:00到11:50之前都可以到我这里来报名")
		end
      else
		LuaSay("晋清公主：50级以下的玩家才能参加建康城领主的争夺哦")
      end

elseif(answer=="tijiao") then   
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour<12) then
		local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
		if(killnum>0)then
			local usetime=GetCurrentTime()-LuaQueryTask("1005time")
			if(usetime>=540) then  
				if(killnum>LuaQueryTask("1005killnum"))then             -------------最好成绩处理
					LuaSetTask("1005killnum",killnum)  
					SaveMaxValueInRoom(killnum)
				end
				LuaSay("晋清公主：你在刚才的10分钟内，共击杀了@3"..killnum.."@0个金蛊，你现在的最好成绩是@3"..LuaQueryTask("1005killnum").."个")
				LuaSetTask("T1005",2)
				UpdateMenu()
				if(hour==11 and min<=50)then
					LuaSay("晋清公主：你还要继续挑战地图领主吗？那就继续以最快速度去击杀金蛊吧，最后将记录你的最好成绩")
	    				AddMenuItem("@7任务列表","","")
					AddMenuItem("继续杀怪","mapown","")            
					AddMenuItem("放弃争夺","giveup","")
				end
			else
				LuaSay("晋清公主：你确定要提交成绩吗？10分钟的时间还没到呢，你还可以继续击杀金蛊以提高成绩")
				AddMenuItem("@7选择列表","","")
				AddMenuItem("不提交","goon","")
				AddMenuItem("@1提交@0","nowtijiao","")
			end
		else
			LuaSay("晋清公主：你在刚才的活动中，没有击杀任何金蛊，不可提交成绩")
		end
	else
		LuaSay("晋清公主：活动在10点整已经结束了，不可再提交成绩") 
	end
   
elseif(answer=="jiangli") then              -------------第一次的领取和后续每4小时领取一次
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	if(hour~=11)then
		local name=LuaQueryStr("name")
		local grade=GetGradePos(name)
		if(IsMapHost("lu_jkc")=="true")then         
			if(LuaQueryTask("1005firstget")==0) then
				LuaSay("晋清公主：恭喜你在本次的抢占领地中夺得了头标，成为本地的领主，可以获得@3"..LuaQueryStr("title").."@0的称号。")
				LuaAddJx("combat_exp",80*level^2,"T1005")
				LuaGive("e_earring001t",1,2)  
				LuaSetTask("T1005",99) 
				LuaNotice("@2建康城领主"..LuaQueryStr("name").."@0领取了@22000@0铜币蓝装一件和大量经验,每4小时还能再领一次奖励")
				LuaSetTask("1005time",GetCurrentTime()) 
				LuaSetTask("1005firstget",1) 
				LuaGive("coin",2000,"T1005")
				LuaSay("晋清公主：在本地领主易主之前，你每隔4小时都可以到我这里来领取奖励")  
				UpdateMenu()
			else
				local shijiancha=(GetCurrentTime()-LuaQueryTask("1005time"))
				if(shijiancha>=14400) then
					LuaSetTask("1005time",GetCurrentTime()) 
					LuaAddJx("combat_exp",20*level^2,"T1005")
					LuaGive("coin",1000,"T1005")
					LuaNotice("@2建康城领主"..LuaQueryStr("name").."@0领取了@21000@0铜币和大量经验")
					LuaSay("晋清公主：在本地领主易主之前，你每隔4小时都可以到我这里来领取奖励")   
				else
					LuaSay("晋清公主：2次奖励的领取间隔必须要大于4小时，你现在不可领取")
				end
			end
       
		elseif(grade==2 and LuaQueryTask("T1005")==2)then                    
			LuaSay("晋清公主：虽然没有拿到本地的领主地位，拿到第2名也是可喜可贺的。继续努力，争取下次夺魁")
			LuaGive("coin",1500,"T1005")
			LuaAddJx("combat_exp",60*level^2,"T1005")
			LuaNotice("@2建康城领主第2名"..LuaQueryStr("name").."@0领取了@21500@0铜币和大量经验")
			LuaSetTask("T1005",99)
			UpdateMenu()
		elseif(grade==3 and LuaQueryTask("T1005")==2)then                       
			LuaSay("晋清公主：虽然没有拿到本地的领主地位，拿到第3名也是可喜可贺的。继续努力，争取下次夺魁")
			LuaGive("coin",1000,"T1005")
			LuaAddJx("combat_exp",40*level^2,"T1005")
			LuaNotice("@2建康城领主第3名"..LuaQueryStr("name").."@0领取了@21000@0铜币和大量经验")
			LuaSetTask("T1005",99)
			UpdateMenu()
		else
			LuaSay("晋清公主：前3名都将获得大量的经验奖励，领主还可获得蓝装1件，可惜阁下不是领主啊")
		end
		
	else
		LuaSay("晋清公主：地图领主现在还名花无主，12点整才会产生新的地图领主")
	end
	
	
	

elseif(answer=="chenghao") then
	local name=LuaQueryStr("name")
	local grade=GetGradePos(name)
	if(IsMapHost("lu_jkc")=="true")then
		if(QueryTitle("title")~=10) then       
			if(hour==11) then
				LuaSay("晋清公主：现在正是建康城领主争夺活动期间，不可获得领主称号，等最终结果出来后，再来找我")
			else
				LuaSay("晋清公主：你现在是建康城的领主，想要激活称号吗？")
				AddMenuItem("@7选择列表","")
				AddMenuItem("激活称号","jihuo")
				AddMenuItem("不激活","bujihuo")
			end
		else
			LuaSay("晋清公主：你已经激活了领主称号")
		end
	else
		LuaSay("晋清公主：你不是本地的领主，无法获得领主称号")
	end

elseif(answer=="xinxi") then
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local min=GetCurrentMinute()
	LuaSay("晋清公主：建康城领主抢夺以杀怪方式抢夺。")
	LuaSay("晋清公主：11点开始报名，11点50分结束报名，12点决出东郊之领主。")
	if(hour==11 and LuaQueryTask("T1005")>=1) then
		local chengji=GetBestGradeNum()
		LuaSay("晋清公主：现在暂时排第一的，是杀了@3"..chengji.."@0个金蛊，时间无多，大家努力追赶把。")    
	end

     
elseif(answer=="giveup") then
		local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
		LuaSay("晋清公主：你现在10分钟内杀金蛊的成绩为@3"..killnum.."个@0，你确定不再继续争夺了吗？")
		AddMenuItem("@7选择列表","")
		AddMenuItem("继续争夺","mapown")
		AddMenuItem("放弃争夺","fangqi")


elseif(answer=="mapown") then
	if(LuaQueryTask("T1005")==0) then    
		if(LuaItemCount("coin")>=2000) then
			LuaGive("coin",-2000,"T1005")   
			LuaSay("晋清公主：在@310分钟内@0击杀金蛊最多的玩家，将成为本地的领主，不过成绩需要在12点之前提交")
			LuaSetTask("T1005",1)
			LuaSetTask("task_kill/mon_007/T1005/usefultime",GetCurrentTime()+600)
			LuaSetTask("1005time",GetCurrentTime())	 
			LuaSetTask("task_kill/mon_007/T1005",1)
			LuaSetTask("1005Taskday",GetCurrentDay())
			UpdateMenu()
		else
			LuaSay("晋清公主：必须有@32000铜币@0才可报名")
		end
	else
		LuaSay("晋清公主：在@310分钟内@0击杀金蛊最多的玩家，将成为本地的领主，不过成绩需要在12点之前提交")
		LuaSetTask("task_kill/mon_007/T1005/usefultime",GetCurrentTime()+600)
		LuaSetTask("1005time",GetCurrentTime())	
		LuaSetTask("T1005",1) 
		LuaSetTask("task_kill/mon_007/T1005",1)
		UpdateMenu()
	end
  


elseif(answer=="goon") then  
     LuaSay("晋清公主：这才是明智的选择，打满10分钟就会有最大的可能争夺到领主之位")

elseif(answer=="nowtijiao") then  
	local killnum=LuaQueryTask("task_kill/mon_007/T1005")-1
	if(killnum>LuaQueryTask("1005killnum"))then            
		LuaSetTask("1005killnum",killnum)  
		SaveMaxValueInRoom(killnum)
		LuaSay("晋清公主：你刚才共击杀了@3"..killnum.."@0个金蛊，你现在的最好成绩是@3"..LuaQueryTask("1005killnum").."个")
		LuaSetTask("T1005",2)
		UpdateMenu()
	else
		LuaSay("晋清公主：你本次提交的成绩没有超过你的最好成绩，不能提交，还是再去多杀几个金蛊吧。")
	end

elseif(answer=="nomapown") then  
	LuaSay("晋清公主：大好的机会等着你，难道你就这样放弃了，在11：50之前都可以来我这里报名")

elseif(answer=="jihuo")then
	SetTitleMeg(10)                    
	LuaSay("晋清公主：你获得了@3"..LuaQueryStr("title").."@0的称号")
elseif(answer=="bujihuo")then
	LuaSay("晋清公主：拥有多个称号时，最后获取的称号会覆盖前面的称号，你可以到相应的npc处领取喜欢的称号")


elseif(answer=="fangqi")then
      LuaSay("晋清公主：你已经放弃了继续争夺领主，刚才的成绩将作为最后的领主评选标准")
      LuaSetTask("T647",99)




--------------**七夕活动**---------------
elseif(answer=="Tqixijie") then
	AddMenuItem("@7七夕情人节","")
	AddMenuItem("@3七夕祝福","Tqxzf")
	AddMenuItem("@3玫瑰花开","Tmghk")
	--AddMenuItem("@3咫尺传双鲤","Tqrj")
	AddMenuItem("@3七夕兑换","Tqxdh")
	AddMenuItem("@7活动介绍","hdjs")	
-------------**活动介绍**----------------
elseif(answer=="hdjs") then
	LuaSay("@7活动时间@0：8月13号到8月19号")
        LuaSay("@7活动地点@0：洛邑城西、洛邑城、种植场、天涯海角")
	LuaSay("@7七夕祝福@0：第一步，得到河灯到@4静谧村庄@0的@3林韵仙子@0处（可通过渔翁处进入），第二步，回到@3晋清公主@0处回答问题，第三步，到@3幸运老人@0处，完成后有几率获得@3喜鹊翎毛@0")
        LuaSay("@7玫瑰花开@0：第一步，男女组队到@4建康城南@0的@3种子商处种植玫瑰@0，得到@2绽放的玫瑰@0。第二步，到晋清公主处赠送玫瑰，有@2喜鹊翎毛@0的玩家有很大几率获得宝箱等道具！")
       -- LuaSay("@7咫尺传双鲤@0：第一步:到@4洛风林@0里的@3黄鹂@0和@4黑风洞@0中的@3百里明@0处对话，第二步，到渔翁处钓@22条鲤鱼@0回复晋清公主，完成后可获得情侣装、经验等！")
	LuaSay("@7七夕兑换@0：使用一个@3玫瑰花骨朵@0和一个@33级毛@0有机会获得@3喜鹊翎毛@0，使用一个@35级毛@0可以换一个@3喜鹊翎毛@0")
---------------**玫瑰花开**--------------
elseif(answer=="Tmghk")then
  	if(TeamCount()==2 and LuaQuery("level")>10 and TeamQueryStr("gender")~=LuaQueryStr("gender"))then
		if(GetCurrentDay()~=LuaQueryStrTask("mghkday"))then
		LuaDelTask("TmghkM")
		LuaDelTask("TmghkW")
		LuaSetTask("Tmghka",0)
		LuaSetTask("Tmghkb",0)
		LuaSetTask("mghkday",GetCurrentDay())
		end
		if(LuaQueryStrTask("mghkday")~=TeamQueryStrTask("mghkday"))then
			LuaSay("晋清公主：只有你的伴侣接过此活动，你才可以接！和你的伴侣一起来做这个活动吧！")
			--LuaSay(""..LuaQueryStrTask("mghkday").."  "..TeamQueryStrTask("mghkday").."")
			LuaSendMenu()
			return 1
		end	 
		if(TeamCount()==2 and ((LuaQueryTask("TmghkW")==0 and LuaQueryStr("gender")=="女性") or (LuaQueryTask("TmghkM")==0 and LuaQueryStr("gender")=="男性")))then
			if((LuaQueryTask("TmghkW")==0 )and LuaQueryStr("gender")=="女性")then
				LuaSay("晋清公主：今天是情人节，送你@33棵玫瑰种子@0！玫瑰种子拿好了！")
				LuaSay("晋清公主：拉着他的手到@4建康城南@0的@3种子商人@0处种植，种出@3绽放的玫瑰@0后在来找我吧！")
				LuaSay("提示：玫瑰种子可在任意种植场种植,得到@3喜鹊翎毛@0的玩家，在赠送玫瑰时有几率获得@1神秘大奖@0！")
				LuaSetTask("TmghkW",1)
				LuaGive("o_seed012",3)	
				LuaSetTask("mghkday",GetCurrentDay())
				AddLog("玫瑰花开",mghkW)
			elseif((LuaQueryTask("TmghkM")==0 )and LuaQueryStr("gender")=="男性")then
				LuaSay("种子商人：今天是情人节，送你@33棵玫瑰种子@0！玫瑰种子拿好了！")
				LuaSay("晋清公主：牵着她的手到@4建康城南@0的@3种子商人@0处种植吧！等你种出@3绽放的玫瑰@0后在来找我吧！")
				LuaSay("提示：玫瑰种子可在任意种植场种植，得到@3喜鹊翎毛@0的玩家，在赠送玫瑰时有几率获得@1神秘大奖@0！")
				LuaGive("o_seed012",3)	
				LuaSetTask("TmghkM",1)
				AddLog("玫瑰花开",mghkM)
			end	
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW") == 1 and  LuaQueryStr("gender")=="女性") or (LuaQueryTask("TmghkM") == 1 and LuaQueryStr("gender")=="男性"))) then
			if(LuaQueryTask("TmghkW") ==1 and LuaQueryStr("gender")=="女性")then
				local a=LuaItemCount("o_mission141")
				if(a>=1) then
				LuaSay("晋清公主；好美的花啊！把花送给他吧！")
				AddMenuItem("请选择","")
				AddMenuItem("赠送1朵【情有独钟】","yes1")
				AddMenuItem("赠送3朵【我很爱你】","yes3")
				AddMenuItem("赠送9朵【天长地久】","yes9")
				AddMenuItem("留着","no")
				else    
				LuaSay("晋清公主：玫瑰花呢？你还没有得到一朵@3绽放的玫瑰@0，到@4建康城南@0的@3种子商人@0处种植玫瑰花儿，等你有了花儿后再来找我吧！")
				end
			elseif(LuaQueryTask("TmghkM") == 1 and LuaQueryStr("gender")=="男性") then
				local b=LuaItemCount("o_mission141")
				if(b>=1) then
				LuaSay("晋清公主；好美的花啊！把花送给她吧！")
				AddMenuItem("请选择","")
				AddMenuItem("赠送1朵【情有独钟】","yes1")
				AddMenuItem("赠送3朵【我很爱你】","yes3")
				AddMenuItem("赠送9朵【天长地久】","yes9")
				AddMenuItem("留着","no")
				else
				LuaSay("晋清公主：玫瑰花呢？你还没有得到一朵@3绽放的玫瑰@0！到@4建康城南@0的@3种子商人@0处种植玫瑰花儿，等你有了花儿后再来找我吧！")
				end
			end
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW")==2 and LuaQueryStr("gender")=="女性") or (LuaQueryTask("TmghkM")==2 and LuaQueryStr("gender")=="男性")))then
			if(LuaQueryTask("TmghkW")==2 and LuaQueryStr("gender")=="女性")then
				local a=3-LuaQueryTask("Tmghka")
				if(a>0)then
				LuaSay("晋清公主：此次@3玫瑰花开@0活动您已完成！今天您还有@3"..a.."@0次赠送玫瑰的机会！")
				LuaDelTask("TmghkW")
				else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限!")
				LuaSetTask("TmghkW",99)
				end
			else
			if(LuaQueryTask("TmghkM")==2 and LuaQueryStr("gender")=="男性")then
				local b=3-LuaQueryTask("Tmghkb")
				if(b>0)then
				LuaSay("晋清公主：此次玫瑰花开活动您已完成！今天您还有@3"..b.."@0次赠送玫瑰的机会！")
				LuaDelTask("TmghkM")
				else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限!")
				LuaSetTask("TmghkM",99)
				end
			end  
			end
		elseif(TeamCount()==2 and ((LuaQueryTask("TmghkW")==99 and LuaQueryStr("gender")=="女性") or (LuaQueryTask("TmghkM")==99 and LuaQueryStr("gender")=="男性")))then
			if(LuaQueryTask("TmghkW")==99 and LuaQueryStr("gender")=="女性")then
			LuaSay("晋清公主：今日@3玫瑰花开@0活动您已完成！")
			DelLog("mghkW")
			elseif(LuaQueryTask("TmghkM")==99 and LuaQueryStr("gender")=="男性")then
			LuaSay("晋清公主：今日@3玫瑰花开@0活动您已完成！")
			DelLog("mghkM")
			end      
		end	
	else
	    LuaSay("晋清公主：需要@2等级超过10级的异性玩家两人组队@0才可接此任务！或是@2你的队友已经和别人组过队了@0，另找一个人做你的伴侣吧！")
 	end
	UpdateMenu()

	elseif(answer=="yes1")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="女性" and LuaItemCount("o_mission141")>=1)then		
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("晋清公主：赠送成功！")
				LuaAddTask("Tmghka",1)
				LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了一朵@1情有独钟@0的红玫瑰！")
				if(LuaQuery("level")==70)then
				LuaGive("coin",30000,"TmghkW")
				else
				LuaAddJx("combat_exp",level^2*50+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkW",2)
				DelItem("o_mission141",1)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   --3/10的概率获得任务道具
            			if(r==0)then
            			LuaGive("o_box001j",1)                      --1/10的概率获得宝箱
				elseif(r==1)then
				LuaGive("o_state008j",1)                      --1/10的概率获得双倍经验
				elseif(r==2)then
				LuaGive("o_state008j",1)                      --1/10的概率获得双倍经验
            			end
				DelItem("o_mission220",1)
            			end
				UpdateMenu()
			else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
				LuaSetTask("TmghkW",99)
			end
			
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="男性" and LuaItemCount("o_mission141")>=1)then		
			if(LuaQueryTask("Tmghkb")<3)then
			LuaSay("晋清公主：赠送成功！")
			LuaAddTask("Tmghkb",1)
			LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了一朵@1情有独钟@0的红玫瑰！")
			if(LuaQuery("level")==70)then
				LuaGive("coin",30000,"TmghkW")
			else
				LuaAddJx("combat_exp",level^2*50+level*5000,"TmghkW")
			end
			LuaSetTask("TmghkM",2)
			DelItem("o_mission141",1)
			if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   --3/10的概率获得任务道具
            			if(r==0)then
            			LuaGive("o_box001j",1)                      --1/10的概率获得宝箱
				elseif(r==1)then
				LuaGive("o_state008j",1)                     --1/10的概率获得双倍经验
				elseif(r==2)then
				LuaGive("o_state008j",1)                      --1/10的概率获得双倍经验
				end
			DelItem("o_mission220",1)
			end
			UpdateMenu()
			else
			LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
			LuaSetTask("TmghkM",99)
			end
		end
 --------------------***赠送3朵玫瑰*------------------------------------------------------------
    elseif(answer=="yes3")then
	local level=LuaQuery("level")
		if(level>80)then
		level=80
		end
		if(LuaItemCount("o_mission141")>=3)then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="女性" )then
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("晋清公主：赠送成功！")
				LuaAddTask("Tmghka",1)
				LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了3朵@1我爱你@0的红玫瑰！")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*150+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*150+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkW",2)
				DelLog("玫瑰花开",mghkW)
				DelItem("o_mission141",3)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   
            			if(r==5)then
            			LuaGive("o_box001j",1)                      --1/10的概率获得宝箱
				elseif(r==8)then
				LuaGive("o_box002",1)                      --1/10的概率获得幸宝盒运
				elseif(r<2)then
				LuaGive("o_state008j",1)                      --1/10的概率获得双倍经验
				elseif(r==7)then
				LuaGive("o_state087j",1)                      --1/10的概率获得红包
            			end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
				LuaSetTask("TmghkW",99)
			end
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="男性" )then
			if(LuaQueryTask("Tmghkb")<3)then
				LuaSay("晋清公主：赠送成功！")
				LuaAddTask("Tmghkb",1)
				LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了3朵@1我爱你@0的红玫瑰！")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*150+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*150+level*5000,"TmghkW")
				end
				LuaSetTask("TmghkM",2)
				DelLog("玫瑰花开",mghkM)
				DelItem("o_mission141",3)
				if(LuaItemCount("o_mission220")>=1)then
				local r = LuaRandom(10)			   
            			if(r==5)then
            			LuaGive("o_box001j",1)                      --1/10的概率获得宝箱
				elseif(r==8)then
				LuaGive("o_box002",1)                      --1/10的概率获得幸宝盒运
				elseif(r<2)then
				LuaGive("o_state008j",1)                      --1/10的概率获得双倍经验
				elseif(r==7)then
				LuaGive("o_state087j",1)                      --1/10的概率获得红包
				end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
				LuaSetTask("TmghkM",99)
			end
		end
		else
			LuaSay("晋清公主：你还没有凑齐3朵玫瑰花呢！")
		end
 -------------------------**赠送9朵玫瑰**---------------------------------------
        elseif(answer=="yes9")then
		local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(LuaItemCount("o_mission141")>=9)then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==1  and LuaQueryStr("gender")=="女性" )then
			if(LuaQueryTask("Tmghka")<3)then
				LuaSay("晋清公主：赠送成功！")
				LuaAddTask("Tmghka",1)
				LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了9朵@1天长地久@0的红玫瑰！")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*250+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*250+level*5000,"TmghkW")		--领取经验
				end
				LuaSetTask("TmghkW",2)
				DelLog("玫瑰花开",mghkW)
				DelItem("o_mission141",9)
				if(LuaItemCount("o_mission220")>=1)then
				r = LuaRandom(20)			  
            			if(r<4)then
            			LuaGive("o_box001j",1)                      --2/10的概率获得宝箱
				elseif(5<r and r<10)then
				LuaGive("o_box002",1)                      --2/10的概率获得宝盒
				elseif(r==10)then
				LuaGive("o_state089j",1)                      --1/20的概率获得祝福卷
				elseif(r==11)then
				LuaGive("e_state088j",1)                      --1/20的概率得请柬
				elseif(15<r and r<20)then
				LuaGive("o_state008j",1)                      --2/10的概率获得双倍经验
				elseif(11<r and r<13)then
				LuaGive("o_state087j",1)                      --2/10的概率获得红包
            			end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
				LuaSetTask("TmghkW",99)
			end
		elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==1  and LuaQueryStr("gender")=="男性" )then
			if(LuaQueryTask("Tmghkb")<3)then
				LuaSay("晋清公主：赠送成功！")
				LuaAddTask("Tmghkb",1)
				LuaNotice("玩家@3"..LuaQueryStr("name").."@0为玩家@3"..TeamQueryStr("name").."@0送出了9朵@1天长地久@0的红玫瑰！")
				if(LuaQuery("level")==70)then
					LuaGive("coin",(level^2*250+level*5000)/30,"TmghkW")
				else
					LuaAddJx("combat_exp",level^2*250+level*5000,"TmghkW")		--领取经验
				end
				LuaSetTask("TmghkM",2)
				DelLog("玫瑰花开",mghkM)
				DelItem("o_mission141",9)
				if(LuaItemCount("o_mission220")>=1)then
				r = LuaRandom(20)			  
            			if(r<4)then
            			LuaGive("o_box001j",1)                      --2/10的概率获得宝箱
				elseif(5<r and r<10)then
				LuaGive("o_box002",1)                      --2/10的概率获得宝盒
				elseif(r==10)then
				LuaGive("o_state089j",1)                      --1/20的概率获得祝福卷
				elseif(r==11)then
				LuaGive("e_state088j",1)                      --1/20的概率获得请柬
				elseif(15<r and r<20)then
				LuaGive("o_state008j",1)                      --2/10的概率获得双倍经验
				elseif(11<r and r<13)then
				LuaGive("o_state087j",1)                      --2/10的概率获得红包
				end
				DelItem("o_mission220",1)
				end
				UpdateMenu()
			else
				LuaSay("晋清公主：您今天赠送玫瑰已达到上限！")
				LuaSetTask("TmghkM",99)
			end
		end
		else
			LuaSay("晋清公主：你还没有凑齐9朵玫瑰花呢！")
		end
        elseif(answer=="no")then
		if(TeamCount()==2 and LuaQueryTask("TmghkW") ==2  and LuaQueryStr("gender")=="女性" and LuaItemCount("o_mission141")>=1)then		
		LuaSay("晋清公主：哎！一朵花就不愿送！")
	    elseif(TeamCount()==2 and LuaQueryTask("TmghkM") ==2  and LuaQueryStr("gender")=="男性" and LuaItemCount("o_mission141")>=1)then
		LuaSay("晋清公主：哎！一朵花就不愿送！")
		UpdateMenu()
		end
 ---------------**七夕祝福**----------------------------------------------	      		 
       		 
elseif(answer=="Tqxzf")  then
	if(GetCurrentDay()~=LuaQueryStrTask("qxzfday"))then
		LuaDelTask("Tqxzf")
		LuaSetTask("Tqxzfa",0)    --设置答题个数的值为：Tqxzfa
		LuaSetTask("qxzfday",GetCurrentDay())
	end
	if(LuaQuery("level")>10)then
	if(LuaQueryTask("Tqxzf")==0 )then
		LuaSay("晋清公主：今天是牛郎与织女相会的日子，送你一盏河灯到@3林韵仙子@0处帮助牛郎织女照亮鹊桥之路吧")
		LuaSay("晋清公主：林韵仙子在静谧村庄，你可通过渔翁传送你过去，在河边就能找到@3林韵仙子@0了")
		LuaGive("o_mission221",1)
		UpdateTopSay("到林韵仙子那里去吧！")
		LuaSetTask("Tqxzf",1)
		AddLog("七夕祝福",qxzf)
		LuaSetTask("qxzfday",GetCurrentDay())
	UpdateMenu()
	UpdateNPCMenu("yuweng")
	elseif(LuaQueryTask("Tqxzf")==1 )then
		LuaSay("晋清公主：怎么还没有到@3林韵仙子@0那里去啊？")
		LuaSay("晋清公主：林韵仙子在静谧村庄，你可通过渔翁传送你过去，在河边就能找到@3林韵仙子@0了")
 ------------------**开始答题**---------------------------------
	elseif(LuaQueryTask("Tqxzf")==2 ) then
		if(LuaQueryTask("Tqxzfa")~=99)then
		r=LuaRandom(16)
		if(r==0)then
		LuaSay("晋清公主：七夕又名什么节？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("情人节","F")
		AddMenuItem("乞巧节","T")
		AddMenuItem("男女节","F")
		AddMenuItem("牛郎织女节","F")

      		elseif(r==1)then
		LuaSay("晋清公主：织女是何方神圣？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("三界之外","F")
		AddMenuItem("凡人","F")
		AddMenuItem("鬼怪","F")
		AddMenuItem("仙女","T")

		elseif(r==2)then
		LuaSay("晋清公主：牛郎有后代吗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("一女","F")
		AddMenuItem("一男","F")
		AddMenuItem("一男一女","T")
		AddMenuItem("没有","F")

		elseif(r==3)then
		LuaSay("晋清公主：民间七夕有哪些习俗？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("划船","F")
		AddMenuItem("乞巧","T")
		AddMenuItem("放烟火","F")
		AddMenuItem("没有什么","F")

		elseif(r==4)then
		LuaSay("晋清公主：盈盈一水间，后半句是什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("相去复几许","F")
		AddMenuItem("脉脉不得语","T")
		AddMenuItem("泣涕零如雨","F")
		AddMenuItem("皎皎河汉女","F")

		elseif(r==5)then
		LuaSay("晋清公主：两情若是久长时,后半句是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("穿尽红丝几万条","F")
		AddMenuItem("又岂在朝朝暮暮","T")
		AddMenuItem("年年并在此宵中","F")
		AddMenuItem("忍顾鹊桥归路","F")

		elseif(r==6)then
		LuaSay("晋清公主：坐看牵牛织女星,前半句是什么？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("轻罗小扇扑流萤","F")
		AddMenuItem("天阶夜色凉如水","T")
		AddMenuItem("银烛秋光冷画屏","F")
		AddMenuItem("不教回脚渡天河","F")
		elseif(r==7)then
		LuaSay("晋清公主：自是人间一周岁,后半句是？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("何妨天上只黄昏","T")
		AddMenuItem("谁道秋期有泪痕","F")
		AddMenuItem("年年并在此宵中","F")
		AddMenuItem("忍顾鹊桥归路","F")

		elseif(r==8)then
		LuaSay("晋清公主：年年乞与人间巧，不道人间巧已多。是谁写的？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("崔涂","F")
		AddMenuItem("卢炳","F")
		AddMenuItem("杨璞","T")
		AddMenuItem("曹松","F")
		elseif(r==10)then
		LuaSay("晋清公主：加一笔不好，加一倍不少，打一字？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("涂","F")
		AddMenuItem("大","F")
		AddMenuItem("夕","T")
		AddMenuItem("曹","F")
		elseif(r==11)then
		LuaSay("晋清公主：七夕搭鹊桥，打一航天词语？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("空中接轨","F")
		AddMenuItem("神州一号","F")
		AddMenuItem("空间对接","T")
		AddMenuItem("登陆火星","F")
		elseif(r==12)then
		LuaSay("晋清公主：.七夕一度鹊纷飞，打一四字成语？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("万事如意","F")
		AddMenuItem("舆人之诵","F")
		AddMenuItem("过河拆桥","T")
		AddMenuItem("有影无踪","F")
		elseif(r==13)then
		LuaSay("晋清公主：七夕未遇笔下难，打一五字成语？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("旧瓶装新酒","F")
		AddMenuItem("水火不相容","F")
		AddMenuItem("无巧不成书","T")
		AddMenuItem(" 一去不复返","F")
		elseif(r==14)then
		LuaSay("晋清公主：俊袭人七夕祷月，打一四字成语？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("风起云飞","F")
		AddMenuItem("月怀一鸡","F")
		AddMenuItem("花言巧语","T")
		AddMenuItem("不知不识","F")
		elseif(r==15)then
		LuaSay("晋清公主：牛郎织女会七夕，打一词牌名 ？")
		AddMenuItem("@7答案选项","")
		AddMenuItem("浪淘沙","F")
		AddMenuItem("暗香","F")
		AddMenuItem("鹊桥仙","T")
		AddMenuItem("丑奴儿 ","F")
		end
	elseif(LuaQueryTask("Tqxzfa")==99)then
		LuaSay("晋清公主：答题活动已完成，还在这里干什么？到@3林韵仙子@0那里去吧！")
		LuaSay("晋清公主：林韵仙子在静谧村庄，你可通过渔翁传送你过去，在河边就能找到@3林韵仙子@0了")
		LuaDelTask("Tqxzfa")
	end 	
-------------------**答题结束**-------------------------------------------------
	elseif(LuaQueryTask("Tqxzf")==3)then
		LuaSay("晋清公主：答题活动已完成，还在这里干什么？到@3林韵仙子@0那里去吧！")
		LuaSay("晋清公主：林韵仙子在静谧村庄，你可通过渔翁传送你过去，在河边就能找到@3林韵仙子@0了")
	elseif(LuaQueryTask("Tqxzf")==4)then
		LuaSay("晋清公主：@3林韵仙子@0交代你的事情，你办完了吗？")
	elseif(LuaQueryTask("Tqxzf")==5 )then
		LuaSay("晋清公主：少侠真是有情有义之人呐！跑了这么远的路，幸苦了！这是过节的一点心意，收下吧！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Tqxzfjl") 
		UpdateMenu()
		UpdateNPCMenu("yuweng")
	elseif(LuaQueryTask("Tqxzf")==99 )then
		LuaSay("晋清公主：你今天已经完成了七夕祝福的活动！")			
	end 
	else
	    LuaSay("晋清公主：你等级还不够啊！等过了10级以后在来吧！")
	end
	
	elseif(answer=="F")then                      		--答题错误
		if(LuaQueryTask("Tqxzfa")<4)then
			LuaSay("晋清公主：你答错了，呜呜~ ~ ~这道题的奖励也没了！")
			LuaAddTask("Tqxzfa",1)
			DoTalk("Tqxzf")
		else
			LuaSay("晋清公主：你答错了，呜呜~ ~ ~这道题的奖励也没了！")
			LuaSay("晋清公主：答题活动已完成，快到@3林韵仙子@0那里去吧！")
			LuaSetTask("Tqxzfa",99)
			LuaSetTask("Tqxzf",3)	
		end
		UpdateMenu()
		UpdateNPCMenu("yuweng")
	elseif(answer=="T") then                            --答题正确
		if(LuaQueryTask("Tqxzfa")<4) then
			LuaSay("晋清公主：恭喜你答对了！")
            		ra=LuaRandom(10)
			if(ra<2) then
            		LuaGive("o_mission220",1)	--1/5概率获得喜鹊翎毛
			LuaSay("晋清公主：恭喜你得到了一个珍贵的@3喜鹊翎毛@0！")
			end                --获得喜鹊翎毛
            		LuaSay("晋清公主:这个问题太简单了，我再问你一个问题！请继续点击")
            		LuaAddTask("Tqxzfa",1)
			DoTalk("Tqxzf")
		else
			LuaSay("晋清公主：恭喜你答对了！")
            		ra=LuaRandom(10)
			if(ra<2) then
            		LuaGive("o_mission220",1)	--1/5概率获得喜鹊翎毛
			LuaSay("@3晋清公主：恭喜你得到了一个珍贵的@3喜鹊翎毛@0！")
			end                --获得喜鹊翎毛
			LuaSay("晋清公主：答题活动已完成，快到@3林韵仙子@0那里去吧！")
			LuaSetTask("Tqxzfa",99)
			LuaSetTask("Tqxzf",3)
			
		end
		UpdateMenu()
		UpdateNPCMenu("yuweng")
								--奖励
	elseif(answer=="Tqxzfjl")then
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("Tqxzf")==5)then
		if(LuaQuery("level")==70)then
			LuaGive("coin",(level^2*150+level*10000)/30,Tqxzf)
		else
			LuaAddJx("combat_exp",level^2*150+level*10000,"Tqxzf")
		end
		LuaSetTask("Tqxzf",99)
		DelLog("七夕祝福",qxzf)
		UpdateMenu()	
		end	
 -------------------------------------**七夕兑换**------------------------------------------------------------------
	elseif(answer=="Tqxdh")then
		if(level>10)then
		LuaSay("晋清公主：@3喜鹊翎毛@0是神鸟掉落的吉祥之物，拥有它会给你带来好运！")
		LuaSay("晋清公主：我这里可以兑换珍贵的@3喜鹊翎毛@0，在做玫瑰花开活动的时候拥有喜鹊翎毛会得到丰厚礼品哦！")
		AddMenuItem("@7选择兑换方法","")
		AddMenuItem("放弃兑换","dhno")
		AddMenuItem("合成法","Tqxhc")
		AddMenuItem("互换法","Tqxhh")
		else
		LuaSay("晋清公主：你等级还不够啊！等到了10级后在来吧！")
		end
	elseif(answer=="Tqxhc")then
		LuaSay("晋清公主：您选择了合成法，您需要收一个@3玫瑰花骨朵@0和一个@33级毛@0！")
		LuaSay("提示：@3玫瑰花骨朵@0可以在@4种植场@0种下@3玫瑰种子@0采集得到")
		LuaSay("@1提示：合成有一定风险，请谨慎选择！")
		AddMenuItem("@7你愿意合成吗？","")
		AddMenuItem("让我好好想想","dhno")
		AddMenuItem("愿意合成","Tqxyyhc")
	elseif(answer=="Tqxhh")then
		LuaSay("晋清公主：您选择了互换法，您只需要拿一个@35级毛@0与我交换就可以得到@3喜鹊翎毛@0了！")
		AddMenuItem("@7你愿意互换吗？","")
		AddMenuItem("让我好好想想","dhno")
		AddMenuItem("愿意互换","Tqxyyhh")
	elseif(answer=="Tqxyyhc")then
		if(LuaItemCount("o_material_13")>=1 and LuaItemCount("o_mission140")>=1 )then
			r=LuaRandom(10)
			if(r<3)then
			LuaGive("o_mission220",1)	--1/3概率获得喜鹊翎毛
			LuaSay("晋清公主：恭喜你得到了一个珍贵的@3喜鹊翎毛@0！")
			DelItem("o_material_13",1)
			DelItem("o_mission140",1)
			else
			LuaSay("晋清公主：呜呜~ ~合成失败了！不要灰心，下次准能合成成功。")
			DelItem("o_material_13",1)
			DelItem("o_mission140",1)
			end
		else
			LuaSay("晋清公主：材料还没有收集齐全呢！别忘了我需要一个@3玫瑰花骨朵@0和一个@33级毛@0！")
		end
	elseif(answer=="Tqxyyhh")then
		if(LuaItemCount("o_material_15")>=1 )then
			LuaGive("o_mission220",1)
			LuaSay("晋清公主：恭喜你得到了一个珍贵的@3喜鹊翎毛@0！")
			DelItem("o_material_15",1)
		else
			LuaSay("晋清公主：你还没有一个@35级毛@0呢！等有了一个@35级毛@0后在来找我吧！")
		end
	elseif(answer=="dhno")then
			LuaSay("晋清公主：有喜鹊翎毛，送玫瑰花的时候有机会获得神秘礼物哦，在考虑考虑吧。")
---------------------**咫尺传双鲤**-------------------------------------------------------------------

   elseif(answer=="Tqrj")then--情人节
	if(GetCurrentDay()~=LuaQueryStrTask("qrjday"))then
	LuaSetTask("qrjday",GetCurrentDay())
	LuaDelTask("Tqrj")	
	DelItem("o_mission187",1)
	DelItem("o_mission188",2)
	end
	if(LuaQuery("level")>10 and TeamCount()== 2 and TeamQueryStr("gender")~=LuaQueryStr("gender"))then 
	--情人节活动Tqrj
	--时间:2.14 or 七月初七,续2日
	----步0:鸿雁传情
	--步1:咫尺传双鲤
	--道具:双鲤玉佩o_mission187
	----
	if(LuaQueryTask("Tqrj")==0)then
	LuaSay("第一步:你先到@4洛风林@0里的@3黄鹂@0和@4黑风洞@0中的@3百里明@0处完成@2咫尺传双鲤@0的任务吧.")
	LuaSay("提示：接了此活动后，千万不要与你的情侣随意分手哦！否则会领取不到奖励的")
	LuaSetTask("Tqrjid",TeamQueryStr("id"))
	LuaSetTask("Tqrj",1)
	UpdateMenu()
	elseif(LuaQueryTask("Tqrj")==1)then
		LuaSay("晋清公主：到@4洛风林@0里的@3黄鹂@0那里去吧")
	elseif(LuaQueryTask("Tqrj")==2)then
		LuaSay("晋清公主：到@4黑风洞@0中的@3百里明@0那里去吧")
	elseif(Tqrj==3)then
	LuaSay("相隔天涯难相见比起近在咫尺却不能相见又算得了什么呢.")
	LuaSay("和情侣单独组队交任务奖励会额外增加.")
	AddMenuItem("领取奖励吗?","")
	AddMenuItem("领取奖励","Tqrjjl1")
	elseif(Tqrj==4)then
	LuaSay("今天是个令人期待的日子,许多情侣趁此佳节举办婚礼，让我们开开心心的举办一次节日婚礼吧！.")
	LuaSay("第二步:你速去@2钓鱼台@0钓@2两条鲤鱼@0给我吧.在@4世外桃源@0办婚宴的食材都供不应求了.")
	LuaSetTask("Tqrj",5)
	UpdateMenu()
	elseif(Tqrj==5)then
		if(LuaItemCount("o_mission188")==2)then		
		LuaSay("太好了,这下婚宴不缺食材了.")
		DelItem("o_mission188",2)
		LuaSetTask("Tqrj",6)
		LuaSay("和情侣单独组队交任务奖励会额外增加.")
		AddMenuItem("领取奖励吗?","")
		AddMenuItem("领取奖励","Tqrjjl2")
		else
		LuaSay("你速去@2钓鱼台@0钓@2两条鲤鱼@0给我吧.在@4世外桃源@0办婚宴的食材都供不应求了.")
		end
	elseif(Tqrj==6)then
		LuaSay("太好了,这下婚宴不缺食材了.")
		LuaSay("和情侣单独组队交任务奖励会额外增加.")
		AddMenuItem("领取奖励吗?","")
		AddMenuItem("领取奖励","Tqrjjl2")
	else
	LuaSay("今天你已完成了该任务.")
	end
	else
	LuaSay("晋清公主：等级需要大于10级且男女两人组队的玩家才可接此活动！")
	end 
	
	
	elseif(answer=="Tqrjjl1" and LuaQueryTask("Tqrj")==3)then
		if(LuaFreeBag()<3)then	LuaShowNotify("请至少保有@23@0格背包空间")	return 1 end
		LuaSetTask("Tqrj",4)
			if(level>80)then
		level=80
	end
		if(TeamCount()== 2 and LuaQueryStr("gender")=="男性" and  LuaQueryStrTask("Tqrjid")==TeamQueryStr("id")) then
			if(LuaItemCount("e_clothes071t1")==0 and LuaItemCount("e_pants071t1")==0 and LuaQueryTask("a")==0)then
			LuaGive("e_pants071t1",1,3,"Tqrj")
			LuaGive("e_clothes071t1",1,3,"Tqrj")
			LuaSetTask("a",99)
			end
			LuaAddJx("combat_exp",level^2*30+level*3000,"Tqrj")
			LuaGive("coin",2888,"Tqrj")
		elseif(TeamCount()== 2 and LuaQueryStr("gender")=="女性" and LuaQueryStrTask("Tqrjid")==TeamQueryStr("id"))then
			if(LuaItemCount("e_clothes071t1")==0 and LuaItemCount("e_pants071t1")==0 and LuaQueryTask("b")==0)then
			LuaGive("e_pants071t1",1,3,"Tqrj")
			LuaGive("e_clothes071t1",1,3,"Tqrj")
			LuaSetTask("b",99)
			end
			LuaAddJx("combat_exp",level^2*30+level*3000,"Tqrj")
			LuaGive("coin",1314,"Tqrj")
		else
		LuaSay("提示：哎！你已经和你接活动时的情侣分手了！不能领取奖励！和你@1接此活动时的情侣两人组队@0才可领取奖励哦")
		end		
		LuaSay("(再次对话进入下一步)")
	elseif(answer=="Tqrjjl2" and LuaQueryTask("Tqrj")==6)then
		if(LuaFreeBag()<3)then	LuaShowNotify("请至少保有@23@0格背包空间")	return 1 end
		LuaSetTask("Tqrj",7)
			if(level>80)then
		level=80
	end
  	if(TeamCount()== 2 and LuaQueryStr("gender")=="男性" and  LuaQueryStrTask("Tqrjid")==TeamQueryStr("id")) then
		LuaGive("coin",2888,"Tqrj")
		LuaAddJx("combat_exp",level^2*150+level*10000,"Tqrj")
 	elseif(TeamCount()== 2 and LuaQueryStr("gender")=="女性" and LuaQueryStrTask("Tqrjid")==TeamQueryStr("id"))then
		LuaGive("coin",1314,"Tqrj")
		LuaAddJx("combat_exp",level^2*150+level*10000,"Tqrj")
	else
		LuaSay("提示：哎！你已经和你接活动时的情侣分手了！不能领取奖励！和你@1接此活动时的情侣两人组队@0才可领取奖励哦")

	end





-----------------------
end
LuaSendMenu()
return 1
end
--/////////秒计时转为年月日时分秒///////////
function SelfDefTime2Date(iTime)--iTime=GetCurrentTime()
local seconds=iTime+3600*8
--//seconds=GetCurrentTime()+3600*8
if(seconds>=3600*8)then
local days=floor(seconds/86400)
local weekday=days-floor(days/7)*7
local iYear=1970
local yearday=365
local iDays=days
while
	iDays>=yearday
do
	iYear=iYear+1
	iDays=iDays-yearday
	if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
	yearday=366
	else
	yearday=365
	end
end

local monthday=31
local iMonth=1
while
	iDays>=monthday
do
	iMonth=iMonth+1
	iDays=iDays-monthday
	if(iMonth==2)then
		if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
		monthday=29
		else
		monthday=28
		end
	elseif(iMonth==4 or iMonth==6 or iMonth==9 or iMonth==11)then
		monthday=30
	else
		monthday=31
	end
end
local Year=iYear
local Month=iMonth
local Day=iDays+1
local Hour=floor((seconds-days*86400)/3600)
local Minute=floor((seconds-floor(seconds/3600)*3600)/60)
local Second=floor(seconds-floor(seconds/60)*60)
return Year,Month,Day,Hour,Minute,Second--返回年月日时分秒
else
return 1970,1,1,8,0,0
end
end



shitu={}
shitu[1]={"一日为师终身为师"}
shitu[2]={"我会跟师父一直玩统一玩下去"}
shitu[3]={"一直跟师父走下去"}
shitu[4]={"永远不离开师父不离开统一"}
shitu[5]={"永远不背叛师父不背叛统一"}
shitu[6]={"我永远敬爱我的师父"}


hunyin={}
hunyin[1]={"我爱你直到永远"}
hunyin[2]={"我会跟你一直玩统一玩下去"}
hunyin[3]={"一直陪你走下去"}
hunyin[4]={"永远不离开你不离开统一"}
hunyin[5]={"永远不放弃你不放弃统一"}
hunyin[6]={"我爱你到海枯石烂"}
hunyin[7]={"我要和你永远在统一里面"}

bangpai={}
bangpai[1]={"我愿追随帮主直到永远"}
bangpai[2]={"我会跟帮主一直玩统一玩下去"}
bangpai[3]={"一直追随帮主走下去"}
bangpai[4]={"永远不离开帮派不离开统一"}
bangpai[5]={"永远不背叛帮派不背叛统一"}
bangpai[6]={"我爱我帮"}
bangpai[7]={"帮派是我家变强靠大家"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1表示调用师徒模块，2表示婚姻 ，3表示帮派
            yuju    1表示返回语句，如果传入0 2或其他数字，则无任何返回
            jiangli 1表示调用奖励函数，直接执行，无任何返回。如果传入0 2或其他数字，则无任何返回
	]]
	--[[   LuaQueryStr("lassie")配偶
			LuaQueryStr("master")师父
			LuaQueryRank() > 2，默认帮众=1，堂主=2，长老=3，帮主=4；如果为LuaQueryRank()==0，就是没加帮派

			注意：若更新此模块，要更新相关的npc，只要复制黏贴下即可
			目前用到此模块的npc：1、田伍长 tianwuzhan  ---师徒
			                     2、晋清公主公主jinqing   -婚姻
			                     3、晋帝jindi      ----帮派

	]]
	if(leixing==1)then ----------------------------------------------------------------------------师徒部分
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end

		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return shitu[num][1]
		end

		------------------师徒部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------婚姻部分
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return hunyin[num][1]
		end

		------------------婚姻部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------帮派部分
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ 传入参数为1时返回出语句
		    return bangpai[num][1]
		end

		------------------帮派部分奖励
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("提示：你已经领过该奖励了！一辈子就只能领一次哦！")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end