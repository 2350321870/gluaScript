function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------卡牌使用
    local cardExp=LuaQueryTask("carexp/cardExp121")
    local getExp=LuaRandom(2500)+500
    LuaSetTask("carexp/cardExp121",cardExp+getExp)
    LuaShowNotify("获得血卡碎片:"..getExp.." 当前拥有:"..cardExp+getExp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
