function do_use()
if(EquipInfo(10)~="")then
	AddMenuItem("��ɫ","nc_combine o_cwmbs2 a","��������ɫ���߼���")
	AddMenuItem("����","nc_combine o_cwmbs2 b","��������ɫ���߼���")
	AddMenuItem("��ɫ","nc_combine o_cwmbs2 c","��������ɫ���߼���")
	AddMenuItem("��ɫ","nc_combine o_cwmbs2 d","��������ɫ���߼���")
	AddMenuItem("�ۺ�","nc_combine o_cwmbs2 e","��������ɫ���߼���")
	AddMenuItem("��ҶѪ��","nc_combine o_cwmbs2 f","��������ɫ���߼���")
	AddMenuItem("�߹���","nc_combine o_cwmbs2 g","��������ɫ���߼���")
	AddMenuItem("���ŷۺ�","nc_combine o_cwmbs2 h","��������ɫ���߼���")
	AddMenuItem("���ò���","nc_combine o_cwmbs2 i","��������ɫ���߼���")
	AddMenuItem("��ᴿ��","nc_combine o_cwmbs2 j","��������ɫ���߼���")
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
	DelItem("o_cwmbs2",1)
elseif(type=="b")then
    LuaPetSet("name_color","00FFFF")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="c")then
    LuaPetSet("name_color","0000C8")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="d")then
    LuaPetSet("name_color","800080")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="e")then
    LuaPetSet("name_color","FF00FF")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="f")then
    LuaPetSet("name_color","FF0000")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="g")then
    LuaPetSet("name_color","FFCC00")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="h")then
    LuaPetSet("name_color","FF99CC")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="i")then
    LuaPetSet("name_color","00FF00")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)
elseif(type=="j")then
    LuaPetSet("name_color","000000")
    LuaSay("��ʾ����ĳ�������ɫ�Ѿ��ı䣡���û����ˢ�£���ж���³����װ���ϣ�")
	DelItem("o_cwmbs2",1)

end
LuaOtherSendMenu()
--return 1
end
