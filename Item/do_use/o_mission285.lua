function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_gd") then
    if(LuaQueryTask("Txc_baoz")==2 ) then
   		if(TeamCount()==2) then 
		    LuaSetTask("Txc_baoz",3)
			LuaSay("��ʾ����ȼ���˱��񣬿������ʱƮɢ��Ũ�ҵı���ζ����ȥ�ظ��ʹ�߰�")
     		LuaOtherSendMenu()
     		return 1
     	else
		    LuaSay("��ʾ�������ֲ��������֣���һ���������һ��ȼ�Ű�")
		    LuaOtherSendMenu()
		    return 0
		end 
     end 
  else
     LuaShowNotify("����Ʒֻ���ڹ������ʹ�á�")
     return 0
  end
	
end
