ans = {} 	
function OnEnter()
ans.rtype = 1
	LuaSay("想知道@2迷宫@0后面是什么吗，赶快闯过迷宫吧@!")
LuaOtherSendMenu()
return ans.rtype
end