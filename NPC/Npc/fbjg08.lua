NPCINFO = {
serial= "515" ,
base_name="fbjg08",
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
		AddTopSayMenuItem("���Ž���","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--1����2/��4
		if(LuaPublicQuery("fbdata/fb01/m1")==1)then
		LuaPublicSet("fbdata/fb01/m2",0)
		LocalMsg("���׿�ˢ")
		end

		if(LuaPublicQuery("fbdata/fb01/m4")==1)then
		LuaPublicSet("fbdata/fb01/m4",0)
		LocalMsg("���뿪ˢ")
		else
		LuaPublicSet("fbdata/fb01/m4",1)
		LocalMsg("����ͣˢ")
		end

	else
	LuaSay("������������,���ܴ�������")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end	