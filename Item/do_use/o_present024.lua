function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
return 0
end
	AddMenuItem("2��ë","nc_combine o_present024 a","2����һ���ϰ�")
	AddMenuItem("2��Ƥ","nc_combine o_present024 b","2����һ���ϰ�")
	AddMenuItem("2����","nc_combine o_present024 c","2����һ���ϰ�")
	AddMenuItem("2��ľ","nc_combine o_present024 d","2����һ���ϰ�")
	AddMenuItem("2����","nc_combine o_present024 e","2����һ���ϰ�")
	AddMenuItem("2����","nc_combine o_present024 f","2����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_12",1,"CaiLiaoBao")
	DelItem("o_present024",1)
elseif(type=="b")then
	LuaGive("o_material_21",1,"CaiLiaoBao")
	DelItem("o_present024",1)
elseif(type=="c")then
	LuaGive("o_material_30",1,"CaiLiaoBao")
	DelItem("o_present024",1)
elseif(type=="d")then
	LuaGive("o_material_39",1,"CaiLiaoBao")
	DelItem("o_present024",1)
elseif(type=="e")then
	LuaGive("o_material_48",1,"CaiLiaoBao")
	DelItem("o_present024",1)
elseif(type=="f")then
	LuaGive("o_material_57",1,"CaiLiaoBao")
	DelItem("o_present024",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
