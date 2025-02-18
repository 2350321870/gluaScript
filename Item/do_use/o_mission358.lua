function do_use()

local mapname=MapName()

if(mapname=="lu_chp") then

	if(LuaQueryTask("T661")==1)then
		LuaSay(""..LuaQueryStr("name").."：这世界还是和以前一样啊")
 		LuaOtherSendMenu()
 		LuaSetTask("T661",2)
		AddLog("失败的献祭【剧情】",661)
 		UpdateNPCMenu("huntaihou")
 		return 1  
	end
else
    LuaShowNotify("该物品只有在参合坡才能使用。")
end


if(mapname=="lu_chp") then
	if(LuaQueryTask("T662")==3)then
        LuaSay("提示：你已经成功使用了邪恶的召唤卷轴，快去回复@3浑太后@0吧。")
     	LuaOtherSendMenu()
		LuaSetTask("T662",4)
		AddLog("冷血生母【剧情】",662)
		UpdateNPCMenu("huntaihou")
		return 1
    end
else
    LuaShowNotify("该物品只有在参合坡才能使用。")

end

 
	

end                                                

