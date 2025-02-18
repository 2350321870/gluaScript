function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")
return 0
end
	AddMenuItem("1级毛","nc_combine o_present022 a","1级单一材料包")
	AddMenuItem("1级皮","nc_combine o_present022 b","1级单一材料包")
	AddMenuItem("1级肉","nc_combine o_present022 c","1级单一材料包")
	AddMenuItem("1级木","nc_combine o_present022 d","1级单一材料包")
	AddMenuItem("1级矿","nc_combine o_present022 e","1级单一材料包")
	AddMenuItem("1级晶","nc_combine o_present022 f","1级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
