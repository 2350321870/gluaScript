function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(4000)
    if(rd==0)then
        LuaGive("o_cardjr",1,"o_present117")
    elseif(rd==1)then
        LuaGive("o_cardxc",1,"o_present117")
    elseif(rd==2)then
        LuaGive("o_cardzy",1,"o_present117")
    elseif(rd==3)then
        LuaGive("o_cardtw",1,"o_present117")
    else
        local cardExp=LuaQueryTask("carexp/cardExp117")
        local getExp=LuaRandom(8)+1
        LuaSetTask("carexp/cardExp117",cardExp+getExp)
        LuaShowNotify("����̿���Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
