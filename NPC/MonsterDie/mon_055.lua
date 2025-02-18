Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
T271_nTotalMonsterNum = 51
function OnDie()
-----------------------  冰魔狼 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_055/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个冰魔狼@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
----------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_055/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2冰魔狼@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("T821")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission422")<20) then
			LuaGive("o_mission422",1)
			LuaShowNotify("得到1张狼皮")
		else
			LuaSay("你已经得到了20张狼皮了，快到契丹部落的契丹族长处领取奖励吧！")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_055/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只冰魔狼，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon49")==1) then
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
if(LuaQueryTask("T271")==6)then	
	if(LuaQueryTask("task_kill/mon_055/T271")==51)then
		LuaSay("你已经成功的击杀了50只冰魔狼")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end