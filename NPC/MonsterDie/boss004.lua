function OnDie()
if(LuaQueryTask("T614")==1) then
	LuaSetTask("T614",2)
	AddLog("制作毒药[剧情]",614)
	LuaSay("你已经成功消灭了@3修罗蘑菇@0，赶快回复白骨洞的@3乞伏奎@0吧")
 	issay = 1
end
if(LuaQueryTask("T583")==1) then
	if (LuaItemCount("o_mission327") < 1) then
     	LuaGive("o_mission327",1)
    	if(LuaItemCount("o_mission327")==1) then
    	CheckNpcStatusByMonItemID("T583","o_mission327")
     	LuaSay("你已击杀修罗蘑菇得到1份剧毒蘑菇，快去回复西蜀竹林乞伏国仁吧。")
 	issay = 1
    end
end
end 
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_3")==1) then
		if(LuaItemCount("o_mission410")==0)then
			LuaGive("o_mission410",1)
			if(LuaItemCount("o_mission410")>=1) then
				LuaSay("你已经成功杀死@3BOSS修罗蘑菇@0，得到@3修罗菌丝@0，快去@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
 				issay = 1
			end
		end
	end
end
if(LuaQueryTask("T40bossjl")~=99)then
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
        if(LuaRandom(gailv)==0)  then
			if(LuaQueryStr("class")=="shen") then      --战士
			LuaGive("e_falchion012",1,2,"T40bossjl")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
			LuaGive("e_sword014",1,2,"T40bossjl")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
			LuaGive("e_pen007",1,2,"T40bossjl")
			end
			LuaSay("你已经获得40多级蓝色武器！以后击杀该boss时将不会触发此隐藏奖励！")
			LuaSetTask("T40bossjl",99)
			issay = 1
		end
	end
end
if(QueryAchievement("Tcj3_014")==0) then
	LuaSay("恭喜你杀死BOSS@3修罗蘑菇@0，获得成就@3侠义！修罗蘑菇@0！")
	LuaGiveAchievement("Tcj3_014",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing004")==1)then
	LuaSay("提示：你成功的击杀了修罗蘑菇")
	LuaSetTask("Txhuanxing004",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end

return 1
end