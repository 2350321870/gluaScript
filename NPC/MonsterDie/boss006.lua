function OnDie()
if(LuaQueryTask("T714")==1) then
	LuaSetTask("T714",2)
	AddLog("地下的决战【剧情】",714)
	LuaSay("你已经成功击杀BOSS王陵将军，快去回复燕王陵的守墓老人吧")
 	issay = 1
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_5")==1) then
		if(LuaItemCount("o_mission412")==0)then
			LuaGive("o_mission412",1)
			if(LuaItemCount("o_mission412")>=1) then
				LuaSay("你已经成功杀死@3BOSS王陵将军@0，得到@3将军印@0，快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_016")==0) then
	LuaSay("恭喜你杀死BOSS@3王陵将军@0，获得成就@3侠义！王陵将军@0！")
	LuaGiveAchievement("Tcj3_016",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing006")==1)then
	LuaSay("提示：你成功的击杀了王陵将军")
	LuaSetTask("Txhuanxing006",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
	--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		LuaPrint("1")
		if(r2<3) then
		LuaGive("e_book168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥书")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥耳坠")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥刀")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥冠")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥刃")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥项链")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥护腿")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥笔")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥盾")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥靴")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥剑")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了风拥袍")
		end
	else
		LuaShowNotify("请至少保有@21@0格背包空间")
	end]]
LuaOtherSendMenu()
return 1
end