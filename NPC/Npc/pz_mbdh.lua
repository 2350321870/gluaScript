NPCINFO = {
serial="134" ,
base_name="pz_mbdh",
icon=2521,
NpcMove=2521,
name="宇文元" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="屠尽柔然狗",
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
	if(LuaQueryTask("T841")==0 and level>=66 and level<=70) then
		AddTopSayMenuItem("沙漠清剿【循环】","T841")
		havetask1=1
	end
	if(LuaQueryTask("T840")==0 and level>=68 and level<=70) then
		AddTopSayMenuItem("沙漠之花【循环】","T840")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T841")==1)then
		AddTopSayMenuItem("@2沙漠清剿【循环】","T841")
		havetask4 =1
	end
	if(LuaQueryTask("T840")==1)then
		AddTopSayMenuItem("@2沙漠之花【循环】","T840")
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
-------------------------------------------------------------------------
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
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("宇文元：穿过沙漠，屠尽柔然狗。")
		

--------------------------------------------------------------------------消灭【循环】
elseif(answer== "T841") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("841day")~=GetCurrentDay())then
		LuaDelTask("T841num")
	end
		if(LuaQueryTask("T841")==0) then
			LuaSay("宇文元: 大荒猬阻挡了我的去路，你速去@3干掉30个大荒猬@0，完成后回复。")
			LuaSetTask("T841",1)
			LuaAddTask("T841num",1)
			LuaSetTask("841day",GetCurrentDay())
			LuaSetTask("task_kill/mon_060/T841",1)
			UpdateTopSay("杀30个大荒猬")
			AddLog("沙漠清剿【循环】",841)
   			UpdateMenu()
		elseif(LuaQueryTask("T841")==1)then
			if(LuaQueryTask("task_kill/mon_060/T841")>=31) then
				LuaSay(LuaQueryStr("name").."：@330个大荒猬@0已被我消灭！")
				LuaSay("宇文元:哈哈~...果然是年少有为！干得不错！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T841jl")
			else
				LuaSay("宇文元:你还没有杀够@4漠北大荒@0的@330个大荒猬@0哦！")
				UpdateTopSay("杀够30个大荒猬再来找我吧")
			end
		end

elseif(answer=="T841jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T841")==1) then
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
			LuaDelTask("T841")
			DelLog("841")
			LuaDelTask("task_kill/mon_060/T841")
			if(LuaQueryTask("T841num")<=30)then
				LuaGive("coin",money,"T841")
				LuaAddJx("combat_exp",202657+level^2*20,"T841")
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(202657+level^2*20)/2,"T841")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------收集【循环】
elseif(answer== "T840") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("840day")~=GetCurrentDay())then
		LuaDelTask("T840num")
	end
	if(LuaQueryTask("T840num")<=30)then
		if(LuaQueryTask("T840")==0) then
			LuaSay("宇文元: 胡杨被誉为“沙漠的脊梁”，那仙人掌可比作是沙漠花之使者了，它在沙漠里要100年才开一次花 花蕙高10-20米 花开几个月 每次能开几万朵！")
			LuaSay("宇文元：现在我就送你1颗仙人掌种子，快快去种植场种出1株仙人掌，让这片荒漠成为花的海洋吧！")
			LuaSetTask("T840",1)
			LuaAddTask("T840num",1)
			LuaGive("o_seed106",1)
			LuaSetTask("840day",GetCurrentDay())
			AddLog("沙漠之花【循环】",840)
   			UpdateMenu()
		elseif(LuaQueryTask("T840")==1)then
			if(LuaItemStatusNormalCount("o_mission423")>=1) then
				LuaSay("宇文元:恩！做得不错，不过要让这片荒漠变成绿洲还远远不够哦。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T840jl")
			else
				LuaSay("宇文元：你还没有得到1株仙人掌呢！")
				if(LuaItemStatusNormalCount("o_seed106")<=0)then
					LuaGive("o_seed106",1)
				end
			end
		end
	else
		LuaSay("宇文元: 从南方运种子极为困难，今天运来的种子已经被你种完了，明天再来吧！")
	end

elseif(answer=="T840jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T840")==1) then
			if(LuaItemStatusNormalCount("o_mission423")>=1) then
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
			LuaDelTask("T840")
			DelLog("840")
			DelItem("o_mission423",1)
			if(LuaQueryTask("T840num")<=30)then
				LuaAddJx("combat_exp",234639+level^2*20,"T840")
				LuaGive("coin",money,"T840")
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(234639+level^2*20)/2,"T840")
			end
			UpdateMenu()
			end
	end




end
LuaSendMenu()
return 1
end

