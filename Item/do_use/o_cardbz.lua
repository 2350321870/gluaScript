function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local cardExp=LuaQueryTask("carexp/cardExp120")
    local getExp=LuaRandom(500)+100
    LuaSetTask("carexp/cardExp120",cardExp+getExp)
    LuaShowNotify("��ý���Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
