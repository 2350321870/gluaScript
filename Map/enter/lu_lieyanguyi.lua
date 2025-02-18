ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("lygday")) then
  LuaSetTask("lygintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("lygintime")<2) then
      if(level>=30 and level<40) then
      LuaAddTask("lygintime",1)
      LuaSetTask("lygday",GetCurrentDay())
      LuaSetTask("task_kill/mon_113/Tlygyi",1)
      LuaSay("火狼：我们誓死保护头领，纵然是尸积如山，也在所不惜")
      LuaSay("提示：火狼拼死保护头领，消灭@3200只火狼@0后，方能进入烈焰谷2层")
      LuaSay("提示：烈焰谷1层将在@325分钟后@0关闭")
      ans.rtype=1
      else
      LuaSay("提示：等级在@330到39@0之间才能进入该副本")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过@32次")
    end
LuaOtherSendMenu()
return ans.rtype
end