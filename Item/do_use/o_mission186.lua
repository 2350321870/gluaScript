function do_use()
	 local mapname=MapName()
  if(mapname=="lu_yanmenguan") then
    if(LuaQueryTemp("posx")>1 and LuaQueryTemp("posx")<100 and  LuaQueryTemp("posy")>308 and  LuaQueryTemp("posy")<385) then
     LuaSay("��ʾ����ɹ����ҵ���һ������ͨ������ȥ�ظ����Źص������ɡ�")
	LuaSetTask("T972A",99)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("�õ��߱��������Ź�����·�м�ʹ��")
    end
  else
    LuaShowNotify("�õ��߱��������Ź�����·�м�ʹ��")
 end	
	
end
