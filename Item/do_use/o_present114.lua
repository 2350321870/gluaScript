function do_use()
local level=LuaQuery("level")

if(level>=10) then
--------------------------------------ħ�����
    local tget="o_present110"
    local yb= LuaRandom(200)
    if(yb==2)then
        tget="o_present112"
    else
        yb= LuaRandom(100)
        if(yb==3)then
            tget="o_present111"
        end
    end
    LuaGive(tget,1,"o_present114")
    LuaNotice("@2"..LuaQueryStr("name").."@0��@1ħ������@0@2[��]@0��ü�Ʒ����ħ��!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
