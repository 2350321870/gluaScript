function do_use()
if(EquipInfo(10)~="")then
    LuaPetNameChange(2,"o_cwgm")
--    LuaSay("提示：若你输入超过2个汉字或4个非汉字字符，请重新输入，改名成功后才会消失！")
else
	LuaSay("提示：请先把宠物装备在身上！")
end
LuaOtherSendMenu()
return 0
end
