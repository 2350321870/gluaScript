ans = {} 	
function OnEnter() 
    local i=GetPartyCurrentRepute()
   if(i>300)then
     ans.rtype = 1
     else
     ans.rtype = 0
     LuaSay("����ũ����Ҫ��������300���ϣ��ɲɼ��߼�ľ���ϣ�")
    end
LuaOtherSendMenu()
return ans.rtype
end