function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
return 0
end
	AddMenuItem("1��ë","nc_combine o_present022 a","1����һ���ϰ�")
	AddMenuItem("1��Ƥ","nc_combine o_present022 b","1����һ���ϰ�")
	AddMenuItem("1����","nc_combine o_present022 c","1����һ���ϰ�")
	AddMenuItem("1��ľ","nc_combine o_present022 d","1����һ���ϰ�")
	AddMenuItem("1����","nc_combine o_present022 e","1����һ���ϰ�")
	AddMenuItem("1����","nc_combine o_present022 f","1����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_11",1,"CaiLiaoBao")
	DelItem("o_present022",1)
elseif(type=="b")then
	LuaGive("o_material_20",1,"CaiLiaoBao")
	DelItem("o_present022",1)
elseif(type=="c")then
	LuaGive("o_material_29",1,"CaiLiaoBao")
	DelItem("o_present022",1)
elseif(type=="d")then
	LuaGive("o_material_38",1,"CaiLiaoBao")
	DelItem("o_present022",1)
elseif(type=="e")then
	LuaGive("o_material_47",1,"CaiLiaoBao")
	DelItem("o_present022",1)
elseif(type=="f")then
	LuaGive("o_material_56",1,"CaiLiaoBao")
	DelItem("o_present022",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
