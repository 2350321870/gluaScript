T639_nTotalMonsterNum = 31
T671_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T671")
local num2=LuaQueryTask("T639")
---------------------- 龙兵
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_039/T671")
	if(count==36)then
		CheckNpcStatusByMonItemID("T671","mon_039")
		LuaSay("你已经成功消灭35只龙兵，到参合坡去找慕容评吧！")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("T692")==2) then
  	local r = LuaRandom(10)
  	if(r<9)then
  		if(LuaItemCount("o_mission359") < 20) then
     		LuaGive("o_mission359",1)
     		if(LuaItemCount("o_mission359")==20) then
     		LuaSay("你已得到20个龙鳞。快回复@4中山城@0里的@3侍者@0吧！")
     		LuaOtherSendMenu()
     		end
		end
	end
end
----------------------------------------
if(num2==1) then
local count = LuaQueryTask("task_kill/mon_039/T639")
 if(count==31) then
 CheckNpcStatusByMonItemID("T639","mon_039")
LuaSay("你已经成功消灭了30个龙兵，回复@3太行古径的慕容垂@0吧")
LuaOtherSendMenu()
end
end	


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_039/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2龙兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_039/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只龙兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon35")==1) then
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