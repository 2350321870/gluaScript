function do_use()
	 local mapname=MapName()
  if(mapname=="lu_yanmenguan") then
    if(LuaQueryTemp("posx")>1 and LuaQueryTemp("posx")<100 and  LuaQueryTemp("posy")>308 and  LuaQueryTemp("posy")<385) then
     LuaSay("提示：你成功的找到了一条秘密通道，快去回复雁门关的守卫吧。")
	LuaSetTask("T972A",99)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("该道具必须在雁门关左侧道路中间使用")
    end
  else
    LuaShowNotify("该道具必须在雁门关左侧道路中间使用")
 end	
	
end
