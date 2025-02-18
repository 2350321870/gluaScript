NPCINFO = {
serial="75" ,
base_name="muronglin",
icon=2588,
NpcMove=2588,
name="慕容麟" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="后悔当初没有好好孝敬家父",
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
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if((LuaQueryTask("Tsnpc_60")==1 or LuaQueryTask("Tsnpc_60")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_60")
		if(LuaQueryTask("Tsnpc_60")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_60")==1 or LuaQueryTask("Tenpc_60")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_60")
		if(LuaQueryTask("Tenpc_60")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T641") ==1 )  then
		AddTopSayMenuItem("@2次子的阴谋【剧情】@0","T641")
	end

	if(LuaQueryTask("T644") ==1 or LuaQueryTask("T644")==2)  then
		AddTopSayMenuItem("@2父子和睦【剧情】@0","T644")
		if(LuaQueryTask("T644")==2) then
			havetask2 =1
		end
	end

	if(LuaQueryTask("T646")==1) then
		AddTopSayMenuItem("@2博取信任【剧情】","T646")
	end
	if(LuaQueryTask("T647")==1 or LuaQueryTask("T647")==2) then
		AddTopSayMenuItem("@2解救次子【剧情】@0","T647")
		if(LuaItemStatusNormalCount("o_material_58") >= 1 and LuaItemStatusNormalCount("o_mission039") >= 1) then
			havetask2=1
		end
	end

	if(LuaQueryTask("T636")==1 or LuaQueryTask("T636")==2) then
		AddTopSayMenuItem("@2父子之情【剧情】@0","T636")
		if(LuaQueryTask("T636")==1 ) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T638")==1 or LuaQueryTask("T638")==2) then
		AddTopSayMenuItem("@2劝解之道【剧情】@0","T638")
		havetask2 =1
	end
	if(LuaQueryTask("T745")==1 or LuaQueryTask("T745")==2) then
		AddTopSayMenuItem("@2老翁的关怀【剧情】@0","T745")
		if(LuaQueryTask("T745")==1)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T630")==1 or LuaQueryTask("T630")==2)then
		AddTopSayMenuItem("@2父亲的解释【剧情】","T630")
		if(LuaQueryTask("T630")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T670")==1 or LuaQueryTask("T670")==2)then
		AddTopSayMenuItem("@2过河拆桥【剧情】","T670")
		if(LuaItemCount("o_mission352")>=1 and LuaQueryTask("T670")==1)then
			havetask2=1
		end
	end
--以上为黄色问号部分
	if(LuaQueryTask("T642") ==1 )  then
		AddTopSayMenuItem("@2阴谋的后果【剧情】@0","T642")
		havetask4 =1
	end
	if(LuaQueryTask("T645")==1 or LuaQueryTask("T645")==2 or LuaQueryTask("T645")==3)then
		AddTopSayMenuItem("@2负荆请罪【剧情】","T645")
		if(LuaQueryTask("T645")==3)then
		havetask4=1
		end
	end
	if(LuaQueryTask("T648")==1 or LuaQueryTask("T648")==2) then
		AddTopSayMenuItem("@2次子的关怀【剧情】@0","T648")
		havetask4=1
	end
	if(LuaQueryTask("T649")==1 ) then
		AddTopSayMenuItem("@2次子的安危【循环】@0","T649")
		havetask4=1
	end
--以上为灰色问号部分
	if(LuaQueryTask("T641") ==0 and level>=43)  then
		AddTopSayMenuItem("次子的阴谋【剧情】","T641")
		havetask1 =1
	end
	if(LuaQueryTask("T642") ==0 and level>=43)  then
		AddTopSayMenuItem("阴谋的后果【剧情】","T642")
		havetask1 =1
	end
	if(LuaQueryTask("T644") ==0 and LuaQueryTask("T645")==99 )  then
		AddTopSayMenuItem("父子和睦【剧情】","T644")
		havetask1 =1
	end
	if(LuaQueryTask("T645")==0 and level>=45)then
		AddTopSayMenuItem("负荆请罪【剧情】","T645")
		havetask1=1
	end
	if(LuaQueryTask("T646")==0 and level>=50 and LuaQueryTask("T644")==99) then
		AddTopSayMenuItem("博取信任【剧情】","T646")
		havetask1=1
	end
	if(LuaQueryTask("T647") ==0  and level>=44  and LuaQueryTask("T670")==99)  then
		AddTopSayMenuItem("解救次子【剧情】","T647")
		havetask1 =1
	end
	if(LuaQueryTask("T648") ==0  and level>=45)  then
		AddTopSayMenuItem("次子的关怀【剧情】","T648")
		havetask1 =1
	end
	if(LuaQueryTask("T649") ==0 and level>=45 and level<50)  then
		AddTopSayMenuItem("次子的安危【循环】","T649")
		havetask1 =1
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
-------------------------------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("慕容麟:这位少侠，看你英俊不凡，想必也并非是池中之物啊！")
------------------------------------------------------------------------父亲的解释
elseif(answer=="T630")then
	if(LuaQueryTask("T630")==1)then
		LuaSay("慕容麟：你因何事来我这里，如果是那老头叫你来的话，你还是趁早回去的好")
		LuaSay(""..LuaQueryStr("name").."：慕容公子，你父亲从没怪过你，一直都很在乎你，并让你不要认贼作父了。慕容评是是拿你当炮灰啊")
		LuaSay("慕容麟：我不相信，你去问义父，他不会把我当炮灰的，向右一直走，到@4参合坡@0就能见到我义父了")
		LuaSetTask("T630",2)
		AddLog("父亲的解释【剧情】",630)
		UpdateTopSay("我相信我义父，闲人走开")
		UpdateMenu()
		UpdateNPCMenu("murongping")
	elseif(LuaQueryTask("T630")==2)then
		LuaSay("慕容麟：去问我义父，我相信他，向右一直走，到@4参合坡@0就能见到我义父了")
	end
--------------------------------------------------------------------------过河拆桥
elseif(answer=="T670")then
	if(LuaQueryTask("T670")==1)then
		if(LuaItemCount("o_mission352")>=1)then
			LuaSay(""..LuaQueryStr("name").."：受你义父所托，给你带的@4琼花佳酿@0")
			LuaSay("慕容麟：哈哈，还是义父最宠我。（...咕咕，一口气喝了几大口），啊，这酒...有毒")
			LuaSay(""..LuaQueryStr("name").."：这老贼...我马上找他去，竟然放毒！")
			DelItem("o_mission352",1)
			LuaSetTask("T670",2)
			AddLog("过河拆桥【剧情】",670)
			UpdateMenu()
		else
			LuaSay("慕容麟：义父很久没来看过我了")
		end

	elseif(LuaQueryTask("T670")==2)then
		LuaSay("慕容麟:说好了去找@3慕容评@0的怎么你还没有去啊？")
		
	end


----------------------------------------------------------------------------次子的阴谋
elseif(answer=="T641") then
	local level=LuaQuery("level")
	if( level<48)then
		LuaSay("你等级还不够啊！等到了@348级@0后在来吧！")
	else
		if(LuaQueryTask("T641")==0) then
			LuaSay("慕容麟:我爹信上讲：@3太行古猿@0在@4太行山谷@0作乱！让@4太行山谷@0的@3石越@0必杀之！")
			LuaSay("慕容麟:速去禀报@4太行山谷@0的@3石越@0吧！")
			LuaSetTask("T641",1)
			AddLog("次子的阴谋【剧情】",641)
			AddMenuItem("是否传送？","")
			AddMenuItem("是","Tshi")
			AddMenuItem("否","Tfou")
			UpdateMenu()
		elseif(LuaQueryTask("T641")==1) then
			LuaSay("慕容麟:你怎么还没有到@4太行山谷@0 @3石越@0那里去啊？")
		end
	end
	elseif(answer=="Tshi")then
	ChangeMap("lu_thsg",171,144)



--------------------------------------------------------------------------阴谋的后果
elseif(answer== "T642") then
	local level=LuaQuery("level")
    if( level<48)then
    LuaSay("你等级还不够啊！等到了@348级@0后在来吧！")
    else
	if(LuaQueryTask("T642")==0) then
		LuaSay("慕容麟: @3太行古猿@0最近一直在@4太行山谷@0作乱，烦劳少侠去击杀@330只古猿@0")
		LuaSetTask("T642",1)
		LuaSetTask("task_kill/mon_038/T642",1)
		UpdateTopSay("杀30只太行古猿")
		AddLog("阴谋的后果【剧情】",642)
   	UpdateMenu()

		elseif(LuaQueryTask("T642")==1)then
			if(LuaQueryTask("task_kill/mon_038/T642")>=31) then
				LuaSay(LuaQueryStr("name").."：@3石越@0忙于军事，未能与在下碰面！")
				LuaSay("慕容麟:啊？那你都干什么去啦？")
				LuaSay(LuaQueryStr("name").."：不过你放心在下已把@230只古猿@0杀了！")
				LuaSay("慕容麟:哈哈~...果然是年少有为！干得不错！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T642jl")
			else
				LuaSay("慕容麟:还没有杀死@4太行山谷@0的@330只太行古猿@0！")
				UpdateTopSay("杀够30只太行古猿再来找我吧")
			end
	 end
    end
    elseif(answer=="T642jl")then
		if(LuaQueryTask("T642")==1) then
			if(LuaFreeBag()>=1)then
				LuaSetTask("T642",99)
				DelLog("642")
				LuaDelTask("task_kill/mon_038/T642")
				LuaGive("e_head015",1,2,"T642")
				LuaGive("coin",3400,"T642")
				LuaAddJx("combat_exp",502000,"T642")
				LuaAddAchievementSchedule("Task_num",1)	
				UpdateMenu()
			else
				LuaSay("@5温馨提示：请保持背包有一格空位，以免领取到的奖励因为背包满而丢失掉哦@!")
			end
		end

--------------------------------------------------父子和睦【剧情】
elseif(answer=="T644") then
	if(LuaQueryTask("T644")==0)then
	LuaSay("慕容麟：麻烦你回去转告我爹，儿子不孝这么多年来一直误解他老人家，希望能够原谅我！我一定上门负荆请罪！")
	LuaSetTask("T644",1)
	AddLog("父子和睦【剧情】",644)
	UpdateMenu()
	UpdateNPCMenu("murongchui")
	elseif(LuaQueryTask("T644")==1) then
		LuaSay("你怎么还没有到@4太行古径@0 @3慕容垂@0那里去啊？")
	elseif(LuaQueryTask("T644")==2) then
		LuaSay(""..LuaQueryStr("name").."：你爹没怪罪你，望你好好保重身体，他说自己没尽到做爹的责任，望以后一家人和睦相处！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T644jl")

	end

		elseif(answer=="T644jl")then
			if(LuaQueryTask("T644")==2) then
			LuaSetTask("T644",99)
			LuaAddJx("combat_exp",598000,"T644")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T644")
			DelLog("644")
			UpdateMenu()
			end


------------------------------------------------负荆请罪【剧情】
elseif(answer=="T645")then
	if(LuaQueryTask("T645")==0)then
		LuaSay("慕容麟：我做了太多对不起父亲的事情，你去消灭@3金纹巨灵@0，帮我收集@220个金纹刺@0吧")  --o_mission354
		LuaSetTask("T645",1)
		AddLog("负荆请罪【剧情】",645)
		UpdateMenu()
		UpdateNPCMenu("murongchui")
		UpdateTopSay("去收集金纹刺，我要向父亲负荆请罪！")
	elseif(LuaQueryTask("T645")==1)then
		if(LuaItemCount("o_mission354")>=20)then
		LuaSay("慕容麟：转告我父亲，我随后便来负荆请罪")
		LuaSetTask("T645",2)
		UpdateNPCMenu("murongchui")
		AddLog("负荆请罪【剧情】",645)
		UpdateMenu()
		else
		LuaSay("慕容麟：我需要的@3金纹刺@0帮我收集好了吗？")
		end
	elseif(LuaQueryTask("T645")==2)then
		LuaSay("慕容麟：我要去向父亲认罪")
	elseif(LuaQueryTask("T645")==3)then
		LuaSay(""..LuaQueryStr("name").."：慕容少主，你父亲已经原谅你，并让你好好的活下去，不要枉费他的一片苦心！")
		LuaSay("慕容麟：我会的！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T645jl")
	end
	elseif(answer=="T645jl") then
		if(LuaQueryTask("T645")==3)then
		LuaSay("慕容麟：想要极品装备，可以去杀野外BOSS和副本，副本有几率出相应等级的套装哦@!")
		LuaGive("e_necklace008",1,1,"T645")
		LuaSetTask("T645",99)
		LuaAddJx("combat_exp",598000,"T645")
		LuaAddAchievementSchedule("Task_num",1)	
		DelLog("645")
		DelItem("o_mission354",1)
		UpdateMenu()
		end

------------------------------------------------博取信任【剧情】
elseif(answer=="T646")then
	if(LuaQueryTask("T646")==0)then
		LuaSay("慕容麟：我作恶多端，我现在得帮助父亲做些事情，这是我的贴身信物，你拿到@3慕容评@0处交差，博得他的信任")
		LuaSetTask("T646",1)
		AddLog("博取信任【剧情】",646)
		LuaGive("o_mission356",1)
		UpdateMenu()
		UpdateNPCMenu("murongping")
	else
		LuaSay("慕容麟：带上我的信物去取得@3慕容评@0的信任")
	end

------------------------------------------------解救次子【剧情】
elseif(answer=="T647")then
	if(LuaQueryTask("T647")==0)then
	LuaSay("慕容麟：我尽然是义父手中的一颗棋子，现在还想杀害于我，大侠能否帮我到@3洛阳城药品商人@0那里询问解毒之法")
	LuaSay(""..LuaQueryStr("name").."：好的，在下即刻就去。")
	LuaSetTask("T647",1)
	AddLog("解救次子【剧情】",647)
	AddMenuItem("是否自动传送至洛阳城？","")
	AddMenuItem("是","T")
	AddMenuItem("否","F")
	UpdateMenu()
	elseif(LuaQueryTask("T647") == 1)then
		LuaSay("慕容麟：你怎么还没有到@4洛阳城@0的@3药品商人@0那里去啊？")
	elseif(LuaQueryTask("T647") == 2 ) then
		if(LuaItemStatusNormalCount("o_material_58") >= 1 and LuaItemStatusNormalCount("o_mission039") >= 1) then
		LuaSay(""..LuaQueryStr("name").."：这是我收集到的@21个三级晶@0和@21个优质鱼肉@0。")
		LuaSay(""..LuaQueryStr("name").."：药品商人说外用内服方能化解此毒!")
		LuaSay("慕容麟：嗯！我身上的毒已解除真是感激不尽啊！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T647jl")

		else
		LuaSay("慕容麟：还没有收集齐@21个三级晶@0和@21个优质鱼肉@0")
		end
    end

		elseif(answer=="T647jl")then
			if(LuaQueryTask("T647")==2) then
			LuaSetTask("T647",99)
			DelItem("o_material_58",1)
			DelItem("o_mission039",1)
			LuaAddJx("combat_exp",548000,"T647")
			LuaAddAchievementSchedule("Task_num",1)	
			DelLog("647")
			UpdateMenu()
			end


		elseif(answer=="T")then
		ChangeMap("lu_lyc")


----------------------------------------------------------次子的关怀【剧情】
elseif(answer=="T648")then
	if(LuaQueryTask("T648")==0)then
	LuaSay("慕容麟：呜呜~~这么多年过去了，没想到@3老翁@0还记得，还是这么关心我！他一个人孤苦伶仃也不知道这些年是怎么过过来的！")
	LuaSay(""..LuaQueryStr("name").."：哎！前些日子@3老翁@0生染疾病，差点就~~~！村子又常有@3夜叉猛虎@0出没极不安全！")
	LuaSay("慕容麟：啊！那请少侠速去@3击杀20只猛虎和20个夜叉@0保障村子安全！")
	LuaSetTask("task_kill/mon_046/T648",1)
	LuaSetTask("task_kill/mon_047/T648",1)
	LuaSetTask("T648",1)
	UpdateTopSay("杀20只霸虎和20个夜叉")
	AddLog("次子的关怀【剧情】",648)
    UpdateMenu()
	elseif(LuaQueryTask("T648")==1)then
		local a=LuaQueryTask("task_kill/mon_046/T648")
		local b=LuaQueryTask("task_kill/mon_047/T648")
		local c=21-a
		local d=21-b
			if(a>=21 and b>=21) then
			LuaSay("慕容麟：少侠果然神勇！现在村子较安全了！")
			LuaSay("慕容麟：不过还要劳烦少侠速到@4陷落关口@0转告老翁要好好休息，注意身体，事后我一定去探望他老人家！")
			LuaSetTask("T648",2)
			AddLog("次子的关怀【剧情】",648)
			LuaDelTask("task_kill/mon_046/T648")
			LuaDelTask("task_kill/mon_047/T648")
   			UpdateMenu()
	   		else
	   		LuaSay("慕容麟：你还有@3"..c.."只霸虎和"..d.."个夜叉@0没杀，速去@3击杀20只猛虎和20个夜叉@0保障村子安全！")
	   		end
	elseif(LuaQueryTask("T648")==2)then
			LuaSay("慕容麟：你怎么还没有到@4陷落关口@0的@3老翁@0那里去啊？！")
	end


---------------------------------------------------次子的安危【循环】
elseif(answer== "T649") then
	local level=LuaQuery("level")
    if( level<47)then
    LuaSay("怪物太凶险，在多磨练磨练，等到了@347级@0后在来吧！")
    else
	if(LuaQueryStrTask("649day")~=GetCurrentDay())then
		LuaDelTask("T649num")
	end
	if(LuaQueryTask("T649")==0) then
		
		LuaSay("慕容麟: @3金纹巨灵@0常在@4太行古径@0出没，使我出行不易，击杀@330只金纹巨灵@0")
		LuaSetTask("T649",1)
		LuaAddTask("T649num",1)
		LuaSetTask("649day",GetCurrentDay())
		LuaSetTask("task_kill/mon_036/T649",1)
		UpdateTopSay("杀30只金纹巨灵")
		AddLog("次子的安危【循环】",649)
		UpdateMenu()

	elseif(LuaQueryTask("T649")==1)then
		if(LuaQueryTask("task_kill/mon_036/T649")>=31) then
		LuaSay("慕容麟:果然是年少有为啊！干得不错！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T649jl")
		else
		LuaSay("慕容麟:还没有杀死@4太行古径@0的@330只金纹巨灵@0！")
		UpdateTopSay("杀够30只金纹巨灵再来找我吧")
		end
    end
    end
    elseif(answer=="T649jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("task_kill/mon_036/T649")>=31) then
		if(LuaQueryTask("T649")==1) then
		local jinyan
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
		if(LuaQueryTask("T649num")<=30)then
		jinyan=(78203+level^2*20)
		LuaGive("coin",money,"T649")
		else
		LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验")
		jinyan=(78203+level^2*20)/2
		end
		LuaSetTask("T649",99)
		LuaDelTask("T649")
		DelLog("649")
		LuaDelTask("task_kill/mon_036/T649")
    		LuaAddJx("combat_exp",jinyan,"T649")
			if(LuaQueryTask("T649_a")==0) then
				LuaAddAchievementSchedule("Task_num",1)
				LuaSetTask("T649_a",99)
			end
    		UpdateMenu()
		end
		end

-----------------------------------------------父子之情【剧情】
elseif(answer=="T636")then
	if(LuaQueryTask("T636")==1)then
		LuaSay(LuaQueryStr("name").."：你就是@3慕容垂@0之子@3慕容麟@0吧！")
		LuaSay("慕容麟：我正是@3北燕慕容皇室子弟慕容麟@0！你是谁？")
		LuaSay(LuaQueryStr("name").."：你爹有封信托我带给你！")
		LuaSay("慕容麟：呃？有劳了！回去告诉我爹信已收到！")
		UpdateTopSay("到太行古径慕容垂处领取奖励吧！")
		DelItem("o_mission368",1)
		LuaSetTask("T636",2)
		AddLog("父子之情【剧情】",636)
		UpdateMenu()
	elseif(LuaQueryTask("T636")==2)then
		LuaSay("慕容麟：回去告诉我爹信已收到！")
	end

------------------------------------------------劝解之道【剧情】
elseif(answer=="T638")then
	if(LuaQueryTask("T638")==1)then
		LuaSay(""..LuaQueryStr("name").."：原来这一切都是你的阴谋！你可知就因你的挑拨后方危机，多少将士流血牺牲!")
		LuaSay(""..LuaQueryStr("name").."：你爹很爱你，也很关心你。他还让我不要伤害你，赶快回头是岸，不要认贼做父，成个不孝之子，背负骂名啊！")
		LuaSay("慕容麟：我的事不需你管！我爹从没当我是他的儿子，我也从不想认他这个爹，你少在这儿挑拨我和叔父的关系！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T638jl")
		UpdateMenu()
		UpdateNPCMenu("murongchui")
	elseif(LuaQueryTask("T638")==2)then
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T638jl")
	end

		elseif(answer=="T638jl")then
			if(LuaQueryTask("T638")==2 or LuaQueryTask("T638")==1)  then
			LuaSetTask("T638",99)
			DelLog("638")
			LuaAddJx("combat_exp",548000,"T638")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",1000,"T638")
			UpdateMenu()
			end


--------------------------------------------老翁的关怀【剧情】
elseif(answer=="T745")then
	if(LuaQueryTask("T745")==1)then
	LuaSay(""..LuaQueryStr("name").."：老翁叫我来看看你，把这封信给你，他很想你！")
	LuaSay("慕容麟：真的？我太高兴了，难得还有人这么关心我，你去告诉老翁就说我过的很好，我不想让他担心！")
	LuaSay(""..LuaQueryStr("name").."：我现在就去告诉@3老翁@0")
	LuaSetTask("T745",2)
	AddLog("老翁的关怀【剧情】",745)
	UpdateMenu()
    elseif(LuaQueryTask("T745")==2)then
        	LuaSay("慕容麟：你怎么还没去@4陷落关口@0找@3老翁@0？")

	end

elseif(answer=="Tsnpc_60")then
	if(LuaQueryTask("Tsnpc_60")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("慕容麟：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_60",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_60")==2)then
		LuaSay("慕容麟：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_60")then
	if(LuaQueryTask("Tenpc_60")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("慕容麟：这都是大人的功劳啊")
		LuaSetTask("Tenpc_60",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_60")==2)then
		LuaSay("慕容麟：话已经带到了，快回去领取奖励吧")
	end
end
LuaSendMenu()
return 1
end

