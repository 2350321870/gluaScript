NPCINFO = { 
serial="97" ,
base_name="gaoshipai",
icon=2540,
NpcMove=2540 ,
name="��ʾ��" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�ҷ���ԭ��,��Զ����",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")

------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("XXX����ָ��ɽ��,��̤�ں���,���Ӷ����Ź�,��ҳ������ѩ,���ϰ뵺�ù�,�����������!") 
		       
		       
end
LuaSendMenu()
return 1
end 

