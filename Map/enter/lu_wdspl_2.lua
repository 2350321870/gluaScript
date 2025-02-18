ans = {} 	
function OnEnter()
  ans.rtype = 0
  local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
 if(num>=100) then     --------为了测试方便暂定10个 ，别忘记改回100
    LuaDelTask("task_kill/mon_115/Twdspl_1")
    LuaSetTask("task_kill/mon_116/Twdspl_2",1)
    LuaSetTask("task_kill/mon_116BT/Twdspl_2",1)
    	if(LuaItemCount("o_mission413")>=1) then                  -------如果有叛军令牌就都删了 
    	DelItem("o_mission413",LuaItemCount("o_mission413"))
    	end
    LuaDelTask("fb40ji_wdspl01")
    LuaSay("提示：五斗山将在40分钟后关闭，请抓紧时间进去五斗山寨")
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的叛军士兵@3"..num.."个")
    LuaSay("提示：必须在@340分钟内@0消灭叛军士兵@3100个@0才能进入五斗山寨")
 end
 LuaOtherSendMenu()
 return ans.rtype
end