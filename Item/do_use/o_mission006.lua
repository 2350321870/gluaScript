function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_jkdj") then
   if(LuaQueryTask("T358") == 1 ) then
    LuaGive("o_mission002",1)
     LuaSay("��ʾ����ʹ������ҩ����������־�������ó�һ����������ȥ����@4�嶷ɽ@0��@3����@0��")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("����Ʒֻ���ڽ�������������߲���ʹ�á�")
    return 0
  end
	
end
