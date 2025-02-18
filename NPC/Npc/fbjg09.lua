NPCINFO = {
serial= "516" ,
base_name="fbjg09",
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
		AddTopSayMenuItem("奇门九宫","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--
		--[[if(LuaPublicQuery("fbdata/fb01/m3")==1)then
		LuaPublicSet("fbdata/fb01/m3",0)
		LuaSay("怪3开刷")
		end

		if(LuaPublicQuery("fbdata/fb01/m1")==1)then
		LuaPublicSet("fbdata/fb01/m1",0)
		LuaSay("怪1开刷")
		else
		LuaPublicSet("fbdata/fb01/m1",1)
		LuaSay("怪1停刷")
		end]]
		LuaSay("这个机关看起来没什么用")

	else
	LuaSay("你已身受重伤,不能触动机关")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end	