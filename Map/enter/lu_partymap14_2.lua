ans = {} 	
function OnEnter() 
    local i=GetPartyCurrentRepute()
   if(i>300)then
     ans.rtype = 1
     else
     ans.rtype = 0
     LuaSay("进入农场需要帮派声望300以上，可采集高级木材料！")
    end
LuaOtherSendMenu()
return ans.rtype
end