function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")
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
