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
     LuaSay("��Ŀǰ������������250������ʹ��������ͼ�������������ͻ����ױ��򽵼���")
    end
LuaOtherSendMenu()
return ans.rtype
end