Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 31
Tfjtx_nTotalMonsterNum = 31
T216_nTotalMonsterNum = 51
function OnDie()

---------------------------------------------  龙蝎 
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_051/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个龙蝎@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_051/Txhuanxing")==31)then
		LuaSay("你已经杀死30只@2龙蝎@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
-----------------------------------------
if(LuaQueryTask("T801")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission420")<20) then
			LuaGive("o_mission420",1)
			LuaShowNotify("得到1块龙蝎肉")
		else
			LuaSay("你已经得到了20块龙蝎肉了，快到云中城郊外的拓跋烈处领取奖励吧！")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_051/Tfjtx")==31)then
		LuaSay("提示：你已经杀死30只龙蝎，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon45")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-----
if(LuaQueryTask("T216")==8)then
	if(LuaQueryTask("task_kill/mon_035/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2龙蝎@0完成了过关斩将[活动]，抓紧时间回复建康城的晋清公主吧。")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end