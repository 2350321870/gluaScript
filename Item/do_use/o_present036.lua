function do_use()
if(LuaFreeBag()<12)then	LuaShowNotify("�����ٱ���@212@0�񱳰��ռ�")	return 0 end
	AddMenuItem("@750����ɫ��װ��1Ԫ����","nc_combine o_present036 Lv50_1","50����װ��")
	AddMenuItem("@550����ɫ��װ��80Ԫ����","nc_combine o_present036 Lv50_2","50����װ��")
	AddMenuItem("@350����ɫ��װ��800Ԫ����","nc_combine o_present036 Lv50_3","50����װ��")

LuaOtherSendMenu()
return 0
end

function nc_combine(type)

if(type=="Lv50_1")then
	if(	LuaQueryMoney()>=1)then
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword153",1,1,"Tpresent036")   
	LuaGive("e_knife153",1,1,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen153",1,1,"Tpresent036")	
	LuaGive("e_book153",1,1,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@91Ԫ��@0")
	end
elseif(type=="Lv50_2")then
	if(	LuaQueryMoney()>=80)then
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword153",1,2,"Tpresent036")   
	LuaGive("e_knife153",1,2,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen153",1,2,"Tpresent036")	
	LuaGive("e_book153",1,2,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@980Ԫ��@0")
	end
elseif(type=="Lv50_3")then
	if(	LuaQueryMoney()>=800)then
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword153",1,3,"Tpresent036")   
	LuaGive("e_knife153",1,3,"Tpresent036")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen153",1,3,"Tpresent036")	
	LuaGive("e_book153",1,3,"Tpresent036")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@9800Ԫ��@0")
	end

else
LuaSay("�������������ռ�,��֤12�����ϵĿ�λ�ٴ�,������ɶ�ʧ")
end
LuaOtherSendMenu()
--return 1
end
