NPCINFO = { 
serial="311" ,
base_name="qianduoduo",
icon=2510,
NpcMove=2510,
name="钱多多【奖励使者】" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="睡觉睡到自然醒，数钱数到手抽筋",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("@3挖宝地图传送","wb")


------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end 
return 1
------------------------------------------------

elseif(answer=="liaotian") then
	LuaSay("钱多多：睡觉睡到自然醒，数钱数到手抽筋！")
elseif(answer=="wb") then  
--[[SetAllTeamMemberValueTask
QueryAllTeamMemberTaskSuccess
AddAllTeamMemberValueTask ]]
	if(TeamCount()>=1  ) then
		if(QueryAllTeamMemberTaskSuccess("FBTGJL",10)==1 or true)then  -------------进入boss地图时，该标记会变成1
		LuaSay("钱多多：组队模式并且全队人合力击杀boss，这样全队人可以进入@3挖宝副本@0！")
		LuaSay("钱多多：@3挖宝副本@0中你将有@36次机会@0，任意挖去地图中的财宝！满次后再挖无效果，并会被强制传送回城！")
		LuaSetTask("FBTG",10)
		AddMenuItem("@7操作列表","")
		AddMenuItem("@3传送去挖宝","go_fbwb")
		else
		LuaSay("钱多多：很遗憾！只有@33人以上@0的队伍，并且全队人@3在boss地图击杀了boss@0才能进入挖宝地图！")
		LuaSay("钱多多：一队人@3在boss地图击杀了boss@0的时候，要是有人不在@3本boss地图@0，会被视为不团结的队伍，将失去本次进入挖宝地图的机会！")
		end 
	else
	LuaSay("钱多多：很遗憾！只有@33人以上@0的队伍，并且全队人@3在boss地图击杀了boss@0才能进入挖宝地图！")
	end 
    
elseif(answer=="go_fbwb") then 
	ChangeMap("lu_fbwb")
	


end
LuaSendMenu()
return 1
end 
