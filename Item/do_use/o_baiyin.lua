function do_use()	
	hc={}
	hc[1]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_falchion154","@5七煞斩"}
	hc[2]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_shield154","@5七煞守护"}
	hc[3]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_sword154","@5七煞剑"}
	hc[4]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_knife154","@5七煞刃"}
	hc[5]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_pen154","@5七煞笔"}
	hc[6]={3,"o_silverpieces","白银碎片",5,"o_mission145","矿精",1,"e_book154","@5七煞书"}
	hc[7]={2,"o_silverpieces","白银碎片",3,"o_mission145","矿精",1,"e_head154","@5七煞冠"}
	hc[8]={2,"o_silverpieces","白银碎片",3,"o_mission145","矿精",1,"e_clothes154","@5七煞袍"}
	hc[9]={2,"o_silverpieces","白银碎片",3,"o_mission145","矿精",1,"e_pants154","@5七煞胫甲"}
	hc[10]={2,"o_silverpieces","白银碎片",3,"o_mission145","矿精",1,"e_shoes154","@5七煞靴"}
	hc[11]={2,"o_silverpieces","白银碎片",4,"o_mission145","矿精",1,"e_earring154","@5七煞耳坠"}
	hc[12]={2,"o_silverpieces","白银碎片",3,"o_mission145","矿精",1,"e_necklace154","@5七煞项链"}
	---所需高级斗玉数量，高级斗玉id，高级斗玉。所需矿精数量，矿精id，矿精。产出装备数量，产出装备id，产出装备等级。
	local silverpieces=LuaItemStatusNormalCount("o_silverpieces")
	local kj=LuaItemStatusNormalCount("o_mission145")
	if(LuaFreeBag()>=2)then
		AddMenuItem("合成说明","nc_combine o_baiyin shuoming","白银残页")
		AddMenuItem("合成指南","nc_combine o_baiyin zhinan","白银残页")
  		local num=1
  		while(num<=12)
  		do
			if(silverpieces>=hc[num][1] and kj>=hc[num][4]) then
				AddMenuItem(""..hc[num][9].."[@7可合成@0]","nc_combine o_baiyin flag["..num.."]","白银残页")
			else
				AddMenuItem(""..hc[num][9].."[@2需要"..(hc[num][1]).."个"..(hc[num][3]).."，需要"..hc[num][4].."个"..(hc[num][6]).."@0]","nc_combine o_baiyin flag["..num.."]","白银残页")
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
LuaSay("可以%100合出出白银宝箱里面的装备，合成时请一定留出足够的包裹空间，不然会造成丢失哦！碎片商城中能够买到！")
elseif(type=="zhinan")then
LuaSay("只要集齐足够的材料，点击相应的菜单就能合出装备。如果材料不足，可以看到所需的材料种类数目,请谨慎操作！")
else
local num2=1
local silverpieces=LuaItemStatusNormalCount("o_silverpieces")
local kj=LuaItemStatusNormalCount("o_mission145")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(silverpieces>=hc[num2][1] and kj>=hc[num2][4]) then
			LuaGive(hc[num2][8],hc[num2][7],2,"baiyin")
			DelItem(hc[num2][2],hc[num2][1])
			DelItem(hc[num2][5],hc[num2][4])
			DelItem("o_baiyin",1)
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
