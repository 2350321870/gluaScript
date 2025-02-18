function do_use()
 if(LuaQueryTask("TPaoShang")==1) then
 
    LuaSay("删除跑商保护！")
    LuaSay("你结束了跑商任务！")
 
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))

   	LuaDeleteBuff("518")
  	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
    LuaOtherSendMenu()
    return 1

else
LuaShowNotify("你没接跑商任务！")
end
end