function OnDie()
LuaSetTask("Tdzhuanglinga",99)
  LuaSay("��ʾ���������ܻ���ɹ�")
local iRan=LuaRandom(100)
if(iRan<5)then			--װ20%
	local szClass=LuaQueryStr("class")
	if(szClass=="shen")then
	LuaGive("e_falchion121",1,2,"Tdzhuangling")	
	elseif(szClass=="wu")then
	LuaGive("e_sword121",1,2,"Tdzhuangling")	
	else
	LuaGive("e_staff121",1,2,"Tdzhuangling")	
	end
elseif(iRan<10)then
LuaGive("e_head121",1,2,"Tdzhuangling")	
elseif(iRan<15)then
LuaGive("e_necklace121",1,2,"Tdzhuangling")	
elseif(iRan<20)then
LuaGive("e_earring121",1,2,"Tdzhuangling")	
elseif(iRan<26)then
LuaGive("o_material_122",1,"Tdzhuangling")	--��65[+1]10%
elseif(iRan<32)then
LuaGive("o_material_123",1,"Tdzhuangling")	--��65[+2]10%
elseif(iRan<38)then
LuaGive("o_material_124",1,"Tdzhuangling")	--��65[+3]7%
elseif(iRan<44)then
LuaGive("o_material_125",1,"Tdzhuangling")	--��65[+4]4%
elseif(iRan<50)then
LuaGive("o_material_126",1,"Tdzhuangling")	--��65[+5]2%
elseif(iRan<75)then		--��������
LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tdzhuangling")--4��12%
elseif(iRan<85)then
LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tdzhuangling")--5��5%
else
LuaGive("coin",iRan*40,"Tdzhuangling")
end
LuaOtherSendMenu()
return 1
end