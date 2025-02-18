NPCINFO = {
serial= "508" ,
base_name="fbjg01",
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
		AddTopSayMenuItem("浑沌开元","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--0关1开/开2关1
		if(LuaPublicQuery("fbdata/fb01/jg1")==1)then
		LuaPublicSet("fbdata/fb01/jg1",0)
		LuaSay("机关1关闭")
		else
		LuaPublicSet("fbdata/fb01/jg1",1)
		LuaSay("机关1打开")
		end

		if(LuaPublicQuery("fbdata/fb01/jg1")==1)then
		LuaPublicSet("fbdata/fb01/m1",1)
		LuaPublicSet("fbdata/fb01/m2",0)
		LocalMsg("护卫锤停刷")
		LocalMsg("冰巫开刷")
		else
		LuaPublicSet("fbdata/fb01/m1",0)
		LuaPublicSet("fbdata/fb01/m2",1)
		LocalMsg("护卫锤开刷")
		LocalMsg("冰巫停刷")
		end

	else
	LuaSay("你已身受重伤,不能触动机关")
	end
UpdateMenu()
end
LuaSendMenu()
return 1
end    	