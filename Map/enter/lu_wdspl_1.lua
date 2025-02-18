ans = {} 	
function OnEnter()
 ans.rtype = 0
  if(GetCurrentDay()~=LuaQueryStrTask("wdsplday")) then
  LuaSetTask("wdspltime",0)
  end
  if(LuaItemCount("o_mission413")>=1) then                  -------如果有叛军令牌就都删了 
  DelItem("o_mission413",LuaItemCount("o_mission413"))
  end
  local level=LuaQuery("level")
    if(LuaQueryTask("wdspltime")<2) then  -------测试方便改成2000次，别忘记改回2次
      if(level>=40 and level<50) then
--       LuaAddTask("wdspltime",1)
       LuaSetTask("wdsplday",GetCurrentDay())
       LuaSetTask("task_kill/mon_115/Twdspl_1",1)
       LuaSay("提示：请先找到@3晋军内应@0，了解下情况!")
       LuaSay("提示：@4五斗山脚@0地图将在@340分钟后@0关闭!")
       LuaAddJx("combat_exp",level*100,"FB_Lv40")
       ans.rtype=1
      else
      LuaSay("提示：等级在@340到49@0之间才能进入该副本！")
      end
    else
      LuaSay("提示：该副本每天进入次数不得超过@32次！")
    end
    LuaOtherSendMenu()
return ans.rtype
end