ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("ymdxday")) then
  LuaSetTask("ymdxintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("ymdxintime")<2) then
      if(level>=60 ) then
      LuaSay("提示：队伍必须在@330分钟内@0消灭@3幽冥鬼火200个@0，否则无法进入2层")
      LuaSay("提示：一层将在@330分钟@0后关闭，请抓紧时间进入2层，副本时间从第一个队友进入时开始计算")
      LuaSetTask("task_kill/mon_125/Tymdxyi",1)
--      LuaAddTask("ymdxintime",1)
      LuaSetTask("ymdxday",GetCurrentDay())
      LuaAddJx("combat_exp",level*100,"FB_Lv60")
      ans.rtype=1
      else
      LuaSay("提示：等级在60以上才能进入该副本")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过@32次")
    end
    LuaOtherSendMenu()
return ans.rtype
end