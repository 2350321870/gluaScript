function do_use()
if(LuaFreeBag()<8)then	LuaShowNotify("请至少保有@28@0格背包空间")	return 0 end
	AddMenuItem("@730级绿色套装【1元宝】","nc_combine o_present034 Lv30_1","30级套装包")
	AddMenuItem("@530级蓝色套装【10元宝】","nc_combine o_present034 Lv30_2","30级套装包")
	AddMenuItem("@330级金色套装【100元宝】","nc_combine o_present034 Lv30_3","30级套装包")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="Lv30_1")then
	if(LuaQueryMoney()>=1)then
	LuaGive("e_sword166",1,1,"Tpresent034")
	LuaGive("e_knife166",1,1,"Tpresent034")	
	LuaGive("e_head166",1,1,"Tpresent034")
	LuaGive("e_clothes16",1,1,"Tpresent034")	
	LuaGive("e_pants166",1,1,"Tpresent034")
	LuaGive("e_shoes166",1,1,"Tpresent034")	
	LuaGive("e_earring166",1,1,"Tpresent034")
	LuaGive("e_necklace166",1,1,"Tpresent034")	
	LuaAddYB(1,-1)    
	DelItem("o_present034",1)
	else
	LuaSay("需要@91元宝@0")
	end
elseif(type=="Lv30_2")then    
	if(LuaQueryMoney()>=10)then
	
	LuaGive("e_sword166",1,2,"Tpresent034")
    LuaGive("e_knife166",1,2,"Tpresent034")	
	LuaGive("e_head166",1,2,"Tpresent034")
	LuaGive("e_clothes166",1,2,"Tpresent034")	
	LuaGive("e_pants166",1,2,"Tpresent034")
	LuaGive("e_shoes166",1,2,"Tpresent034")	
	LuaGive("e_earring166",1,2,"Tpresent034")
	LuaGive("e_necklace166",1,2,"Tpresent034")
	LuaAddYB(1,-10)
	DelItem("o_present034",1)
	else
	LuaSay("需要@910元宝@0")
	end
elseif(type=="Lv30_3")then
	if(	LuaQueryMoney()>=100)then
	
	LuaGive("e_sword166",1,3,"Tpresent034")
    LuaGive("e_knife166",1,3,"Tpresent034")	
	LuaGive("e_head166",1,3,"Tpresent034")
	LuaGive("e_clothes166",1,3,"Tpresent034")	
	LuaGive("e_pants166",1,3,"Tpresent034")
	LuaGive("e_shoes166",1,3,"Tpresent034")	
	LuaGive("e_earring166",1,3,"Tpresent034")
	LuaGive("e_necklace166",1,3,"Tpresent034")
	LuaAddYB(1,-100)
	DelItem("o_present034",1)
	else
	LuaSay("需要@9100元宝@0")
	end


else
LuaSay("请自行清理背包空间,保证8个以上的空位再打开,否则造成丢失")
end
LuaOtherSendMenu()
--return 1
end
