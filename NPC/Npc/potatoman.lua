NPCINFO = { 
serial="176" ,
base_name="potatoman" ,
icon=2514,
NpcMove=2514,
name="��ũ" ,
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="˶��˶��Īʳ����" ,
LuaType=1,
} 
function do_talk(answer)    
if (answer=="ask") then
	havetask =0
	--level= LuaQuery("level") 
	AddTopSayMenuItem("@7�����б�","")
	Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaDreamQuery("TDayScore")<200)then--��ˢ�޴�
		AddTopSayMenuItem("����������","Tpotato")
		havetask =1
	elseif(Tpotato==1)then
		AddTopSayMenuItem("@2����������","Tpotato")
		havetask =2
	end
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1
		
elseif(answer=="liaotian") then 
	LuaSay("��ũ����Щ�������ǿɶ��ҵ���������͵���ˡ�")
elseif(answer=="Tpotato")then
	local Tpotato=LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--���ƽ�
	LuaSay("��ũ������ҵ��������Ǳ�����͵�������������Ҵ�����һ����У����ܰ��Ұ�������������")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("����","Tpotatoyes")
	AddMenuItem("��û��","liaotian")
	elseif(Tpotato==1)then
		if(LuaItemCount("o_mission194")>0)then
		LuaSay("��ũ���㻹û�а�10�����Ӱ����أ�")
		AddMenuItem("@7ȷ��Ҫ������","")
		AddMenuItem("����","Tpotatodrop")
		AddMenuItem("������","liaotian")
		else
		LuaSay("������лл����")--��
		LuaAddTask("TpotatoScore",20)
		LuaAddTask("TDayScore",10)--����
		LuaSay("����ս����������20")
		LuaDelTask("Tpotato")
		UpdateMenu()
		UpdateNPCMenu("potatotheif")
		end
	end
elseif(answer=="Tpotatoyes" and LuaQueryTask("Tpotato")==0)then
	LuaSay("��ũ������������ʹ�òɼ����ܾͿ��԰�����ˡ�")
	LuaGive("o_mission194",10)
	LuaSetTask("Tpotato",1)
	UpdateMenu()
	UpdateNPCMenu("potatotheif")
elseif(answer=="Tpotatodrop" and LuaQueryTask("Tpotato")==1)then--�뽱
	LuaAddTask("TpotatoScore",10-LuaItemCount("o_mission194"))
	LuaAddTask("TDayScore",10-LuaItemCount("o_mission194"))
	DelItem("o_mission194",LuaItemCount("o_mission194"))
	LuaSay("����ս����������0")
	LuaDelTask("Tpotato")
	UpdateMenu()
	UpdateNPCMenu("potatotheif")


end
LuaSendMenu()
return 1
end 

