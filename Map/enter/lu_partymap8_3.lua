ans = {} 	
function OnEnter() 
    local i=GetPartyCurrentRepute()
   if(i>250)then
      local t=LuaQueryTask("T870")%2
      if(t==1) then
      LuaSetTask("T870time",LuaQueryTask("onlinetime"))   
      end
     ans.rtype = 1
     else
     ans.rtype = 0
     LuaSay("你目前帮派声望低于250！不能使用修炼地图。帮派声望过低会容易被打降级！")
    end
LuaOtherSendMenu()
return ans.rtype
end