function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------卡牌使用
    local rd=LuaRandom(10000)
    if(rd<=2)then
        LuaGive("o_cardpl",1,"o_present121")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用6血卡包@0获得@6蒲牢卡*1")
    elseif(rd<=4)then
        LuaGive("o_cardfz",1,"o_present121")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用6血卡包@0获得@6夫诸卡*1")
    elseif(rd<=6)then
        LuaGive("o_cardtg",1,"o_present121")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用6血卡包@0获得@6天狗卡*1")
    elseif(rd<=8)then
        LuaGive("o_cardh",1,"o_present121")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用6血卡包@0获得@6吼卡*1")
    elseif(rd==500)then
        LuaGive("o_cardqq",1,"o_present121")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用6血卡包@0获得@1穷奇卡*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp121")
        local getExp=LuaRandom(5)+1
        LuaSetTask("carexp/cardExp121",cardExp+getExp)
        LuaShowNotify("获得血卡碎片:"..getExp.." 当前拥有:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
