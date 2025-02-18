T440_nTotalMonsterNum = 26
Tbprw004_nTotalMonsterNum = 21
T426_nTotalMonsterNum = 31
T424_nTotalMonsterNum = 26
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 13
function OnDie()
------------------------------------------
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_019/Tbprw004")==21)then
	LuaSay("你已经消灭了@220个北府精锐@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T426")==1) then
	local count = LuaQueryTask("task_kill/mon_019/T426")
	if(count==26) then
	CheckNpcStatusByMonItemID("T426","mon_019")
	LuaSay("你已经成功消灭了25个@2北府精锐@0，快回复@4北府军营@0的@2驿站小吏@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T440")==1) then
	local count = LuaQueryTask("task_kill/mon_019/T440")
	if(count==26) then
	CheckNpcStatusByMonItemID("T440","mon_019")
	LuaSay("你已经成功消灭了25个@2北府精锐@0，快回复@4军营前哨@0的@2谢琰@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_019/Txhuanxing")==13)then
		LuaSay("你已经杀死12个@2北府精锐@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_019/T464")==21)then
		LuaSay("你已经杀死20只北府精锐，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_019/Tfjtx")==13)then
		LuaSay("提示：你已经杀死12只北府精锐，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon13")==1) then
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
