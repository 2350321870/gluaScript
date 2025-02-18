ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("tygday")) then
  LuaSetTask("tygintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("tygintime")<3) then
      if(level>=40 and level<50) then
      LuaAddTask("tygintime",1)
      LuaSetTask("tygday",GetCurrentDay())
      ans.rtype=1
      else
      LuaSay("提示：等级在@340到49@0之间才能进入该副本")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过@33次")
    end
LuaOtherSendMenu()
return ans.rtype
end