NPCINFO = {
name="ʳ�˲�",
butt="0|0|32",
isboss = 2,
serial= "955" ,
icon= 10505,
NpcMove= 10505, 
iconaddr= 1, 
maxnum=3,
booty= "o_material_38|o_material_39|o_mission144",
getrate= 80,
bootyrate="55|95|100",
gettime= 1,
getlevel= 2,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("Txxx")==1)then
LuaSay("����ר��")
LuaOtherSendMenu()
return 1
else
	if(LuaRandom(10)<3 or LuaQuery("hp")<100)then
	LuaSet("hp",0)
	LuaShowNotify("���簡!�㲻С�ı�ʳ�˲�ҧ����")
	FlushMyInfo("0x1004")
	LuaOtherSendMenu()
	return 1
	else
	LuaSet("hp",floor(LuaQuery("hp")/2))
	LuaShowNotify("�㲻С�ı�ʳ�˲�ҧ��һ��")
	LuaOtherSendMenu()
	return 0
	end
end
end