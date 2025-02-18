T635_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 21
T216_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
function OnDie()
----------------------  穷奇鼠
local num1=LuaQueryTask("T635")
----------------------------------------
--[[if(LuaQuery("T653")==1)then
	local r = LuaRandom(5)
	if(r<4)then
	if(LuaItemCount("o_material_39")<5 and LuaItemCount("o_material_48")<5)then
	LuaGive("o_material_39",1)
	LuaGive("o_material_48",1)
		if(LuaItemCount("o_material_39")>=5 and LuaItemCount("o_material_48")>=5)then
		LuaSay("你已经收集够了@25个2级木跟2级矿@0,速去回复@4太行山谷@0的@3石越@0吧")
		LuaOtherSendMenu()
		end
	end
	end
	end]]

if(num1==1) then
 if(LuaQueryTask("task_kill/mon_035/T635")>=31) then
 CheckNpcStatusByMonItemID("T635","mon_035")
LuaSay("你已经成功消灭了30只穷奇鼠")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_035/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个穷奇鼠@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_035/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2穷奇鼠@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T216")==7)then
	if(LuaQueryTask("task_kill/mon_035/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2穷奇鼠@0完成了过关斩将[活动]，抓紧时间回复建康城的晋清公主吧。")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_035/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只夜叉，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon29")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------------
return 1
end
