function do_use()
	LuaSay("芝麻开门..")
	LuaSay("....")
	LuaSay("恭喜你获得@2两个坐骑蛋@0")
	local a=LuaRandom(10)
	LuaGive("o_mission415",2,"dljl") -------得到2个坐骑蛋  当乐奖励
	if(a<=4) then
		LuaSay("哇，这都能人品爆发...送你@2400铜@0的额外奖励表扬下你的人品。")
		LuaGive("coin",400,"dljl")
	end
	LuaOtherSendMenu()
	return 1 
end