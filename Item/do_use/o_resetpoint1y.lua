function do_use()
local level= LuaQuery("level")
if(level<10)then
LuaSay("把一定数量的洗点券交给@2宗庙长老@0可以重置力量智力敏捷属性点")
elseif(level<101)then
quan_number=2^(floor(level/10)-1)
LuaSay("把一定数量的洗点券交给@2宗庙长老@0可以重置力量智力敏捷属性点")
LuaSay("级别越高@3洗点券@0需要的数量越多,你现在的级别需要@1"..quan_number.."@0张@3洗点券@0才行。")
else
LuaSay("100级以上暂不开放洗点")
end
LuaOtherSendMenu()
end
