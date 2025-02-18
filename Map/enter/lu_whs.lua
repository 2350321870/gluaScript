ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_010")==0 and  LuaQuery("level")>=81) then
	LuaSay("恭喜你第一次来到@3巫魂山@0，获得成就@5探索!巫魂山@0！")
	LuaSetAchievementSchedule("Fristmap_whs",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_010",LuaQueryAchievementSchedule("Fristmap_whs"))

	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end