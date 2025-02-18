ans = {} 	
function OnEnter() 
    local i=GetPartyCurrentRepute()
   if(i>250)then
     ans.rtype = 1
     else
     ans.rtype = 0
     LuaSay("进入矿场需要帮派声望大于300，可以采高级矿！")
    end
LuaOtherSendMenu()
return ans.rtype
end