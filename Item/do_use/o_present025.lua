function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("请至少保有@26@0格背包空间")
	return 0
	else
	LuaGive("o_material_13",1,"CaiLiaoBao")
	LuaGive("o_material_22",1,"CaiLiaoBao")
	LuaGive("o_material_31",1,"CaiLiaoBao")
	LuaGive("o_material_40",1,"CaiLiaoBao")
	LuaGive("o_material_49",1,"CaiLiaoBao")
	LuaGive("o_material_58",1,"CaiLiaoBao")
	return 1
	end
end
