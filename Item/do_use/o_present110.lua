function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------附魔使用
    local addexp=20320
    LuaSetTask("fmexp",fmexp+addexp)
    LuaShowNotify("获得"..addexp.."魔玉经验,经验池:"..(fmexp+addexp).."!")
    LuaNotice("@2"..LuaQueryStr("name").."@0使用@27级紫玉@0，魔玉经验+@7"..addexp)
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
