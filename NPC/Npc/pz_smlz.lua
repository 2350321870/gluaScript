NPCINFO = {
serial="133" ,
base_name="pz_smlz",
icon=2531,
NpcMove=2531,
name="吕光" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="沙漠绿洲的西方是个神秘之地",
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
	if(LuaQueryTask("T831")==0 and level>=66 and level<=70) then
		AddTopSayMenuItem("军事储水【循环】","T831")
		havetask1=1
	end
	if(LuaQueryTask("T830")==0 and level>=66 and level<=68) then
		AddTopSayMenuItem("收集军资【循环】","T830")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T831")==1)then
		AddTopSayMenuItem("@2军事储水【循环】","T831")
		havetask4 =1
	end
	if(LuaQueryTask("T830")==1)then
		AddTopSayMenuItem("@2收集军资【循环】","T830")
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
	  LuaSay("吕光：将在外军命有所不受。")
		

--------------------------------------------------------------------------消灭【循环】
elseif(answer== "T831") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("831day")~=GetCurrentDay())then
		LuaDelTask("T831num")
	end
		if(LuaQueryTask("T831")==0) then
			LuaSay("吕光: 怪物@3沙暴@0吸食了绿洲大量水资源，速去@3干掉30个沙暴@0，完成后回复。")
			LuaSetTask("T831",1)
			LuaAddTask("T831num",1)
			LuaSetTask("831day",GetCurrentDay())
			LuaSetTask("task_kill/mon_054/T831",1)
			UpdateTopSay("杀30个沙暴")
			AddLog("军事储水【循环】",831)
   			UpdateMenu()
		elseif(LuaQueryTask("T831")==1)then
			local a=(LuaQueryTask("task_kill/mon_054/T831")-1)
			if(LuaQueryTask("task_kill/mon_054/T831")>=31) then
				LuaSay(LuaQueryStr("name").."：@330个沙暴@0已被我消灭！")
				LuaSay("吕光:哈哈~...果然是年少有为！干得不错！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T831jl")
			else
				LuaSay("吕光:你还没有杀够@4沙漠绿洲@0的@330个沙暴@0哦！您才杀了"..a.."个")
				UpdateTopSay("杀够30个沙暴再来找我吧")
			end
		end

elseif(answer=="T831jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T831")==1) then
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
			LuaDelTask("T831")
			DelLog("831")
			LuaDelTask("task_kill/mon_054/T831")
			if(LuaQueryTask("T831num")<=30)then
				LuaAddJx("combat_exp",200236+level^2*20,"T831")
				LuaGive("coin",money,"T831")
			else
				LuaSay("提示：你今天做此任务的次数已经超过30次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(200236+level^2*20)/2,"T831")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------收集【循环】
elseif(answer== "T830") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("830day")~=GetCurrentDay())then
		LuaDelTask("T830num")
	end
	if(LuaQueryTask("T830num")<=30)then
		if(LuaQueryTask("T830")==0) then
			LuaSay("吕光: 军中物资匮乏分别收集1个二级矿、二级木、二级肉给我吧！")
			LuaSetTask("T830",1)
			LuaAddTask("T830num",1)
			LuaSetTask("830day",GetCurrentDay())
			UpdateTopSay("分别收集1个二级矿木肉")
			AddLog("收集军资【循环】",830)
   			UpdateMenu()
		elseif(LuaQueryTask("T830")==1)then
			if(LuaItemStatusNormalCount("o_material_48")>=1 and LuaItemStatusNormalCount("o_material_39")>=1 and LuaItemStatusNormalCount("o_material_30")>=1) then
				LuaSay("吕光:这些物资足以解救燃眉之急，不过要彻底解决物资问题还远远不够啊！")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T830jl")
			else
				LuaSay("吕光:记住了，我要的是1个二级矿、1个二级木、1个二级肉，你还没有收集齐全哦！")
				UpdateTopSay("分别收集1个二级矿木肉")
			end
		end
	else
		LuaSay("吕光: 今天的物资已经收集够了，不需要了。")
	end
elseif(answer=="T830jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T830")==1) then
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
			LuaDelTask("T830")
			DelLog("830")
			DelItem("o_material_48",1)
			DelItem("o_material_39",1)
			DelItem("o_material_30",1)
			if(LuaQueryTask("T830num")<=15)then
				LuaAddJx("combat_exp",246242+level^2*20,"T830")
				LuaGive("coin",money,"T830")
			else
				LuaSay("提示：你今天做此任务的次数已经超过15次，你只能得到一半的经验。")
				LuaAddJx("combat_exp",(246242+level^2*20)/2,"T830")
			end
			UpdateMenu()
	end




end
LuaSendMenu()
return 1
end

