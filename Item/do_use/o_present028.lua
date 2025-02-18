function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")
return 0
end
	AddMenuItem("4级毛","nc_combine o_present028 a","4级单一材料包")
	AddMenuItem("4级皮","nc_combine o_present028 b","4级单一材料包")
	AddMenuItem("4级肉","nc_combine o_present028 c","4级单一材料包")
	AddMenuItem("4级木","nc_combine o_present028 d","4级单一材料包")
	AddMenuItem("4级矿","nc_combine o_present028 e","4级单一材料包")
	AddMenuItem("4级晶","nc_combine o_present028 f","4级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
