NPCINFO = {
name="�˲�",
butt="0|0|24",
isboss = 2,
serial= "999" ,
icon= 10521,
NpcMove= 10521, 
iconaddr= 1, 
maxnum= 1,
booty= "o_drug_hp1",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("T133")==2) then
	if(LuaItemCount("o_mission067")==0)  then
	       LuaGive("o_mission067",1)
		  if(LuaItemCount("o_mission067")==1) then
		   LuaSay("���ڵ���1���˲Σ�����ȥ�������")
		  end
	end
elseif(LuaQueryTask("T711")==2) then
	if(LuaItemCount("o_mission067")==0)  then
	       LuaGive("o_mission067",1)
		  if(LuaItemCount("o_mission067")==1) then
		   LuaSay("���ڵ���1���˲Σ�����ȥ������ؿڵ��޼ɰ�")
		  end
	end
else
	LuaSay("ũ��û���ҵ����������˲Σ�")
end
LuaOtherSendMenu()
return 1
end