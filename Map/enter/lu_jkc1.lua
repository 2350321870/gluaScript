ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_001")==0 and LuaQuery("level")>=10 ) then
	LuaSay("恭喜你第一次来到@3建康城@0，获得成就@5游历！建康城@0！")
	LuaSetAchievementSchedule("Fristmap_jck",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_001",LuaQueryAchievementSchedule("Fristmap_jck"))
	ans.rtype = 1
	
end
LuaOtherSendMenu()
return ans.rtype
end