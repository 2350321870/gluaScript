T713_nTotalMonsterNum = 21
T715_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 26
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
Tpt4_nTotalMonsterNum = 51

function OnDie()
-----------------------  血僵尸
----------------------------------------
if(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")>=21 and LuaQueryTask("task_kill/mon_045/T713")==21)then
		CheckNpcStatusByMonItemID("T713","mon_045")
		LuaSay("你已经杀够了20个毒僵尸和20个血僵尸，快去回复燕王陵的守墓老人吧！")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")>=21 and LuaQueryTask("task_kill/mon_045/T715")==21)then
		CheckNpcStatusByMonItemID("T715","mon_045")
		LuaSay("你已经杀够了20个毒僵尸和20个血僵尸，快去回复燕王陵的守墓老人吧！")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_045/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2血僵尸@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只血僵尸@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只血僵尸@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只血僵尸，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon41")==1) then
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