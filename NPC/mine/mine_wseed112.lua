NPCINFO = {
name="杂货堆",
butt="0|0|24",
isboss = 2, 
serial= "983",
icon= 10001,
NpcMove= 10001, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
    local level=LuaQuery("level")
  	if(LuaQueryStr("class")=="shen") then      --战士
   		cl=1
	elseif(LuaQueryStr("class")=="wu") then       --侠客
   		cl=2
	elseif(LuaQueryStr("class")=="xian") then       --谋士
		cl=3
	end
	    YB_item={}
		YB_item[1]={"o_drug_hp3","一组红",20,20,"运气一般"}
		YB_item[2]={"o_drug_mp3","一组蓝",20,40,"运气一般"}
		YB_item[3]={Lv4cailiao(1),"一个4级材料",1,50,"运气不错"}
		YB_item[4]={Lv5cailiao(1),"一个5级材料",1,51,"人品爆发"}
		YB_item[5]={zhuangbei(level,cl),"装备",1,81,"运气还可以"}
		YB_item[6]={"o_cangbaotu","藏宝图",1,100,"运气一般"}

  local r=LuaRandom(100)
  if(r<20) then
  num=1
  elseif(r>=20 and r<40) then
  num=2
  elseif(r>=40 and r<55) then
  num=3
  elseif(r>=50 and r<51) then
  num=4
  elseif(r>=51 and r<81) then
  num=5
  elseif(r>=81 and r<100) then
  num=6
  end
  
  	if(LuaRandom(100)==0)  then
	R_pz=3      ---------黄金率1%
	elseif( LuaRandom(100)>=1 and LuaRandom(100)<11)  then
	R_pz=2      ---------蓝装率10%
	else
	R_pz=1      ---------绿装率89%
	end
if(LuaQueryTask("FBTG")==10 and LuaQueryTask("FBTGJL")==10)then
    LuaSay(""..(YB_item[num][5]).."")
    if(num~=5)then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",11)
elseif(LuaQueryTask("FBTG")==11)then
 	LuaSay(""..(YB_item[num][5]).."")
    if(num~=5)  then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",12)
elseif(LuaQueryTask("FBTG")==12)then
 	LuaSay(""..(YB_item[num][5]).."")
    if(num~=5) then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",13)
elseif(LuaQueryTask("FBTG")==13)then
 	LuaSay(""..(YB_item[num][5]).."")
    if(num~=5)  then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",14)
	LuaSay("你已经挖@34次@0了！还能再挖@32次@0了！挖满@36次@0后再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==14)then
 	LuaSay(""..(YB_item[num][5]).."")
    if(num~=5)   then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",15)
elseif(LuaQueryTask("FBTG")==15)then
 	LuaSay(""..(YB_item[num][5]).."")
    if(num~=5)  then
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL3")
    else
    LuaGive(YB_item[num][1],YB_item[num][3],R_pz,"FBTGJL3")
    end
	LuaSetTask("FBTG",99)
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==99)then
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
	ChangeMap("lu_jkc")
end


LuaOtherSendMenu()
return 1
end

function Lv4cailiao(free)
	    cailiao={}
		cailiao[1]={"o_material_14"}
		cailiao[2]={"o_material_23"}
		cailiao[3]={"o_material_32"}
		cailiao[4]={"o_material_41"}
		cailiao[5]={"o_material_50"}
		cailiao[6]={"o_material_59"}
		
		local r=LuaRandom(6) +1
	    return cailiao[r][1]
end
function Lv5cailiao(free)
	    cailiao={}
		cailiao[1]={"o_material_15"}
		cailiao[2]={"o_material_24"}
		cailiao[3]={"o_material_33"}
		cailiao[4]={"o_material_42"}
		cailiao[5]={"o_material_51"}
		cailiao[6]={"o_material_60"}

		local r=LuaRandom(6) +1
	    return cailiao[r][1]
end
function zhuangbei(level,cl)

    local r=LuaRandom(8)
    if(r==0)then   -----------主武器
        if(cl==1)then
        	ZB={}
			ZB[1]={"e_falchion005",1,20}
			ZB[2]={"e_falchion006",1,23}
			ZB[3]={"e_falchion007",1,26}
			ZB[4]={"e_falchion008",1,29}
			ZB[5]={"e_falchion009",1,32}
			ZB[6]={"e_falchion010",1,35}
			ZB[7]={"e_falchion011",1,38}
			ZB[8]={"e_falchion012",1,41}
			ZB[9]={"e_falchion013",1,44}
			ZB[10]={"e_falchion014",1,47}
			ZB[11]={"e_falchion015",1,50}
			ZB[12]={"e_falchion016",1,53}
			ZB[13]={"e_falchion017",1,56}
			ZB[14]={"e_falchion018",1,59}
			ZB[15]={"e_falchion019",1,62}
			ZB[16]={"e_falchion020",1,65}
			ZB[17]={"e_falchion021",1,68}
			ZB[18]={"e_falchion022",1,71}
			ZB[19]={"e_falchion023",1,74}
			ZB[20]={"e_falchion024",1,77}
			ZB[21]={"e_falchion025",1,80}
			ZB[22]={"e_falchion026",1,82}
			ZB[23]={"e_falchion027",1,84}
			ZB[24]={"e_falchion028",1,86}
			ZB[25]={"e_falchion029",1,88}
			ZB[26]={"e_falchion030",1,90}
			ZB[27]={"e_falchion031",1,94}
			ZB[28]={"e_falchion032",1,98}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>28)then
			num=28
			end
			return ZB[num][1]
        elseif(cl==2)then
            ZB={}
			ZB[1]={"e_sword007",1,21}
			ZB[2]={"e_sword008",1,24}
			ZB[3]={"e_sword009",1,26}
			ZB[4]={"e_sword010",1,30}
			ZB[5]={"e_sword011",1,33}
			ZB[6]={"e_sword012",1,36}
			ZB[7]={"e_sword013",1,39}
			ZB[8]={"e_sword014",1,42}
			ZB[9]={"e_sword015",1,45}
			ZB[10]={"e_sword016",1,48}
			ZB[11]={"e_sword017",1,51}
			ZB[12]={"e_sword018",1,54}
			ZB[13]={"e_sword019",1,57}
			ZB[14]={"e_sword020",1,60}
			ZB[15]={"e_sword021",1,63}
			ZB[16]={"e_sword022",1,66}
			ZB[17]={"e_sword023",1,69}
			ZB[18]={"e_sword024",1,72}
			ZB[19]={"e_sword025",1,75}
			ZB[20]={"e_sword026",1,78}
			ZB[21]={"e_sword027",1,81}
			ZB[22]={"e_sword028",1,84}
			ZB[23]={"e_sword029",1,87}
			ZB[24]={"e_sword030",1,90}
			ZB[25]={"e_sword031",1,93}
			ZB[26]={"e_sword032",1,96}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>26)then
			num=26
			end
			return ZB[num][1]
        elseif(cl==3)then
            ZB={}
			ZB[1]={"e_fan003",1,20}
			ZB[2]={"e_pen004",1,23}
			ZB[3]={"e_fan004",1,26}
			ZB[4]={"e_pen005",1,29}
			ZB[5]={"e_fan005",1,32}
			ZB[6]={"e_pen006",1,35}
			ZB[7]={"e_fan006",1,38}
			ZB[8]={"e_pen007",1,41}
			ZB[9]={"e_fan007",1,44}
			ZB[10]={"e_pen008",1,47}
			ZB[11]={"e_fan008",1,50}
			ZB[12]={"e_pen009",1,53}
			ZB[13]={"e_fan009",1,56}
			ZB[14]={"e_pen010",1,59}
			ZB[15]={"e_fan010",1,62}
			ZB[16]={"e_pen011",1,65}
			ZB[17]={"e_fan011",1,68}
			ZB[18]={"e_pen012",1,71}
			ZB[19]={"e_fan012",1,74}
			ZB[20]={"e_pen013",1,77}
			ZB[21]={"e_fan013",1,80}
			ZB[22]={"e_pen014",1,83}
			ZB[23]={"e_fan014",1,86}
			ZB[24]={"e_pen015",1,89}
			ZB[25]={"e_fan015",1,92}
			ZB[26]={"e_pen016",1,95}
			ZB[27]={"e_fan016",1,98}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>27)then
			num=27
			end
			return ZB[num][1]
        end
    elseif(r==1)then  ---------副武器
        if(cl==1)then
            ZB={}
            ZB[1]={"e_shield003",1,21}
			ZB[2]={"e_shield004",1,27}
			ZB[3]={"e_shield005",1,33}
			ZB[4]={"e_shield006",1,39}
			ZB[5]={"e_shield007",1,45}
			ZB[6]={"e_shield008",1,51}
			ZB[7]={"e_shield009",1,57}
			ZB[8]={"e_shield010",1,63}
			ZB[9]={"e_shield011",1,69}
			ZB[10]={"e_shield012",1,75}
			ZB[11]={"e_shield013",1,80}
			ZB[12]={"e_shield014",1,85}
			ZB[13]={"e_shield015",1,90}
			ZB[14]={"e_shield016",1,96}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>14)then
			num=14
			end
			return ZB[num][1]
        elseif(cl==2)then
            ZB={}
			ZB[1]={"e_knife003",1,24}
			ZB[2]={"e_knife004",1,30}
			ZB[3]={"e_knife005",1,36}
			ZB[4]={"e_knife006",1,42}
			ZB[5]={"e_knife007",1,48}
			ZB[6]={"e_knife008",1,54}
			ZB[7]={"e_knife009",1,60}
			ZB[8]={"e_knife010",1,66}
			ZB[9]={"e_knife011",1,72}
			ZB[10]={"e_knife012",1,78}
			ZB[11]={"e_knife013",1,84}
			ZB[12]={"e_knife014",1,90}
			ZB[13]={"e_knife015",1,96}

			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>13)then
			num=13
			end
			return ZB[num][1]
        elseif(cl==3)then
            ZB={}
            ZB[1]={"e_book003",1,21}
			ZB[2]={"e_book004",1,27}
			ZB[3]={"e_book005",1,33}
			ZB[4]={"e_book006",1,39}
			ZB[5]={"e_book007",1,45}
			ZB[6]={"e_book008",1,51}
			ZB[7]={"e_book009",1,57}
			ZB[8]={"e_book010",1,63}
			ZB[9]={"e_book011",1,69}
			ZB[10]={"e_book012",1,75}
			ZB[11]={"e_book013",1,80}
			ZB[12]={"e_book014",1,85}
			ZB[13]={"e_book015",1,90}
			ZB[14]={"e_book016",1,96}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>14)then
			num=14
			end
			return ZB[num][1]
        end
    elseif(r==2)then  -----------衣服
            ZB={}
			ZB[1]={"e_clothes008",1,22}
			ZB[2]={"e_clothes009",1,25}
			ZB[3]={"e_clothes010",1,28}
			ZB[4]={"e_clothes011",1,31}
			ZB[5]={"e_clothes012",1,34}
			ZB[6]={"e_clothes013",1,37}
			ZB[7]={"e_clothes014",1,40}
			ZB[8]={"e_clothes015",1,43}
			ZB[9]={"e_clothes016",1,46}
			ZB[10]={"e_clothes017",1,49}
			ZB[11]={"e_clothes018",1,52}
			ZB[12]={"e_clothes019",1,55}
			ZB[13]={"e_clothes020",1,58}
			ZB[14]={"e_clothes021",1,61}
			ZB[15]={"e_clothes022",1,64}
			ZB[16]={"e_clothes023",1,67}
			ZB[17]={"e_clothes024",1,70}
			ZB[18]={"e_clothes025",1,73}
			ZB[19]={"e_clothes026",1,76}
			ZB[20]={"e_clothes027",1,79}
			ZB[21]={"e_clothes028",1,82}
			ZB[22]={"e_clothes029",1,85}
			ZB[23]={"e_clothes030",1,88}
			ZB[24]={"e_clothes031",1,91}
			ZB[25]={"e_clothes032",1,94}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>25)then
			num=25
			end
			return ZB[num][1]
    elseif(r==3)then   ----裤子
            ZB={}
			ZB[1]={"e_pants008",1,22}
			ZB[2]={"e_pants009",1,25}
			ZB[3]={"e_pants010",1,28}
			ZB[4]={"e_pants011",1,31}
			ZB[5]={"e_pants012",1,34}
			ZB[6]={"e_pants013",1,37}
			ZB[7]={"e_pants014",1,40}
			ZB[8]={"e_pants015",1,43}
			ZB[9]={"e_pants016",1,46}
			ZB[10]={"e_pants017",1,49}
			ZB[11]={"e_pants018",1,52}
			ZB[12]={"e_pants019",1,55}
			ZB[13]={"e_pants020",1,58}
			ZB[14]={"e_pants021",1,61}
			ZB[15]={"e_pants022",1,64}
			ZB[16]={"e_pants023",1,67}
			ZB[17]={"e_pants024",1,70}
			ZB[18]={"e_pants025",1,73}
			ZB[19]={"e_pants026",1,76}
			ZB[20]={"e_pants027",1,79}
			ZB[21]={"e_pants028",1,82}
			ZB[22]={"e_pants029",1,85}
			ZB[23]={"e_pants030",1,88}
			ZB[24]={"e_pants031",1,91}
			ZB[25]={"e_pants032",1,94}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>25)then
			num=25
			end
			return ZB[num][1]
    elseif(r==4)then  -----鞋子
            ZB={}
			ZB[1]={"e_shoes005",1,25}
			ZB[2]={"e_shoes006",1,31}
			ZB[3]={"e_shoes007",1,37}
			ZB[4]={"e_shoes008",1,43}
			ZB[5]={"e_shoes009",1,49}
			ZB[6]={"e_shoes010",1,55}
			ZB[7]={"e_shoes011",1,61}
			ZB[8]={"e_shoes012",1,67}
			ZB[9]={"e_shoes013",1,73}
			ZB[10]={"e_shoes014",1,80}
			ZB[11]={"e_shoes015",1,85}
			ZB[12]={"e_shoes016",1,91}

			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>12)then
			num=12
			end
			return ZB[num][1]
    elseif(r==5)then    ---帽子
            ZB={}
			ZB[1]={"e_head008",1,22}
			ZB[2]={"e_head009",1,25}
			ZB[3]={"e_head010",1,28}
			ZB[4]={"e_head011",1,31}
			ZB[5]={"e_head012",1,34}
			ZB[6]={"e_head013",1,37}
			ZB[7]={"e_head014",1,40}
			ZB[8]={"e_head015",1,43}
			ZB[9]={"e_head016",1,46}
			ZB[10]={"e_head017",1,49}
			ZB[11]={"e_head018",1,52}
			ZB[12]={"e_head019",1,55}
			ZB[13]={"e_head020",1,58}
			ZB[14]={"e_head021",1,61}
			ZB[15]={"e_head022",1,64}
			ZB[16]={"e_head023",1,67}
			ZB[17]={"e_head024",1,70}
			ZB[18]={"e_head025",1,73}
			ZB[19]={"e_head026",1,76}
			ZB[20]={"e_head027",1,79}
			ZB[21]={"e_head028",1,82}
			ZB[22]={"e_head029",1,85}
			ZB[23]={"e_head030",1,88}
			ZB[24]={"e_head031",1,91}
			ZB[25]={"e_head032",1,94}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>25)then
			num=25
			end
			return ZB[num][1]
    elseif(r==6)then   -------项链
            ZB={}
			ZB[1]={"e_necklace004",1,21}
			ZB[2]={"e_necklace005",1,27}
			ZB[3]={"e_necklace006",1,33}
			ZB[4]={"e_necklace007",1,39}
			ZB[5]={"e_necklace008",1,45}
			ZB[6]={"e_necklace009",1,51}
			ZB[7]={"e_necklace010",1,57}
			ZB[8]={"e_necklace011",1,63}
			ZB[9]={"e_necklace012",1,69}
			ZB[10]={"e_necklace013",1,75}
			ZB[11]={"e_necklace014",1,80}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>11)then
			num=11
			end
			return ZB[num][1]
    elseif(r==7)then  ----耳环
            ZB={}
			ZB[1]={"e_earring004",1,21}
			ZB[2]={"e_earring005",1,27}
			ZB[3]={"e_earring006",1,33}
			ZB[4]={"e_earring007",1,39}
			ZB[5]={"e_earring008",1,45}
			ZB[6]={"e_earring009",1,51}
			ZB[7]={"e_earring010",1,57}
			ZB[8]={"e_earring011",1,63}
			ZB[9]={"e_earring012",1,69}
			ZB[10]={"e_earring013",1,75}
			ZB[11]={"e_earring014",1,80}
			local num=1
			while(ZB[num][3]<level)
			do
			    num=num+1
			end
			if(num>11)then
			num=11
			end
			return ZB[num][1]
    end


end