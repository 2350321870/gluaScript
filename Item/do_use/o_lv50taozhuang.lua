function do_use()
	local r=LuaRandom(100)
	if(r==0)  then        
	R_pz=3      ---------黄金率1%
	elseif( r>=1 and r<15)  then
	R_pz=2      ---------蓝装率14%
	else
	R_pz=1      ---------绿装率85%
	end
	
	hc={}
	hc[1]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_falchion152","刀"}
	hc[2]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_shield152","盾"}
	hc[3]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_sword152","剑"}
	hc[4]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_knife152","匕首"}
	hc[5]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_pen152","笔扇"}
	hc[6]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_book152","书类"}
	hc[7]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_head152","帽子"}
	hc[8]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_clothes152","衣服"}
	hc[9]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_pants152","裤子"}
	hc[10]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_shoes152","鞋子"}
	hc[11]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_earring152","耳环"}
	hc[12]={2,"o_douyuSP","高级斗玉",40,"o_longyu","龙玉",1,"e_necklace152","项链"}

	---所需高级斗玉数量，高级斗玉id，高级斗玉。所需龙玉数量，龙玉id，龙玉。产出装备数量，产出装备id，产出装备等级。

	

	local dy=LuaItemStatusNormalCount("o_douyuSP")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("合成说明","nc_combine o_lv50taozhuang shuoming","50级幸运套装合成书")
		AddMenuItem("合成指南","nc_combine o_lv50taozhuang zhinan","50级幸运套装合成书")
  		local num=1
  		while(num<=12)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem(""..hc[num][9].."[@7可合成@0]","nc_combine o_lv50taozhuang flag["..num.."]","50级幸运套装合成书")
			else
			AddMenuItem(""..hc[num][9].."[@2需要"..(hc[num][1]).."个"..(hc[num][3]).."，需要"..hc[num][4].."个"..(hc[num][6]).."@0]","nc_combine o_lv50taozhuang flag["..num.."]","50级幸运套装合成书")
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
LuaSay("可以合出50级幸运套装，装备的品质较大概率为绿色，一定概率为蓝色，较小概率为黄金！！合成时请一定留出足够的包裹空间，不然会造成丢失哦！")
elseif(type=="zhinan")then
LuaSay("只要集齐足够的材料，点击相应的菜单就能合出装备。如果材料不足，可以看到所需的材料种类数目！")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyuSP")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"lv50taozhuang")
		DelItem(hc[num2][2],hc[num2][1])
		DelItem(hc[num2][5],hc[num2][4])
      	do_use()--重开菜单
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
