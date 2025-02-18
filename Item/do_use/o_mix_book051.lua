function do_use()

	AddMenuItem("合成蛇丸","nc_combine o_mix_book051 a","需要一个蛇胆做材料，可以合成出蛇丸")     



LuaSendMenu()
LuaShowNotify("蛇丸合成",1)
return 1
end
function nc_combine(type)

if (type=="a")then
	if (LuaItemStatusNormalCount("o_mission039")>=1) then
	DelItem("o_mission039",1) 
	LuaGive("o_mix_book051",1)
	LuaShowNotify("成功合成xxx。")
	return 1
	else
	LuaShowNotify("您需要找到一种叫蛇胆东西才能合成。")
	end

end

end