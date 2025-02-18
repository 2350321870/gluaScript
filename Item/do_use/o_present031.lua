function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("请至少保有@26@0格背包空间")
	return 0
	else
	LuaGive("o_material_16",1,"CaiLiaoBao")
	LuaGive("o_material_25",1,"CaiLiaoBao")
	LuaGive("o_material_34",1,"CaiLiaoBao")
	LuaGive("o_material_43",1,"CaiLiaoBao")
	LuaGive("o_material_52",1,"CaiLiaoBao")
	LuaGive("o_material_61",1,"CaiLiaoBao")
	return 1
	end
end
