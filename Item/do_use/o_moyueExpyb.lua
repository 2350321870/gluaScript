function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------附魔使用
    local getexp=600
    local yb= LuaRandom(100)
    if(yb<=5)then
        getexp=2000
    elseif(yb<=15)then
        getexp=1100
    elseif(yb<=30)then
        getexp=900
    end
    LuaSetTask("fmexp",fmexp+getexp)
    LuaShowNotify("使用成功,恭喜你增加"..getexp.."魔玉经验,经验池:"..(fmexp+getexp).."!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
