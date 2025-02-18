--黄金至尊月饼
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(10)
    if(r1<3) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",4,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了4颗@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",2,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了2张@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",2,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了2张@3双防符")
        elseif(r2==3) then
        LuaGive("o_state008j",2,"Tzhizuoyb")
	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了2张@3初级经验卷")
        end
    elseif(r1==3) then
        LuaGive("coin",10000,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@310000铜币")
    elseif(r1==4 or r1==5) then
         r3=LuaRandom(20)
        if(r3<10 and r3>=0) then
        LuaGive("o_state068j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@3魔池")
        elseif(r3<20 and r3>=10) then
        LuaGive("o_box001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@3宝箱")
        --[[elseif(r3==19) then
        LuaGive("e_horse003",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@3拉风的坐骑-龙狮")
        elseif(r3==18 or r3==17) then
        LuaGive("e_pet12y",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@3优质宠物-勇精灵")
         ]]
		end
    elseif(r1==6) then
    	LuaGive("o_material_33",1,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@35级肉")
    elseif(r1==7) then
    	LuaGive("o_material_34",1,"Tzhizuoyb")
    	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3黄金至尊月饼@0，吃出了@36级肉")
    
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