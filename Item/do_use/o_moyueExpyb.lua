function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------��ħʹ��
    local getexp=600
    local yb= LuaRandom(100)
    if(yb<=5)then
        getexp=2000
    elseif(yb<=15)then
        getexp=1100
    elseif(yb<=30)then
        getexp=900
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
