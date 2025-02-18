Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T951_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_066/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2剑蜥@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_066/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只剑蜥，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon60")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T951")==1)then
	if(LuaQueryTask("task_kill/mon_066/T951")==31)then
		CheckNpcStatusByMonItemID("T951","mon_066")
		LuaSay("你已经杀死30只@2剑蜥@0，完成任务")
		LuaOtherSendMenu()
	end
end
return 1
end