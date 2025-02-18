NPCINFO = { 
serial="97" ,
base_name="gaoshipai",
icon=2540,
NpcMove=2540 ,
name="告示牌" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="敢犯中原者,虽远必诛",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	level= LuaQuery("level")

	AddTopSayMenuItem("@7任务列表","")

------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("XXX：剑指天山西,马踏黑海北,贝加尔湖张弓,库页岛上赏雪,中南半岛访古,东京废墟祭祖!") 
		       
		       
end
LuaSendMenu()
return 1
end 

