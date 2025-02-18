Txhuanxing_nTotalMonsterNum = 49
Tfjtx_nTotalMonsterNum = 39
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_075/Txhuanxing")==49)then
		LuaSay("你已经杀死48只@2魔人格霸@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_075/Tfjtx")==39)then
		LuaSay("提示：你已经杀死38只魔人格霸，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon69")==1) then
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