function OnDie()
if(LuaQueryTask("T393")==1)then
		if(LuaItemCount("o_mission190")==0)then
			LuaGive("o_mission190",1)
			if(LuaItemCount("o_mission190")>=1)then
				LuaSay("你已成功击杀BOSS孙恩邪体，得到了@2水晶球@0，快去回复@4山寨地牢@0的@3王凝之@0吧")
				if(LuaQueryTask("T393A")==0)then
					if(LuaQueryStr("class")=="shen") then      --战士
					LuaGive("e_falchion099",1,3,"T73")	
					elseif(LuaQueryStr("class")=="wu") then       --侠客
					LuaGive("e_sword099",1,3,"T73")
					elseif(LuaQueryStr("class")=="xian") then       --谋士
					LuaGive("e_pen099",1,3,"T73")
					end
				LuaSetTask("T393A",99)
				end
				issay = 1
			end
		end
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_1")==1) then
		if(LuaItemCount("o_mission408")==0)then
			LuaGive("o_mission408",1)
			if(LuaItemCount("o_mission408")>=1) then
				LuaSay("你已经成功杀死@3BOSS孙恩邪体@0，得到@3魔经@0，快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_012")==0) then
	LuaSay("恭喜你杀死BOSS@3孙恩邪体@0，获得成就@3侠义！孙恩邪体@0！")
	LuaGiveAchievement("Tcj3_012",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing002")==1)then
	LuaSay("提示：你成功的击杀了孙恩邪体")
	LuaSetTask("Txhuanxing002",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end