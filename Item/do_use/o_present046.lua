function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	AddMenuItem("7��ë","nc_combine o_present046 a","7����һ���ϰ�")
	AddMenuItem("7��Ƥ","nc_combine o_present046 b","7����һ���ϰ�")
	AddMenuItem("7����","nc_combine o_present046 c","7����һ���ϰ�")
	AddMenuItem("7��ľ","nc_combine o_present046 d","7����һ���ϰ�")
	AddMenuItem("7����","nc_combine o_present046 e","7����һ���ϰ�")
	AddMenuItem("7����","nc_combine o_present046 f","7����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_17",1,"CaiLiaoBao")
	DelItem("o_present046",1)
elseif(type=="b")then
	LuaGive("o_material_26",1,"CaiLiaoBao")
	DelItem("o_present046",1)
elseif(type=="c")then
	LuaGive("o_material_35",1,"CaiLiaoBao")
	DelItem("o_present046",1)
elseif(type=="d")then
	LuaGive("o_material_44",1,"CaiLiaoBao")
	DelItem("o_present046",1)
elseif(type=="e")then
	LuaGive("o_material_53",1,"CaiLiaoBao")
	DelItem("o_present046",1)
elseif(type=="f")then
	LuaGive("o_material_62",1,"CaiLiaoBao")
	DelItem("o_present046",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end

