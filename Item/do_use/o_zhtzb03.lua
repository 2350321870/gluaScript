--ʥ����װ
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	local r2=LuaRandom(12)
	LuaPrint("1")
        if(r2==0) then
        LuaGive("e_book169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ������")
        elseif(r2==1) then
        LuaGive("e_earring169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ���׹")
        elseif(r2==2) then
        LuaGive("e_falchion169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ�鱦��")
        elseif(r2==3) then
        LuaGive("e_head169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ�����")
        elseif(r2==4) then
        LuaGive("e_knife169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ��Ѫ��")
        elseif(r2==5) then
        LuaGive("e_necklace169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ�龧��")
        elseif(r2==6) then
        LuaGive("e_pants169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ���ּ�")
        elseif(r2==7) then
        LuaGive("e_pen169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ���")
        elseif(r2==8) then
        LuaGive("e_shield169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ������")
        elseif(r2==9) then
        LuaGive("e_shoes169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ��ħѥ")
        elseif(r2==10) then
        LuaGive("e_sword169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ����")
	elseif(r2==11) then
        LuaGive("e_clothes169",1,1,"PublicBeta_102_3")
        LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬�����ʥ������")
        end


LuaOtherSendMenu()
return 1
end