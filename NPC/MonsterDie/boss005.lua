function OnDie()
if(LuaQueryTask("T655")==1)then
if(LuaItemCount("o_mission341")==0)then
LuaGive("o_mission341",1)
if(LuaItemCount("o_mission341")==1)then
LuaSay("你已成功击杀@3山灵玄武兽@0，速去@3太行山谷石越@0那里领取奖励吧")
 	issay = 1
    end
    end
    end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_4")==1) then
		if(LuaItemCount("o_mission411")==0)then
			LuaGive("o_mission411",1)
			if(LuaItemCount("o_mission411")>=1) then
				LuaSay("你已经成功杀死@3BOSS玄武兽@0，得到@3玄武盾@0，快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_015")==0) then
	LuaSay("恭喜你杀死BOSS@3玄武兽@0，获得成就@3侠义！玄武兽@0！")
	LuaGiveAchievement("Tcj3_015",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing005")==1)then
	LuaSay("提示：你成功的击杀了玄武兽")
	LuaSetTask("Txhuanxing005",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
	--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		LuaPrint("1")
		if(r2<3) then
		LuaGive("e_book167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横书")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横耳坠")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刀")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横冠")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横刃")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横项链")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横护腿")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横笔")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横盾")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横靴")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横剑")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."恭喜你，获得了纵横袍")
		end
	else
	 LuaShowNotify("请至少保有@21@0格背包空间")
	end]]
   LuaOtherSendMenu()
return 1
end