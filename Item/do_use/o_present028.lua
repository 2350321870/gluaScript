function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
return 0
end
	AddMenuItem("4��ë","nc_combine o_present028 a","4����һ���ϰ�")
	AddMenuItem("4��Ƥ","nc_combine o_present028 b","4����һ���ϰ�")
	AddMenuItem("4����","nc_combine o_present028 c","4����һ���ϰ�")
	AddMenuItem("4��ľ","nc_combine o_present028 d","4����һ���ϰ�")
	AddMenuItem("4����","nc_combine o_present028 e","4����һ���ϰ�")
	AddMenuItem("4����","nc_combine o_present028 f","4����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_14",1,"CaiLiaoBao")
	DelItem("o_present028",1)
elseif(type=="b")then
	LuaGive("o_material_23",1,"CaiLiaoBao")
	DelItem("o_present028",1)
elseif(type=="c")then
	LuaGive("o_material_32",1,"CaiLiaoBao")
	DelItem("o_present028",1)
elseif(type=="d")then
	LuaGive("o_material_41",1,"CaiLiaoBao")
	DelItem("o_present028",1)
elseif(type=="e")then
	LuaGive("o_material_50",1,"CaiLiaoBao")
	DelItem("o_present028",1)
elseif(type=="f")then
	LuaGive("o_material_59",1,"CaiLiaoBao")
	DelItem("o_present028",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
