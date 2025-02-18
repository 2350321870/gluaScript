function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(LuaFreeBag()<6)then	LuaShowNotify("请至少保有@26@0格背包空间")	return 0 end
	local r=LuaRandom(50)
	local re=LuaRandom(8)
	local rf=LuaRandom(3)
	LuaSay("白银之神护佑，宝贝快快到手！开~")
	if(r<4)then
		LuaSay("恭喜您！在白银宝箱里面发现了一个@3金光闪闪@0的@2幸运宝箱@0，这预示着你的@3好@0@5运@0即将到来哦@!")
		LuaGive("o_box002",1,"Tbox004") --幸运宝盒
		--LuaNotice("@2"..LuaQueryStr("name").."@0打开@3白银宝箱@0，被一只从天而降的@5幸运宝盒@0砸的直跺脚")
	elseif(r<10)then
		LuaSay("恭喜您！获得再来一次的机会，将再奖励一个@2白银宝箱@0给你哦，这将是你好运的开始哦@!")
		LuaGive("o_box004j",1,"Tbox004") --白银宝箱
	elseif(r<20)then								
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox004")------防
			LuaGive("o_state008j",LuaRandom(2)+1,"Tbox004")------经
		elseif(rf==1)then
			LuaGive("o_state012j",LuaRandom(3)+1,"Tbox004")------防
			LuaGive("o_state065j",1,"Tbox004")----小血池
		elseif(rf==2)then
			LuaGive("o_state001j",LuaRandom(3)+1,"Tbox004")------攻
			LuaGive("o_state068j",1,"Tbox004")----小魔池
		end
		local m_exp=5000+(LuaRandom(20)+20)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox004")
		LuaSay("恭喜您！打开了@3白银宝箱@0，获得了价值10元宝左右的道具和大量的经验。@!")
	elseif(r<30)then						
		LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tbox004")	--5
		LuaSay("恭喜您！打开了@3白银宝箱@0，得到价值10元宝的@25级材料@0一个！")
	elseif(r<37)then						
		LuaGive("o_state010j",1,"Tbox004")
	elseif(r<40)then						
		LuaGive("o_resetpoint1y",1,"Tbox004")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3白银宝箱@0，得到价值30元宝的@2洗点卷@0一个！")
	elseif(r<41)then						
		LuaGive("o_changeclass1y",1,"Tbox004")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3白银宝箱@0，得到价值50元宝的@2转职信物@0一个！")
	elseif(r<43)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox004")	--6
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3白银宝箱@0，得到价值60元宝的@26级材料@0一个！")
	elseif(r<=49)then--%14
		if(re==0)then
		LuaGive("e_head154",1,2,"Tbox004")
		elseif(re==1)then
		LuaGive("e_clothes154",1,2,"Tbox004")
		elseif(re==2)then
		LuaGive("e_pants154",1,2,"Tbox004")
		elseif(re==3)then
		LuaGive("e_shoes154",1,2,"Tbox004")
		elseif(re==4)then
		LuaGive("e_earring154",1,2,"Tbox004")
		elseif(re==5)then
		LuaGive("e_necklace154",1,2,"Tbox004")
		elseif(re==6)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_falchion154",1,2,"Tbox004")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_sword154",1,2,"Tbox004")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_pen154",1,2,"Tbox004")
			end
		elseif(re==7)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_shield154",1,2,"Tbox004")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_knife154",1,2,"Tbox004")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_book154",1,2,"Tbox004")
			end
		end
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3白银宝箱@0，得到@3无价之宝：60级极品幸运套装一件@0！")
	end
	
LuaOtherSendMenu()
return 1
end
