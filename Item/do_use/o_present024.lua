function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")
return 0
end
	AddMenuItem("2级毛","nc_combine o_present024 a","2级单一材料包")
	AddMenuItem("2级皮","nc_combine o_present024 b","2级单一材料包")
	AddMenuItem("2级肉","nc_combine o_present024 c","2级单一材料包")
	AddMenuItem("2级木","nc_combine o_present024 d","2级单一材料包")
	AddMenuItem("2级矿","nc_combine o_present024 e","2级单一材料包")
	AddMenuItem("2级晶","nc_combine o_present024 f","2级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
