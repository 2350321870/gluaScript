ans = {} 	
function Onleave(door_order)	
	if(LuaQueryTask("T590A")>0) then
		LuaDelTask("T590A")
		DelItem("o_mission041",LuaItemCount("o_mission041"))
		LuaSay("@3��ʾ@0�����ڵ���ʱ�뿪�˵���̨�����Ѿ����µ�����װױ��������ඣ�")
		LuaOtherSendMenu()
   	end
   	if(LuaQueryTask("T591A")>0) then
		LuaDelTask("T591A")
  		LuaSetTask("T591A",0)
		LuaSay("@3��ʾ@0�����ڵ���ʱ�뿪�˵���̨�����������������ʧ�ܣ��´ε���ʱ�����¿�ʼ���㣡")
		LuaOtherSendMenu()
   	end
return 1
end 