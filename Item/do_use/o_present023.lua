function do_use()
	if(LuaFreeBag()<6)then
	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")
	return 0
	else
	LuaGive("o_material_12",1,"CaiLiaoBao")
	LuaGive("o_material_21",1,"CaiLiaoBao")
	LuaGive("o_material_30",1,"CaiLiaoBao")
	LuaGive("o_material_39",1,"CaiLiaoBao")
	LuaGive("o_material_48",1,"CaiLiaoBao")
	LuaGive("o_material_57",1,"CaiLiaoBao")
	return 1
	end
end
