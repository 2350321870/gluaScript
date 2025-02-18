function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------卡牌使用
    local rd=LuaRandom(10000)
    if(rd==0)then
        LuaGive("o_cardql",1,"o_present116")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用3金卡包@0获得@3麒麟卡*1")
    elseif(rd==1)then
        LuaGive("o_cardbz",1,"o_present116")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用3金卡包@0获得@3白泽卡*1")
    elseif(rd==2)then
        LuaGive("o_cardjiuewi",1,"o_present116")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用3金卡包@0获得@13九尾卡*1")
    elseif(rd==3)then
        LuaGive("o_cardfh",1,"o_present116")
        LuaNotice("恭喜@2"..LuaQueryStr("name").."@0使用3金卡包@0获得@3凤凰卡*1")
    else
        local cardExp=LuaQueryTask("carexp/cardExp120")
        local getExp=LuaRandom(4)+1
        LuaSetTask("carexp/cardExp120",cardExp+getExp)
        LuaShowNotify("获得金卡碎片:"..getExp.." 当前拥有:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
