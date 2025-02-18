Tbzyh_nTotalMonsterNum = 31

function OnDie()
if(LuaQueryTask("Tbzyh")>0)then
	if(LuaQueryTask("task_kill/mon_085/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_086/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_087/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_088/Tbzyh")>=31 or LuaQueryTask("task_kill/mon_089/Tbzyh")>=31) then
		LuaSay("你已经杀死30个冤魂，快去回复活动使者吧！")	
	end
end
LuaOtherSendMenu()
return 1
end