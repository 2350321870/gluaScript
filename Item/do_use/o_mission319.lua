function do_use()
local  mapname=MapName()
if(mapname=="lu_bgd") then
 	if(LuaQueryTask("T601") == 2 ) then 
		LuaSetTask("T601",3) 
		LuaSay("你已经成功使用@2超生咒@0，压制了怨气，去找@3乞伏奎@0吧。")
		LuaOtherSendMenu()
		UpdateNPCMenu("qifukui")
		return 1	
 	end 
else
 	LuaSay("该超生咒只能在白骨洞才有用")
	LuaOtherSendMenu()
	return 0
end	
end   