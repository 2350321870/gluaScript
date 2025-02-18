T331_nTotalMonsterNum = 16
T324_nTotalMonsterNum = 16
Tbprw004_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
T271_nTotalMonsterNum = 51
function OnDie()
-------------炎甲虫 
------------------------------------
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_009/T331") == 16) then
  LuaSay("你已经消灭了@215个炎甲虫@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T324")==1) then
  if(LuaQueryTask("task_kill/mon_009/T324") == 21) then
  LuaSay("你已经消灭了@215个炎甲虫@0，快去回复@4建康东郊@0的@3桓冲@0吧")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_009/Tbprw004")==21)then
	LuaSay("你已经消灭了@220个炎甲虫@0，快去回复@4宫殿@0的@3晋帝@0吧")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==6)then
	if(LuaQueryTask("task_kill/mon_009/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只炎甲虫")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==1)then	
	if(LuaQueryTask("task_kill/mon_009/T271")==51)then
		LuaSay("你已经成功的击杀了50只炎甲虫")
		LuaOtherSendMenu()
	end
end
return 1
end