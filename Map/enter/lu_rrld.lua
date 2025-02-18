ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_009")==0 and  LuaQuery("level")>=70) then
	LuaSay("恭喜你第一次来到@3柔然领地@0，获得成就@5探索!柔然领地@0！")
	LuaSetAchievementSchedule("Fristmap_rrld",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_009",LuaQueryAchievementSchedule("Fristmap_rrld"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end