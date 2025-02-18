function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_jkdj") then
   if(LuaQueryTask("T358") == 1 ) then
    LuaGive("o_mission002",1)
     LuaSay("提示：你使用了迷药，桓冲在神志不清下拿出一份遗嘱，快去交给@4五斗山@0的@3桓玄@0吧")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("该物品只有在建康东郊桓冲身边才能使用。")
    return 0
  end
	
end
