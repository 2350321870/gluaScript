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
			LuaSay("��ʾ�������ڵõ���@2����Կ��@0������ͨ���������뿪��")
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