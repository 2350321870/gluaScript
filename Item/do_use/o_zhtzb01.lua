--�ݺ���װ
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
        local r2=LuaRandom(12)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_book167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
        elseif(r2==1) then
        LuaGive("e_earring167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��׹")
        elseif(r2==2) then
        LuaGive("e_falchion167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺᵶ")
        elseif(r2==3) then
        LuaGive("e_head167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
        elseif(r2==4) then
        LuaGive("e_knife167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
        elseif(r2==5) then
        LuaGive("e_necklace167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ�����")
        elseif(r2==6) then
        LuaGive("e_pants167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺỤ��")
        elseif(r2==7) then
        LuaGive("e_pen167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
        elseif(r2==8) then
        LuaGive("e_shield167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
        elseif(r2==9) then
        LuaGive("e_shoes167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ�ѥ")
        elseif(r2==10) then
        LuaGive("e_sword167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺὣ")
	elseif(r2==11) then
        LuaGive("e_clothes167",1,1,"PublicBeta_102_1")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
        end


LuaOtherSendMenu()
return 1
end