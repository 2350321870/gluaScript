ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_005")==0  and  LuaQuery("level")>=15) then
	LuaSay("��ϲ���һ������@3ɽկ����@0����óɾ�@5̽��!ɽկ����@0��")
	LuaSetAchievementSchedule("Fristmap_szdl",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_005",LuaQueryAchievementSchedule("Fristmap_szdl"))

	ans.rtype = 1
end
LuaOtherSendMenu()
return ans.rtype
end