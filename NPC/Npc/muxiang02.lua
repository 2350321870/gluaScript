NPCINFO = {
serial= "54" ,
base_name="muxiang02",
icon= 2589,
NpcMove=2589,
name= "木箱" ,
iconaddr=1, 
butt="5|5|63",
name_color = "CEFFCE" , --名字色彩
lastsay="此地无银三百两",
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("任务列表","")
	if(LuaQueryTask("T404") == 1 or LuaQueryTask("T404") == 2)then
		AddTopSayMenuItem("@2大权在握【剧情】","T404")
	end
		AddTopSayMenuItem("打开","dakai")
-------------------------------------------------------------------------
--[[
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1                 ]]
-------------------------------------------------------------------------

	elseif(answer=="T404")then         ------大权在握
	 if(LuaQueryTask("T404") == 1)then
   		LuaSay("打开木箱！")
		LuaSetTask("T404",2)
		LuaGive("o_mission336",1)
 		UpdateTopSay("提示：与建康城宫殿里的司马道子对话！")
 		AddLog("大权在握【剧情】",404)
		UpdateMenu()    
		UpdateNPCMenu("xiexuan")
	 elseif (LuaQueryTask("T404") == 2)then
		LuaSay("提示：把@2丹书铁券@0给@4建康城宫殿里@0的@3司马道子@0看！")
	 end
	elseif(answer=="dakai")then
		LuaSay("提示：空空如也，难道有什么玄机？")
end 
LuaSendMenu()
return 1
end    	 	