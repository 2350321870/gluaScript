NPCINFO = {
serial= "180" ,
base_name="fb30jixz01",
icon= 2589, 
NpcMove=2589, 
name= "@3��ӡ������" , 
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
	if (answer=="ask") then
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7��ӡ������","")
		AddTopSayMenuItem("@3��","open")
		return 1
	elseif(answer=="open") then
		if(LuaItemCount("o_mission180")==0) then
			if(LuaQueryTask("task_kill/mon_180/Tfbxezd")>50) then
				LuaDelTask("task_kill/mon_180/Tfbxezd")
				LuaGive("o_mission180",1)
			else
				LuaSay("@3а��@0��������Ȼ̫��ǿ���޷��򿪷�ӡ�����ӡ���ɱ50��а�飬�����Կ�����ӡ�����ӣ���Ŀǰ�Ѿ�ɱ��@3"..(LuaQueryTask("task_kill/mon_180/Tfbxezd")-1).."��а��@0��")
			end
		else
			LuaSay("��ʾ��������ӿտ���Ҳ���Ѿ������ù���")
		end
	end
LuaSendMenu()
return 1
end    	