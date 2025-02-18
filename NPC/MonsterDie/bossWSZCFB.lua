function OnDie()

local r4=LuaRandom(3)
local r5=LuaRandom(28)

if(r4==0) then      --------三分之一 
	if(r5==0)  then
--	LuaGive("o_lv100taozhuang",1)
	elseif(r5>=1 and r5<3)  then
--	LuaGive("o_lv90taozhuang",1)
	elseif(r5>=3 and r5<6)  then
	LuaGive("o_lv80taozhuang",1)
	elseif(r5>=6 and r5<10)  then
	LuaGive("o_lv70taozhuang",1)
	elseif(r5>=10 and r5<15)  then
	LuaGive("o_lv60taozhuang",1)
	elseif(r5>=15 and r5<21)  then
	LuaGive("o_lv50taozhuang",1)
	elseif(r5>=21 and r5<28)  then
	LuaGive("o_lv40taozhuang",1)
	end
    LuaOtherSendMenu()

end
		--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		LuaPrint("1")
		if(r2<3) then
		LuaGive("e_book169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵天书")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵耳坠")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵宝刀")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵锦冠")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵血刃")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵晶链")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵胫甲")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵笔")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵银盾")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵魔靴")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵软剑")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes169t",1,3,"PublicBeta_107")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了圣灵仙袍")
		end
		  LuaOtherSendMenu()
	else
		LuaShowNotify("请至少保有@21@0格背包空间")
	end]]


return 1
end