function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("请至少保有@26@0格背包空间")
	return 0
	else
	LuaGive("o_material_17",1,"CaiLiaoBao")
	LuaGive("o_material_26",1,"CaiLiaoBao")
	LuaGive("o_material_35",1,"CaiLiaoBao")
	LuaGive("o_material_44",1,"CaiLiaoBao")
	LuaGive("o_material_53",1,"CaiLiaoBao")
	LuaGive("o_material_62",1,"CaiLiaoBao")
	return 1
	end
end
