ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_004")==0  and  LuaQuery("level")>=55) then
	LuaSay("恭喜你第一次来到@3云中城@0，获得成就@5游历！云中城@0！")
	LuaSetAchievementSchedule("Fristmap_yzc",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_004",LuaQueryAchievementSchedule("Fristmap_yzc"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end