ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("fbxezdday")) then
  LuaSetTask("fbxezdintime",0)
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("fbxezdintime")<3) then
      if(level>=30 and level<40) then
      LuaSay("提示：不远处的@3嗜血狂魔@0正挥舞着它那锋利的爪牙，从来没人能在它们手下能活着出来！！！")
      LuaSay("提示：只有得到箱子里的@2碧绿珠@0，才能避过@3嗜血狂魔@0！！击杀@350个邪灵@0后，才能打开被他们灵力封印的箱子")
      LuaSetTask("task_kill/mon_180/Tfbxezd",1)
--      LuaAddTask("fbxezdintime",1)
      LuaSetTask("fbxezdday",GetCurrentDay())
      LuaAddJx("combat_exp",level*100,"FB_Lv30")
      ans.rtype=1
      else
      LuaSay("提示：等级在@330到39之间@0才能进入该副本")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过3次")
    end
    LuaOtherSendMenu()
return ans.rtype
end    