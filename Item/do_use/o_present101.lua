function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------Ԫ�����
LuaAddYB(1,5000,"5000Ԫ����")
LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��@3Ԫ����@0���@35000Ԫ��@0")
--------------------------------------
LuaOtherSendMenu()
return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
