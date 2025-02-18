function do_use()
local level=LuaQuery("level")
local fmexp=LuaQueryTask("fmexp")
if(level>=10) then
--------------------------------------附魔使用
    LuaSetTask("fmexp",fmexp+160)
    LuaShowNotify("恭喜你使用成功,增加160魔玉经验,经验池:"..(fmexp+160).."!")
--------------------------------------
        LuaOtherSendMenu()
        return 1
else
  LuaShowNotify("该物品需要等级10级,你还不能打开")
  return 0
end
end
