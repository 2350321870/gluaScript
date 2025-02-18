ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("dxcxday")) then
  LuaSetTask("dxcxintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("dxcxintime")<2) then
      if(level>=50 and level<60) then
--       LuaAddTask("dxcxintime",1)
       LuaSetTask("dxcxday",GetCurrentDay())
       LuaSetTask("task_kill/mon_123/Tdxcxyi",1)
       LuaSetTask("task_kill/mon_124/Tdxcxyi",1)
       LuaSay("提示：需要消灭@3打手和恶霸各100个@0，方能进入巢穴2层")
       LuaSay("提示：地下巢穴1层将在@325分钟后@0关闭")
       LuaAddJx("combat_exp",level*100,"FB_Lv50")
       ans.rtype=1
      else
      LuaSay("提示：等级在@350到59@0之间才能进入该副本")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过@32次")
    end
    LuaOtherSendMenu()
return ans.rtype
end