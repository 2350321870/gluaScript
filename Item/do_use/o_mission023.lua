function do_use()
	local  mapname=MapName()
  if(mapname=="lu_tyhj") then
    if(LuaQueryTemp("posx")>300 and LuaQueryTemp("posx")<400 and  LuaQueryTemp("posy")>100 and  LuaQueryTemp("posy")<200) then
     LuaSay("��ʾ����ɹ����ڵ������̵ı��ء���ȥ�����������ϵ��������˰ɡ�")
     LuaGive("o_mission016",1)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("���̵ı��ؾ������ĺ��ǵ�һ��ָ·�Ƹ���")
    end
  else
    LuaShowNotify("���̵ı��ؾ������ĺ��ǵ�һ��ָ·�Ƹ���")
 end	
	
end
