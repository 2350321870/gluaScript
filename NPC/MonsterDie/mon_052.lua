Txhuanxing_nTotalMonsterNum = 34
Tbprw7_nTotalMonsterNum =36
T810_nTotalMonsterNum =31
Tfjtx_nTotalMonsterNum = 34
function OnDie()

-----------------------  鲜卑精锐 
if(LuaQueryTask("Tbprw7")==1)then
	if(LuaQueryTask("task_kill/mon_052/Tbprw7")==36)then
	LuaSay("你已经消灭了@235个鲜卑精锐@0，快去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧。")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_052/Txhuanxing")==34)then
		LuaSay("你已经杀死33只@2鲜卑精锐@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

------------------------------------------
if(LuaQueryTask("T810")==1)then
	if(LuaQueryTask("task_kill/mon_052/T810")==31)then
		LuaSay("你已经杀死30只@2鲜卑精锐@0，快到古战场的耶律雄才处领取奖励吧！")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_052/Tfjtx")==34)then
		LuaSay("提示：你已经杀死33只鲜卑精锐，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon46")==1) then
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
------------------------------------------
return 1
end