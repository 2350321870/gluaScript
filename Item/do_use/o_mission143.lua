function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
LuaSay("你服下@4九华丹@0感觉神清气爽犹如醍醐灌顶一般")
LuaAddJx("combat_exp",(LuaRandom(40)+20)*level^2,"Tmission143")
LuaOtherSendMenu()
return 1
end