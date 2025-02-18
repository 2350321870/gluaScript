T506_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T506")
local num2=LuaQueryTask("T571")
-----------------------  氐族战士
 if(num2==1) then
	local count = LuaQueryTask("task_kill/mon_027/T571") 
	if(count==21) then
		CheckNpcStatusByMonItemID("T571","mon_027")
		LuaSay("你已经成功消灭了20只氐族战士，赶快回复@4渭水之滨@0的@3张氏@0吧")
		LuaOtherSendMenu()
	end
end
---------------------------
 if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_027/T506") 
	if(count==31) then
		CheckNpcStatusByMonItemID("T506","mon_027")
		LuaSay("你已经成功消灭了30只氐族战士，赶快回复洛阳城的符坚吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_027/Tbprw004")==21)then
	LuaSay("你已经消灭了@220个氐族战士@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_027/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2氐族战士@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_027/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只氐族战士，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon21")==1) then
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

