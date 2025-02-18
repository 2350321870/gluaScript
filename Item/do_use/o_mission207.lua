--极品粽子
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(10)
    if(r1<2) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tdwj_czz")
     --   LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tdwj_czz")
       -- LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3双防符")
        elseif(r2==3) then
        LuaGive("e_state088j",1,"Tdwj_czz")
        end
	elseif(r1==2) then
        LuaGive("coin",10000,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@310000铜币")
    elseif(r1==3) then
        r3=LuaRandom(19)
        if(r3<6) then
	LuaGive("e_state088j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3红包")
        elseif(r3<12) then
        LuaGive("o_state091j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3免战牌")
        elseif(r3<17) then
        LuaGive("o_box001j",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3宝箱")
        elseif(r3==18) then
        LuaGive("e_pet12y",1,"Tdwj_czz")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@3优质宠物-勇精灵")
        end
    elseif(r1==4) then
        if(LuaRandom(2)==0) then
    	LuaGive("o_material_33",1,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@35级肉")
		else
    	LuaGive("o_material_34",1,"Tdwj_czz")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3极品粽子@0，吃出了@36级肉")
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