--��Ʒ����
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	r1=LuaRandom(20)
    if(r1<2) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tdwj_czz")
    --    LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3���굤")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3˫����")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3˫����")
        elseif(r2==3) then
        LuaGive("o_state008j",1,"Tdwj_czz")
     --   LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3˫�������")
        end
    elseif(r1<5) then
    LuaGive("coin",2000,"Tdwj_czz")
    elseif(r1==5) then
    LuaGive("o_box001j",1,"Tdwj_czz")
    LuaNotice("@2"..LuaQueryStr("name").."@0��@3��Ʒ����@0���Գ���@3����")
    else --����
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
    	jingyan=10000+level^2*20+level*1000
    	LuaAddJx("combat_exp",jingyan,"Tdwj_czz")
    end
--����
--ͭǮ
--���˱���
--���ߣ�˫������o_state008j��4̰������ս��o_state091j  ���e_state088j  ���굤o_state016j   ˫����o_state001j  ˫����o_state012j
--6����
--5����

LuaOtherSendMenu()
return 1
end