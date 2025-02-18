NPCINFO = { 
serial="179" ,
base_name="dreamkeren",
icon=2561,
NpcMove=2561,
name="可人" ,
iconaddr=1 ,
butt="5|5|55" ,
name_color="CEFFCE" ,
lastsay="可怕的噩梦" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
	AddTopSayMenuItem("@7拯救可人","") 
	AddTopSayMenuItem("@3被困梦境的可人","zjkr")
	AddTopSayMenuItem("聊天","liaotian","1") 
	return 1 

elseif(answer=="liaotian") then
	LuaSay("可人：什么时候才能有一席美梦")
    
elseif(answer=="zjkr") then
	if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then 
		LuaSay("可人：没想到那可恶的勾魂使者竟能进入我的梦中，实在可恶。")
		LuaSay("可人：只有从他手上赢取@320个中级聚魂石@0，才能救我。如果你有@320个中级聚魂石@0就去他那里完成任务吧。")
 	else
		LuaSay("可人：谢谢你救了我，我要在这多呆一下，消除我对他的恐惧，您先出去找@3梦境使者@0领奖励吧。")
	end
	
	
	 
end 
LuaSendMenu()
return 1
end 