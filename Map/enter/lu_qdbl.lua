ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_008")==0 and  LuaQuery("level")>=61) then
	LuaSay("恭喜你第一次来到@3契丹部落@0，获得成就@5探索!契丹部落@0！")
	LuaSetAchievementSchedule("Fristmap_qdbl",1)  ----设置检测参数
	LuaGiveAchievement("Tcj3_008",LuaQueryAchievementSchedule("Fristmap_qdbl"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end