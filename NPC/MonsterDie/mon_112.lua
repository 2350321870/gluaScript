--Tshikuyi_nTotalMonsterNum = 101 
function OnDie()
if(LuaQueryTask("T446")==1)then
	if(LuaQueryTask("task_kill/mon_112/T446")==21)then   
		LuaSay("你已经消灭掉了20个姚军士兵，快回去报告@4军营前哨@0的@3谢琰@0吧！")
		CheckNpcStatusByMonItemID("T446","mon_112")	
		LuaOtherSendMenu()
	end
end
return 1
end