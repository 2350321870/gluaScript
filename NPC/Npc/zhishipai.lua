NPCINFO = {
serial="185" ,
base_name="zhishipai" ,
icon=2591,
NpcMove=2591,
name="ָ·��" ,
iconaddr=1 ,
butt="10|10|55" ,
lastsay="�鿴·�̣��뿴��ʾ" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
	  AddTopSayMenuItem("�б�","")
	  AddTopSayMenuItem("·����ʾ","liaotian")
elseif(answer=="liaotian") then
	LuaSay("��ʾ�����Ѿ�����@3363��@0������@4���ĺ���@0�ľ�ͷ������@332277��")
end
LuaSendMenu()
return 1
end