NPCINFO = {
serial= "180" ,
base_name="fb30jixz01",
icon= 2589, 
NpcMove=2589, 
name= "@3封印的箱子" , 
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
	if (answer=="ask") then
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7封印的箱子","")
		AddTopSayMenuItem("@3打开","open")
		return 1
	elseif(answer=="open") then
		if(LuaItemCount("o_mission180")==0) then
			if(LuaQueryTask("task_kill/mon_180/Tfbxezd")>50) then
				LuaDelTask("task_kill/mon_180/Tfbxezd")
				LuaGive("o_mission180",1)
			else
				LuaSay("@3邪灵@0的力量仍然太过强大，无法打开封印的箱子。击杀50个邪灵，再试试开启封印的箱子，你目前已经杀了@3"..(LuaQueryTask("task_kill/mon_180/Tfbxezd")-1).."个邪灵@0！")
			end
		else
			LuaSay("提示：这个箱子空空如也，已经被你拿过了")
		end
	end
LuaSendMenu()
return 1
end    	