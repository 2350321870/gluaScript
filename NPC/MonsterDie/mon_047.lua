T621_nTotalMonsterNum = 31
T648_nTotalMonsterNum = 21
T627_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21
function OnDie()
local num1=LuaQueryTask("T621")
local num3=LuaQueryTask("T648")

-----------------------  夜叉

----------------------------------------
 if(num1==1) then
 if(LuaQueryTask("task_kill/mon_047/T621")==31) then
  CheckNpcStatusByMonItemID("T621","mon_047")
LuaSay("你已经成功消灭了@330只夜叉@0，快到@4洛城废墟@0的@3陶渊明@0吧！")
LuaOtherSendMenu()
end
end


if(num3==1) then
 if( LuaQueryTask("task_kill/mon_047/T648")==21) then
 CheckNpcStatusByMonItemID("T648","mon_047")
LuaSay("你已经成功消灭了20只夜叉")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("T627")==1) then
 if( LuaQueryTask("task_kill/mon_047/T627")==31) then
 CheckNpcStatusByMonItemID("T627","mon_047")
LuaSay("你已经成功消灭了30只夜叉，快去回复陶渊明吧")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_047/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2夜叉@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_047/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只夜叉，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon34")==1) then
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
