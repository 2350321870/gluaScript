function do_fdback(id, type, val)
----------------------------------------------------------------�����˲���
if (type=="dairen") then  ------------�����߱�����

	if (val == "talk") then
	    LuaSay("��ʾ��@3"..LuaOtherQuery(id,"level").."����"..LuaOtherQueryStr(id,"name").."@0���������TA���Ƿ����̴��͵������Ͻ���")
		AddMenuItem("��","fdback " .. type .. " " .. id .. " " .. "a1", "�Ƿ�����ӣ�")
		AddMenuItem("����","fdback " .. type .. " " .. id .. " " .. "a2", "")
		AddMenuItem("���Ͳ�����Է����","fdback " .. type .. " " .. id .. " " .. "a3", "")
	elseif (val == "a1")  then
  		LuaOtherNotice(id,"������˴���",2)
	elseif (val == "a2") then
  		ChangeMap("lu_jknj")
  	elseif (val == "a3") then
  		ChangeMap("lu_jknj")
  		LuaTeam(id)
	end
	----���͡�1�� ����  ��2������  �������ĵ�
	--LuaOtherNotice(id, "��ʾ����", "��ʾ����")
	--//type 1 ϵͳ����
	--//type 2 ϵͳ����
	--//type 3 ϵͳ		��ϵͳ����3333333333
	--//type 4 ����		��������ĳ�ˣ�4444444444
	--//type 5 ����		�����ġ���5555555555
	--//type 6 ϵͳ		��ϵͳ��6666666666
	--//type 7 ����		�����ء���77777777777

elseif (type == "zhaorendai") then ------------���˴��߱�����

	if (val == "talk") then
	    LuaSay("��ʾ��@3"..LuaOtherQuery(id,"level").."����"..LuaOtherQueryStr(id,"name").."@0������㣡�Ƿ����̴��͵������Ͻ���")
		AddMenuItem("��","fdback " .. type .. " " .. id .. " " .. "b1", "�Ƿ�����ӣ�")
		AddMenuItem("����","fdback " .. type .. " " .. id .. " " .. "b2", "")
		AddMenuItem("���Ͳ�����Է����","fdback " .. type .. " " .. id .. " " .. "b3", "")
	elseif (val == "b1")  then
  		LuaOtherNotice(id,"������˴���",2)
	elseif (val == "b2") then
  		ChangeMap("lu_jknj")
  	elseif (val == "b3") then
  		ChangeMap("lu_jknj")
  		LuaTeam(id)
	end
	--------------------------------------------------------------------
end
LuaOtherSendMenu()
return 1
end