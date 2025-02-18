Twsyl_nTotalMonsterNum = 11
function OnDie()
if(LuaQueryTask("Ttzyl")==1) then
		if (LuaItemCount("o_mission419") < 30) then
			LuaGive("o_mission419",1)
			if(LuaItemCount("o_mission419")==30) then
			LuaSay("你已得到30个@2天诛谕令@0，快回复@4无双战场@0的@3王猛@0吧！")
			LuaOtherSendMenu()
			end
		end
end
if(LuaQueryTask("Twsyl")==1) then
	if(LuaQueryTask("task_kill/mon_145/Twsyl")==11) then
		LuaSay("你杀死@310个无双士兵@0了！，快回复@4无双战场@0的@3王猛@0吧！")
		LuaOtherSendMenu()
	end
end
local level= LuaQuery("level")
local r=LuaRandom(150-level)
local r2=LuaRandom(100)
local r3=LuaRandom(100)
local r4=LuaRandom(10)
local r5=LuaRandom(28)
--if(r==0)then
--LuaGive("o_douyu",1)
--end
if(r2==0 and r4==0) then     --------千分之一  散装高级合成书 
	if(LuaRandom(12)==0)  then
	LuaGive("o_falchionHC2",1)
	elseif(LuaRandom(12)==1)  then
	LuaGive("o_shieldHC2",1)
	elseif(LuaRandom(12)==2)  then
	LuaGive("o_swordHC2",1)
	elseif(LuaRandom(12)==3)  then
	LuaGive("o_knifeHC2",1)
	elseif(LuaRandom(12)==4)  then
	LuaGive("o_penfanHC2",1)
	elseif(LuaRandom(12)==5)  then
	LuaGive("o_bookHC2",1)
	elseif(LuaRandom(12)==6)  then
	LuaGive("o_clothesHC2",1)
	elseif(LuaRandom(12)==7)  then
	LuaGive("o_pantsHC2",1)
	elseif(LuaRandom(12)==8)  then
	LuaGive("o_headHC2",1)
	elseif(LuaRandom(12)==9)  then
	LuaGive("o_shoesHC2",1)
	elseif(LuaRandom(12)==10)  then
	LuaGive("o_earringHC2",1)
	elseif(LuaRandom(12)==11)  then
	LuaGive("o_necklaceHC2",1)
	end
	LuaOtherSendMenu()
end
if(r2==0 and r3==0) then      --------万分之一         套装合成书 
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

-----------------------------------------
return 1
end

