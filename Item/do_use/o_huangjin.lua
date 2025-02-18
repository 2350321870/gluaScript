function do_use()	
	hc={}
	hc[1]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_falchion161","@5破军刀"}
	hc[2]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_shield161","@5破军守御"}
	hc[3]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_sword161","@5破军剑"}
	hc[4]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_knife161","@5破军刃"}
	hc[5]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_fan161","@5破军扇"}
	hc[6]={4,"o_goldpieces","黄金碎片",5,"o_mission153","金枝",1,"e_book161","@5破军书"}
	hc[7]={2,"o_goldpieces","黄金碎片",3,"o_mission153","金枝",1,"e_head161","@5破军盔"}
	hc[8]={2,"o_goldpieces","黄金碎片",3,"o_mission153","金枝",1,"e_clothes161","@5破军铠"}
	hc[9]={2,"o_goldpieces","黄金碎片",3,"o_mission153","金枝",1,"e_pants161","@5破军胫甲"}
	hc[10]={2,"o_goldpieces","黄金碎片",3,"o_mission153","金枝",1,"e_shoes161","@5破军靴"}
	hc[11]={3,"o_goldpieces","黄金碎片",4,"o_mission153","金枝",1,"e_earring161","@5破军耳环"}
	hc[12]={2,"o_goldpieces","黄金碎片",3,"o_mission153","金枝",1,"e_necklace161","@5破军晶链"}
	---所需高级斗玉数量，高级斗玉id，高级斗玉。所需矿精数量，矿精id，矿精。产出装备数量，产出装备id，产出装备等级。
	local goldpieces=LuaItemStatusNormalCount("o_goldpieces")
	local jz=LuaItemStatusNormalCount("o_mission153")
	if(LuaFreeBag()>=2)then
		AddMenuItem("合成说明","nc_combine o_huangjin shuoming","黄金残页")
		AddMenuItem("合成指南","nc_combine o_huangjin zhinan","黄金残页")
  		local num=1
  		while(num<=12)
  		do
			if(goldpieces>=hc[num][1] and jz>=hc[num][4]) then
				AddMenuItem(""..hc[num][9].."[@7可合成@0]","nc_combine o_huangjin flag["..num.."]","黄金残页")
			else
				AddMenuItem(""..hc[num][9].."[@2需要"..(hc[num][1]).."个"..(hc[num][3]).."，需要"..hc[num][4].."个"..(hc[num][6]).."@0]","nc_combine o_huangjin flag["..num.."]","黄金残页")
			end
			num=num+1
		end
    else
	    LuaSay("包裹空间不足2格！请先清理下包裹！")
    end
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="shuoming")then
LuaSay("@3可以%100合出出黄金宝箱里面的装备，合成时请一定留出足够的包裹空间，不然会造成丢失哦！碎片商城中能够买到！")
elseif(type=="zhinan")then
LuaSay("@3只要集齐足够的材料，点击相应的菜单就能合出装备。如果材料不足，可以看到所需的材料种类数目，请谨慎操作！")
else
local num2=1
local goldpieces=LuaItemStatusNormalCount("o_goldpieces")
local jz=LuaItemStatusNormalCount("o_mission153")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(goldpieces>=hc[num2][1] and jz>=hc[num2][4]) then
			LuaGive(hc[num2][8],hc[num2][7],2,"baiyin")
			DelItem(hc[num2][2],hc[num2][1])
			DelItem(hc[num2][5],hc[num2][4])
			DelItem("o_huangjin",1)
			--do_use()--重开菜单
		else
			LuaShowNotify("材料不足")
		end
	end
	num2=num2+1
end
end
LuaOtherSendMenu()
--return 1
end