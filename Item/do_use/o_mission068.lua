function do_use()
 local mapname=MapName()
if(mapname=="lu_wszb") then
 if(LuaQueryTask("T571") == 3 ) then
		LuaSetTask("T571A",99)
        LuaSay("���Ѿ��ɹ��Ľ�ҩ�������˵��ϡ�ȥ�ظ������ɰɡ�")
	    LuaOtherSendMenu()
		return 1
 end
 else
 LuaShowNotify("��ҩ��ֻ����μˮ֮��ʹ�á�")
end
end