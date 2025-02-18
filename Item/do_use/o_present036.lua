function do_use()
if(LuaFreeBag()<12)then	LuaShowNotify("请至少保有@212@0格背包空间")	return 0 end
	AddMenuItem("@750级绿色套装【1元宝】","nc_combine o_present036 Lv50_1","50级套装包")
	AddMenuItem("@550级蓝色套装【80元宝】","nc_combine o_present036 Lv50_2","50级套装包")
	AddMenuItem("@350级金色套装【800元宝】","nc_combine o_present036 Lv50_3","50级套装包")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)

if(type=="Lv50_1")then
	if(	LuaQueryMoney()>=1)then
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword153",1,1,"Tpresent036")   
	LuaGive("e_knife153",1,1,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen153",1,1,"Tpresent036")	
	LuaGive("e_book153",1,1,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion153",1,1,"Tpresent036")	
	LuaGive("e_shield153",1,1,"Tpresent036")		
--	end	
	LuaGive("e_head153",1,1,"Tpresent036")
	LuaGive("e_clothes153",1,1,"Tpresent036")	
	LuaGive("e_pants153",1,1,"Tpresent036")
	LuaGive("e_shoes153",1,1,"Tpresent036")	
	LuaGive("e_earring153",1,1,"Tpresent036")
	LuaGive("e_necklace153",1,1,"Tpresent036")
	LuaAddYB(1,-1)
	DelItem("o_present036",1)
	else
	LuaSay("需要@91元宝@0")
	end
elseif(type=="Lv50_2")then
	if(	LuaQueryMoney()>=80)then
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword153",1,2,"Tpresent036")   
	LuaGive("e_knife153",1,2,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen153",1,2,"Tpresent036")	
	LuaGive("e_book153",1,2,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion153",1,2,"Tpresent036")	
	LuaGive("e_shield153",1,2,"Tpresent036")		
--	end	
	LuaGive("e_head153",1,2,"Tpresent036")
	LuaGive("e_clothes153",1,2,"Tpresent036")	
	LuaGive("e_pants153",1,2,"Tpresent036")
	LuaGive("e_shoes153",1,2,"Tpresent036")	
	LuaGive("e_earring153",1,2,"Tpresent036")
	LuaGive("e_necklace153",1,2,"Tpresent036")
	
	LuaAddYB(1,-80)
	DelItem("o_present036",1)
	else
	LuaSay("需要@980元宝@0")
	end
elseif(type=="Lv50_3")then
	if(	LuaQueryMoney()>=800)then
--	if(LuaQueryStr("class")=="wu")then			--侠客
	LuaGive("e_sword153",1,3,"Tpresent036")   
	LuaGive("e_knife153",1,3,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--谋士
	LuaGive("e_pen153",1,3,"Tpresent036")	
	LuaGive("e_book153",1,3,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--战士
	LuaGive("e_falchion153",1,3,"Tpresent036")	
	LuaGive("e_shield153",1,3,"Tpresent036")		
--	end	
	LuaGive("e_head153",1,3,"Tpresent036")
	LuaGive("e_clothes153",1,3,"Tpresent036")	
	LuaGive("e_pants153",1,3,"Tpresent036")
	LuaGive("e_shoes153",1,3,"Tpresent036")	
	LuaGive("e_earring153",1,3,"Tpresent036")
	LuaGive("e_necklace153",1,3,"Tpresent036")
	
	LuaAddYB(1,-800)
	DelItem("o_present036",1)
	else
	LuaSay("需要@9800元宝@0")
	end

else
LuaSay("请自行清理背包空间,保证12个以上的空位再打开,否则造成丢失")
end
LuaOtherSendMenu()
--return 1
end
