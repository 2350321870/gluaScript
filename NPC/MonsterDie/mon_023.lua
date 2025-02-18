T471_nTotalMonsterNum = 31
T475_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 13
T216_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 14
Tpt4_nTotalMonsterNum = 51
function OnDie()
-------------青水虫
if(LuaQueryTask("T471")==1) then
	local count = LuaQueryTask("task_kill/mon_023/T471")
	if(count==31) then
	CheckNpcStatusByMonItemID("T471","mon_023")
	LuaSay("你已经成功消灭了30个@2青水虫@0，快回复@2淝水对岸@0的@2朱序@0吧！")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("T475")==1) then
	local count = LuaQueryTask("task_kill/mon_023/T475")
	if(count==31) then
	CheckNpcStatusByMonItemID("T475","mon_023")
	LuaSay("你已经成功消灭了30个@2青水虫@0，快回复@2淝水对岸@0的@2朱序@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个青水虫@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T269")==2) then
	if(LuaQueryTask("task_kill/mon_023/T269")==101) then
		LuaSay("你已经成功击杀了100个@2青水虫@0")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_023/Txhuanxing")==14)then
		LuaSay("你已经杀死13只@2青水虫@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==5)then
	if(LuaQueryTask("task_kill/mon_023/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2青水虫@0完成了过关斩将[活动]，抓紧时间回复建康城的晋清公主吧。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_023/T464")==21)then
		LuaSay("你已经杀死20只青水虫，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只青水虫@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只青水虫@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tfjtx")==14)then
		LuaSay("提示：你已经杀死13只淝水鳄，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon17")==1) then
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
