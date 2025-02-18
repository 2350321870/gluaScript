T370_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()

-------------彩鹫
if(LuaQueryTask("T370")==1)then
	if(LuaQueryTask("task_kill/mon_013/T370")==21)then
	    CheckNpcStatusByMonItemID("T370","mon_013")
	    LuaSay("你已经消灭掉了20只彩鹫，快回去报告@3孙恩@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_013/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2彩鹫@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_013/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2彩鹫@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_013/T464")==21)then
		LuaSay("你已经杀死20只彩鹫，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_013/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只彩鹫，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon8")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon9")==1) then
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