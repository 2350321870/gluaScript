function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
LuaSay("�����@8�Ż�¶@0�о��Ŀ�������������")
LuaAddJx("combat_exp",(LuaRandom(20)+10)*level^2,"Tmission142")
LuaOtherSendMenu()
return 1
end
