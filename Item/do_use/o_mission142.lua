function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
LuaSay("你服下@8九华露@0感觉心旷神怡心有所悟")
LuaAddJx("combat_exp",(LuaRandom(20)+10)*level^2,"Tmission142")
LuaOtherSendMenu()
return 1
end
