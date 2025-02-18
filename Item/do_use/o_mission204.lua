--下品粽子
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(20)
    if(r1==18) then
        r2=LuaRandom(4)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tdwj_czz")
     --   LuaNotice("@2"..LuaQueryStr("name").."@0吃@3下品粽子@0，吃出了@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0吃@3下品粽子@0，吃出了@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tdwj_czz")
      --  LuaNotice("@2"..LuaQueryStr("name").."@0吃@3下品粽子@0，吃出了@3双防符")
        elseif(r2==3) then
        LuaGive("o_state008j",1,"Tdwj_czz")
    --    LuaNotice("@2"..LuaQueryStr("name").."@0吃@3下品粽子@0，吃出了@3双倍经验卷")
        end
    elseif(r1==2 or r1==3) then
    LuaGive("coin",1000,"Tdwj_czz")
    else --经验
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
    	jingyan=10000+level^2*15+level*800
    	LuaAddJx("combat_exp",jingyan,"Tdwj_czz")
    end

LuaOtherSendMenu()
return 1
end