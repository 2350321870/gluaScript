Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_061/Txhuanxing")==36)then
		LuaSay("你已经杀死35只@2柔然拳将@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_061/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只柔然拳将，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon57")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T900")==1)then
	local r=LuaRandom(3)
	if(r<2) then
		if(LuaItemCount("o_mission192")<20)then
			LuaGive("o_mission192",1)
			if(LuaItemCount("o_mission192")==20)then
				CheckNpcStatusByMonItemID("T900","o_mission192")
				LuaSay("提示：你得到了@4狗肉包子@0，完成任务")
				LuaOtherSendMenu()
			end
		end
	end
end

return 1
end