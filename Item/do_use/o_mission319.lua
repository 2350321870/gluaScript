function do_use()
local  mapname=MapName()
if(mapname=="lu_bgd") then
 	if(LuaQueryTask("T601") == 2 ) then 
		LuaSetTask("T601",3) 
		LuaSay("���Ѿ��ɹ�ʹ��@2������@0��ѹ����Թ����ȥ��@3�����@0�ɡ�")
		LuaOtherSendMenu()
		UpdateNPCMenu("qifukui")
		return 1	
 	end 
else
 	LuaSay("�ó�����ֻ���ڰ׹Ƕ�������")
	LuaOtherSendMenu()
	return 0
end	
end   