NPCINFO = {
serial= "512" ,
base_name="fbjg05",
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
		AddTopSayMenuItem("��������","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--2����3/��1
		if(LuaPublicQuery("fbdata/fb01/m2")==1)then
		LuaPublicSet("fbdata/fb01/m3",0)
		LocalMsg("��������ˢ")
		end

		if(LuaPublicQuery("fbdata/fb01/m1")==1)then
		LuaPublicSet("fbdata/fb01/m1",0)
		LocalMsg("��������ˢ")
		else
		LuaPublicSet("fbdata/fb01/m1",1)
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