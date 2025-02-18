--花好月圆月饼
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(10)
    if(r1==5 or r1==4) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3花好月圆月饼@0，吃出了@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3花好月圆月饼@0，吃出了@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3花好月圆月饼@0，吃出了@3双防符")
        elseif(r2==3) then
        LuaGive("o_state008j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3花好月圆月饼@0，吃出了@3初级经验卷")
        end
    elseif(r1==2 or r1==3) then
    LuaGive("coin",1000,"Tzhizuoyb")
    else --经验
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
    	jingyan=10000+level^2*15+level*1000
    	LuaAddJx("combat_exp",jingyan,"Tzhizuoyb")
    end

LuaOtherSendMenu()
return 1
end