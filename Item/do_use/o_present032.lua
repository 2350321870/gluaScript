function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	AddMenuItem("6��ë","nc_combine o_present032 a","6����һ���ϰ�")
	AddMenuItem("6��Ƥ","nc_combine o_present032 b","6����һ���ϰ�")
	AddMenuItem("6����","nc_combine o_present032 c","6����һ���ϰ�")
	AddMenuItem("6��ľ","nc_combine o_present032 d","6����һ���ϰ�")
	AddMenuItem("6����","nc_combine o_present032 e","6����һ���ϰ�")
	AddMenuItem("6����","nc_combine o_present032 f","6����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_16",1,"CaiLiaoBao")
	DelItem("o_present032",1)
elseif(type=="b")then
	LuaGive("o_material_25",1,"CaiLiaoBao")
	DelItem("o_present032",1)
elseif(type=="c")then
	LuaGive("o_material_34",1,"CaiLiaoBao")
	DelItem("o_present032",1)
elseif(type=="d")then
	LuaGive("o_material_43",1,"CaiLiaoBao")
	DelItem("o_present032",1)
elseif(type=="e")then
	LuaGive("o_material_52",1,"CaiLiaoBao")
	DelItem("o_present032",1)
elseif(type=="f")then
	LuaGive("o_material_61",1,"CaiLiaoBao")
	DelItem("o_present032",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
