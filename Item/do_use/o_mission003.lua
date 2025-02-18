function do_use()
	LuaSay("提示：你练此功，挥刀自宫！失血过多，重伤倒地。下次小心哦@!")
	LuaSet("hp",0)
	FlushMyInfo("0x1004")
LuaOtherSendMenu()
return 1
end