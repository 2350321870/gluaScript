ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_008")==0 and  LuaQuery("level")>=61) then
	LuaSay("��ϲ���һ������@3��������@0����óɾ�@5̽��!��������@0��")
	LuaSetAchievementSchedule("Fristmap_qdbl",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_008",LuaQueryAchievementSchedule("Fristmap_qdbl"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end