ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_010")==0 and  LuaQuery("level")>=81) then
	LuaSay("��ϲ���һ������@3�׻�ɽ@0����óɾ�@5̽��!�׻�ɽ@0��")
	LuaSetAchievementSchedule("Fristmap_whs",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_010",LuaQueryAchievementSchedule("Fristmap_whs"))

	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end