function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_wds") then
   if(LuaQueryTask("T333") == 1 ) then 
		LuaSetTask("T333A",99)
     LuaSay("��ʾ�����Ѿ��ɹ�ʹ�����ź��̻𣬿�ȥ�ظ�@3����@0�ɡ�")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("����Ʒֻ�����嶷ɽ����ʹ�á�")
  end
	
end
