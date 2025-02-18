function OnDie()
-------------万蛇
if(LuaQueryTask("T473")==2) then
	if (LuaItemCount("o_mission315") ==0) then
		LuaGive("o_mission315",1)
		if(LuaItemCount("o_mission315")== 1)then
		LuaSay("你已得到@2万蛇之心@0，快回复@2淝水对岸@0的@2朱序@0吧！")
 		issay = 1
		end
	end
end
if(LuaQueryTask("T30bossjl")~=99)then
	local gailv
	if(TeamCount()>= 2) then
        if(TeamCount()== 2) then
        gailv=5
        elseif(TeamCount()== 3) then
        gailv=4
        elseif(TeamCount()== 4) then
        gailv=3
        elseif(TeamCount()== 5) then
        gailv=2
        end
        if(LuaRandom(gailv)==0) then
			if(LuaQueryStr("class")=="shen") then      --战士
			LuaGive("e_falchion009",1,2,"T30bossjl")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
			LuaGive("e_sword011",1,2,"T30bossjl")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
			LuaGive("e_fan005",1,2,"T30bossjl")
			end
			LuaSay("你已经获得30多级蓝色武器！以后击杀该boss时将不会触发此隐藏奖励！")
			LuaSetTask("T30bossjl",99)
			issay = 1
		end
	end
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_2")==1) then
		if(LuaItemCount("o_mission409")==0)then
			LuaGive("o_mission409",1)
			if(LuaItemCount("o_mission409")>=1) then
				LuaSay("你已经成功杀死@3BOSS万蛇@0，得到@3蛇胆@0，快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_013")==0) then
	LuaSay("恭喜你杀死BOSS@3万蛇@0，获得成就@3侠义！万蛇@0！")
	LuaGiveAchievement("Tcj3_013",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing003")==1)then
	LuaSay("提示：你成功的击杀了万蛇")
	LuaSetTask("Txhuanxing003",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end
