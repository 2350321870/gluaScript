T380_nTotalMonsterNum = 21
T382_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
------------------
function OnDie()
if(LuaQueryTask("T380")==1)then
	if(LuaQueryTask("task_kill/mon_012/T380")==21)then
	CheckNpcStatusByMonItemID("T380","mon_012")
	LuaSay("你已击杀了@220个天师教徒@0了，速去回复@4山寨@0的@3谢道韫@9吧！")
	LuaOtherSendMenu()
	end
	end
	if(LuaQueryTask("T382")==1)then
	if(LuaQueryTask("task_kill/mon_012/T382")==21)then
	CheckNpcStatusByMonItemID("T382","mon_012")
	LuaSay("你已击杀了@220个天师教徒@0了，速去回复@4山寨@0的@3谢道韫@9吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_012/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2天师教徒@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_012/T464")==21)then
		LuaSay("你已经杀死20只天师教徒，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_012/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只天师教徒，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon7")==1) then
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