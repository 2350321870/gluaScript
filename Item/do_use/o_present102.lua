function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------元宝礼包
LuaAddYB(1,10,"10元宝包")
LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用@3元宝包@0获得@310元宝@0")
--------------------------------------
LuaOtherSendMenu()
return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
