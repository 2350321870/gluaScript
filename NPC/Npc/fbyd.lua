NPCINFO = {
serial= "507" ,
base_name="fbyd",
icon= 2537, 
NpcMove=2537,
name= "药商" ,
iconaddr=1,
butt="20|15|63", 
name_color = "CEFFCE" , 
lastsay="明锤易躲暗弩难防小心",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_drug_hp1",100,8},
{"o_drug_hp2",100,8},
{"o_drug_hp3",100,8},
{"o_drug_mp1",100,8},
{"o_drug_mp2",100,8},
{"o_drug_mp3",100,8},
}
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	AddTopSayMenuItem("@7药商","no")
        AddTopSayMenuItem("@3买卖","buy1")
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
elseif(answer=="liaotian") then
     LuaSay("药商:人在副本转,小心会挨箭")	
	    
elseif(answer=="buy1") then
	DoBuy()   

end
LuaSendMenu()
return 1
end