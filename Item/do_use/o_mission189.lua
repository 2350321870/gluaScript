function do_use()
if(LuaQueryTask("Txinchun") == 5 ) then
	 mapname=MapName()
  if(mapname=="lu_zzy01") then
   
	 LuaSetTask("TxinchunA",99)
     LuaSay("提示：你使用了祈福香，我们一起祈祷新的一年能实现愿望，去回复活动使者吧。")
     LuaOtherSendMenu()
     return 1
  else
    LuaShowNotify("该物品只有在种植园才能使用。")
	return 0 
  end
end
 	 mapname=MapName()
  if(mapname=="lu_miwusenlin") then
   if(LuaQueryTask("T81") == 1 ) then 
		LuaSetTask("T81A",99)
     LuaSay("提示：你成功使用了祈福香，快去回复谢道韫吧")
     LuaOtherSendMenu()
     return 1
     end 
  else
    LuaShowNotify("该物品只有在迷雾之林才能使用")
  end
	
end
