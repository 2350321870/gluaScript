--纵横套装
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
        local r2=LuaRandom(12)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_book167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横书")
        elseif(r2==1) then
        LuaGive("e_earring167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横耳坠")
        elseif(r2==2) then
        LuaGive("e_falchion167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刀")
        elseif(r2==3) then
        LuaGive("e_head167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横冠")
        elseif(r2==4) then
        LuaGive("e_knife167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刃")
        elseif(r2==5) then
        LuaGive("e_necklace167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横项链")
        elseif(r2==6) then
        LuaGive("e_pants167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横护腿")
        elseif(r2==7) then
        LuaGive("e_pen167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横笔")
        elseif(r2==8) then
        LuaGive("e_shield167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横盾")
        elseif(r2==9) then
        LuaGive("e_shoes167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横靴")
        elseif(r2==10) then
        LuaGive("e_sword167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横剑")
	elseif(r2==11) then
        LuaGive("e_clothes167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横袍")
        end


LuaOtherSendMenu()
return 1
end