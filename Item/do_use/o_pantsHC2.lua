function do_use()
local r =LuaRandom(100)
	if(r==0)  then        
	R_pz=3      ---------黄金率1%
	elseif( r>=1 and r<15)  then
	R_pz=2      ---------蓝装率14%
	else
	R_pz=1      ---------绿装率85%
	end
	
	hc={}
	hc[1]={3,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants008",22}
	hc[2]={3,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants009",25}
	hc[3]={3,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants010",28}
	hc[4]={5,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants011",31}
	hc[5]={5,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants012",34}
	hc[6]={5,"o_douyu","斗玉",1,"o_longyu","龙玉",1,"e_pants013",37}
	hc[7]={10,"o_douyu","斗玉",3,"o_longyu","龙玉",1,"e_pants014",40}
	hc[8]={10,"o_douyu","斗玉",3,"o_longyu","龙玉",1,"e_pants015",43}
	hc[9]={10,"o_douyu","斗玉",3,"o_longyu","龙玉",1,"e_pants016",46}
	hc[10]={10,"o_douyu","斗玉",3,"o_longyu","龙玉",1,"e_pants017",49}
	hc[11]={20,"o_douyu","斗玉",5,"o_longyu","龙玉",1,"e_pants018",52}
	hc[12]={20,"o_douyu","斗玉",5,"o_longyu","龙玉",1,"e_pants019",55}
	hc[13]={20,"o_douyu","斗玉",5,"o_longyu","龙玉",1,"e_pants020",58}
	hc[14]={30,"o_douyu","斗玉",7,"o_longyu","龙玉",1,"e_pants021",61}
	hc[15]={30,"o_douyu","斗玉",7,"o_longyu","龙玉",1,"e_pants022",64}
	hc[16]={30,"o_douyu","斗玉",7,"o_longyu","龙玉",1,"e_pants023",67}
	hc[17]={40,"o_douyu","斗玉",10,"o_longyu","龙玉",1,"e_pants024",70}
	hc[18]={40,"o_douyu","斗玉",10,"o_longyu","龙玉",1,"e_pants025",73}
	hc[19]={40,"o_douyu","斗玉",10,"o_longyu","龙玉",1,"e_pants026",76}
	hc[20]={40,"o_douyu","斗玉",10,"o_longyu","龙玉",1,"e_pants027",79}
	hc[21]={50,"o_douyu","斗玉",15,"o_longyu","龙玉",1,"e_pants028",82}
	hc[22]={50,"o_douyu","斗玉",15,"o_longyu","龙玉",1,"e_pants029",85}
	hc[23]={50,"o_douyu","斗玉",15,"o_longyu","龙玉",1,"e_pants030",88}
	hc[24]={60,"o_douyu","斗玉",20,"o_longyu","龙玉",1,"e_pants031",91}
	hc[25]={60,"o_douyu","斗玉",20,"o_longyu","龙玉",1,"e_pants032",94}
	---所需斗玉数量，斗玉id，斗玉。所需龙玉数量，龙玉id，龙玉。产出装备数量，产出装备id，产出装备等级。

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("合成说明","nc_combine o_pantsHC2 shuoming","裤子合成书【高级】")
		AddMenuItem("合成指南","nc_combine o_pantsHC2 zhinan","裤子合成书【高级】")
  		local num=1
  		while(num<=25)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7可合成@0]","nc_combine o_pantsHC2 flag["..num.."]","裤子合成书【高级】")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2需要"..(hc[num][1]).."个"..(hc[num][3]).."，需要"..hc[num][4].."个"..(hc[num][6]).."@0]","nc_combine o_pantsHC2 flag["..num.."]","裤子合成书【高级】")
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
LuaSay("可以合出20级以上的装备，装备的品质较大概率为绿色，一定概率为蓝色，较小概率为黄金！！合成时请一定留出足够的包裹空间，不然会造成丢失哦！")
elseif(type=="zhinan")then
LuaSay("只要集齐足够的材料，点击相应的菜单就能合出装备。如果材料不足，可以看到所需的材料种类数目！")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyu")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=25)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"pantsHC2")
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
