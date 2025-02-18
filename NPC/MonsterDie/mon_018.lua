T426_nTotalMonsterNum = 26
T269_nTotalMonsterNum = 101
function OnDie()
-----------------------
if(LuaQueryTask("T426")==1) then
	local count = LuaQueryTask("task_kill/mon_018/T426")
	if(count==31) then
	LuaSay("你已经成功消灭了25个@2北府刀兵@0，快回复@2北府军营@0的@2驿站小吏@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T269")==1) then
	if(LuaQueryTask("task_kill/mon_018/T269")==101) then
		LuaSay("你已经成功击杀了100个@2北府刀兵@0")
		LuaOtherSendMenu()
	end
end
return 1
end

