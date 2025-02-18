T472_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 14
function OnDie()
-------------碧水蛟

if(LuaQueryTask("T474")==1) then
	local r = LuaRandom(5)
	if(r<3)then
		if (LuaItemCount("o_mission311") < 10) then
		LuaGive("o_mission311",1)
			if(LuaItemCount("o_mission311")==10) then
			LuaSay("你已得到10个@2碧水蛟胆@0，快回复@2淝水对岸@0的@2朱序@0吧！")
			LuaOtherSendMenu()
			end
		end
	end
end
if(LuaQueryTask("T472")==1) then
	if(LuaQueryTask("task_kill/mon_024/T472")==31) then
	CheckNpcStatusByMonItemID("T472","mon_024")
	LuaSay("你已经成功消灭了@230条碧水蛟@0，快回复@2淝水对岸@0的@2朱序@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_024/Txhuanxing")==14)then
		LuaSay("你已经杀死13条@2碧水蛟@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_024/T464")==21)then
		LuaSay("你已经杀死20只碧水蛟，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_024/Tbp4")==51)then
		LuaSay("你已经成功的击杀了@250只碧水蛟@0，快到@2帮派主寨@0找@3帮派总管@0或者@2宫殿@0的@2晋帝@0交任务吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_024/Tfjtx")==14)then
		LuaSay("提示：你已经杀死13只碧水蛟，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon18")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

return 1
end
