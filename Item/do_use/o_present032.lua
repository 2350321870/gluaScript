function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	AddMenuItem("6级毛","nc_combine o_present032 a","6级单一材料包")
	AddMenuItem("6级皮","nc_combine o_present032 b","6级单一材料包")
	AddMenuItem("6级肉","nc_combine o_present032 c","6级单一材料包")
	AddMenuItem("6级木","nc_combine o_present032 d","6级单一材料包")
	AddMenuItem("6级矿","nc_combine o_present032 e","6级单一材料包")
	AddMenuItem("6级晶","nc_combine o_present032 f","6级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
