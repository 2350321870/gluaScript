function OnDie()
LuaGive("o_douyu",15,"FB_Lv50_over")
LuaAddJx("combat_exp",level*100,"FB_Lv50_over")
if(QueryAllTeamMemberTaskSuccess("FBTGJL",1)==1)then
SetAllTeamMemberValueTask("FBTGJL",10)
end 
if(TeamCount()>=2  ) then
AddAllTeamMemberValueTask("dxcxintime",1)
else
LuaAddTask("dxcxintime",1)
end
	--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		if(r2<3) then
		LuaGive("e_book167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横书")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横耳坠")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刀")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横冠")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刃")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横项链")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横护腿")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横笔")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横盾")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横靴")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横剑")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes167t",1,3,"PublicBeta_105")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横袍")
		end
	else
		LuaShowNotify("请至少保有@21@0格背包空间")
	end]]

LuaOtherSendMenu()
return 1
end