--��ӵ��װ
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	local r2=LuaRandom(12)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_book168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==1) then
        LuaGive("e_earring168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��׹")
        elseif(r2==2) then
        LuaGive("e_falchion168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==3) then
        LuaGive("e_head168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==4) then
        LuaGive("e_knife168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==5) then
        LuaGive("e_necklace168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
        elseif(r2==6) then
        LuaGive("e_pants168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
        elseif(r2==7) then
        LuaGive("e_pen168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==8) then
        LuaGive("e_shield168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        elseif(r2==9) then
        LuaGive("e_shoes168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵѥ")
        elseif(r2==10) then
        LuaGive("e_sword168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
	elseif(r2==11) then
        LuaGive("e_clothes168",1,1,"PublicBeta_102_2")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
        end


LuaOtherSendMenu()
return 1
end