--�ƽ������±�
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
	r1=LuaRandom(10)
    if(r1<3) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",4,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���4��@3���굤")
        elseif(r2==1) then
        LuaGive("o_state001j",2,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���2��@3˫����")
        elseif(r2==2) then
        LuaGive("o_state012j",2,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���2��@3˫����")
        elseif(r2==3) then
        LuaGive("o_state008j",2,"Tzhizuoyb")
	LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���2��@3���������")
        end
    elseif(r1==3) then
        LuaGive("coin",10000,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@310000ͭ��")
    elseif(r1==4 or r1==5) then
         r3=LuaRandom(20)
        if(r3<10 and r3>=0) then
        LuaGive("o_state068j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@3ħ��")
        elseif(r3<20 and r3>=10) then
        LuaGive("o_box001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@3����")
        --[[elseif(r3==19) then
        LuaGive("e_horse003",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@3���������-��ʨ")
        elseif(r3==18 or r3==17) then
        LuaGive("e_pet12y",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@3���ʳ���-�¾���")
         ]]
		end
    elseif(r1==6) then
    	LuaGive("o_material_33",1,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@35����")
    elseif(r1==7) then
    	LuaGive("o_material_34",1,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ������±�@0���Գ���@36����")
    
    else
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
     	jingyan=20000+level^2*40+level*2500
    	LuaAddJx("combat_exp",jingyan,"Tzhizuoyb")
    end

LuaOtherSendMenu()
return 1
end