ans = {}
function OnEnter()
  ans.rtype = 1
  local T592=LuaQueryTask("T592")
  local T602=LuaQueryTask("T602")
  if(LuaQueryTask("T592")==99 and LuaQueryTask("T602")==0) then
    LuaSay("这谷好阴森，这就是那老贼的窝么，不如先找个傀儡来试探下情况！")
    LuaSay("是否接受任务@3初探巫师【支线】@0")
    AddTopSayMenuItem("@7是","yes")
    AddTopSayMenuItem("@7否","no")
  end
  
  if(answer=="yes")then
    LuaSetTask("T602",1)
    AddLog("初探巫师【支线】",T602)
	UpdateMenu()
	UpdateNPCMenu("xiezuwushi")
   else
	LuaSay(""..LuaQueryStr("name").."：本大侠决心独剑仗天涯！")
  end
  
if(QueryAchievement("Tcj3_006")==0 and  LuaQuery("level")>=35) then
	LuaSay("恭喜你第一次来到@3食人谷@0，获得成就@5探索!食人谷@0！")
	LuaSetAchievementSchedule("Fristmap_srg",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_006",LuaQueryAchievementSchedule("Fristmap_srg"))
	ans.rtype = 1
	LuaOtherSendMenu()
end

 return ans.rtype
end