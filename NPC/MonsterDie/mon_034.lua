T611_nTotalMonsterNum = 21
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 17
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 17
function OnDie()
local num1=LuaQueryTask("T611")
-----------------------
if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_034/T611")
	if(count==21) then
	    CheckNpcStatusByMonItemID("T611","mon_034")
		LuaSay("你已经成功消灭了20只修罗兵")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_034/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个修罗兵@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_034/Txhuanxing")==17)then
		LuaSay("你已经杀死16只@2修罗兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_034/Tbp4")==51)then
		LuaSay("你已经成功的击杀了@250只修罗兵@0，快到@2帮派主寨@0找@3帮派总管@0或者@2宫殿@0的@2晋帝@0交任务吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tfjtx")==17)then
		LuaSay("提示：你已经杀死16只修罗兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon28")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

------------------------------------------
return 1
end