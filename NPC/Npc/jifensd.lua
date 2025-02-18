NPCINFO = {
serial= "300" ,
icon= 2505, 
NpcMove=2505,
iconaddr=1,
base_name="jifensd",
butt="20|15|63", 
name_color = "CEFFCE" , 
lastsay="自动补血药商城药品店有售",
have_jifen_item =1,
shopxh = 10,
LuaType=1,
}
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
		AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("@3买卖","buy1")	
	return 1

elseif(answer=="buy1") then
		DoBuy()   

end
LuaSendMenu()
return 1
end