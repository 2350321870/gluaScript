function do_use()
local c=floor(LuaItemStatusNormalCount("o_material_31")/2)
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=c+d+e*3
if (c>=1) then
	AddMenuItem("@23级肉可合成小还丹("..c..")个","nc_combine o_mix_book005 c","小还丹合成")
	else
	AddMenuItem("3级肉可合成小还丹(0)个","nc_combine o_mix_book005 h","小还丹合成")
end
if (d>=1) then
	AddMenuItem("@24级肉可合成小还丹("..(d*3)..")个","nc_combine o_mix_book005 d","小还丹合成")
	else
	AddMenuItem("4级肉可合成小还丹(0)个","nc_combine o_mix_book005 h","小还丹合成")
end
if (e>=1) then
	AddMenuItem("@25级肉可合成小还丹("..(e*9)..")个","nc_combine o_mix_book005 e","小还丹合成")
	else
	AddMenuItem("5级肉可合成小还丹(0)个","nc_combine o_mix_book005 h","小还丹合成")
end
--if (c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2全部肉合成小还丹("..gn..")个","nc_combine o_mix_book005 f","小还丹合成")
--	else
--	AddMenuItem("全部肉合成小还丹(0)个","nc_combine o_mix_book005 h","小还丹合成")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 45
local c=floor(LuaItemStatusNormalCount("o_material_31")/2)
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=c+d+e*3
coin=LuaItemStatusNormalCount("coin")
if (type=="c")then
	if (c>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",1))then
	DelItem("o_material_31",2)
	LuaAddJx("combat_exp",4500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_31","物品","消耗",2) 
		LuaLogRecord("合成","o_drug_mhp1","物品","获得",1) 
		LuaLogRecord("合成","o_drug_mhp1","铜币","消耗",mon) 
	LuaShowNotify("合成小还丹(1)。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(c==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..mon.."。")
		end
	end
end
if (type=="d")then
	if (d>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",1))then
	LuaAddJx("combat_exp",4500,"")
	DelItem("o_material_32",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_32","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mhp1","物品","获得",1) 
		LuaLogRecord("合成","o_drug_mhp1","铜币","消耗",mon) 
	LuaShowNotify("合成小还丹(1)。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(d==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..mon.."。")
		end
	end
end
if (type=="e")then
	if (e>=1 and coin >= mon) then
	if(LuaGive("o_drug_mhp1",3))then
	LuaAddJx("combat_exp",13500,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_33","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mhp1","物品","获得",3) 
		LuaLogRecord("合成","o_drug_mhp1","铜币","消耗",mon) 
	LuaShowNotify("合成小还丹(3)。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(e==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..mon.."。")
		end
	end
end
if (type=="f")then
local tt=c+d+e
	if (c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_mhp1",gn))then
	LuaAddJx("combat_exp",gn*4500,"")
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("合成","o_material_31","物品","消耗",c) 
		LuaLogRecord("合成","o_material_32","物品","消耗",d) 
		LuaLogRecord("合成","o_material_33","物品","消耗",e) 
		LuaLogRecord("合成","o_drug_mhp1","物品","获得",gn) 
		LuaLogRecord("合成","o_drug_mhp1","铜币","消耗",mon*tt) 
	LuaShowNotify("合成小还丹("..gn..")。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(f==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..(mon*tt).."。")
		end
	end
elseif(type=="h")then
	LuaShowNotify("您的材料(肉)不足合成之需")
	end
end