function do_use()
if(LuaFreeBag()<12)then	LuaShowNotify("�����ٱ���@212@0�񱳰��ռ�")	return 0 end
	AddMenuItem("@740����ɫ��װ��1Ԫ����","nc_combine o_present035 Lv40_1","40����װ��")
	AddMenuItem("@540����ɫ��װ��50Ԫ����","nc_combine o_present035 Lv40_2","40����װ��")
	AddMenuItem("@340����ɫ��װ��500Ԫ����","nc_combine o_present035 Lv40_3","40����װ��")


LuaOtherSendMenu()
return 0
end

function nc_combine(type)

if(type=="Lv40_1")then
	if(	LuaQueryMoney()>=1)then
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword151",1,1,"Tpresent035")   
	LuaGive("e_knife151",1,1,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen151",1,1,"Tpresent035")	
	LuaGive("e_book151",1,1,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@91Ԫ��@0")
	end
elseif(type=="Lv40_2")then
	if(	LuaQueryMoney()>=50)then
	
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword151",1,2,"Tpresent035")   
	LuaGive("e_knife151",1,2,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen151",1,2,"Tpresent035")	
	LuaGive("e_book151",1,2,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@950Ԫ��@0")
	end
elseif(type=="Lv40_3")then
	if(	LuaQueryMoney()>=500)then
--	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword151",1,3,"Tpresent035")   
	LuaGive("e_knife151",1,3,"Tpresent035")	
--	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen151",1,3,"Tpresent035")	
	LuaGive("e_book151",1,3,"Tpresent035")		
--	elseif(LuaQueryStr("class")=="shen")then		--սʿ
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
	LuaSay("��Ҫ@9500Ԫ��@0")
	end


else
LuaSay("�������������ռ�,��֤12�����ϵĿ�λ�ٴ�,������ɶ�ʧ")
end
LuaOtherSendMenu()
--return 1
end
