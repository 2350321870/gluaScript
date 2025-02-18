Txhuanxing_nTotalMonsterNum = 9
Thx03_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 9
function OnDie()         
-------------------------------------------------
if(LuaQueryTask("Thx03")==3)then
	if(LuaQueryTask("task_kill/mon_006/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只青牙虫")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_006/Txhuanxing")==9)then
		LuaSay("你已经杀死8只青牙虫，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_006/T464")==21)then
		LuaSay("你已经杀死20只青牙虫，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end	
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_004/Tfjtx")==9)then
		LuaSay("提示：你已经杀死8只青牙虫，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon3")==1) then
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