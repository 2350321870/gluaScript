function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    local getexp=100
    local yb= LuaRandom(100)
    if(yb<=3)then
        getexp=500
    elseif(yb<=7)then
        getexp=300
    end
    LuaSetTask("fmexp",fmexp+getexp)
    LuaShowNotify("ʹ�óɹ�,��ϲ������"..getexp.."ħ����,�����:"..(fmexp+getexp).."!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�10��,�㻹���ܴ�")
  return 0
end
end
