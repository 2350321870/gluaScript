function do_use()
	if(LuaFreeBag()<8)then	LuaShowNotify("请至少保有@28@0格背包空间")	return 0 end
		if(LuaQueryStr("class")=="shen") then      --战士
			LuaGive("e_falchion151",1,2,"Newcountry")
			LuaGive("e_shield151",1,2,"Newcountry")
		elseif(LuaQueryStr("class")=="wu") then       --侠客
			LuaGive("e_sword151",1,2,"Newcountry")
			LuaGive("e_knife151",1,2,"Newcountry")
		elseif(LuaQueryStr("class")=="xian") then       --谋士
			LuaGive("e_book151",1,2,"Newcountry")
			LuaGive("e_pen151",1,2,"Newcountry")
		end
		LuaGive("e_head151",1,2,"Newcountry")		--强者冠
		LuaGive("e_clothes151",1,2,"Newcountry")	--强者袍
		LuaGive("e_pants151",1,2,"Newcountry")		--强者护腿
		LuaGive("e_shoes151",1,2,"Newcountry")		--强者靴	
		LuaGive("e_earring151",1,2,"Newcountry")	--强者耳坠
		LuaGive("e_necklace151",1,2,"Newcountry")	--强者项链
		LuaGive("coin",18888,"Newcountry")
		LuaAddJx("combat_exp",500000,"Newcountry")
		LuaSetTask("Newcountry",98)
		LuaOtherSendMenu()

return 1 
end
