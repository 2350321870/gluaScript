T831_nTotalMonsterNum = 41
T830_nTotalMonsterNum = 41
Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T861_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_058/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2沙魁@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_058/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只沙魁，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon54")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T861")==1)then
	if(LuaQueryTask("task_kill/mon_058/T861")==31)then
		CheckNpcStatusByMonItemID("T861","mon_058")
		LuaSay("提示：你已经杀死30只沙魁，完成任务")
		LuaOtherSendMenu()
	end
end
return 1
end