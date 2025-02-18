function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	AddMenuItem("7级毛","nc_combine o_present046 a","7级单一材料包")
	AddMenuItem("7级皮","nc_combine o_present046 b","7级单一材料包")
	AddMenuItem("7级肉","nc_combine o_present046 c","7级单一材料包")
	AddMenuItem("7级木","nc_combine o_present046 d","7级单一材料包")
	AddMenuItem("7级矿","nc_combine o_present046 e","7级单一材料包")
	AddMenuItem("7级晶","nc_combine o_present046 f","7级单一材料包")

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
LuaSay("请自行清理背包空间,保证1个以上的空位再打开,否则造成的丢失自行负责")
end
LuaOtherSendMenu()
--return 1
end

