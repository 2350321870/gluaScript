function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    local addexp=20320
    LuaSetTask("fmexp",fmexp+addexp)
    LuaShowNotify("���"..addexp.."ħ����,�����:"..(fmexp+addexp).."!")
    LuaNotice("@2"..LuaQueryStr("name").."@0ʹ��@27������@0��ħ����+@7"..addexp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
