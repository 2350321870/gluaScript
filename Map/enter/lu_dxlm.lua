ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_007")==0 and  LuaQuery("level")>=55) then
	LuaSay("��ϲ���һ������@3������Ĺ@0����óɾ�@5̽��!������Ĺ@0��")
	LuaSetAchievementSchedule("Fristmap_dxlm",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_007",LuaQueryAchievementSchedule("Fristmap_dxlm"))
	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end