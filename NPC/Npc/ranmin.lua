NPCINFO = { 
serial="12" ,
base_name="ranmin",
icon=2560,
NpcMove=2560,
name="冉闵" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="打怪时可开启/关闭自动攻击，前进吧！勇士",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0	--灰色问号
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")	
	--AddTopSayMenuItem("@3领取装备","T12")
        AddTopSayMenuItem("@2领取补偿","lqbc")
		if(LuaQueryTask("T12")==0) then
			AddTopSayMenuItem("@3领取装备","T12")
		end		
		if(LuaQueryTask("T11")==0) then
			AddTopSayMenuItem("@2回乡【剧情】","T11")
		end
		if(LuaQueryTask("Tbprw2")==1) then
			AddTopSayMenuItem("@2强盛之法【剧情】","Tbprw2")
			havetask2=1
		end
		if((LuaQueryTask("Tsnpc_1")==1 or LuaQueryTask("Tsnpc_1")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_1")
			if(LuaQueryTask("Tsnpc_1")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_1")==1 or LuaQueryTask("Tenpc_1")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_1")
			if(LuaQueryTask("Tenpc_1")==1)then
			havetask2=1
			end
		end
		if(LuaQueryTask("T104") ==1 )   then     -----宠物任务----
			AddTopSayMenuItem("@2无齿之猴","T104")
			havetask2 =1
		end
		if(LuaQueryTask("T10")==1) then
			AddTopSayMenuItem("@2第一次打怪【教程】","T10")
			havetask4 =1
		end
		if(LuaQueryTask("T10")==0) then
			AddTopSayMenuItem("第一次打怪【教程】","T10")
			havetask1 =1
		end
		if(LuaQueryTask("T11")==0 and LuaQueryTask("T10")==99) then
			--LuaAddYB(1,1)
			AddTopSayMenuItem("回乡【剧情】","T11")
			havetask1 =1
		end
		

		if(LuaQueryTask("T10")==99 and level<20) then
			AddTopSayMenuItem("@9第一次打怪【教程】","T10")
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
elseif(answer=="lqbc")then
    local tkid=LuaPublicQueryStr("kid/kid")
    local kn=LuaPublicQueryStr("kid/kn")   
    local kv=LuaPublicQueryStr("kid/kv")  
    local kc=LuaPublicQuery("kid/kc")  
    if(tkid==LuaQueryStr("id") or tkid==LuaQueryStr("name"))then
        if(kv=="yb")then
            LuaAddYB(1,kc,"kid")
        elseif(kv=="tb")then
            LuaGive("coin",kc,"kid")
        else
            LuaGive(kn.."_"..kv,kc,"kid")
        end
        LuaPublicSetStr("kid/kid","0")
        LuaSay("领取完成")
    else
        LuaSay("无可领取")
    end
   
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("冉闵：身在乱世怎能无技防身，点击@2屏幕上攻击快捷键(即为两剑交叉的那个图标)可开启/关闭自动攻击，它默认为开启的@0。")
		LuaSay("冉闵：如屏幕没有该图标，可点击屏幕上的@2系统@0，再点击@2快捷@0，就会弹出@2快捷键设置@0，点击@2攻击快捷键@0最后点击“点击设快捷键”，将其放到快捷键列表中。")
	else
		LuaSay("冉闵：身在乱世怎能无技防身，按@25键可开启/关闭自动攻击@0。")
	end
elseif (answer=="T10") then	
	if(LuaQueryTask("T10") == 0) then
		if(LuaQueryStr("MobieType") ~= "S20")then
			--SendCommand("call=冉闵：世道纷乱，有实力，功名成就将不在话下，让老夫来教您如何打怪吧，点击@2屏幕上攻击快捷键(即为两剑交叉的那个图标)可开/关自动攻击，它默认为开启的@0。|2|0|0|7|20")
			LuaSay("冉闵：世道纷乱，有实力，功名成就将不在话下，让老夫来教您如何打怪吧，点击@2屏幕上攻击快捷键(即为两剑交叉的那个图标)可开/关自动攻击，它默认为开启的@0。")
			LuaSay("冉闵：如屏幕没有该图标，可点击屏幕上的@2系统@0，再点击@2快捷@0，就会弹出@2快捷键设置@0，点击@2攻击快捷键@0最后点击“点击设快捷键”,将其放到快捷键列表中。")
			LuaSay("冉闵：桃源径中@2巨螳@0为害,去@2消灭1只巨螳@0再来找我！@2开启自动攻击后走到怪物身边@0即可攻击.")
		else
			SendCommand("call=冉闵：世道纷乱，有实力，功名成就将不在话下，让老夫来教您如何打怪吧，@2按5键可开/关自动攻击@0。|2|0|0|7|20")
			LuaSay("冉闵：桃源径中@2巨螳@0为害,去@2消灭1只巨螳@0再来找我！@2开启自动攻击后走到怪物身边@0即可攻击.")
		end
		LuaSetTask("T10",1)
		LuaSetTask("task_kill/mon_001/T10",1)
		AddLog("第一次打怪【教程】",10)
		UpdateMenu()
	elseif(LuaQueryTask("T10") == 1) then
		if(LuaQueryTask("task_kill/mon_001/T10")>=2) then
			LuaSay("冉闵：干的漂亮！这是给您的奖励。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T10jl")
		else
			LuaSay("冉闵：桃源径中@2巨螳@0为害,去@2消灭1只巨螳@0再来找我！@2开启自动攻击后走到怪物身边@0即可攻击。")
		end
	elseif(LuaQueryTask("T10") == 99)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("冉闵：点击@2屏幕上攻击快捷键(即为两剑交叉的那个图标)可开/关自动攻击，它默认为开启的，@2开启自动攻击后走到怪物身边@0即可攻击。")
			LuaSay("冉闵：如屏幕没有该图标，可点击屏幕上的@2系统@0，再点击@2快捷@0，就会弹出@2快捷键设置@0，点击@2攻击快捷键@0最后点击“点击设快捷键”,将其放到快捷键列表中。")
		else
			LuaSay("冉闵：@2按5键可开/关自动攻击，@2开启自动攻击后走到怪物身边@0即可攻击。")
		end
		
		LuaSay("提示：该任务已完成")
	
	end
elseif(answer=="T10jl") then
	if(LuaQueryTask("T10")==1)then
		LuaGive("coin",200,"T10")
		LuaAddJx("combat_exp",1200,"T10")
		LuaAddAchievementSchedule("Task_num",1)
		LuaDelTask("task_kill/mon_001/T10")
		LuaSetTask("T10",99)
		DelLog("10")
		UpdateMenu()
		AddMenuItem("@7领取新任务","")
		if(LuaQueryTask("T11")==0)then
			AddMenuItem("回乡【剧情】","T11")
		end
	end
    
elseif (answer=="T11") then
	if(LuaQueryTask("T10")==99)then
		if(LuaQueryTask("T11") == 0) then
			LuaSay("冉闵："..LuaQueryStr("name").."，您为何还在这，@4桃源村@0中出了大事，速速@2回村子@0去吧！")
			LuaSay("冉闵：@2向右@0走到@3箭头@0处，便可@2进村@0，进村后找@3老村长@0，他会告诉您怎么做。")	
			LuaSetTask("T11",1)
			AddLog("回乡【剧情】",11)
			UpdateMenu()
			if(LuaQueryTask("T10")==99)then
				LuaSay("冉闵：速速回@4桃源村@0见@3老村长@0，@2向右走@0，就可以@2进村@0了。")
				AutoGoToNpc("@7是否@0寻路至@4桃源村","lu_tyj")
				--AddMenuItem("@7是否@0寻路至@4桃源村方向","")
				--AddMenuItem("自动寻路至桃源村方向","xl_tyc")
			end
		elseif(LuaQueryTask("T11") == 1) then
			LuaSay("冉闵：速速回@4桃源村@0见@3老村长@0，@2向右走@0，就可以@2进村@0了。")
			if(LuaQueryTask("T10")==99)then
				--AddMenuItem("@7是否@0寻路至@4桃源村方向","")
				--AddMenuItem("自动寻路至桃源村方向","xl_tyc")	
				AutoGoToNpc("@7是否@0寻路至@4桃源村","lu_tyj")				
			end
		end
	else
		LuaSay("冉闵：@!为了大侠对《统一OL》操作更加的熟悉和了解，建议大侠先完成@3第一次打怪【教程】@0")
	end

--elseif(answer=="xl_tyc")then
	--LuaSay("冉闵：速速回@4桃源村@0见@3老村长@0，@2向右走@0，就可以@2进村@0了。")
	--AutoGoToNpc("@7是否@0寻路至@4桃源村","lu_tyj")
	--AutoPathByTaskStep("T11",1)

elseif(answer=="T12") then
	if(LuaQueryTask("T12")<99) then
	LuaSay("冉闵：尊贵的"..LuaQueryStr("name").."，这把@2烈焰@0就送与您吧，领取奖励后就@2帮您装备上了@0！")
	LuaSay("冉闵：你我有缘，@2再送您几件极品装备@0，不过这些装备需要等级@2达到10级@0才能使用，希望有一天能看到您穿上它们！@!")
	LuaSay("冉闵：少侠还等什么？统一之路就在您脚下，拿起您的武器去追寻属于您的霸业吧！")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T12jl")
	end
	elseif(answer=="T12jl") then
	if(LuaQueryTask("T12")<99) then
	if(LuaItemCount("e_falchion001")==0) then
	LuaGiveWeildItem("e_falchion001",1,1,"T12")  --给完东西后，如果对应的装备位子没装备，就立刻装备给的东西[注意与luagive的区别]
	end
	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword003",1,2,"T12")   --金乌
	--LuaGive("e_clothes102",1,2,"T12")	--侠客新秀
	--LuaGive("e_pants102",1,2,"T12")
	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen002",1,2,"T12")	--尖豪笔
	--LuaGive("e_clothes101",1,2,"T12")		--谋士新秀
	--LuaGive("e_pants101",1,2,"T12")
	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion003",1,2,"T12")	--鬼斩
	--LuaGive("e_clothes103",1,2,"T12")		--战士新秀
	--LuaGive("e_pants103",1,2,"T12")
	elseif(LuaQueryStr("class")=="")then
	LuaSay("冉闵：您还是个无业游民，不能够领取装备，实在可惜！等您注册成功，选择职业后，再来我这里领取极品装备吧！")
	end	
	LuaAddJx("combat_exp",400,"T12")
	LuaAddAchievementSchedule("Task_num",1)
	LuaSetTask("T12",99)
	UpdateMenu()
	end


elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==1 and LuaQueryTask("Tbprw2A")==0) then
		LuaSay("冉闵：帮派，重要的是@3声望@0。")
		LuaSay("冉闵：@3声望@0可通过@3帮派任务，帮战@0等各种渠道获得。")
		LuaSetTask("Tbprw2A",99)      -------日志的添加
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0) then
		LuaSay("冉闵：也许我说的还不够全面，您再去问问@4北府军营@0的@3谢玄@0吧。")
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("冉闵：去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧。")
	end

elseif(answer=="T104")then ------------------------------------宠物任务，无齿之猴
    if(LuaItemCount("o_mission372")==0) then
    LuaSay("冉闵：想买我秘制的@3小包花生米@0？需要@31000@0铜币。")
    AddMenuItem("@7选择列表","")
	AddMenuItem("@3买","T104_buy")
	AddMenuItem("@3不买","T104_notbuy")
	else
	LuaSay("冉闵：您已经买了@3小包花生米@0了，快回复@4建康城@0里的@3驯兽师@0吧！")
	UpdateTopSay("快回复建康城里的驯兽师吧！")
	end
elseif(answer=="T104_buy")  then
    if(LuaItemCount("coin")>= 1000) then
    LuaGive("coin",-1000,"T104")
    LuaGive("o_mission372",1)
    LuaSay("冉闵：@3小包花生米@0拿好了！快去回复@4建康城@0的@3驯兽师@0吧！别在路上偷偷吃了！")
    UpdateTopSay("快回复建康城里的驯兽师吧！")
    else
    LuaSay("冉闵：@3小包花生米@0卖1000铜币，不贵的！")
    UpdateTopSay("身上携带1000铜币再来找我吧")
    end
elseif(answer=="T104_notbuy")  then
    LuaSay("冉闵：没有@3小包花生米@0，将无法完成该任务！")

elseif(answer=="Tsnpc_1")then
	if(LuaQueryTask("Tsnpc_1")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的机密信件，可能又要打仗了。")
		LuaSay("冉闵：呃，还有这等事？快拿来我看看，回去替我问候你们大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_1",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_1")==2)then
		LuaSay("冉闵：信我已经收到了，你可以回去复命了")
	end
elseif(answer=="Tenpc_1")then
	if(LuaQueryTask("Tenpc_1")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件不太安全，拖我给你传话，他只说做进可能会发生战事让大人你多多防范，我也不懂什么意思")
		LuaSay("冉闵：哦？会发生战事？好吧你先回去，我知道了")
		LuaSetTask("Tenpc_1",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_1")==2)then
		LuaSay("冉闵：我已经知道什么情况了，你可以回去复命了")
	end
end
LuaSendMenu()
return 1
end 
