function do_use()
	if(LuaQueryStr("gender")=="����") then
		LuaSay("��ȷ�����Ա�ת��Ϊ@7Ů��@0��")
		AddMenuItem("ȡ��","none","ת��ΪŮ�ԣ�")
		AddMenuItem("@1ȷ��@0","nc_combine o_gendery a","ת��ΪŮ�ԣ�")		
	elseif(LuaQueryStr("gender")=="Ů��") then
		  LuaSay("��ȷ�����Ա�ת��Ϊ@4����@0��")
		  AddMenuItem("ȡ��","none","ת��ΪŮ�ԣ�")
		  AddMenuItem("@1ȷ��@0","nc_combine o_gendery b","ת��Ϊ���ԣ�")
		 
	end
LuaOtherSendMenu()
return 0
end
function nc_combine(type)
if(type=="a")then
    LuaSet("gender","Ů��")
    LuaSet("equip_3","24")
    DelItem("o_gendery",1)
    FlushMyInfo("2")
    LuaSay("���ѳɹ�@7ת��ΪŮ��@0")
    LuaNotice("������˼���ǣ�@3"..LuaQueryStr("name").."@0����һ�����ѵľ�����ʹ��@5��͹����@0���Լ�ת��ΪŮ��@0")
elseif(type=="b")then
 	LuaSet("gender","����")
	LuaSet("equip_3","20")
	DelItem("o_gendery",1)
 	FlushMyInfo("2")
    LuaSay("���ѳɹ�@4ת��Ϊ����@0")
    LuaNotice("������˼���ǣ�@3"..LuaQueryStr("name").."@0����һ�����ѵľ�����ʹ��@5��͹����@0���Լ�ת��Ϊ����@0")
end
LuaOtherSendMenu()
end
