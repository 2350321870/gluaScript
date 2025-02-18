--如意翠月
function do_use()
	if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
	r1=LuaRandom(9)
    if(r1<2) then
        r2=LuaRandom(5)
        if(r2==0) then
        LuaGive("o_state016j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3如意翠月月饼@0，吃出了@3还魂丹")
        elseif(r2==1) then
        LuaGive("o_state001j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3如意翠月月饼@0，吃出了@3双攻符")
        elseif(r2==2) then
        LuaGive("o_state012j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3如意翠月月饼@0，吃出了@3双防符")
        elseif(r2==3) then
        LuaGive("o_state008j",1,"Tzhizuoyb")
        LuaNotice("@2"..LuaQueryStr("name").."@0吃@3如意翠月月饼@0，吃出了@3初级经验卷")
	elseif(r2==4)then
	LuaGive("o_box001j",1,"Tzhizuoyb")
	LuaNotice("@2"..LuaQueryStr("name").."@0吃@3如意翠月月饼@0，吃出了@3宝箱")
	end
    elseif(r1==2 or r1==3 or r1==5) then
    LuaGive("coin",2000,"Tzhizuoyb")
    else --经验
    	level=LuaQuery("level")
			if(level>80)then
		level=80
	end
    	jingyan=10000+level^2*20+level*1500
    	LuaAddJx("combat_exp",jingyan,"Tzhizuoyb")
    end
--经验
--铜钱
--幸运宝盒
--道具：双倍经验o_state008j、4贪婪金、免战牌o_state091j  红包e_state088j  还魂丹o_state016j   双攻符o_state001j  双防符o_state012j
--6级肉
--5级肉

LuaOtherSendMenu()
return 1
end