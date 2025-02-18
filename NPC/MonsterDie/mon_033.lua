T611_nTotalMonsterNum = 21
T615_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Tbprw4_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 17
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 17
Tpt4_nTotalMonsterNum = 51
function OnDie()
local num1=LuaQueryTask("T611")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_3=LuaQueryTask("Tbprw4_3")
-----------------------
if(num1==1) then
	local count = LuaQueryTask("task_kill/mon_033/T611")
	if(count==21) then
	    CheckNpcStatusByMonItemID("T611","mon_033")
		LuaSay("你已经成功消灭了20只尸虫")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T615")==1) then
	local count = LuaQueryTask("task_kill/mon_033/T615")
	if(count==31) then
	    CheckNpcStatusByMonItemID("T615","mon_033")
		LuaSay("你已经成功消灭了30只尸虫，快去回复乞伏奎吧。")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_3")==1)then
		if(LuaQueryTask("task_kill/mon_033/Tbprw4")==26)then
			LuaSay("你已经成功消灭了@325个尸虫@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！")
			LuaOtherSendMenu()
		end
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_033/Txhuanxing")==17)then
		LuaSay("你已经杀死16只@2尸虫@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只尸虫@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只尸虫@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_033/Tfjtx")==17)then
		LuaSay("提示：你已经杀死16只尸虫，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon27")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-----------------------------------------
return 1
end

