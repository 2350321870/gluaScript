--��Ʒ����
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	r1=LuaRandom(10)
    if(r1<2) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tdwj_czz")
     --   LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3���굤")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3˫����")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tdwj_czz")
       -- LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3˫����")
        elseif(r2==3) then
        LuaGive("e_state088j",1,"Tdwj_czz")
        end
	elseif(r1==2) then
        LuaGive("coin",10000,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@310000ͭ��")
    elseif(r1==3) then
        r3=LuaRandom(19)
        if(r3<6) then
	LuaGive("e_state088j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3���")
        elseif(r3<12) then
        LuaGive("o_state091j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3��ս��")
        elseif(r3<17) then
        LuaGive("o_box001j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3����")
        elseif(r3==18) then
        LuaGive("e_pet12y",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3���ʳ���-�¾���")
        end
    elseif(r1==4) then
        if(LuaRandom(2)==0) then
    	LuaGive("o_material_33",1,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@35����")
		else
    	LuaGive("o_material_34",1,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@36����")
    	end
    else
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
     	jingyan=20000+level^2*40+level*2500
    	LuaAddJx("combat_exp",jingyan,"Tdwj_czz")
    end

LuaOtherSendMenu()
return 1
end