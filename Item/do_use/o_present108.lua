function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    local addexp=4960
    LuaSetTask("fmexp",fmexp+addexp)
    LuaShowNotify("���4480ħ����,�����:"..(fmexp+addexp).."!")
    LuaNotice("@2"..LuaQueryStr("name").."@0ʹ��@25������@0��ħ����+@7"..addexp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
