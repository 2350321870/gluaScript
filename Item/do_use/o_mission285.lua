function do_use()
local 	 mapname=MapName()
  if(mapname=="lu_gd") then
    if(LuaQueryTask("Txc_baoz")==2 ) then
   		if(TeamCount()==2) then 
		    LuaSetTask("Txc_baoz",3)
			LuaSay("提示：你燃放了爆竹，空气里顿时飘散着浓烈的爆竹味，快去回复活动使者吧")
     		LuaOtherSendMenu()
     		return 1
     	else
		    LuaSay("提示：独乐乐不如众乐乐，找一个朋友组队一起燃放吧")
		    LuaOtherSendMenu()
		    return 0
		end 
     end 
  else
     LuaShowNotify("该物品只有在宫殿才能使用。")
     return 0
  end
	
end
