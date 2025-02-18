ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_005")==0  and  LuaQuery("level")>=15) then
	LuaSay("恭喜你第一次来到@3山寨地牢@0，获得成就@5探索!山寨地牢@0！")
	LuaSetAchievementSchedule("Fristmap_szdl",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_005",LuaQueryAchievementSchedule("Fristmap_szdl"))

	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end