Tbprw004_nTotalMonsterNum = 21
T800_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 31
Tfjtx_nTotalMonsterNum = 31
function OnDie()

-------------------------------------------- 鲜卑蛮兵 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_050/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个鲜卑蛮兵@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_050/Txhuanxing")==31)then
		LuaSay("你已经杀死30只@2鲜卑蛮兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
-----------------------------------------
if(LuaQueryTask("T800")==1)then
	if(LuaQueryTask("task_kill/mon_050/T800")==31)then
		LuaSay("你已经杀死30只@2鲜卑蛮兵@0，快到云中城郊外的拓跋烈处领取奖励吧！")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_050/Tfjtx")==31)then
		LuaSay("提示：你已经杀死30只鲜卑蛮兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon44")==1) then
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
-----------------------------------------
return 1
end