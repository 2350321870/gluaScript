NPCINFO = {
serial= "514" ,
base_name="fbjg07",
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
		AddTopSayMenuItem("七星连罡","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--4关则开1/反3
		if(LuaPublicQuery("fbdata/fb01/m4")==1)then
		LuaPublicSet("fbdata/fb01/m1",0)
		LocalMsg("护卫锤开刷")
		end

		if(LuaPublicQuery("fbdata/fb01/m3")==1)then
		LuaPublicSet("fbdata/fb01/m3",0)
		LocalMsg("护卫斧开刷")
		else
		LuaPublicSet("fbdata/fb01/m3",1)
		LocalMsg("护卫斧停刷")
		end

	else
	LuaSay("你已身受重伤,不能触动机关")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end	