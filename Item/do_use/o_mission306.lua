function do_use()
	local  mapname=MapName()
  if(mapname=="lu_wszb") then
    if(LuaItemCount("o_mission306") ==1 and LuaQueryTask("T507")==1 ) then
     	LuaSay("提示：密旨已经使用，败军归附苻坚。" )
	LuaOtherSendMenu()
	return 1
    end
  else
	LuaShowNotify("该物品只有在渭水之滨才能使用。")
  end
end