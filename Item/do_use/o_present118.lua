function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(6000)
    if(rd==0)then
        LuaGive("o_cardjw",1,"o_present118")
    elseif(rd==1)then
        LuaGive("o_cardbf",1,"o_present118")
    elseif(rd==2)then
        LuaGive("o_cardlw",1,"o_present118")
    elseif(rd==3)then
        LuaGive("o_cardyz",1,"o_present118")
    else
        local cardExp=LuaQueryTask("carexp/cardExp118")
        local getExp=LuaRandom(6)+1
        LuaSetTask("carexp/cardExp118",cardExp+getExp)
        LuaShowNotify("���������Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
