function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(2000)
    if(rd==0)then
        LuaGive("o_cardshen",1,"o_present116")
    elseif(rd==1)then
        LuaGive("o_cardzhen",1,"o_present116")
    elseif(rd==2)then
        LuaGive("o_cardkui",1,"o_present116")
    elseif(rd==3)then
        LuaGive("o_cardjiao",1,"o_present116")
    else
        local cardExp=LuaQueryTask("carexp/cardExp116")
        local getExp=LuaRandom(10)+1
        LuaSetTask("carexp/cardExp116",cardExp+getExp)
        LuaShowNotify("��ð׿���Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
