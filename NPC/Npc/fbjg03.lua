NPCINFO = {
serial= "510" ,
base_name="fbjg03",
icon= 8156,
NpcMove=8156,
--name= "机关",
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="",
}
function do_talk(answer)
if (answer=="ask") then
AddTopSayMenuItem("机关","")
	if(LuaQuery("level")>0)then
		AddTopSayMenuItem("三才同气","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--0关1开/开3关4
		if(LuaPublicQuery("fbdata/fb01/jg3")==1)then
		LuaPublicSet("fbdata/fb01/jg3",0)
		LuaSay("机关3关闭")
		else
		LuaPublicSet("fbdata/fb01/jg3",1)
		LuaSay("机关3打开")
		end

		if(LuaPublicQuery("fbdata/fb01/jg3")==1)then
		LuaPublicSet("fbdata/fb01/m3",1)
		LuaPublicSet("fbdata/fb01/m4",0)
		LocalMsg("护卫斧停刷")
		LocalMsg("黯蛛开刷")
		else
		LuaPublicSet("fbdata/fb01/m3",0)
		LuaPublicSet("fbdata/fb01/m4",1)
		LocalMsg("护卫斧开刷")
		LocalMsg("黯蛛停刷")
		end

	else
	LuaSay("你已身受重伤,不能触动机关")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end