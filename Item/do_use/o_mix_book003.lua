function do_use()
local b=floor(LuaItemStatusNormalCount("o_material_30")/2)
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=b+c+d*3+e*9
if (b>=1) then
	AddMenuItem("@22级肉可合成三叶散("..b..")个","nc_combine o_mix_book003 b","三叶散合成")
	else
	AddMenuItem("2级肉可合成三叶散(0)个","nc_combine o_mix_book003 h","三叶散合成")
end
if (c>=1) then
	AddMenuItem("@23级肉可合成三叶散("..c..")个","nc_combine o_mix_book003 c","三叶散合成")
	else
	AddMenuItem("3级肉可合成三叶散(0)个","nc_combine o_mix_book003 h","三叶散合成")
end
if (d>=1) then
	AddMenuItem("@24级肉可合成三叶散("..(d*3)..")个","nc_combine o_mix_book003 d","三叶散合成")
	else
	AddMenuItem("4级肉可合成三叶散(0)个","nc_combine o_mix_book003 h","三叶散合成")
end
if (e>=1) then
	AddMenuItem("@25级肉可合成三叶散("..(e*9)..")个","nc_combine o_mix_book003 e","三叶散合成")
	else
	AddMenuItem("5级肉可合成三叶散(0)个","nc_combine o_mix_book003 h","三叶散合成")
end
--if (b>=1 or c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2全部肉合成三叶散("..gn..")个","nc_combine o_mix_book003 f","三叶散合成")
--	else
--	AddMenuItem("全部肉合成三叶散(0)个","nc_combine o_mix_book003 h","三叶散合成")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 30
local b=floor(LuaItemStatusNormalCount("o_material_30")/2)
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=b+c+d*3+e*9
coin=LuaItemStatusNormalCount("coin")
if (type=="b")then
	if (b>=1 and coin >= mon) then
	if(LuaGive("o_drug_hp2",1))then
	LuaAddJx("combat_exp",2000,"")
	DelItem("o_material_30",2)
	LuaGive("coin",-mon,"Tmixbook") 
		LuaLogRecord("合成","o_material_30","物品","消耗",2) 
		LuaLogRecord("合成","o_drug_hp2","物品","获得",1) 
		LuaLogRecord("合成","o_drug_hp2","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成三叶散(1)。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(b==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..mon.."。")
		end
	end
end
if (type=="c")then
	if (c>=1 and coin >= mon) then
	if(LuaGive("o_drug_hp2",1))then
	DelItem("o_material_31",1)
	LuaAddJx("combat_exp",2000,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_31","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_hp2","物品","获得",1) 
		LuaLogRecord("合成","o_drug_hp2","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成三叶散(1)。")
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
	if(LuaGive("o_drug_hp2",3))then
	DelItem("o_material_32",1)
	LuaAddJx("combat_exp",6000,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_32","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_hp2","物品","获得",3) 
		LuaLogRecord("合成","o_drug_hp2","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成三叶散(3)。")
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
	if(LuaGive("o_drug_hp2",9))then
	LuaAddJx("combat_exp",18000,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_33","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_hp2","物品","获得",9) 
		LuaLogRecord("合成","o_drug_hp2","铜币","消耗",mon) 
	LuaShowNotify("合成三叶散(9)。")
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
local tt=b+c+d+e
	if (b>=1 or c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_hp2",gn))then
	DelItem("o_material_30",b)
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaAddJx("combat_exp",gn*2000,"")
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("合成","o_material_30","物品","消耗",b) 
		LuaLogRecord("合成","o_material_31","物品","消耗",c) 
		LuaLogRecord("合成","o_material_32","物品","消耗",d) 
		LuaLogRecord("合成","o_material_33","物品","消耗",e) 
		LuaLogRecord("合成","o_drug_hp2","物品","获得",gn) 
		LuaLogRecord("合成","o_drug_hp2","铜币","消耗",mon*tt)
	LuaShowNotify("合成三叶散("..gn..")。")
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