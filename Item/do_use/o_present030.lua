function do_use()
if(LuaFreeBag()<1)then
   LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
   return 0
   end
	AddMenuItem("5��ë","nc_combine o_present030 a","5����һ���ϰ�")
	AddMenuItem("5��Ƥ","nc_combine o_present030 b","5����һ���ϰ�")
	AddMenuItem("5����","nc_combine o_present030 c","5����һ���ϰ�")
	AddMenuItem("5��ľ","nc_combine o_present030 d","5����һ���ϰ�")
	AddMenuItem("5����","nc_combine o_present030 e","5����һ���ϰ�")
	AddMenuItem("5����","nc_combine o_present030 f","5����һ���ϰ�")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="a")then
	LuaGive("o_material_15",1,"CaiLiaoBao")
	DelItem("o_present030",1)
elseif(type=="b")then
	LuaGive("o_material_24",1,"CaiLiaoBao")
	DelItem("o_present030",1)
elseif(type=="c")then
	LuaGive("o_material_33",1,"CaiLiaoBao")
	DelItem("o_present030",1)
elseif(type=="d")then
	LuaGive("o_material_42",1,"CaiLiaoBao")
	DelItem("o_present030",1)
elseif(type=="e")then
	LuaGive("o_material_51",1,"CaiLiaoBao")
	DelItem("o_present030",1)
elseif(type=="f")then
	LuaGive("o_material_60",1,"CaiLiaoBao")
	DelItem("o_present030",1)
else
LuaSay("�������������ռ�,��֤1�����ϵĿ�λ�ٴ�,������ɵĶ�ʧ���и���")
end
LuaOtherSendMenu()
--return 1
end
