T713_nTotalMonsterNum = 21
T715_nTotalMonsterNum = 21
Tbprw6_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 26
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
function OnDie()
-----------------------  毒僵尸 
----------------------------------------
if(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")==21 and LuaQueryTask("task_kill/mon_045/T713")>=21)then
		CheckNpcStatusByMonItemID("T713","mon_044")
		LuaSay("你已经杀够了20个毒僵尸和20个血僵尸，快去回复燕王陵的守墓老人吧！")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")==21 and LuaQueryTask("task_kill/mon_045/T715")>=21)then
		CheckNpcStatusByMonItemID("T715","mon_044")
		LuaSay("你已经杀够了20个毒僵尸和20个血僵尸，快去回复燕王陵的守墓老人吧！")
		LuaOtherSendMenu()
		end
		end
if(LuaQueryTask("Tbprw6")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tbprw6")==16 and LuaQueryTask("task_kill/mon_042/Tbprw6")>=16)then
		LuaSay("你已经消灭了@315个毒僵尸@0，快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧。")
	elseif(LuaQueryTask("task_kill/mon_044/Tbprw6")==16 and LuaQueryTask("task_kill/mon_042/Tbprw6")<16)then
		LuaSay("@3毒僵尸@0已近够了，快去@4燕王陵@0杀15个@3鬼火@0吧！")
	end
	LuaOtherSendMenu()
end

if(LuaQueryTask("Tbprw11_2")==2)then
	if (LuaItemCount("o_mission407") < 10) then
		local r = LuaRandom(3)
		if(r==1)then
     		LuaGive("o_mission407",1)
		end
	end
    if(LuaItemCount("o_mission407")==10) then
     	LuaSay("你已得到@310个僵尸骨头@0，快去找@4地下陵墓@0的@3骸骨@0吧。")
     	LuaOtherSendMenu()
    end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_044/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2毒僵尸@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tbp4")==51)then
		LuaSay("你已经成功的击杀了@250只毒僵尸@0，快到@2帮派主寨@0找@3帮派总管@0或者@2宫殿@0的@2晋帝@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_044/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只毒僵尸，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon40")==1) then
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