NPCINFO = {
serial= "511" ,
base_name="fbjg04",
icon= 8156,
NpcMove=8156,
--name= "����",
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="",
}
function do_talk(answer)
if (answer=="ask") then
AddTopSayMenuItem("����","")
	if(LuaQuery("level")>0)then
		AddTopSayMenuItem("�����ֻ�","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--0��1��/��4��1
		if(LuaPublicQuery("fbdata/fb01/jg4")==1)then
		LuaPublicSet("fbdata/fb01/jg4",0)
		LuaSay("����4�ر�")
		else
		LuaPublicSet("fbdata/fb01/jg4",1)
		LuaSay("����4��")
		end

		if(LuaPublicQuery("fbdata/fb01/jg4")==1)then
		LuaPublicSet("fbdata/fb01/m4",1)
		LuaPublicSet("fbdata/fb01/m1",0)
		LocalMsg("����ͣˢ")
		LocalMsg("��������ˢ")
		else
		LuaPublicSet("fbdata/fb01/m4",0)
		LuaPublicSet("fbdata/fb01/m1",1)
		LocalMsg("���뿪ˢ")
		LocalMsg("������ͣˢ")
		end

	else
	LuaSay("������������,���ܴ�������")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end