NPCINFO = {
serial="186" ,
base_name="zhishipai01" ,
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
	LuaSay("��ʾ�����Ѿ�����@312876��@0������@4���ĺ���@0�ľ�ͷ������@319764��")
end
LuaSendMenu()
return 1
end