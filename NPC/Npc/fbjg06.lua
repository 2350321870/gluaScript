NPCINFO = {
serial= "513" ,
base_name="fbjg06",
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
		AddTopSayMenuItem("六合同心","use1")	
	end
return 1
elseif(answer=="use1")then
	if(LuaQuery("hp")>0)then--3关则开4/反2
		if(LuaPublicQuery("fbdata/fb01/m3")==1)then
		LuaPublicSet("fbdata/fb01/m4",0)
		LocalMsg("黯蛛开刷")
		end

		if(LuaPublicQuery("fbdata/fb01/m2")==1)then
		LuaPublicSet("fbdata/fb01/m2",0)
		LocalMsg("冰巫开刷")
		else
		LuaPublicSet("fbdata/fb01/m2",1)
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