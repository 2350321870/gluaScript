function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
return 0
end
	AddMenuItem("3��ë","nc_combine o_present026 a","3����һ���ϰ�")
	AddMenuItem("3��Ƥ","nc_combine o_present026 b","3����һ���ϰ�")
	AddMenuItem("3����","nc_combine o_present026 c","3����һ���ϰ�")
	AddMenuItem("3��ľ","nc_combine o_present026 d","3����һ���ϰ�")
	AddMenuItem("3����","nc_combine o_present026 e","3����һ���ϰ�")
	AddMenuItem("3����","nc_combine o_present026 f","3����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_13",1,"CaiLiaoBao")
	DelItem("o_present026",1)
elseif(type=="b")then
	LuaGive("o_material_22",1,"CaiLiaoBao")
	DelItem("o_present026",1)
elseif(type=="c")then
	LuaGive("o_material_31",1,"CaiLiaoBao")
	DelItem("o_present026",1)
elseif(type=="d")then
	LuaGive("o_material_40",1,"CaiLiaoBao")
	DelItem("o_present026",1)
elseif(type=="e")then
	LuaGive("o_material_49",1,"CaiLiaoBao")
	DelItem("o_present026",1)
elseif(type=="f")then
	LuaGive("o_material_58",1,"CaiLiaoBao")
	DelItem("o_present026",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
