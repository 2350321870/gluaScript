T711_nTotalMonsterNum = 36
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
-----------------------  蝠灵 ----------------------------------------
if(LuaQueryTask("T711")==1)then
	if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
	CheckNpcStatusByMonItemID("T711","mon_043")
	LuaSay("你已经杀够了@235只蝠灵@0，快去回复@3燕王陵的守墓老人@0吧！")
	LuaOtherSendMenu()
	end
	end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_043/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2蝠灵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_043/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只蝠灵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon39")==1) then
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