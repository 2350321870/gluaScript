T637_nTotalMonsterNum = 11
T642_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21
function OnDie()
-----------------------  太行古猿
----------------------------------------------------------------------------
if(LuaQueryTask("T637")==2) then
if(LuaQueryTask("task_kill/mon_038/T637") >= 11) then
CheckNpcStatusByMonItemID("T637","mon_038")
  LuaSay("你已经杀够了@210只太行古猿@0，去回复@4太行山谷@0的@3石越@0吧")
  LuaOtherSendMenu()
  end
end
-----------------------------------------------------------------------------
if(LuaQueryTask("T642")==1) then
if(LuaQueryTask("task_kill/mon_038/T642") == 31) then
CheckNpcStatusByMonItemID("T642","mon_038")
  LuaSay("你已经杀够了@230只太行古猿@0，去回复@4太行古径@0的@3慕容麟@0吧")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_038/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2太行古猿@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_038/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只太行古猿，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon32")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

------------------------------------------------------------------------------
return 1
end
