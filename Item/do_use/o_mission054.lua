function do_use()
local  mapname=MapName()
if(mapname=="lu_jkdj") then
 if(LuaQueryTask("T112") == 1 ) then 
		LuaSetTask("T112A",99) 
        LuaSay("���Ѿ��ɹ��Ľ�ҩ�������˵��ϡ���ȥ@2�ظ�˾��Ԫ��@0�ɣ�")
	    LuaOtherSendMenu()
		return 1	
 end 
 else
 LuaShowNotify("��ҩ��ֻ���ڽ����Ƕ���ʹ�á�")
end	
end   