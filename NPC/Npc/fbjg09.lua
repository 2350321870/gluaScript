NPCINFO = {
serial= "516" ,
base_name="fbjg09",
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
		AddTopSayMenuItem("���žŹ�","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--
		--[[if(LuaPublicQuery("fbdata/fb01/m3")==1)then
		LuaPublicSet("fbdata/fb01/m3",0)
		LuaSay("��3��ˢ")
		end

		if(LuaPublicQuery("fbdata/fb01/m1")==1)then
		LuaPublicSet("fbdata/fb01/m1",0)
		LuaSay("��1��ˢ")
		else
		LuaPublicSet("fbdata/fb01/m1",1)
		LuaSay("��1ͣˢ")
		end]]
		LuaSay("������ؿ�����ûʲô��")

	else
	LuaSay("������������,���ܴ�������")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end	