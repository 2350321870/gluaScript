Txhuanxing_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 36
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_070/Txhuanxing")==41)then
		LuaSay("你已经杀死40只@2巫山老妖@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_070/Tfjtx")==36)then
		LuaSay("提示：你已经杀死35只巫山老妖，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon64")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
if(LuaCheckBuff("565")==0)then
    ChangeMap("lu_zongmiao")
    LuaShowNotify("提示:月卡会员才能在该地图挂机")
    LuaOtherSendMenu()
end
return 1
end