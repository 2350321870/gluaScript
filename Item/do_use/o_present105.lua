function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------Ԫ�����
local yb= LuaRandom(400)+10
LuaAddYB(1,yb,"10-500Ԫ����")
LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��@3Ԫ����@0���@3"..yb.."Ԫ��@0")
--------------------------------------
LuaOtherSendMenu()
return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
