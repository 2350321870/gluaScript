ans = {} 	
function OnEnter()
  ans.rtype = 1
    if (LuaQuery("level")<10 ) then
    LuaSay("��ʾ��10������ȥ�����")
    ans.rtype=0
    LuaOtherSendMenu()
    end

  return ans.rtype
end