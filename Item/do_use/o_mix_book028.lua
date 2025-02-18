function do_use()--9级材料合成书
LuaSay("@29级材料@9等于@28级材料16个@9加@380铜币@9,一次最多合成20个")
AddMenuItem("@7单个合成","nc_combine o_mix_book028 i","9级材料合成")
AddMenuItem("@2多个合成","nc_combine o_mix_book028 j","9级材料合成")
LuaOtherSendMenu()
return 0 
end
--==================================================================
function nc_combine(type)
	if(LuaFreeBag()<1 and type=="i")then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end--单个合成至少需1个空位
	if(LuaFreeBag()<2 and type=="j")then	LuaShowNotify("请至少保有@22@0格背包空间")	return 0 end--多个合成至少需2个空位
-----------------
local smtlv=8--源材料级别
local mon=80--合成耗铜
local coin=LuaItemStatusNormalCount("coin")
local a=floor(LuaItemStatusNormalCount("o_material_18")/16)
local b=floor(LuaItemStatusNormalCount("o_material_27")/16)
local c=floor(LuaItemStatusNormalCount("o_material_36")/16)
local d=floor(LuaItemStatusNormalCount("o_material_45")/16)
local e=floor(LuaItemStatusNormalCount("o_material_54")/16)
local f=floor(LuaItemStatusNormalCount("o_material_63")/16)
------------------
if(type=="i")then
	if (a >= 1) then
		AddMenuItem("@7合成9级毛1个@9-[可合成"..a.."]","nc_combine o_mix_book028 a","9级材料合成")
		else
		AddMenuItem("合成9级毛@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (b >= 1) then
		AddMenuItem("@7合成9级皮1个@9-[可合成"..b.."]","nc_combine o_mix_book028 b","9级材料合成")
		else
		AddMenuItem("合成9级皮@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (c >= 1) then
		AddMenuItem("@7合成9级肉1个@9-[可合成"..c.."]","nc_combine o_mix_book028 c","9级材料合成")
		else
		AddMenuItem("合成9级肉@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (d >= 1) then
		AddMenuItem("@7合成9级木1个@9-[可合成"..d.."]","nc_combine o_mix_book028 d","9级材料合成")
		else
		AddMenuItem("合成9级木@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (e >= 1) then
		AddMenuItem("@7合成9级矿1个@9-[可合成"..e.."]","nc_combine o_mix_book028 e","9级材料合成")
		else
		AddMenuItem("合成9级矿@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (f >= 1) then
		AddMenuItem("@7合成9级晶1个@9-[可合成"..f.."]","nc_combine o_mix_book028 f","9级材料合成")
		else
		AddMenuItem("合成9级晶@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	LuaOtherSendMenu()
	return 0 
elseif(type=="j")then
	if (a >= 1) then
		if(a>20)then
		AddMenuItem("@2合成9级毛20个@9-[可合成"..a.."]","nc_combine o_mix_book028 o","9级材料合成")
		else
		AddMenuItem("@2合成9级毛"..a.."个@9-[可合成"..a.."]","nc_combine o_mix_book028 o","9级材料合成")
		end
		else
		AddMenuItem("合成9级毛@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (b >= 1) then
		if(b>20)then
		AddMenuItem("@2合成9级皮20个@9-[可合成"..b.."]","nc_combine o_mix_book028 p","9级材料合成")
		else
		AddMenuItem("@2合成9级皮"..b.."个@9-[可合成"..b.."]","nc_combine o_mix_book028 p","9级材料合成")
		end
		else
		AddMenuItem("合成9级皮@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (c >= 1) then
		if(c>20)then
		AddMenuItem("@2合成9级肉20个@9-[可合成"..c.."]","nc_combine o_mix_book028 q","9级材料合成")
		else
		AddMenuItem("@2合成9级肉"..c.."个@9-[可合成"..c.."]","nc_combine o_mix_book028 q","9级材料合成")
		end
		else
		AddMenuItem("合成9级肉@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (d >= 1) then
		if(d>20)then
		AddMenuItem("@2合成9级木20个@9-[可合成"..d.."]","nc_combine o_mix_book028 r","9级材料合成")
		else
		AddMenuItem("@2合成9级木"..d.."个@9-[可合成"..d.."]","nc_combine o_mix_book028 r","9级材料合成")
		end
		else
		AddMenuItem("合成9级木@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (e >= 1) then
		if(e>20)then
		AddMenuItem("@2合成9级矿20个@9-[可合成"..e.."]","nc_combine o_mix_book028 s","9级材料合成")
		else
		AddMenuItem("@2合成9级矿"..e.."个@9-[可合成"..e.."]","nc_combine o_mix_book028 s","9级材料合成")
		end
		else
		AddMenuItem("合成9级矿@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	if (f >= 1) then
		if(f>20)then
		AddMenuItem("@2合成9级晶20个@9-[可合成"..f.."]","nc_combine o_mix_book028 t","9级材料合成")
		else
		AddMenuItem("@2合成9级晶"..f.."个@9-[可合成"..f.."]","nc_combine o_mix_book028 t","9级材料合成")
		end
		else
		AddMenuItem("合成9级晶@9-[材料不足]","nc_combine o_mix_book028 h","9级材料合成")
		end
	LuaOtherSendMenu()
	return 0
elseif(type=="h")then
	LuaShowNotify("材料不足18个")
else----------------------------------
	if    (type=="a")then mt=0 am=1 tp="i"
	elseif(type=="b")then mt=1 am=1 tp="i"
	elseif(type=="c")then mt=2 am=1 tp="i"
	elseif(type=="d")then mt=3 am=1 tp="i"
	elseif(type=="e")then mt=4 am=1 tp="i"
	elseif(type=="f")then mt=5 am=1 tp="i"
	elseif(type=="o")then mt=0 am=20 tp="j"
	elseif(type=="p")then mt=1 am=20 tp="j"
	elseif(type=="q")then mt=2 am=20 tp="j"
	elseif(type=="r")then mt=3 am=20 tp="j"
	elseif(type=="s")then mt=4 am=20 tp="j"
	elseif(type=="t")then mt=5 am=20 tp="j"
	else	return 0
	end
	-----------
	local canmixnum=floor(LuaItemStatusNormalCount("o_material_"..(smtlv+10+9*mt).."")/16)--最多合成
	if(canmixnum<am)then	am=canmixnum	end--选每20个合成的,不足20，能合多少合多少
	if(am>=1)then
		if(coin>=mon*am)then
			DelItem("o_material_"..(smtlv+10+9*mt).."",16*am)--消源
			LuaGive("o_material_"..(smtlv+11+9*mt).."",am)--产品
			LuaGive("coin",-mon*am,"Tmixbook")--铜耗
			LuaLogRecord("合成","o_material_"..(smtlv+10+9*mt).."","物品","消耗",16*am) 
			LuaLogRecord("合成","o_material_"..(smtlv+11+9*mt).."","物品","获得",am) 
			LuaLogRecord("合成","o_material_"..(smtlv+11+9*mt).."","铜币","消耗",mon*am)
			LuaShowNotify("合成成功")
			nc_combine(tp)--重开菜单，单合开单，复合开复
			return 0
		else
		LuaShowNotify("铜钱不足"..mon*am.."。")
		end
	else	LuaShowNotify("材料不足")
	end
end
--------------
return 0
end--endfunction
