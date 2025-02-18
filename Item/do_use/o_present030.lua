function do_use()
if(LuaFreeBag()<1)then
   LuaShowNotify("请至少保有@21@0格背包空间")
   return 0
   end
	AddMenuItem("5级毛","nc_combine o_present030 a","5级单一材料包")
	AddMenuItem("5级皮","nc_combine o_present030 b","5级单一材料包")
	AddMenuItem("5级肉","nc_combine o_present030 c","5级单一材料包")
	AddMenuItem("5级木","nc_combine o_present030 d","5级单一材料包")
	AddMenuItem("5级矿","nc_combine o_present030 e","5级单一材料包")
	AddMenuItem("5级晶","nc_combine o_present030 f","5级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end
