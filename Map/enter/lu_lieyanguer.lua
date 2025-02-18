ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_113/Tlygyi")-1
 if(num>=200) then    
    LuaDelTask("task_kill/mon_113/Tlygyi")
    LuaSetTask("task_kill/mon_114/Tlyger",1)
    LuaSay("精英火狼：首领有危险，大家拼死保护")
    LuaSay("提示：烈焰谷2层将在20分钟后关闭，请抓紧时间进去3层")
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的火狼@3"..num.."只")
    LuaSay("提示：必须在@325分钟内@0消灭火狼@3200只@0才能进入烈焰谷2层")
 end
 LuaOtherSendMenu()
 return ans.rtype
end