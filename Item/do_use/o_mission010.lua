function do_use()
  local mapname=MapName()
  if(mapname=="lu_tyc") then
   if(LuaQueryTask("T60") == 1 ) then
		LuaSetTask("T60A",99)
     LuaSay("��ʾ�����Ѿ��ɹ�ʹ��������ҩˮ����ȥ�ظ�@3�����@0�ɡ�")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("����Ʒֻ������Դ�����ʹ�á�")
  end
	
end
