function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")
	return 0
	else
	LuaGive("o_material_11",1,"CaiLiaoBao")
	LuaGive("o_material_20",1,"CaiLiaoBao")
	LuaGive("o_material_29",1,"CaiLiaoBao")
	LuaGive("o_material_38",1,"CaiLiaoBao")
	LuaGive("o_material_47",1,"CaiLiaoBao")
	LuaGive("o_material_56",1,"CaiLiaoBao")
	return 1
	end
end
