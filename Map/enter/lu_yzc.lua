ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_004")==0  and  LuaQuery("level")>=55) then
	LuaSay("��ϲ���һ������@3���г�@0����óɾ�@5���������г�@0��")
	LuaSetAchievementSchedule("Fristmap_yzc",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_004",LuaQueryAchievementSchedule("Fristmap_yzc"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end