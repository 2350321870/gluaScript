function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------卡牌使用
    local rd=LuaRandom(8000)
    if(rd==0)then
        LuaGive("o_cardfx",1,"o_present119")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用2紫卡包@0获得@2霸下卡*1")
    elseif(rd==1)then
        LuaGive("o_cardyzzi",1,"o_present119")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用2紫卡包@0获得@2睚眦卡*1")
    elseif(rd==2)then
        LuaGive("o_cardcf",1,"o_present119")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用2紫卡包@0获得@2嘲风卡*1")
    elseif(rd==3)then
        LuaGive("o_cardliwen",1,"o_present119")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用2紫卡包@0获得@2螭吻卡*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp119")
        local getExp=LuaRandom(5)+1
        LuaSetTask("carexp/cardExp119",cardExp+getExp)
        LuaShowNotify("获得紫卡碎片:"..getExp.." 当前拥有:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
