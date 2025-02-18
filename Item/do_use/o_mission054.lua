function do_use()
local  mapname=MapName()
if(mapname=="lu_jkdj") then
 if(LuaQueryTask("T112") == 1 ) then 
		LuaSetTask("T112A",99) 
        LuaSay("你已经成功的将药粉撒在了地上。快去@2回复司马元显@0吧！")
	    LuaOtherSendMenu()
		return 1	
 end 
 else
 LuaShowNotify("该药粉只可在建康城东郊使用。")
end	
end   