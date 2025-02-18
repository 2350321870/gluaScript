T672_nTotalMonsterNum = 36
T664_nTotalMonsterNum = 36
Txhuanxing_nTotalMonsterNum = 26
T271_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T672")
local num2=LuaQueryTask("T664")
----------------------- 蟾卒
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_040/T672")
	if(count==36)then
		CheckNpcStatusByMonItemID("T672","mon_040")
		LuaSay("你已经成功消灭35只蟾卒，到参合坡去找慕容评吧")
		LuaOtherSendMenu()
	end
end 
if(num2==1)then
	local count=LuaQueryTask("task_kill/mon_040/T664")
	if(count==36)then
		CheckNpcStatusByMonItemID("T664","mon_040")
		LuaSay("你已经成功消灭35只蟾卒，到参合坡去找浑太后吧")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_040/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2蟾卒@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==5)then	
	if(LuaQueryTask("task_kill/mon_040/T271")==51)then
		LuaSay("你已经成功的击杀了50只蟾卒")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_040/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只蟾卒，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon36")==1) then
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