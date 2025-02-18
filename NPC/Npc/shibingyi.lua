NPCINFO = {
serial= "12" ,
base_name="shibingyi",
icon= 2501, 
NpcMove=2501, 
name= "守城士兵" , 
iconaddr=1, 
butt="10|10|60",
name_color = "CEFFCE" , 
lastsay="快去好玩的建康城吧",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
        havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0	--灰色问号
	if(LuaQueryTask("T74")==1)  then
		AddTopSayMenuItem("@2策马扬鞭【剧情】","T74")
		havetask2 =1
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_shibingyi")==0)  then	--端午节活动
		AddTopSayMenuItem("@2粽子传情","Tduanwu")
		havetask2 =1
	end
	if((LuaQueryTask("Tsnpc_8")==1 or LuaQueryTask("Tsnpc_8")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_8")
		if(LuaQueryTask("Tsnpc_8")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_8")==1 or LuaQueryTask("Tenpc_8")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_8")
		if(LuaQueryTask("Tenpc_8")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T21")==1)then
		AddTopSayMenuItem("@2擎天之柱【剧情】","T21")
	end
--以上为黄色问号部分

	if(LuaQueryTask("T74")==0 and LuaQueryTask("T75")==99)  then
		AddTopSayMenuItem("策马扬鞭【剧情】","T74")
		havetask1 =1
	end
	if(LuaQueryTask("T21")==0 and LuaQueryTask("T74")==99)then
		AddTopSayMenuItem("擎天之柱【剧情】","T21")
		havetask1 =1
	end
--以上为黄色感叹号部分

	AddTopSayMenuItem("@3帮助新人@0","Tdairen")
	if(LuaQueryTask("T74")==99 and level<20)  then
		AddTopSayMenuItem("@9使用坐骑【教程】","T74")
	end	


	--AddTopSayMenuItem("帮派申请测试","bangpai")
--以上为无符号部分
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
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then 
	LuaSay("守城士兵：住在建康城可是一种享受啊，啧啧...擂台、博彩、副本、钓鱼等，无限乐趣，阁下定要去玩玩.@!")
	if(LuaQuery("level")<=25)then
		LuaAddJx("combat_exp",300000,"Tsbjyzs")
	end	
elseif(answer=="Txl_jkcn")then
	AutoGoToNpc("@7是否@0寻路至@4建康南郊方向","lu_jknj")


elseif(answer=="bangpai")then
	AddMenuItem("帮派找人","bangpai_1")
	AddMenuItem("寻找帮派","bangpai_2")
	AddMenuItem("帮派注册","bangpai_3")
	AddMenuItem("散人转化","bangpai_4")
	elseif(answer=="bangpai_1")then
		LuaSendRegister("sanre")
	elseif(answer=="bangpai_2")then
		LuaSendRegister("bangpai")
	elseif(answer=="bangpai_3")then
		LuaAddRegister("sanre")
		LuaSay("加入sanren列表成功")
	elseif(answer=="bangpai_4")then
		LuaAddRegister("sanre")
		LuaSay("加入sanren列表成功")


--------------------------端午节活动------------------------------
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_shibingyi")==0)  then
        if(LuaItemStatusNormalCount("o_mission205")>=1) then
        LuaSay("守城士兵：难得他想得周到，每年端午都给我送粽子")
		DelItem("o_mission205",1)
		LuaSetTask("Tdwj_zzcq_shibingyi",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."：在下真是惭愧，竟然空手而来，这就去准备@3中品粽子")
        end
	end

--------------------------------

elseif(answer=="T74") then              ------------------------策马扬鞭 
		if(LuaQueryTask("T74")==0 or LuaQueryTask("T74")==1) then  
			LuaSay("守城士兵：@3田伍长@0那厮尽想着我的坐骑了，由于是公家的坐骑，我不能私自做主送人，只能借你体验@3三天@0。@!")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("守城士兵：按@3菜单@0再按@3背包键@0进入@2背包@0，@3选择坐骑@0后@3使用@0，将它@3装备在身上@0，退出背包。")
				LuaSay("守城士兵：按下@3坐骑@0然后点击快捷键栏中@2任意一格@0，则会设置坐骑快捷键成功！这时你便可看到快捷栏里有坐骑图标，点击一下就可以了。")
			else
				LuaSay("守城士兵：按@3确认键@0再按@33键@0进入@2背包@0，@3选择坐骑@0后@3使用@0，将它@3装备在身上@0，退出背包。")
				LuaSay("守城士兵：按下@39键@0可@2切换快捷键栏@0，这时你便可看到@3使用坐骑的8键@0，按8键便可以上下坐骑了。")
			end
			LuaSay("守城士兵：此外不同的坐骑会有不同的速度加成，不同等级的坐骑更有不同的属性加成哟~@!。")
			LuaSay("守城士兵：体验过后你可以到@4建康城@0的@3驯兽师@0那换取@3坐骑蛋@0@2孵化@0真正的坐骑，建议您先去东郊锻炼升级哈。@!")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T74jl")
		elseif(LuaQueryTask("T74")==99) then
                        if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("守城士兵：点击@3菜单@0再点击@3背包键@0进入@2背包@0，@3选择坐骑@0后@3使用@0，将它@3装备在身上@0，退出背包。")
				LuaSay("守城士兵：点击@3坐骑@0然后点击快捷键栏中@2任意一格@0，则会设置坐骑快捷键成功！这时你便可看到快捷栏里有坐骑图标，点击一下就可以了。")
			else
				LuaSay("守城士兵：按@3确认键@0再按@33键@0进入@2背包@0，@3选择坐骑@0后@3使用@0，将它@3装备在身上@0，退出背包。")
				LuaSay("守城士兵：按下@38@0可@2切换快捷键栏@0，这时你便可看到@3使用坐骑的8键@0，按8键便可以上下坐骑了。")
			end	
			LuaSay("守城士兵：此外不同的坐骑会有不同的速度加成，不同等级的坐骑更有不同的属性加成哟~@!。")
		end
elseif(answer=="T74jl")then	            
		       if(LuaQueryTask("T74")==0 or LuaQueryTask("T74")==1)then
				LuaSetTask("T74",99) 
				LuaAddJx("combat_exp",12000,"T74") 
				LuaAddAchievementSchedule("Task_num",1)
				local r=LuaRandom(8)+1
				LuaGiveWeildItem("e_horse0"..r.."3t",1)
				SendCommand("call=守城士兵：快骑上好好体验吧，体验过后一定要到@4建康城@0的@3驯兽师@0那换取@3坐骑蛋@0，这事千万不能忘了。|2|0|0|7|8")
				LuaSay("守城士兵：按快捷栏闪动的按键就能骑上坐骑了哦@!")
				DelLog("74") 
				UpdateMenu() 
			end



elseif(answer=="T21") then              ------------------------擎天之柱
		if(LuaQueryTask("T21")==0) then
			LuaSay("守城士兵：战火纷飞，世道紊乱，北方蛮夷肆虐，更不断蚕食这南方之土，要不是我族有@3谢安@0在，恐怕早就亡族了。")
			LuaSay("守城士兵：去@4建康城南@0拜访一下@3谢安@0吧，他会给你更多的指导。一直@2往上走@0就可以去@4建康城南@0了。")
			LuaSetTask("T21",1)
			UpdateTopSay("去找建康城南的谢安")
			AddLog("擎天之柱【剧情】",21)
			UpdateMenu()
			AddMenuItem("@7是否@0寻路至@4建康城南@0@3谢安@0","")
			AddMenuItem("自动寻路至建康城南谢安","xl_xa")
		elseif(LuaQueryTask("T21")==1) then
			LuaSay("守城士兵：去问候一下@4建康城南@0的@3谢安@0吧，他会对你有帮助的。")
			AddMenuItem("@7是否@0寻路至@4建康城南@0@3谢安@0","")
			AddMenuItem("自动寻路至建康城南谢安","xl_xa")
		end 

		elseif(answer=="xl_xa")then
			AutoPathByTaskStep("T21",1)
			
		
--帮助新人

elseif(answer == "Tdairen") then                --修改完成带人需要的2个任务 
   if(GetCurrentDay()~=LuaQueryStrTask("drTaskday")) then
      LuaDelTask("Tdr")
   end
	
	if(LuaQueryTask("first_XR")==0)then --第一次点击新人菜单是自动加入新人列表
		LuaNotice("等级为"..LuaQuery("level").."的@3"..LuaQueryStr("name").."@0在建康城南守城卫兵处请求各路大侠的支援，好心人赶快前去吧！")
		LuaSetTask("first_XR",1)
		LuaAddRegister("zhaorendai")
		LuaSendRegister("dairen")
	else
		AddMenuItem("@7带人列表","")
		AddMenuItem("@3带新人平台","DXRPT")
		AddMenuItem("@7帮助1~10级玩家","Tdairen2")
		AddMenuItem("@7帮助11~15级玩家","Tdairen3")
		AddMenuItem("@7帮助16~20级玩家","Tdairen4")
		AddMenuItem("@7帮助21~25级玩家","Tdairen5")
	end

elseif(answer == "Tdairen2") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen2")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=1 and TeamQuery("level")<11 and level>15) then           --对话的是带人者 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen2")==2 ) then
			  if(TeamQueryStr("Tdairen2id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("提示：当你帮助该玩家成功升级到@315级@0后,你将获得@3大量经验和5000铜币。加油尽心的带他吧。@!")
			  LuaSetTask("Tdairen2",1)
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen2")
			  LuaSet("Tdairen2id",TeamQueryStr("id"))
			  else
			  LuaSay("提示：你的组队对象,已经有了他人帮助,你还是去帮助其他需要帮助的人吧。")
			  end 
			else
			LuaSay("提示：必须你的帮助对象先接此任务,你方可接任务。@!")
			end  
		else
		LuaSay("提示：您今天已经带了8个新人了，还是休息一下，明天再来吧。@!")
		end
	   elseif(TeamQuery("level")>15 and level>=1 and level<11) then       --对话的是新人
			  if(TeamQueryTask("Tdairen2")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("提示：等你等级达到15级就可以来找我领取@32000的铜币@0和海量经验奖励。@!")
			  	LuaSetTask("Tdairen2",2)
			  	LuaSet("Tdairen2id",TeamQueryStr("id"))     --带人者ID
			   	else
			   	LuaSay("提示：你的组队对象今天已经带了8个人了,你想把他累死吗？让他休息一下吧。@!")
			   	end
			  else
			  LuaSay("提示：你的组队对象,已经在帮助其他人了,你还是找一个空闲的高手带你吧。")
			  end
	   else
           LuaSay("提示：15级以上的玩家和1-10级的玩家,二人组队才能领取该任务。")
           end
        else
		LuaSay("提示：15级以上的玩家和1-10级的玩家,二人组队才能领取该任务。")
			AddMenuItem("@7是否发公告找人带","")
			AddMenuItem("我是新手,找人带","Tdairenyes")
			AddMenuItem("我是高手,不需要","Tdairenno")
	end               
       elseif(LuaQueryTask("Tdairen2")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen2id")==LuaQueryStr("id") and LuaQueryStr("Tdairen2id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=15) then
				   	LuaSay("提示：你已经成功帮助对方达到相应等级并且完成了任务,现在你可以领取奖励了。@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("提示：第九环完成")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
					if(LuaQueryTask("Thx2I")==0) then
					LuaSay("提示：你已经完成环形任务第八环,快去回复拓跋圭吧。@!")
					LuaSetTask("Thx2I",99)
					end
					end
				   	LuaSetTask("Tdairen2",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen2")==0) then
					LuaGive("coin",5000,"Tdairen2")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen2")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("恭喜你第一次完成@2帮助新人@0任务，获得成就@5助人为乐@0！")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----设置检测参数
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen2id") 
					LuaAddTask("Tdairennum",1)     --增加带人者的带人积累
					LuaSay("提示：你现在帮助的玩家数达到@3"..LuaQueryTask("Tdairennum").."个@0了,以后将会有海量的奖励哦@!")
					if(LuaRandom(3)==0) then
					LuaSay("提示：你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你。")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				else
				LuaSay("提示：你帮助的玩家还没有到15级呢,到了15级后,你才能得到奖励。")
				AddMenuItem("@7是否放弃任务","")
				AddMenuItem("继续任务","jixu")
				AddMenuItem("放弃任务","fangqi2")
				end
			else
			LuaSay("提示：该玩家并不是你接任务时帮助的玩家,必须和@3接任务时的玩家@0组队才能领取奖励。")
			AddMenuItem("@7是否放弃任务","")
			AddMenuItem("继续任务","jixu")
			AddMenuItem("放弃任务","fangqi2")
			end
		 else
		 LuaSay("提示：必须和接任务时组队的玩家一起来,才能领取奖励。")
		 AddMenuItem("@7是否放弃任务","")
		 AddMenuItem("继续任务","jixu")
		 AddMenuItem("放弃任务","fangqi2")
		 end
		
	elseif(LuaQueryTask("Tdairen2")==2) then
	if(level>=15) then 
	LuaSay("提示：你在对方的帮助下达到了相应等级并完成了任务,现在可以领取奖励了。@!")
	LuaGive("coin",2000,"Tdairen2")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen2")
	DelItem("o_mission148",2)
	LuaSetTask("Tdairen2A",99)
	LuaSetTask("Tdairen2",0)
	else
	LuaSay("提示：等级到15级后,方可领取该任务的奖励")
	AddMenuItem("@7是否放弃任务","")
	AddMenuItem("继续任务","jixu")
	AddMenuItem("放弃任务","fangqi2")
	end				
       end       
elseif(answer == "Tdairen3") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen3")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=11 and TeamQuery("level")<=15 and level>20) then           --对话的是带人者 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen3")==2 ) then
			  if(TeamQueryStr("Tdairen3id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("提示：当你帮助该玩家成功升级到@320级@0后,并且帮助其完成@4山寨地牢@0@3王凝之处的BOSS任务@0。你将获得@3大量经验和1W铜币。")
			  LuaSetTask("Tdairen3",1)
			  LuaSet("Tdairen3id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen3")
			  else
			  LuaSay("提示：你的组队对象,已经有了他人帮助,你还是去帮助其他需要帮助的人吧。")
			  end 
			else
			LuaSay("提示：必须你的帮助对象先接此任务,你方可接任务。@!")
			end  
		else
		LuaSay("提示：您今天已经带了8个新人了，还是休息一下，明天再来吧。@!")
		end
	   elseif(TeamQuery("level")>20 and level>=11 and level<=15) then       --对话的是新人
			  if(TeamQueryTask("Tdairen3")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("提示：等你等级达到20级并完成@4山寨地牢@0@3王凝之处的BOSS任务@0,就可以来找我领取@33000的铜币@0和@3海量经验奖励。@!")
			  	LuaSetTask("Tdairen3",2)
			  	LuaSet("Tdairen3id",TeamQueryStr("id"))     --带人者ID
			   	else
			   	LuaSay("提示：你的组队对象今天已经带了8个人了,你想把他累死吗？让他休息一下吧。@!")
			   	end
			  else
			  LuaSay("提示：你的组队对象,已经在帮助其他人了,你还是找一个空闲的高手带你吧。")
			  end
	   		else
           LuaSay("提示：20级以上的玩家和11-15级之间的玩家,二人组队才能领取该任务。")
           end
        else
		LuaSay("提示：20级以上的玩家和11-15级之间的玩家,二人组队才能领取该任务。")
        end               
       elseif(LuaQueryTask("Tdairen3")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen3id")==LuaQueryStr("id") and LuaQueryStr("Tdairen3id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=20) then
				  if(TeamQueryTask("T393")==99) then
				   	LuaSay("提示：你已经成功帮助对方达到相应等级并且完成了任务,现在你可以领取奖励了。@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("提示：第九环完成")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
					if(LuaQueryTask("Thx2I")==0) then
					LuaSay("提示：你已经完成环形任务第八环,快去回复拓跋圭吧。@!")
					LuaSetTask("Thx2I",99)
					end
					end
				   	LuaSetTask("Tdairen3",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen3")==0) then
					LuaGive("coin",10000,"Tdairen3")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen3")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("恭喜你第一次完成@2帮助新人@0任务，获得成就@3助人为乐@0！")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----设置检测参数
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen3id") 
					LuaAddTask("Tdairennum",1)     --增加带人者的带人积累
					LuaSay("提示：你现在帮助的玩家数达到@3"..LuaQueryTask("Tdairennum").."个@0了,以后将会有海量的奖励哦@!")
					if(LuaRandom(3)==0) then
					LuaSay("提示：你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你。")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				  else
				  LuaSay("提示：你的帮助对象需要完成@4山寨地牢@0@3王凝之@0处的@7破除邪术[BOSS]@0任务。")
				  end  
				else
				LuaSay("提示：你帮助的玩家还没有到20级呢,并且帮助对象需要完成@4山寨地牢@0@3王凝之@0处的@7破除邪术[BOSS]@0任务,你才能得到奖励。")
				AddMenuItem("@7是否放弃任务","")
				AddMenuItem("继续任务","jixu")
				AddMenuItem("放弃任务","fangqi3")
				end
			else
			LuaSay("提示：该玩家并不是你接任务时帮助的玩家,必须和@3接任务时的玩家@0组队才能领取奖励。")
			AddMenuItem("@7是否放弃任务","")
			AddMenuItem("继续任务","jixu")
			AddMenuItem("放弃任务","fangqi3")
			end
		 else
		 LuaSay("提示：必须和接任务时组队的玩家一起来,才能领取奖励。")
		 AddMenuItem("@7是否放弃任务","")
		 AddMenuItem("继续任务","jixu")
		 AddMenuItem("放弃任务","fangqi3")
		 end
		
	elseif(LuaQueryTask("Tdairen3")==2) then
	if(level>=20 and LuaQueryTask("T393")==99) then 
	LuaSay("提示：你在对方的帮助下达到了相应等级并完成了任务,现在可以领取奖励了。@!")
	LuaGive("coin",3000,"Tdairen3")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen3")
	LuaSetTask("Tdairen3",0)
	else
	LuaSay("提示：等级到20级后,并且完成@4山寨地牢@0@3王凝之@0处的@7破除邪术[BOSS]@0任务,方可领取该任务的奖励。")
	AddMenuItem("@7是否放弃任务","")
	AddMenuItem("继续任务","jixu")
	AddMenuItem("放弃任务","fangqi3")
	end				
       end

elseif(answer == "Tdairen4") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen4")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=16 and TeamQuery("level")<=20 and level>30) then           --对话的是带人者 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen4")==2 ) then
			  if(TeamQueryStr("Tdairen4id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("提示：当你帮助该玩家成功升级到@325级@0后,并且收集2份精品鱼肉。你将获得@3大量经验和15000铜币。")
			  LuaSetTask("Tdairen4",1)
			  LuaSet("Tdairen4id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen4")
			  else
			  LuaSay("提示：你的组队对象,已经有了他人帮助,你还是去帮助其他需要帮助的人吧。")
			  end 
			else
			LuaSay("提示：必须你的帮助对象先接此任务,你方可接任务。@!")
			end  
		else
		LuaSay("提示：您今天已经带了8个新人了，还是休息一下，明天再来吧。@!")
		end
	   elseif(TeamQuery("level")>30 and level>=16 and level<=20) then       --对话的是新人
			  if(TeamQueryTask("Tdairen4")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStr("drTaskday")) then
			  	LuaSay("提示：等你等级达到25级并收集2份精品鱼肉,就可以来找我领取@33000的铜币@0和@3海量经验奖励。@!")
			  	LuaSetTask("Tdairen4",2)
			  	LuaSet("Tdairen4id",TeamQueryStr("id"))     --带人者ID
			   	else
			   	LuaSay("提示：你的组队对象今天已经带了8个人了,你想把他累死吗？让他休息一下吧。@!")
			   	end
			  else
			  LuaSay("提示：你的组队对象,已经在帮助其他人了,你还是找一个空闲的高手带你吧。")
			  end
	   	   else
           LuaSay("提示：30级以上的玩家和16-20级之间的玩家,二人组队才能领取该任务。")
           end
        else
		LuaSay("提示：30级以上的玩家和16-20级之间的玩家,二人组队才能领取该任务。")
        end               
       elseif(LuaQueryTask("Tdairen4")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen4id")==LuaQueryStr("id") and LuaQueryStr("Tdairen4id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=25) then
				  if(TeamQueryTask("Tdairen4A")==99) then 
				   	LuaSay("提示：你已经成功帮助对方达到相应等级并且完成了任务,现在你可以领取奖励了。@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("提示：第九环完成")
						end
					end
						if(LuaQueryTask("Thx2")==8) then
						if(LuaQueryTask("Thx2I")==0) then
						LuaSay("提示：你已经完成环形任务第八环,快去回复拓跋圭吧。@!")
						LuaSetTask("Thx2I",99)
						end
						end
				   	LuaDelTask("Tdairen4")
					LuaAddTask("Tdr",1)
					LuaGive("coin",15000,"Tdairen4")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen4")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("恭喜你第一次完成@2帮助新人@0任务，获得成就@3助人为乐@0！")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----设置检测参数
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					LuaDelTask("Tdairen4id") 
					LuaAddTask("Tdairennum",1)     --增加带人者的带人积累
					LuaSay("提示：你现在帮助的玩家数达到@3"..LuaQueryTask("Tdairennum").."个@0了,以后将会有海量的奖励哦@!")
					if(LuaRandom(3)==0) then
					LuaSay("提示：你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你。")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end 
				  else
				  LuaSay("提示：你的帮助对象需要完成收集2份精品鱼肉才能完成任务。")
				  LuaSay("提示：该级别段带人@2需要被带者先上交收集到的2份精品鱼肉并领取奖励@0,带人者方可领取奖励。")
				  end  
				else
				LuaSay("提示：你帮助的玩家还没有到25级呢,到了25级后,你才能得到奖励。")
				AddMenuItem("@7是否放弃任务","")
				AddMenuItem("继续任务","jixu")
				AddMenuItem("放弃任务","fangqi4")
				end
			else
			LuaSay("提示：该玩家并不是你接任务时帮助的玩家,必须和@3接任务时的玩家@0组队才能领取奖励。")
			AddMenuItem("@7是否放弃任务","")
			AddMenuItem("继续任务","jixu")
			AddMenuItem("放弃任务","fangqi4")
			end
		 else
		 LuaSay("提示：必须和接任务时组队的玩家一起来,才能领取奖励。")
		 AddMenuItem("@7是否放弃任务","")
		 AddMenuItem("继续任务","jixu")
		 AddMenuItem("放弃任务","fangqi4")
		 end
		
	elseif(LuaQueryTask("Tdairen4")==2) then
	if(level>=25 and LuaItemCount("o_mission040")>=2) then 
	LuaSay("提示：你在对方的帮助下达到了相应等级并完成了任务,现在可以领取奖励了。@!")
	LuaGive("coin",3000,"Tdairen4")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen4")
	DelItem("o_mission040",2)
	LuaSetTask("Tdairen4A",99)
	LuaDelTask("Tdairen4")
	else
	LuaSay("提示：等级到25级后,并且收集2份精品鱼肉,方可领取该任务的奖励。")
	AddMenuItem("@7是否放弃任务","")
	AddMenuItem("继续任务","jixu")
	AddMenuItem("放弃任务","fangqi4")
	end				
   end
      
elseif(answer == "Tdairen5") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen5")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=21 and TeamQuery("level")<=25 and level>40) then           --对话的是带人者 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen5")==2 ) then
			  if(TeamQueryStr("Tdairen5id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("提示：当你帮助该玩家成功升级到@330级@0后,并且帮助其完成朱序处@3鏖战万蛇[BOSS]@0任务。你将获得@3大量经验和2W铜币。")
			  LuaSetTask("Tdairen5",1)
			  LuaSet("Tdairen5id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen5")
			  else
			  LuaSay("提示：你的组队对象,已经有了他人帮助,你还是去帮助其他需要帮助的人吧。")
			  end 
			else
			LuaSay("提示：必须你的帮助对象先接此任务,你方可接任务。@!")
			end  
		else
		LuaSay("提示：您今天已经带了8个新人了，还是休息一下，明天再来吧。@!")
		end
	   elseif(TeamQuery("level")>40 and level>=21 and level<=25) then       --对话的是新人
			  if(TeamQueryTask("Tdairen5")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("提示：等你等级达到30级并完成@4淝水对岸@0处@3朱序@0的BOSS任务,就可以来找我领取@33000的铜币@0和海量经验奖励。@!")
			  	LuaSetTask("Tdairen5",2)
			  	LuaSet("Tdairen5id",TeamQueryStr("id"))     --带人者ID
			   	else
			   	LuaSay("提示：你的组队对象今天已经带了8个人了,你想把他累死吗？让他休息一下吧。@!")
			   	end
			  else
			  LuaSay("提示：你的组队对象,已经在帮助其他人了,你还是找一个空闲的高手带你吧。")
			  end
	   		else
           LuaSay("提示：40级以上的玩家和21-25级之间的玩家,二人组队才能领取该任务。")
           end
        else
		LuaSay("提示：40级以上的玩家和21-25级之间的玩家,二人组队才能领取该任务。")
        end               
       elseif(LuaQueryTask("Tdairen5")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen5id")==LuaQueryStr("id") and LuaQueryStr("Tdairen5id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=30) then
				  if(TeamQueryTask("T473")==99) then 
				   	LuaSay("提示：你已经成功帮助对方达到相应等级并且完成了任务,现在你可以领取奖励了。@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("提示：第九环完成")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
						if(LuaQueryTask("Thx2I")==0) then
							LuaSay("提示：你已经完成环形任务第八环,快去回复拓跋圭吧。@!")
							LuaSetTask("Thx2I",99)
						end
					end
				   	LuaSetTask("Tdairen5",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen5")==0) then
					LuaGive("coin",20000,"Tdairen5")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen5")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("恭喜你第一次完成@2帮助新人@0任务，获得成就@3助人为乐@0！")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----设置检测参数
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen5id") 
					LuaAddTask("Tdairennum",1)     --增加带人者的带人积累
					LuaSay("提示：你现在帮助的玩家数达到@3"..LuaQueryTask("Tdairennum").."个@0了,以后将会有海量的奖励哦@!")
					if(LuaRandom(3)==0) then
					LuaSay("提示：你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你。")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				  else
				  LuaSay("提示：你的帮助对象需要完成@4淝水对岸@0处@3朱序@0的@3鏖战万蛇BOSS任务。")
				  end  
				else
				LuaSay("提示：你帮助的玩家还没有到30级呢,到了30级后,你才能得到奖励。")
				AddMenuItem("@7是否放弃任务","")
				AddMenuItem("继续任务","jixu")
				AddMenuItem("放弃任务","fangqi5")
				end
			else
			LuaSay("提示：该玩家并不是你接任务时帮助的玩家,必须和@3接任务时的玩家@0组队才能领取奖励。")
			AddMenuItem("@7是否放弃任务","")
			AddMenuItem("继续任务","jixu")
			AddMenuItem("放弃任务","fangqi5")
			end
		 else
		 LuaSay("提示：必须和接任务时组队的玩家一起来,才能领取奖励。")
		 AddMenuItem("@7是否放弃任务","")
		 AddMenuItem("继续任务","jixu")
		 AddMenuItem("放弃任务","fangqi5")
		 end
		
	elseif(LuaQueryTask("Tdairen5")==2) then
	if(level>=30 and LuaQueryTask("T473")==99) then 
	LuaSay("提示：你在对方的帮助下达到了相应等级并完成了任务,现在可以领取奖励了。@!")
	LuaGive("coin",3000,"Tdairen5")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen5")
	LuaSetTask("Tdairen5",0)
	else
	LuaSay("提示：你的帮助对象需要完成@4淝水对岸@0处@3朱序@0的@3鏖战万蛇BOSS任务。")
	AddMenuItem("@7是否放弃任务","")
	AddMenuItem("继续任务","jixu")
	AddMenuItem("放弃任务","fangqi5")
	end				
       end

	elseif(answer == "jixu") then
            LuaSay("提示：带人或者被带都能获得很丰厚的奖励哦。@!")

	elseif(answer == "fangqi1") then
		LuaSay("提示：你放弃了1~5-10级带人,你可以继续帮助其他人或者让其他人带你了。")
		LuaDelTask("Tdairen1")
		LuaDelTask("Tdairen1id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi2") then
		LuaSay("提示：你放弃了6~10-15级带人,你可以继续帮助其他人或者让其他人带你了。")
	    	LuaDelTask("Tdairen2")
	    	LuaDelTask("Tdairen2id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi3") then
		LuaSay("提示：你放弃了11~15-20级带人,你可以继续帮助其他人或者让其他人带你了。")
		LuaDelTask("Tdairen3")
		LuaDelTask("Tdairen3id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi4") then
		LuaSay("提示：你放弃了16~20-25级带人,你可以继续帮助其他人或者让其他人带你了。")
		LuaDelTask("Tdairen4")
		LuaDelTask("Tdairen4id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi5") then
		LuaSay("提示：你放弃了21~25-30级带人,你可以继续帮助其他人或者让其他人带你了。")
		LuaDelTask("Tdairen5")
		LuaDelTask("Tdairen5id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "Tdairenyes") then
		if(GetCurrentDay()~=LuaQueryStrTask("Tdairenday")) then
			LuaSetTask("Tggcishu",0)
			LuaSetTask("Tdairenday",GetCurrentDay())
		end
		if(LuaQueryTask("Tggcishu")<2 ) then
			LuaNotice("新人@3"..LuaQueryStr("name").."@0在建康城南的守城卫兵处需要您的帮助,哪位英雄去带带他/她吧！")
			LuaAddTask("Tggcishu",1)
		else
			LuaSay("提示：发公告找人带,每天只能用2次。您今天已经用完了,很遗憾！")
		end
      elseif(answer == "Tdairenno") then
		LuaSay("守城卫兵：看来你是个喜欢一个人默默奋斗的人,那就加油吧。")

--帮助新人结束



elseif(answer=="Tsnpc_8")then
	if(LuaQueryTask("Tsnpc_8")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的秘密信件，我只是个马夫，不要杀我")
		LuaSay("守城卫兵：我们当兵的也是人啊，怎么会杀你呢")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_8",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_8")==2)then
		LuaSay("守城卫兵：信我看到了，你回去复命吧")
	end
elseif(answer=="Tenpc_8")then
	if(LuaQueryTask("Tenpc_8")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主子这次让我传话给你，你肩膀上的单子很重，一切要淡定，见机行事")
		LuaSay("守城卫兵：恩，我知道了")
		LuaSetTask("Tenpc_8",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_8")==2)then
		LuaSay("守城卫兵：回去告诉你们大人，就说我知道了")
	end





--[[
LuaOtherQuery(id,字段)
LuaOtherQueryStr(id,字段)
LuaOtherSet(id,字段,值)
LuaOtherAdd(id,字段,值)
LuaOtherDel(id,字段)
LuaOtherQueryTask(id,字段)
LuaOtherQueryStrTask(id,字段)
LuaOtherSetTask(id,字段,值)
LuaOtherAddTask(id,字段,值)
LuaOtherDelTask(id,字段)
LuaTeam(id)
]]
elseif(answer=="DXRPT") then
	AddMenuItem("@7操作列表","","")
	if(LuaQuery("level")<30)then
		AddMenuItem("@7申请到找人带列表","SQ_ZRD","")
		AddMenuItem("@7我要找人带","zhao_ZRD","")
	else
		AddMenuItem("@7申请到带人表","SQ_DR","")
		AddMenuItem("@7我要带人","zhao_DR","")
	end
elseif(answer=="SQ_ZRD") then
    if(LuaIsInRegister("zhaorendai")==0) then
		if(LuaQuery("level")<=25) then
  		  	LuaAddRegister("zhaorendai")
    			LuaSay("提示：申请成功！")
   		else
       			LuaSay("提示：只有@325@0级以下的玩家才能申请找人带！")
    		end
    else
		LuaSay("提示：你已经登记在该列表上了！")
    end
elseif(answer=="SQ_DR") then
    if(LuaIsInRegister("dairen")==0) then
    	if(LuaQuery("level")>=30) then
    		LuaAddRegister("dairen")-- 1成功0失败
		LuaDelRegister("zhaorendai")
    		LuaSay("提示：申请成功！")
    	else
       		LuaSay("提示：只有@330@0级以上的玩家才能申请带人！")
    	end
    else
        LuaSay("提示：你已经登记在该列表上了！")
    end

elseif(answer=="zhao_ZRD") then
    if(GetCurrentTime() - LuaQueryTask("ZRD_begin_time") >= 60)then
    	if(LuaQuery("level")<=25) then
    		LuaSendRegister("dairen")
    		LuaSetTask("ZRD_begin_time",GetCurrentTime())
    	else
        	LuaSay("提示：只有@325@0级以下的玩家才能申请找人带！")
    	end
    else
        LuaSay("提示：@3"..(60-GetCurrentTime()+LuaQueryTask("ZRD_begin_time")).."@0秒后才能继续邀请找人带！")
    end
elseif(answer=="zhao_DR") then
    if(GetCurrentTime() - LuaQueryTask("DR_begin_time") >= 60)     then
    		if(LuaQuery("level")>=30) then
			LuaDelRegister("zhaorendai")
			LuaSendRegister("zhaorendai")
			LuaSetTask("DR_begin_time",GetCurrentTime())
		else
        		LuaSay("提示：只有@330@0级以上的玩家才能带人！")
   	 	end
    else
        LuaSay("提示：@3"..(60-GetCurrentTime()+LuaQueryTask("DR_begin_time")).."@0秒后才能继续邀请带人！")
    end
    


end 
LuaSendMenu()
return 1
end