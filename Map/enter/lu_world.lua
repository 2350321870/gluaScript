ans = {} 	
function OnEnter()
ans.rtype = 1
if(LuaQuery("level")>=10) then
	if (LuaQueryStr("class")=="zhan") then
		LuaSay("提示：10级选择职业后方可进入世界地图")
		ans.rtype=0
		LuaOtherSendMenu()
	end
else
	LuaSay("提示：10级后方可进入世界地图")
	ans.rtype=0
	LuaOtherSendMenu()
end
return ans.rtype
end

