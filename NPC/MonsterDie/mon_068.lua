Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T961_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_068/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2匈奴萨满@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_068/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只匈奴萨满，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon62")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T961")==1)then
	if(LuaQueryTask("task_kill/mon_068/T961")==31)then
		LuaSay("提示：你已经杀死30只匈奴萨满，完成任务")
		LuaOtherSendMenu()
	end
end
return 1
end