--圣灵套装
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	local r2=LuaRandom(12)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_book169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵天书")
        elseif(r2==1) then
        LuaGive("e_earring169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵耳坠")
        elseif(r2==2) then
        LuaGive("e_falchion169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵宝刀")
        elseif(r2==3) then
        LuaGive("e_head169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵锦冠")
        elseif(r2==4) then
        LuaGive("e_knife169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵血刃")
        elseif(r2==5) then
        LuaGive("e_necklace169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵晶链")
        elseif(r2==6) then
        LuaGive("e_pants169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵胫甲")
        elseif(r2==7) then
        LuaGive("e_pen169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵笔")
        elseif(r2==8) then
        LuaGive("e_shield169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵银盾")
        elseif(r2==9) then
        LuaGive("e_shoes169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵魔靴")
        elseif(r2==10) then
        LuaGive("e_sword169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵软剑")
	elseif(r2==11) then
        LuaGive("e_clothes169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵仙袍")
        end


LuaOtherSendMenu()
return 1
end