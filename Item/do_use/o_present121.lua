function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(10000)
    if(rd<=2)then
        LuaGive("o_cardpl",1,"o_present121")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��6Ѫ����@0���@6���ο�*1")
    elseif(rd<=4)then
        LuaGive("o_cardfz",1,"o_present121")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��6Ѫ����@0���@6���*1")
    elseif(rd<=6)then
        LuaGive("o_cardtg",1,"o_present121")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��6Ѫ����@0���@6�칷��*1")
    elseif(rd<=8)then
        LuaGive("o_cardh",1,"o_present121")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��6Ѫ����@0���@6��*1")
    elseif(rd==500)then
        LuaGive("o_cardqq",1,"o_present121")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��6Ѫ����@0���@1���濨*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp121")
        local getExp=LuaRandom(5)+1
        LuaSetTask("carexp/cardExp121",cardExp+getExp)
        LuaShowNotify("���Ѫ����Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
