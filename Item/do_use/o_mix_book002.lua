function do_use()
local a=floor(LuaItemStatusNormalCount("o_material_29")/2)
local b=floor(LuaItemStatusNormalCount("o_material_30"))
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=a+b+c*3+d*9+e*20
if (a>=1) then
	AddMenuItem("@21级肉可合成回春露("..a..")个","nc_combine o_mix_book002 a","回春露合成")
	else
	AddMenuItem("1级肉可合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
end
if (b>=1) then
	AddMenuItem("@22级肉可合成回春露("..b..")个","nc_combine o_mix_book002 b","回春露合成")
	else
	AddMenuItem("2级肉可合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
end
if (c>=1) then
	AddMenuItem("@23级肉可合成回春露("..(c*3)..")个","nc_combine o_mix_book002 c","回春露合成")
	else
	AddMenuItem("3级肉可合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
end
if (d>=1) then
	AddMenuItem("@24级肉可合成回春露("..(d*9)..")个","nc_combine o_mix_book002 d","回春露合成")
	else
	AddMenuItem("4级肉可合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
end
if (e>=1) then
	AddMenuItem("@25级肉可合成回春露("..(e*20)..")个","nc_combine o_mix_book002 e","回春露合成")
	else
	AddMenuItem("5级肉可合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
end
--if (a>=1 or b>=1 or c>=1 or d>=1 or e>=1) then
--	AddMenuItem("@2全部肉合成回春露("..gn..")个","nc_combine o_mix_book002 f","回春露合成")
--	else
--	AddMenuItem("全部肉合成回春露(0)个","nc_combine o_mix_book002 h","回春露合成")
--end
LuaOtherSendMenu()
return 0 
end
function nc_combine(type)
local mon = 10
local a=floor(LuaItemStatusNormalCount("o_material_29")/2)
local b=floor(LuaItemStatusNormalCount("o_material_30"))
local c=floor(LuaItemStatusNormalCount("o_material_31"))
local d=floor(LuaItemStatusNormalCount("o_material_32"))
local e=floor(LuaItemStatusNormalCount("o_material_33"))
local gn=a+b+c*3+d*9+e*20
coin=LuaItemStatusNormalCount("coin")
if (type=="a")then
	if (a>=1 and coin >= mon) then
	if(LuaGive("o_drug_mp1",1))then
	LuaAddJx("combat_exp",500,"")
	DelItem("o_material_29",2)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_29","物品","消耗",2) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",1) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成回春露(1)。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(a==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..mon.."。")
		end
	end
end
if (type=="b")then
	if (b>=1 and coin >= mon) then
	if(LuaGive("o_drug_mp1",1))then
	LuaAddJx("combat_exp",500,"")
	DelItem("o_material_30",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_30","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",1) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成回春露(1)。")
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
	if(LuaGive("o_drug_mp1",3))then
	DelItem("o_material_31",1)
	LuaAddJx("combat_exp",1500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_31","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",3) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成回春露(3)。")
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
	if(LuaGive("o_drug_mp1",9))then
	DelItem("o_material_32",1)
	LuaAddJx("combat_exp",4500,"")
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_32","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",6) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成回春露(9)。")
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
	if(LuaGive("o_drug_mp1",20))then
	LuaAddJx("combat_exp",10000,"")
	DelItem("o_material_33",1)
	LuaGive("coin",-mon,"Tmixbook")
		LuaLogRecord("合成","o_material_29","物品","消耗",1) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",20) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon) 
	do_use()--LuaShowNotify("合成回春露(20)。")
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
local tt=a+b+c+d+e
	if (a>=1 or b>=1 or c>=1 or d>=1 or e>=1 and coin >= mon*tt) then
	if(LuaGive("o_drug_mp1",gn))then
	DelItem("o_material_29",a*2)
	DelItem("o_material_30",b)
	DelItem("o_material_31",c)
	DelItem("o_material_32",d)
	DelItem("o_material_33",e)
	LuaAddJx("combat_exp",gn*500,"")
	LuaGive("coin",-mon*tt,"Tmixbook")
		LuaLogRecord("合成","o_material_29","物品","消耗",a*2) 
		LuaLogRecord("合成","o_material_30","物品","消耗",b) 
		LuaLogRecord("合成","o_material_31","物品","消耗",c) 
		LuaLogRecord("合成","o_material_32","物品","消耗",d) 
		LuaLogRecord("合成","o_material_33","物品","消耗",e) 
		LuaLogRecord("合成","o_drug_mp1","物品","获得",gn) 
		LuaLogRecord("合成","o_drug_mp1","铜币","消耗",mon*tt) 
	LuaShowNotify("合成回春露("..gn..")。")
	return 0
	else
	LuaShowNotify("合成失败，请检查背包空间！")
	end
		else
		if(a==0) then
		LuaShowNotify("您的材料(肉)不足合成之需")
		else
		LuaShowNotify("铜钱不足"..(mon*tt).."。")
		end
	end
elseif(type=="h")then
	LuaShowNotify("您的材料(肉)不足合成之需")
	end
end