ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_001")==0 and LuaQuery("level")>=10 ) then
	LuaSay("��ϲ���һ������@3������@0����óɾ�@5������������@0��")
	LuaSetAchievementSchedule("Fristmap_jck",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_001",LuaQueryAchievementSchedule("Fristmap_jck"))
	ans.rtype = 1
	
end
LuaOtherSendMenu()
return ans.rtype
end