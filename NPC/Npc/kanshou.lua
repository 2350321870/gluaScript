NPCINFO = {
serial="181" ,
base_name="kanshou" ,
icon=2512,
NpcMove=2512,
name="����" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="���Դ�������ص�����" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
      AddTopSayMenuItem("@7�����б�","")
      AddTopSayMenuItem("����","chuansong")
	  AddTopSayMenuItem("����","liaotian")
	  return 1
elseif(answer=="liaotian") then
	LuaSay("���أ��˱���Ϊ�Լ���������Ϊ��������")

elseif(answer=="chuansong") then  		      
     ChangeMap("lu_dilao")


end
LuaSendMenu()
return 1
end

