function OnDie()--90~
LuaAddTask("Tdlzlkillnum",1)
local killnum=LuaQueryTask("Tdlzlkillnum")
if(killnum>100) then
	local r = LuaRandom(5)
	if(r==1) then
		if(LuaItemCount("o_mission011")==0) then 
			LuaGive("o_mission011",1)
			LuaDelTask("Tdlzlkillnum")
			if(LuaItemCount("o_mission011")==1) then
			LuaSay("提示：你终于得到了@2地牢钥匙@0，可以通过传送门离开了")
			LuaOtherSendMenu()
			end
		end
	end
end

  if(LuaQuery("hp")<LuaQuery("max_hp")/10) then
     LuaSet("hp",1)
     FlushMyInfo("0x4")
     ChangeMap("lu_dilao")
  end

return 1
end