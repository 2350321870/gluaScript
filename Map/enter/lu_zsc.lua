ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_003")==0 and  LuaQuery("level")>=50) then
	LuaSay("��ϲ���һ������@3��ɽ��@0����óɾ�@5��������ɽ��@0��")
	LuaSetAchievementSchedule("Fristmap_zsc",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_003",LuaQueryAchievementSchedule("Fristmap_zsc"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end