function do_use()
  local mapname=MapName()
  if(mapname=="lu_tyc") then
   if(LuaQueryTask("T60") == 1 ) then
		LuaSetTask("T60A",99)
     LuaSay("提示：你已经成功使用了神秘药水，快去回复@3浣衣娘@0吧。")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("该物品只有在桃源村才能使用。")
  end
	
end
