function do_use()
	if(LuaQueryStr("gender")=="男性") then
		LuaSay("你确定将性别转变为@7女性@0？")
		AddMenuItem("取消","none","转变为女性？")
		AddMenuItem("@1确定@0","nc_combine o_gendery a","转变为女性？")		
	elseif(LuaQueryStr("gender")=="女性") then
		  LuaSay("你确定将性别转变为@4男性@0？")
		  AddMenuItem("取消","none","转变为女性？")
		  AddMenuItem("@1确定@0","nc_combine o_gendery b","转变为男性？")
		 
	end
LuaOtherSendMenu()
return 0
end
function nc_combine(type)
if(type=="a")then
    LuaSet("gender","女性")
    LuaSet("equip_3","24")
    DelItem("o_gendery",1)
    FlushMyInfo("2")
    LuaSay("你已成功@7转变为女性@0")
    LuaNotice("经过深思熟虑，@3"..LuaQueryStr("name").."@0做了一个艰难的决定，使用@5凹凸变变变@0将自己转变为女性@0")
elseif(type=="b")then
 	LuaSet("gender","男性")
	LuaSet("equip_3","20")
	DelItem("o_gendery",1)
 	FlushMyInfo("2")
    LuaSay("你已成功@4转变为男性@0")
    LuaNotice("经过深思熟虑，@3"..LuaQueryStr("name").."@0做了一个艰难的决定，使用@5凹凸变变变@0将自己转变为男性@0")
end
LuaOtherSendMenu()
end
