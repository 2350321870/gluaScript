NPCINFO = {
name="��ʯħ��",
butt="0|0|42",
isboss = 2, 
serial= "978",
icon= 10524,
NpcMove= 10524, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("T242")==1)then
	if(LuaItemCount("o_mission005")<1)  then
		LuaGive("o_mission005",1)
		if(LuaItemCount("o_mission005")==1) then
		LuaSay("��ɼ�����1����ʯħ��,��ȥ�������ʯ����")
		LuaOtherSendMenu()
		end
	end
end
return 1
end

