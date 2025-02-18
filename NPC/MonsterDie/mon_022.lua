T453_nTotalMonsterNum = 26
T460_nTotalMonsterNum = 26
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 13
T376_nTotalMonsterNum = 31
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 14
function OnDie()
if(LuaQueryTask("T453")==1) then
	local count = LuaQueryTask("task_kill/mon_022/T453")
	if(count==26) then
	CheckNpcStatusByMonItemID("T453","mon_022")
	LuaSay("你已经成功消灭了25个@2穴居蛛@0，快回复@2淝水之滨@0的@2刘牢之@0吧！")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("T460")==1) then
	local count = LuaQueryTask("task_kill/mon_022/T460")
	if(count==26) then
	CheckNpcStatusByMonItemID("T460","mon_022")
	LuaSay("你已经成功消灭了25个@2穴居蛛@0，快回复@2淝水之滨@0的@2何谦@0吧！")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_022/Txhuanxing")==14)then
		LuaSay("你已经杀死13只@2穴居蛛@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==2)then
	if(LuaQueryTask("task_kill/mon_022/T200")==101)then
		LuaSay("你已经成功的击杀了100只@2穴居蛛@0，完成了@3扶持弱小@0任务。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T376")==1)then
	if(LuaQueryTask("task_kill/mon_022/T376")==31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
		LuaSay("你和你的队友一共击杀了30只@2穴居蛛@，快回去报告@3何谦@0吧！")
		LuaOtherSendMenu()
	end
	if(LuaQueryTask("task_kill/mon_022/T376")==31 and TeamQueryTask("task_kill/mon_022/T376")<31)then
		LuaSay("你已经击杀了30只@2穴居蛛@，但是你的队友还没杀够哦，快去帮助他吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_022/T464")==21)then
		LuaSay("你已经杀死20只穴居蛛，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_022/Tfjtx")==14)then
		LuaSay("提示：你已经杀死13只穴居蛛，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon16")==1) then
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
