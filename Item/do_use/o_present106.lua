function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------������Ƭ
LuaSetTask("cjjf",LuaQueryTask("cjjf")+5)
LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��@3������Ƭ@0���@35��������@0")
--------------------------------------
LuaOtherSendMenu()
return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
