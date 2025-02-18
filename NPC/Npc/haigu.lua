NPCINFO = { 
serial="129" ,
base_name="haigu",
icon=2520,
NpcMove=2520 ,
name="骸骨" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="呵...呼...呼",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaQueryTask("Tbprw11_2")==99 and LuaQueryTask("Tbprw11_3")==0) then
		AddTopSayMenuItem("无奈办法【环三】","Tbprw11_3")
		havetask=1
	end

	if(LuaQueryTask("Tbprw11_2")==1 or LuaQueryTask("Tbprw11_2")==2) then
		AddTopSayMenuItem("@2寻找根源【环二】","Tbprw11_2")
		havetask=2
	end
	if(LuaQueryTask("Tbprw11_3")==1 or LuaQueryTask("Tbprw11_3")==2) then
		AddTopSayMenuItem("@2无奈办法【环三】","Tbprw11_3")
		havetask=2
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
	LuaSay("骸骨：看什么看，没见过骨头裸奔么!")

elseif(answer=="Tbprw11_2")then                      
	if(LuaQueryTask("Tbprw11_2")==1)then
		LuaSay(""..LuaQueryStr("name").."：如今乱世怨念沉积，邪物尽出，我是来查探有没有解决邪物的办法。")
		LuaSay("骸骨：要想解决邪物，就要了解他的本质，你去@4地下陵墓@0杀@3毒僵尸@0收集@310@0个@3僵尸的骨头@0给我。")
		LuaSetTask("Tbprw11_2",2)
		UpdateTopSay("到地下陵墓杀毒僵尸收集10个僵尸的骨头")
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_2")==2)then
		if(LuaItemCount("o_mission407")>=10) then
			LuaSay("骸骨：我用@3僵尸的骨头@0研究一下这些邪物的特性。")
			AddMenuItem("任务完成","")
			AddMenuItem("领取奖励","Tbprw11_2jl")
		elseif(LuaItemCount("o_mission407")<=10) then
			LuaSay("骸骨：你才收集了"..LuaItemCount("o_mission407").."个@3僵尸的骨头@0，杀@3毒僵尸@0收集够@310@0个再来找我吧。")
		end
	end
elseif(answer=="Tbprw11_2jl")then  -----------------给经验
	local level= LuaQuery("level")
	if(LuaQueryTask("Tbprw11_2")==2) then
		if(LuaItemCount("o_mission407")>=10) then
		local jinyan=level*2500+level*level*20
			LuaSetTask("Tbprw11_2",99)
			DelItem("o_mission407",10)
			LuaAddJx("combat_exp",jinyan,"Tbprw11_2")
			AddMoneyToPartyBank(3000)-------增加帮库金钱
			LuaPartyRepute(1,0)------------增加帮派声望
			LuaAddAchievementSchedule("PartyTask_num",1)	
			LuaAddAchievementSchedule("PartyRepute_mun",1)
			LuaPartyMsg(""..LuaQueryStr("name").."完成帮派任务，为帮派增加@21点声望，帮库1000铜币@0!",0)
			UpdateMenu() 
		end
	end
elseif(answer=="Tbprw11_3")then                      
	if(LuaQueryTask("Tbprw11_3")==0)then
		LuaSay(""..LuaQueryStr("name").."：如今乱世怨念沉积，邪物尽出，我是来查探有没有解决邪物的办法。")
		LuaSay("骸骨：我正在研究@3僵尸的骨头@0，你过@3三分钟@0再来找我吧！")
		LuaSetTask("Tbprw11_3",1)
		local time=GetCurrentTime()
		LuaSetTask("bprw11_3ime",time)
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw11_3")==1)then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("bprw11_3ime"))
		if(shijiancha>=180) then
			LuaSay("骸骨：经过我的研究，我发现这些僵尸都是由怨念组成，很难把他们消除。")
			LuaSay("骸骨：哎，只能每天不断的杀死他们，直到怨念消失。")
			LuaSay(""..LuaQueryStr("name").."：多谢，我这就去@4宫殿@0找@3晋帝@0告诉他消灭邪物的办法。")
			LuaSetTask("Tbprw11_3",2)
			UpdateMenu()
		elseif(shijiancha<180) then
			LuaSay("骸骨：你急什么啊，这不还没到三分钟嘛，搞研究是要时间的。")
		end
	elseif(LuaQueryTask("Tbprw11_3")==2)then
		LuaSay("骸骨：快去@4宫殿@0找@3晋帝@0吧！")
	end
			
end
LuaSendMenu()
return 1
end 

