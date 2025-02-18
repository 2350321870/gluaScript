ans = {} 	
function OnEnter()
  ans.rtype = 1
    if (LuaQueryTask("Tvip")~=99 ) then
    LuaSay("提示:不是VIP用户不能进入VIP房间，要想成VIP请到周天子处办理。")
    ans.rtype=0
    LuaOtherSendMenu()
    end
  return ans.rtype
end