function do_use()
if(EquipInfo(10)~="")then
    LuaPetNameChange(2,"o_cwgm")
--    LuaSay("��ʾ���������볬��2�����ֻ�4���Ǻ����ַ������������룬�����ɹ���Ż���ʧ��")
else
	LuaSay("��ʾ�����Ȱѳ���װ�������ϣ�")
end
LuaOtherSendMenu()
return 0
end
