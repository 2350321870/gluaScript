ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_007")==0 and  LuaQuery("level")>=55) then
	LuaSay("恭喜你第一次来到@3地下陵墓@0，获得成就@5探索!地下陵墓@0！")
	LuaSetAchievementSchedule("Fristmap_dxlm",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_007",LuaQueryAchievementSchedule("Fristmap_dxlm"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end