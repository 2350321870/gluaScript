function OnDie()
if(LuaQueryTask("T73")==1) then	
   if (LuaItemCount("o_mission001") ==0) then
    LuaGive("o_mission001",1)
    if(LuaItemCount("o_mission001")==1) then
    CheckNpcStatusByMonItemID("T73","o_mission001")
    LuaSay("������ʿ��"..LuaQueryStr("name").."�������˵�̫���ˣ���ֻ������������������һ��������������Ѱ��·��")
    LuaSay("���Ѿ��ɹ���ɱBOSS������ʿ���õ���@2��ʿ֤֮@0����ȥ����@4����֮��@0@3���鳤@0��")
    issay = 1
    end
   end
end
if(QueryAchievement("Tcj3_011")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3������ʿ@0����óɾ�@3���壡������ʿ@0��")
	LuaGiveAchievement("Tcj3_011",99)
	issay = 1
end
if(LuaQueryTask("Txhuanxing001")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ��������ʿ")
	LuaSetTask("Txhuanxing001",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end