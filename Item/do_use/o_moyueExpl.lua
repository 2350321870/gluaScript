function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    LuaSetTask("fmexp",fmexp+160)
    LuaShowNotify("��ϲ��ʹ�óɹ�,����160ħ����,�����:"..(fmexp+160).."!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
