function do_use()
if(EquipInfo(10)~="")then
	AddMenuItem("��ɫ","nc_combine o_cwmbs a","��������ɫ����ͨ��")
	AddMenuItem("����","nc_combine o_cwmbs b","��������ɫ����ͨ��")
	AddMenuItem("��ɫ","nc_combine o_cwmbs c","��������ɫ����ͨ��")
	AddMenuItem("��ɫ","nc_combine o_cwmbs d","��������ɫ����ͨ��")
	AddMenuItem("�ۺ�","nc_combine o_cwmbs e","��������ɫ����ͨ��")
else
	LuaSay("��ʾ�����Ȱѳ���װ�������ϣ�")
end
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
 	LuaPetSet("name_color","808000")
 	LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs",1)
elseif(type=="b")then
    LuaPetSet("name_color","00FFFF")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs",1)
elseif(type=="c")then
    LuaPetSet("name_color","0000C8")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs",1)
elseif(type=="d")then
    LuaPetSet("name_color","800080")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs",1)
elseif(type=="e")then
    LuaPetSet("name_color","FF00FF")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs",1)

end
LuaOtherSendMenu()
--return 1
end
