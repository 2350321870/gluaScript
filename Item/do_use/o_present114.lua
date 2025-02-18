function do_use()
local level=LuaQuery("level")

if(level>=10) then
--------------------------------------魔玉礼包
    local tget="o_present110"
    local yb= LuaRandom(200)
    if(yb==2)then
        tget="o_present112"
    else
        yb= LuaRandom(100)
        if(yb==3)then
            tget="o_present111"
        end
    end
    LuaGive(tget,1,"o_present114")
    LuaNotice("@2"..LuaQueryStr("name").."@0打开@1魔玉大礼包@0@2[极]@0获得极品经验魔玉!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
