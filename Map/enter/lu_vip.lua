ans = {} 	
function OnEnter()
  ans.rtype = 1
    if (LuaQueryTask("Tvip")~=99 ) then
    LuaSay("��ʾ:����VIP�û����ܽ���VIP���䣬Ҫ���VIP�뵽�����Ӵ�����")
    ans.rtype=0
    LuaOtherSendMenu()
    end
  return ans.rtype
end