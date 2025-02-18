T965_nTotalMonsterNum = 41
T811_nTotalMonsterNum = 41
Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T860_nTotalMonsterNum = 31
function OnDie()


local num1=LuaQueryTask("T965")
local num2=LuaQueryTask("T811")
-----------------------  豪嚎

----------------------------------------
 if(num1==3) then
local count = LuaQueryTask("task_kill/mon_057/T965")
 if(count==41) then
LuaSay("你已经成功消灭了40只豪嚎，快去回复陇西之地的公孙支吧")
LuaOtherSendMenu()
end
end

 if(num2==1) then
local count = LuaQueryTask("task_kill/mon_057/T811")
 if(count==41) then
LuaSay("你已经成功消灭了40只豪嚎，快去回复陇西之地的公孙支吧")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_057/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2沙虫@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_057/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只沙虫，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon53")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T860")==1)then
	if(LuaQueryTask("task_kill/mon_057/T860")==31)then
		CheckNpcStatusByMonItemID("T860","mon_057")
		LuaSay("提示：你已经杀死30只沙虫，完成任务")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end