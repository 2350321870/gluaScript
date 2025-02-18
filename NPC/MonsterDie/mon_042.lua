T710_nTotalMonsterNum = 36
Tbprw6_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
------------------------------------------鬼火
if(LuaQueryTask("T710")==1)then
	if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
	CheckNpcStatusByMonItemID("T710","mon_042")
	LuaSay("你已杀够了@235只鬼火@0，快去回复@3燕王陵的守墓老人@0吧！")
	LuaOtherSendMenu()
	end
	end
if(LuaQueryTask("Tbprw6")==1)then
	if(LuaQueryTask("task_kill/mon_042/Tbprw6")==16 and LuaQueryTask("task_kill/mon_044/Tbprw6")>=16)then
		LuaSay("你已经消灭了@315个鬼火@0，快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧。")
	elseif(LuaQueryTask("task_kill/mon_042/Tbprw6")==16 and LuaQueryTask("task_kill/mon_044/Tbprw6")<16)then
		LuaSay("@3鬼火@0已近够了，快去@4地下陵墓@0杀15个@3毒僵尸@0吧！")
	end
	LuaOtherSendMenu()
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_042/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2鬼火@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_042/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只鬼火，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon38")==1) then
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