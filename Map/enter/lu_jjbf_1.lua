ans = {} 	
function OnEnter()
	ans.rtype = 0
	if(GetCurrentDay()~=LuaQueryStrTask("jjbf_1day")) then
		LuaSetTask("jjbf_1time",0)
	end
	local level=LuaQuery("level")
	if(LuaQueryTask("jjbf_1time")<3) then    -----------------进入副本次数限制，别忘记改回3次 
		if(level>=20 and level<30) then
			LuaSay("提示：队伍必须在40分钟内消灭@3旺财狗、蝙蝠@0各@350只@0，否则无法进入伊水北岸！")
			LuaSay("提示：伊水将在@340分钟@0后关闭，请抓紧时间进入伊水北岸！")
			LuaSetTask("task_kill/mon_110/Tjjbf_1",1)
			LuaSetTask("task_kill/mon_111/Tjjbf_1",1)
			--      LuaAddTask("jjbf_1time",1)
			LuaSetTask("jjbf_1day",GetCurrentDay())
			LuaAddJx("combat_exp",level*100,"FB_Lv20")
			ans.rtype=1
		else
			LuaSay("提示：等级在@320到29之间@0才能进入该副本")
		end
	else
		LuaSay("提示：该副本每天进入次数不得超过3次")
	end
	LuaOtherSendMenu()
return ans.rtype
end