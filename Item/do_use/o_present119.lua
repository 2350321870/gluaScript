function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(8000)
    if(rd==0)then
        LuaGive("o_cardfx",1,"o_present119")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��2�Ͽ���@0���@2���¿�*1")
    elseif(rd==1)then
        LuaGive("o_cardyzzi",1,"o_present119")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��2�Ͽ���@0���@2������*1")
    elseif(rd==2)then
        LuaGive("o_cardcf",1,"o_present119")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��2�Ͽ���@0���@2���翨*1")
    elseif(rd==3)then
        LuaGive("o_cardliwen",1,"o_present119")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��2�Ͽ���@0���@2��ǿ�*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp119")
        local getExp=LuaRandom(5)+1
        LuaSetTask("carexp/cardExp119",cardExp+getExp)
        LuaShowNotify("����Ͽ���Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
