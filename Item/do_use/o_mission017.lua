function do_use()
	local  mapname=MapName()
  if(mapname=="lu_dongjiao") then
    if(LuaQueryTemp("posx")>750 and LuaQueryTemp("posx")<950 and  LuaQueryTemp("posy")>150 and  LuaQueryTemp("posy")<350) then
     LuaSay("提示：你成功的挖到了一包钱财。快去交给祭足吧。")
     LuaGive("o_mission088",1)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("祭足前辈的钱财埋藏在他面前的土丘东侧呢。")
    end
  else
    LuaShowNotify("附近没有发现任何东西。")
 end	
	
end
