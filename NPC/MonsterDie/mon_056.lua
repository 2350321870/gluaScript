Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T820_nTotalMonsterNum =31

function OnDie()
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_056/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2战争兽@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
-------------------------------
if(LuaQueryTask("T820")==1)then
	if(LuaQueryTask("task_kill/mon_056/T820")==31)then
		LuaSay("你已经杀死30只@2战争兽@0，快到契丹部落的契丹族长处领取奖励吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_056/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只战争兽，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon50")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-----
--------------------------------

return 1
end