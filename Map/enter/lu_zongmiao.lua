ans = {} 	
function OnEnter()
  ans.rtype = 1
    if (LuaQuery("level")<10 ) then
    LuaSay("提示：10级后再去宗庙吧")
    ans.rtype=0
    LuaOtherSendMenu()
    end

  return ans.rtype
end