--众心拱月
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(10)
    if(r1<4) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3双防符")
        elseif(r2==3) then
        LuaGive("o_state008j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3初级经验卷")
        end
    elseif(r1==4 or r1==5) then
    	LuaGive("coin",3000,"Tzhizuoyb")
    elseif(r1==6) then
        r3=LuaRandom(20)
        if(r3<12 and r3>=0) then
        LuaGive("o_state091j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3免战牌")
        elseif(r3<20 and r3>11) then
        LuaGive("o_box001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3众心拱月@0，吃出了@3宝箱")
        end
    else --经验
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
     	jingyan=20000+level^2*30+level*2000
    	LuaAddJx("combat_exp",jingyan,"Tzhizuoyb")
    end
LuaOtherSendMenu()
return 1
end