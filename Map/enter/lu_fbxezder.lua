ans = {} 	
function OnEnter()
ans.rtype = 1 
 ans.rtype = 0
local a=LuaItemCount("o_mission180")
if(a==0) then
  LuaSay("��ʾ����Ҫ�򿪷�ӡ�����ӣ����ܽ���2��")
  LuaOtherSendMenu()
 else
 ans.rtype = 1
 DelItem("o_mission180",a)
end
return ans.rtype
end    