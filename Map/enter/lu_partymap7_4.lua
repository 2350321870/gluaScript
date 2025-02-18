ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("bplyday")) then
  LuaSetTask("bplyintime",0)
  end
    if(LuaQueryTask("bplyintime")<2) then
       LuaAddTask("bplyintime",1)
       LuaSetTask("bplyday",GetCurrentDay())
       ans.rtype=1
    else
      LuaSay("提示：每天只能进入炼狱地图@32次")
    end
    LuaOtherSendMenu()
return ans.rtype
end