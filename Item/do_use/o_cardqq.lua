function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local cardExp=LuaQueryTask("carexp/cardExp121")
    local getExp=LuaRandom(2500)+500
    LuaSetTask("carexp/cardExp121",cardExp+getExp)
    LuaShowNotify("���Ѫ����Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
