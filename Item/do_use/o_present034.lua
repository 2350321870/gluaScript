function do_use()
if(LuaFreeBag()<8)then	LuaShowNotify("�����ٱ���@28@0�񱳰��ռ�")	return 0 end
	AddMenuItem("@730����ɫ��װ��1Ԫ����","nc_combine o_present034 Lv30_1","30����װ��")
	AddMenuItem("@530����ɫ��װ��10Ԫ����","nc_combine o_present034 Lv30_2","30����װ��")
	AddMenuItem("@330����ɫ��װ��100Ԫ����","nc_combine o_present034 Lv30_3","30����װ��")

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
	LuaSay("��Ҫ@91Ԫ��@0")
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
	LuaSay("��Ҫ@910Ԫ��@0")
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
	LuaSay("��Ҫ@9100Ԫ��@0")
	end


else
LuaSay("�������������ռ�,��֤8�����ϵĿ�λ�ٴ�,������ɶ�ʧ")
end
LuaOtherSendMenu()
--return 1
end
