function OnDie()
LuaSetTask("Tyongzhezsa",99)
--32%装备，玩家在得到装备后，才会花费金钱升级与镶嵌【大的金钱、材料耗费在得到装备后】
local iRan=LuaRandom(100)
if(iRan<5)then			--装10%
	local szClass=LuaQueryStr("class")
	if(szClass=="shen")then
	LuaGive("e_shield121",1,2,"Tyongzhezsa")	--盾
	elseif(szClass=="wu")then
	LuaGive("e_knife121",1,2,"Tyongzhezsa")	--匕
	else
	LuaGive("e_book121",1,2,"Tyongzhezsa")	--书
	end
elseif(iRan<10)then
LuaGive("e_clothes121",1,2,"Tyongzhezsa")	--衣
elseif(iRan<15)then
LuaGive("e_pants121",1,2,"Tyongzhezsa")	--裤
elseif(iRan<20)then
LuaGive("e_shoes121",1,2,"Tyongzhezsa")	--履
------------------
elseif(iRan<26)then
LuaGive("o_material_122",1,"Tyongzhezsa")	--魂65[+1]10%
elseif(iRan<32)then
LuaGive("o_material_123",1,"Tyongzhezsa")	--魂65[+2]10%
elseif(iRan<38)then
LuaGive("o_material_124",1,"Tyongzhezsa")	--魂65[+3]7%
elseif(iRan<44)then
LuaGive("o_material_125",1,"Tyongzhezsa")	--魂65[+4]4%
elseif(iRan<50)then
LuaGive("o_material_126",1,"Tyongzhezsa")	--魂65[+5]2%
elseif(iRan<75)then		--给点其它
LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tyongzhezsa")--4材12%
elseif(iRan<85)then
LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tyongzhezsa")--5材5%
else
LuaGive("coin",iRan*40,"Tyongzhezsa")		
end
LuaOtherSendMenu()
return 1
end