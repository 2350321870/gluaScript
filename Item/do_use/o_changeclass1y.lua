function do_use()
local level= LuaQuery("level")
if(level<=100)then
quan_number=2^(floor(level/10)-1)
LuaSay("把一定数量的转职信物交给@2宗庙@0的@3宗庙长老@0可以重新选择职业")
LuaSay("转职后，技能点会自动重置，人物属性点不会重置，需要通过@3宗庙长老@0处的@2洗点@0重置属性点。")
LuaSay("级别越高@3转职信物@0需要的数量越多,你现在的级别需要@1"..quan_number.."@0张@3转职信物@0才行。")
LuaSay("100级以上不开放转职，前期一定要选好自己喜欢的职业")
else
LuaSay("100级以上不开放转职")
end
LuaOtherSendMenu()
end