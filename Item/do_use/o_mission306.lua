function do_use()
	local  mapname=MapName()
  if(mapname=="lu_wszb") then
    if(LuaItemCount("o_mission306") ==1 and LuaQueryTask("T507")==1 ) then
     	LuaSay("��ʾ����ּ�Ѿ�ʹ�ã��ܾ��鸽�޼ᡣ" )
	LuaOtherSendMenu()
	return 1
    end
  else
	LuaShowNotify("����Ʒֻ����μˮ֮������ʹ�á�")
  end
end