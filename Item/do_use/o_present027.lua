function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")
	return 0
	else
	LuaGive("o_material_14",1,"CaiLiaoBao")
	LuaGive("o_material_23",1,"CaiLiaoBao")
	LuaGive("o_material_32",1,"CaiLiaoBao")
	LuaGive("o_material_41",1,"CaiLiaoBao")
	LuaGive("o_material_50",1,"CaiLiaoBao")
	LuaGive("o_material_59",1,"CaiLiaoBao")
	return 1
	end
end
