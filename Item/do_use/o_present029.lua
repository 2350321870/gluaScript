function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")
	return 0
	else
	LuaGive("o_material_15",1,"CaiLiaoBao")
	LuaGive("o_material_24",1,"CaiLiaoBao")
	LuaGive("o_material_33",1,"CaiLiaoBao")
	LuaGive("o_material_42",1,"CaiLiaoBao")
	LuaGive("o_material_51",1,"CaiLiaoBao")
	LuaGive("o_material_60",1,"CaiLiaoBao")
	return 1
	end
end
