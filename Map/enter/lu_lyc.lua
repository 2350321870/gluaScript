ans = {} 	
function OnEnter()
ans.rtype = 1

if(QueryAchievement("Tcj3_002")==0  and  LuaQuery("level")>=30) then
	LuaSay("��ϲ���һ������@3������@0����óɾ�@5������������@0��")
	LuaSetAchievementSchedule("Fristmap_lyc",1)  ----���ü�����
	LuaGiveAchievement("Tcj3_002",LuaQueryAchievementSchedule("Fristmap_lyc"))
	ans.rtype = 1
end
if(LuaQueryTempStr("online")~=LuaQueryStr("country_id"))then 
      LuaSay("�ù������쳵��,�����⿪��!")      
      --if(LuaRandom(8)==1)then
      --LuaNotice("����������"..LuaQueryStr("name").."������������ͼ���죡��������ȥ�ʳ�ɱ֮��") 
      --end      
      --LuaDel("rightanswer")    
      --ChangeMap("lu_border")
      ans.rtype=0
end
--[[if(LuaQueryTask("part4_3")==0 and LuaQuery("level")>=30)then
	if((LuaQueryMoney() + LuaQueryCost())==1500)then
		LuaSay("�װ������ѣ���ϲ������30����ϵͳ�ش˽�����@31500@0Ԫ����ף����Ϸ��죡*@1��ɫ���µ�½�ڱ����о��ܿ���Ԫ����Ϣ��Ŷ")
		LuaAddYB(1,1500)
		SendMail("�����ϵͳ���͵�1500Ԫ��","ϵͳ","","�����ڿ��Խ���Ԫ���̳��������Ѿ�ӵ��1500Ԫ��������һ����ȡԪ����Ҫ40�������ͣ�")
		LuaSetTask("part4_3",99)
		ans.rtype = 1
	end
end
if(LuaQueryTask("part4_4")==0 and LuaQuery("level")>=40)then
	if((LuaQueryMoney() + LuaQueryCost())==3000)then
		LuaSay("�װ������ѣ���ϲ������40����ϵͳ�ش˽�����@32000@0Ԫ����ף����Ϸ��죡*@1��ɫ���µ�½�ڱ����о��ܿ���Ԫ����Ϣ��Ŷ")
		LuaAddYB(1,2000)
		SendMail("�����ϵͳ���͵�2000Ԫ��","ϵͳ","","�����ڿ��Խ���Ԫ���̳��������Ѿ�ӵ��2000Ԫ�������Ժ��·��Ҫ���Լ�Ŭ���ܶ��������ͣ�")
		LuaSetTask("part4_4",99)
		ans.rtype = 1
	end
end]]
LuaOtherSendMenu()
return ans.rtype
end