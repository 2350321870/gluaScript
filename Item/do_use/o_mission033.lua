function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_wds") then
   if(LuaQueryTask("T333") == 1 ) then 
		LuaSetTask("T333A",99)
     LuaSay("提示：你已经成功使用了信号烟火，快去回复@3王恭@0吧。")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("该物品只有在五斗山才能使用。")
  end
	
end
