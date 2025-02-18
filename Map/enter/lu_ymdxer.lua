ans = {} 	
function OnEnter()
  ans.rtype = 0
 local  num=LuaQueryTask("task_kill/mon_125/Tymdxyi")-1
 if(num>=200) then  
    LuaDelTask("task_kill/mon_125/Tymdxyi")
    LuaSetTask("task_kill/mon_126/Tymdxer",1)
    LuaSay("提示：请抓紧时间进入幽冥地穴3层，2层将在@330分钟后@0关闭")
    ans.rtype=1
 else
    LuaSay("提示：你所在的队伍已经消灭的幽冥鬼火@3"..num.."只")
    LuaSay("提示：必须在@330分钟内@0消灭@3幽冥鬼火200只@0才能进入2层")
 end
 LuaOtherSendMenu()
 return ans.rtype
end