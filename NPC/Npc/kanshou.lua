NPCINFO = {
serial="181" ,
base_name="kanshou" ,
icon=2512,
NpcMove=2512,
name="看守" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="可以从我这里回到地牢" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
      AddTopSayMenuItem("@7功能列表","")
      AddTopSayMenuItem("传送","chuansong")
	  AddTopSayMenuItem("聊天","liaotian")
	  return 1
elseif(answer=="liaotian") then
	LuaSay("看守：人必须为自己的所作所为付出代价")

elseif(answer=="chuansong") then  		      
     ChangeMap("lu_dilao")


end
LuaSendMenu()
return 1
end

