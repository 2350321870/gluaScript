function do_use()
	local  mapname=MapName()
  if(mapname=="lu_tyhj") then
    if(LuaQueryTemp("posx")>300 and LuaQueryTemp("posx")<400 and  LuaQueryTemp("posy")>100 and  LuaQueryTemp("posy")<200) then
     LuaSay("提示：你成功的挖到了行商的宝藏。快去交给建康城南的种子商人吧。")
     LuaGive("o_mission016",1)
     LuaOtherSendMenu()
     return 1
     else
    LuaShowNotify("行商的宝藏就在天涯海角第一块指路牌附近")
    end
  else
    LuaShowNotify("行商的宝藏就在天涯海角第一块指路牌附近")
 end	
	
end
