function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
LuaSay("�����@4�Ż���@0�о�������ˬ���������ඥһ��")
LuaAddJx("combat_exp",(LuaRandom(40)+20)*level^2,"Tmission143")
LuaOtherSendMenu()
return 1
end