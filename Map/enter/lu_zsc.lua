ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_003")==0 and  LuaQuery("level")>=50) then
	LuaSay("恭喜你第一次来到@3中山城@0，获得成就@5游历！中山城@0！")
	LuaSetAchievementSchedule("Fristmap_zsc",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_003",LuaQueryAchievementSchedule("Fristmap_zsc"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end