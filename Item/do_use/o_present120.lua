function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------����ʹ��
    local rd=LuaRandom(10000)
    if(rd==0)then
        LuaGive("o_cardql",1,"o_present116")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��3�𿨰�@0���@3���뿨*1")
    elseif(rd==1)then
        LuaGive("o_cardbz",1,"o_present116")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��3�𿨰�@0���@3����*1")
    elseif(rd==2)then
        LuaGive("o_cardjiuewi",1,"o_present116")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��3�𿨰�@0���@13��β��*1")
    elseif(rd==3)then
        LuaGive("o_cardfh",1,"o_present116")
        LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0ʹ��3�𿨰�@0���@3��˿�*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp120")
        local getExp=LuaRandom(4)+1
        LuaSetTask("carexp/cardExp120",cardExp+getExp)
        LuaShowNotify("��ý���Ƭ:"..getExp.." ��ǰӵ��:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
