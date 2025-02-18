function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")
return 0
end
	AddMenuItem("3级毛","nc_combine o_present026 a","3级单一材料包")
	AddMenuItem("3级皮","nc_combine o_present026 b","3级单一材料包")
	AddMenuItem("3级肉","nc_combine o_present026 c","3级单一材料包")
	AddMenuItem("3级木","nc_combine o_present026 d","3级单一材料包")
	AddMenuItem("3级矿","nc_combine o_present026 e","3级单一材料包")
	AddMenuItem("3级晶","nc_combine o_present026 f","3级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
