Tbzyh_nTotalMonsterNum = 31

function OnDie()
if(LuaQueryTask("Tbzyh")>0)then
	if(LuaQueryTask("task_kill/mon_085/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_086/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_087/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_088/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_089/Tbzyh")>=31) then
		LuaSay("���Ѿ�ɱ��30��ԩ�꣬��ȥ�ظ��ʹ�߰ɣ�")	
	end
end
LuaOtherSendMenu()
return 1
end