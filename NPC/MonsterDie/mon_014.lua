T392_nTotalMonsterNum = 11
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
local num5=LuaQueryTask("T392")
if(num5==1)then
	if(LuaQueryTask("task_kill/mon_014/T392")==11 and LuaQueryTask("task_kill/mon_015/T392")>=11)then
	CheckNpcStatusByMonItemID("T392","mon_014")
	LuaSay("你已成功击杀10个炎蛛和10个天师守卫，快去回复王凝之吧。")
	LuaOtherSendMenu()
	end
	end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_014/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2炎蛛@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_014/T464")==21)then
		LuaSay("你已经杀死20只炎蛛，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_014/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只炎蛛，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon10")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
----------------
return 1
end