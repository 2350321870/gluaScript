function do_use()
if(EquipInfo(10)~="")then
    LuaPetNameChange(5,"o_cwgm2")
--    LuaSay("��ʾ���������볬��5�����ֻ�10���Ǻ����ַ������������룬�����ɹ���Ż���ʧ��")
else
	LuaSay("��ʾ�����Ȱѳ���װ�������ϣ�")
end
LuaOtherSendMenu()
return 0
end
