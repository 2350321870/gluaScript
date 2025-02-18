function do_use()
local level=LuaQuery("level")
if(level>=10) then
--------------------------------------卡牌使用
    local rd=LuaRandom(4000)
    if(rd==0)then
        LuaGive("o_cardjr",1,"o_present117")
    elseif(rd==1)then
        LuaGive("o_cardxc",1,"o_present117")
    elseif(rd==2)then
        LuaGive("o_cardzy",1,"o_present117")
    elseif(rd==3)then
        LuaGive("o_cardtw",1,"o_present117")
    else
        local cardExp=LuaQueryTask("carexp/cardExp117")
        local getExp=LuaRandom(8)+1
        LuaSetTask("carexp/cardExp117",cardExp+getExp)
        LuaShowNotify("获得绿卡碎片:"..getExp.." 当前拥有:"..cardExp+getExp)
    end
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
