--天魔套装
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	local r2=LuaRandom(5)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_clothes032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔战铠")
        elseif(r2==1) then
        LuaGive("e_head032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔战盔")
        elseif(r2==2) then
        LuaGive("e_pants032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔胫甲")
        elseif(r2==3) then
        LuaGive("e_shoes032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔战靴")
		elseif(r2==4) then
        LuaGive("e_earring032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔耳环")
		elseif(r2==5) then
        LuaGive("e_necklace032",1,1,"天魔套装包")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了天魔晶链")
        end
LuaOtherSendMenu()
return 1
end