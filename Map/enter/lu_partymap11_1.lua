ans = {} 	
function OnEnter() 
    local i=GetPartyCurrentRepute()
   if(i>250)then
     ans.rtype = 1
     else
     ans.rtype = 0
     LuaSay("�������Ҫ������������300�����Բɸ߼���")
    end
LuaOtherSendMenu()
return ans.rtype
end