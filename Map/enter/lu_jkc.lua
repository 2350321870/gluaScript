ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_001")==0 and LuaQuery("level")>=10 ) then
	LuaSay("��ϲ���һ������@3������@0����óɾ�@5������������@0��")
	LuaSetAchievementSchedule("Fristmap_jck",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_001",LuaQueryAchievementSchedule("Fristmap_jck"))
	ans.rtype = 1
	
end
--[[if(LuaQueryTask("part4_1")==0 and LuaQuery("level")>=10)then
	if((LuaQueryMoney() + LuaQueryCost())==0)then
		LuaSay("�װ������ѣ���ӭ���ڲ��ڼ��һ�ν��뽨���ǣ�ϵͳ�ش˽�����@3500@0Ԫ����ף����Ϸ��죡*@1��ɫ���µ�½�ڱ����о��ܿ���Ԫ����Ϣ��Ŷ")
		LuaAddYB(1,500)
		SendMail("�����ϵͳ���͵�500Ԫ��","ϵͳ","","�����ڿ��Խ���Ԫ���̳��������Ѿ�ӵ��500Ԫ��������һ����ȡԪ����Ҫ20�������ͣ�")
		LuaSetTask("part4_1",99)
		ans.rtype = 1
	end
end
if(LuaQueryTask("part4_2")==0 and LuaQuery("level")>=20)then
	if((LuaQueryMoney() + LuaQueryCost())==500)then
		LuaSay("�װ������ѣ���ϲ������20����ϵͳ�ش˽�����@31000@0Ԫ����ף����Ϸ��죡*@1��ɫ���µ�½�ڱ����о��ܿ���Ԫ����Ϣ��Ŷ")
		SendMail("�����ϵͳ���͵�1000Ԫ��","ϵͳ","","�����ڿ��Խ���Ԫ���̳��������Ѿ�ӵ��1000Ԫ��������һ����ȡԪ����Ҫ30�������ͣ�")
		LuaAddYB(1,1000)
		LuaSetTask("part4_2",99)
		ans.rtype = 1
	end
end]]
LuaOtherSendMenu()
return ans.rtype
end