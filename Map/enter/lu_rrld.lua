ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_009")==0 and  LuaQuery("level")>=70) then
	LuaSay("��ϲ���һ������@3��Ȼ���@0����óɾ�@5̽��!��Ȼ���@0��")
	LuaSetAchievementSchedule("Fristmap_rrld",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_009",LuaQueryAchievementSchedule("Fristmap_rrld"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end