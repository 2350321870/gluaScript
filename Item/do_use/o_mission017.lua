function do_use()
	local  mapname=MapName()
  if(mapname=="lu_dongjiao") then
    if(LuaQueryTemp("posx")>750 and LuaQueryTemp("posx")<950 and  LuaQueryTemp("posy")>150 and  LuaQueryTemp("posy")<350) then
     LuaSay("��ʾ����ɹ����ڵ���һ��Ǯ�ơ���ȥ��������ɡ�")
     LuaGive("o_mission088",1)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("����ǰ����Ǯ�����������ǰ�����𶫲��ء�")
    end
  else
    LuaShowNotify("����û�з����κζ�����")
 end	
	
end
