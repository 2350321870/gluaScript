ans = {} 	
function OnEnter()
ans.rtype = 0
local num=LuaQueryTask("task_kill/mon_110/Tjjbf_1")-1
local num2=LuaQueryTask("task_kill/mon_111/Tjjbf_1")-1
	if(num>=50 and num2>=50) then     --------为了测试方便暂定0个 ，别忘记改回50
		LuaDelTask("task_kill/mon_110/Tjjbf_1")
		LuaDelTask("task_kill/mon_111/Tjjbf_1")
		LuaSetTask("task_kill/mon_112/Tjjbf_2",1)
		LuaSay("提示：伊水北岸将在40分钟后关闭，请抓紧时间进去洛阳北山！")
		LuaOtherSendMenu()
		ans.rtype=1
	else
		LuaSay("提示：你所在的队伍已经消灭的旺财狗@3"..num.."只，蝙蝠"..num2.."只！ ")
		LuaSay("提示：必须在@340分钟内@0消灭旺财狗@350只，蝙蝠50只@0才能进入伊水北岸！")
	end
LuaOtherSendMenu()
return ans.rtype
end