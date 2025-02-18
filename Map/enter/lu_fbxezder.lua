ans = {} 	
function OnEnter()
ans.rtype = 1 
 ans.rtype = 0
local a=LuaItemCount("o_mission180")
if(a==0) then
  LuaSay("提示：需要打开封印的箱子，才能进入2层")
  LuaOtherSendMenu()
 else
 ans.rtype = 1
 DelItem("o_mission180",a)
end
return ans.rtype
end    