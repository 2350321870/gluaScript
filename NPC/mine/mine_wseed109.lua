NPCINFO = {
name="��ҩ",
butt="0|0|42",
isboss = 2, 
serial= "980",
icon= 10502,
NpcMove= 10502, 
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
if(LuaQueryTask("T103")==1)then
	if(LuaItemCount("o_mission371")<3)  then
		LuaGive("o_mission371",1)
		if(LuaItemCount("o_mission371")==1) then
		LuaSay("��ɼ�����1����ҩ")
		LuaOtherSendMenu()
		elseif(LuaItemCount("o_mission371")==2) then
		LuaSay("���ֲɼ���1����ҩ���Ѿ�������2����ҩ")
		LuaOtherSendMenu()
		elseif(LuaItemCount("o_mission371")==3) then
		LuaSay("���ֲɼ���1����ҩ���Ѿ�����3����ҩ�����Իظ�@4������@0���@3ѱ��ʦ@0��")
		LuaOtherSendMenu()
		end
	else
	    LuaSay("���Ѿ�����3����ҩ�����Իظ�@4������@0���@3ѱ��ʦ@0��")
	    LuaOtherSendMenu()
	end
end
	if(LuaQuery("level")<10 and LuaQueryTask("Tcj1")~=99)then
		local r=LuaRandom(3)
		if(r==0)then
		LuaGive("o_drug_hp1",1,"Tcj1")
		elseif(r==1)then
		LuaGive("coin",100,"Tcj1")
		elseif(r==2)then
		LuaGive("o_material_38",1,"Tcj1")
		end
		LuaSetTask("Tcj1",99)
	else
	    if(LuaQuery("level")<10)then
		LuaSay("��ɵ����õĶ�������Ŭ������10��ȥ�ɼ����Ϳ󳡲ɼ��ɣ�@!")
	    end
	end
	LuaOtherSendMenu()
return 1
end