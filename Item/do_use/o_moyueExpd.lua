function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    LuaSetTask("fmexp",fmexp+80)
    LuaShowNotify("��ϲ��ʹ�óɹ�,����80ħ����,�����:"..(fmexp+80).."!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
