function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------神器碎片
LuaSetTask("cjjf",LuaQueryTask("cjjf")+5)
LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用@3神器碎片@0获得@35神器积分@0")
--------------------------------------
LuaOtherSendMenu()
return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
