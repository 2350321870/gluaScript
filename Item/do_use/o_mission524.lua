function do_use()
	local level=LuaQuery("level")
	if(level>69) then
    LuaAddJx("combat_exp",900000,"Tduiduip")
    LuaOtherSendMenu()
    return 1
	else
	LuaShowNotify("70��������Ҳ���ʹ�á�")
	return 0
	end
end