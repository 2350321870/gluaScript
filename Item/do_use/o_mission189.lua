function do_use()
if(LuaQueryTask("Txinchun") == 5 ) then
	 mapname=MapName()
  if(mapname=="lu_zzy01") then
   
	 LuaSetTask("TxinchunA",99)
     LuaSay("��ʾ����ʹ�������㣬����һ�����µ�һ����ʵ��Ը����ȥ�ظ��ʹ�߰ɡ�")
     LuaOtherSendMenu()
     return 1
  else
    LuaShowNotify("����Ʒֻ������ֲ԰����ʹ�á�")
	return 0 
  end
end
 	 mapname=MapName()
  if(mapname=="lu_miwusenlin") then
   if(LuaQueryTask("T81") == 1 ) then 
		LuaSetTask("T81A",99)
     LuaSay("��ʾ����ɹ�ʹ�������㣬��ȥ�ظ�л��蹰�")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("����Ʒֻ��������֮�ֲ���ʹ��")
  end
	
end
