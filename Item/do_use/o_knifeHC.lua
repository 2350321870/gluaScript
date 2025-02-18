function do_use()
local r =LuaRandom(100)
    if(r==0)  then
        if(LuaRandom(20)==0)  then
		R_pz=3      ---------黄金率0.05%
		else
		R_pz=1
		end
	elseif( r>=1 and r<11)  then
	R_pz=2      ---------蓝装率10%
	else
	R_pz=1      ---------绿装率89.95
	end
	
	hc={}
	hc[1]={3,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife004",24}
	hc[2]={5,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife005",30}
	hc[3]={5,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife006",36}
	hc[4]={10,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife007",42}
	hc[5]={10,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife008",48}
	hc[6]={20,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife009",54}
	hc[7]={30,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife010",60}
	hc[8]={30,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife011",66}
	hc[9]={40,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife012",72}
	hc[10]={40,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife013",78}
	hc[11]={50,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife014",84}
	hc[12]={60,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife015",90}
	hc[13]={60,"o_douyu","斗玉",0,"o_longyu","龙玉",1,"e_knife016",96}

	---所需斗玉数量，斗玉id，斗玉。所需龙玉数量，龙玉id，龙玉。产出装备数量，产出装备id，产出装备等级。

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("合成说明","nc_combine o_knifeHC shuoming","匕首合成书【普通】")
		AddMenuItem("合成指南","nc_combine o_knifeHC zhinan","匕首合成书【普通】")
  		local num=1
  		while(num<=13)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7可合成@0]","nc_combine o_knifeHC flag["..num.."]","匕首合成书【普通】")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2需要"..(hc[num][1]).."个"..(hc[num][3]).."，需要"..hc[num][4].."个"..(hc[num][6]).."@0]","nc_combine o_knifeHC flag["..num.."]","匕首合成书【普通】")
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
LuaSay("可以合出20级以上的装备，装备的品质较大概率为绿色，一定概率为蓝色，非常小的概率为黄金！合成时请一定留出足够的包裹空间，不然会造成丢失哦！")
elseif(type=="zhinan")then
LuaSay("只要集齐足够的材料，点击相应的菜单就能合出装备。如果材料不足，可以看到所需的材料种类数目！")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyu")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=13)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"knifeHC")
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
