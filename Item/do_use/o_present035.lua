function do_use()
if(LuaFreeBag()<12)then	LuaShowNotify("请至少保有@212@0格背包空间")	return 0 end
	AddMenuItem("@740级绿色套装【1元宝】","nc_combine o_present035 Lv40_1","40级套装包")
	AddMenuItem("@540级蓝色套装【50元宝】","nc_combine o_present035 Lv40_2","40级套装包")
	AddMenuItem("@340级金色套装【500元宝】","nc_combine o_present035 Lv40_3","40级套装包")


LuaOtherSendMenu()
return 0
end

function nc_combine(type)

if(type=="Lv40_1")then
	if(	LuaQueryMoney()>=1)then
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword151",1,1,"Tpresent035")   
	LuaGive("e_knife151",1,1,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen151",1,1,"Tpresent035")	
	LuaGive("e_book151",1,1,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion151",1,1,"Tpresent035")	
	LuaGive("e_shield151",1,1,"Tpresent035")		
--	end	
	LuaGive("e_head151",1,1,"Tpresent035")
	LuaGive("e_clothes151",1,1,"Tpresent035")	
	LuaGive("e_pants151",1,1,"Tpresent035")
	LuaGive("e_shoes151",1,1,"Tpresent035")	
	LuaGive("e_earring151",1,1,"Tpresent035")
	LuaGive("e_necklace151",1,1,"Tpresent035")
	LuaAddYB(1,-1)
	DelItem("o_present035",1)
	else
	LuaSay("需要@91元宝@0")
	end
elseif(type=="Lv40_2")then
	if(	LuaQueryMoney()>=50)then
	
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword151",1,2,"Tpresent035")   
	LuaGive("e_knife151",1,2,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen151",1,2,"Tpresent035")	
	LuaGive("e_book151",1,2,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion151",1,2,"Tpresent035")	
	LuaGive("e_shield151",1,2,"Tpresent035")		
--	end	
	LuaGive("e_head151",1,2,"Tpresent035")
	LuaGive("e_clothes151",1,2,"Tpresent035")	
	LuaGive("e_pants151",1,2,"Tpresent035")
	LuaGive("e_shoes151",1,2,"Tpresent035")	
	LuaGive("e_earring151",1,2,"Tpresent035")
	LuaGive("e_necklace151",1,2,"Tpresent035")
	
	LuaAddYB(1,-50)
	DelItem("o_present035",1)
	else
	LuaSay("需要@950元宝@0")
	end
elseif(type=="Lv40_3")then
	if(	LuaQueryMoney()>=500)then
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword151",1,3,"Tpresent035")   
	LuaGive("e_knife151",1,3,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen151",1,3,"Tpresent035")	
	LuaGive("e_book151",1,3,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion151",1,3,"Tpresent035")	
	LuaGive("e_shield151",1,3,"Tpresent035")		
--	end	
	LuaGive("e_head151",1,3,"Tpresent035")
	LuaGive("e_clothes151",1,3,"Tpresent035")	
	LuaGive("e_pants151",1,3,"Tpresent035")
	LuaGive("e_shoes151",1,3,"Tpresent035")	
	LuaGive("e_earring151",1,3,"Tpresent035")
	LuaGive("e_necklace151",1,3,"Tpresent035")
	
	LuaAddYB(1,-500)
	DelItem("o_present035",1)
	else
	LuaSay("需要@9500元宝@0")
	end


else
LuaSay("请自行清理背包空间,保证12个以上的空位再打开,否则造成丢失")
end
LuaOtherSendMenu()
--return 1
end
