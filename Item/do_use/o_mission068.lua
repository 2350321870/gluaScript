function do_use()
 local mapname=MapName()
if(mapname=="lu_wszb") then
 if(LuaQueryTask("T571") == 3 ) then
		LuaSetTask("T571A",99)
        LuaSay("你已经成功的将药粉撒在了地上。去回复百里奚吧。")
	    LuaOtherSendMenu()
		return 1
 end
 else
 LuaShowNotify("该药粉只能在渭水之滨使用。")
end
end