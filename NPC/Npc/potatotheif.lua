NPCINFO = { 
serial="177" ,
base_name="potatotheif" ,
icon=2531,
NpcMove=2531,
name="ɽ��" ,
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="�����������" ,
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_drug_hp1",0,10},
{"o_drug_hp2",0,10},
{"o_drug_hp3",0,10},
{"o_drug_mp1",0,10},
{"o_drug_mp2",0,10},
{"o_drug_mp3",0,10},
}
function do_talk(answer)      
if (answer=="ask") then   
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	local Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--��ˢ�޴�
		AddTopSayMenuItem("͵����","Tpotato")
		havetask =1
	end
	if(Tpotato==2)then
		AddTopSayMenuItem("@2͵����","Tpotato")
		havetask =2
	end
		AddTopSayMenuItem("ҩƷ","list")
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1
		
elseif(answer=="liaotian") then 
	LuaSay(LuaQueryStr("name").."���¶�����ȡ�ۣ�")
	LuaSay("ɽ�����¶�����ȡ�ۡ�")
	LuaSay(LuaQueryStr("name").."�������������")
	LuaSay("ɽ����Ү�������������")
elseif(answer=="Tpotato")then
	local Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--���ƽ�
	LuaSay("ɽ��������ɽկ����ʳ���ţ��ҵ��ֱ���и����ˣ����ܰ����ڵ��Ǳ������������")
	AddMenuItem("@7��������","")
	AddMenuItem("����","Tpotatoyes")
	AddMenuItem("��û��","liaotian")
	elseif(Tpotato==2)then
		if(LuaItemCount("o_mission193")<10)then
		LuaSay("ɽ�����㻹û�ڹ�10��������")
		AddMenuItem("@7Ҫ������","")
		AddMenuItem("����","Tpotatodrop")
		AddMenuItem("������","liaotian")
		else
		LuaSay("������лл����")--��
		LuaAddTask("TpotatoScore",20)
		LuaAddTask("TDayScore",10)
		DelItem("o_mission193",LuaItemCount("o_mission193"))
		LuaSay("����ս����������20")
		LuaDelTask("Tpotato")
		UpdateMenu()
		UpdateNPCMenu("potatoman")
		end
	end
elseif(answer=="Tpotatoyes" and LuaQueryTask("Tpotato")==0)then
	LuaSay("ɽ����������10���������ҡ�")
	LuaSetTask("Tpotato",2)
	UpdateMenu()
	UpdateNPCMenu("potatoman")
elseif(answer=="Tpotatodrop" and LuaQueryTask("Tpotato")==2)then--�뽱
	local ipn=LuaItemCount("o_mission193")
	LuaAddTask("TpotatoScore",ipn)
	LuaAddTask("TDayScore",ipn)
	DelItem("o_mission193",ipn)
	LuaSay("����ս����������"..ipn)
	LuaDelTask("Tpotato")
	UpdateMenu()
	UpdateNPCMenu("potatoman")
end
LuaSendMenu()
return 1
end 

