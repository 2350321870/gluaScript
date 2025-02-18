ans = {} 	
function Onleave(door_order)	
	if(LuaQueryTask("T590A")>0) then
		LuaDelTask("T590A")
		DelItem("o_mission041",LuaItemCount("o_mission041"))
		LuaSay("@3提示@0：您在钓鱼时离开了钓鱼台，您已经放下的鱼饵白白便宜了鱼儿喽！")
		LuaOtherSendMenu()
   	end
   	if(LuaQueryTask("T591A")>0) then
		LuaDelTask("T591A")
  		LuaSetTask("T591A",0)
		LuaSay("@3提示@0：您在钓鱼时离开了钓鱼台，您用幸运鱼饵钓鱼失败，下次钓鱼时将从新开始钓鱼！")
		LuaOtherSendMenu()
   	end
return 1
end 