NPCINFO = {
serial="185" ,
base_name="zhishipai" ,
icon=2591,
NpcMove=2591,
name="指路牌" ,
iconaddr=1 ,
butt="10|10|55" ,
lastsay="查看路程，请看告示" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
	  AddTopSayMenuItem("列表","")
	  AddTopSayMenuItem("路程显示","liaotian")
elseif(answer=="liaotian") then
	LuaSay("告示：你已经走了@3363米@0，距离@4天涯海角@0的尽头，还有@332277米")
end
LuaSendMenu()
return 1
end