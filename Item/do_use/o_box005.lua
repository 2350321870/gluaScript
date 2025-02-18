function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(LuaFreeBag()<6)then	LuaShowNotify("请至少保有@26@0格背包空间")	return 0 end
	local r=LuaRandom(100)
	local re=LuaRandom(8)
	local rf=LuaRandom(3)
	local rc=LuaRandom(100)
	LuaSay("黄金之神护佑，宝贝快快到手！开~")
	if(r<5)then
		LuaSay("恭喜您！在黄金宝箱里面发现了一个@3金光闪闪@0的@2幸运宝箱@0，这预示着你的@3好@0@5运@0即将到来哦@!")
		LuaGive("o_box002",1,"Tbox005") --幸运宝盒
		--LuaNotice("@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，被一只从天而降的@5幸运宝盒@0砸倒在地")
	elseif(r<15)then
		LuaSay("恭喜您！获得再来一次的机会，将再奖励一个@2黄金宝箱@0给你哦，这将是你好运的开始哦@!")
		LuaGive("o_box005y",1,"Tbox005") 	
	elseif(r<45)then--30%								
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox005")------防
			LuaGive("o_state001j",LuaRandom(2)+1,"Tbox005")------攻
			LuaGive("o_state066j",1,"Tbox005")----中血池
		elseif(rf==1)then
			LuaGive("o_state010j",1,"Tbox005")-----------------3经
			LuaGive("o_state016j",LuaRandom(4)+2,"Tbox005")----九转
		elseif(rf==2)then
			LuaGive("o_state069j",1,"Tbox005")----中魔池
		end
		local m_exp=5000+(LuaRandom(20)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox005")
		LuaSay("恭喜您！打开了@3黄金宝箱@0，获得了价值20元宝左右的道具和大量的经验。")
	elseif(r<56)then--11%						
		LuaGive("o_ybsc001y",1,"Tbox005")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到@3宝物拆解符@0！")
	elseif(r<67)then--11%						
		LuaGive("o_ybsc002y",1,"Tbox005")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到@2强化石@0！")
	elseif(r<73)then--6%						
		LuaGive("o_resetpoint1y",1,"Tbox005")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到价值30元宝的@2洗点卷@0一个！")
	elseif(r<79)then--6%						
		LuaGive("o_changeclass1y",1,"Tbox005")
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到价值50元宝的@2转职信物@0一个！")
	elseif(r<84)then--5%						
		LuaGive("o_state059j",1,"Tbox005")
	elseif(r<88)then --4%
		if(rc<95)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox005")	--6
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到价值60元宝的@26级材料@0一个！")
		elseif(r<=99)then
		LuaGive("o_material_"..(17+9*LuaRandom(6)).."",1,"Tbox005")	--7
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到价值360元宝的@27级材料@0一个！")
		end
	elseif(r<=99)then --%12
		if(re==0)then
		LuaGive("e_head161",1,2,"Tbox005")
		elseif(re==1)then
		LuaGive("e_clothes161",1,2,"Tbox005")
		elseif(re==2)then
		LuaGive("e_pants161",1,2,"Tbox005")
		elseif(re==3)then
		LuaGive("e_shoes161",1,2,"Tbox005")
		elseif(re==4)then
		LuaGive("e_earring161",1,2,"Tbox005")
		elseif(re==5)then
		LuaGive("e_necklace161",1,2,"Tbox005")
		elseif(re==6)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_falchion161",1,2,"Tbox005")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_sword161",1,2,"Tbox005")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_fan161",1,2,"Tbox005")
			end
		elseif(re==7)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_shield161",1,2,"Tbox005")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_knife161",1,2,"Tbox005")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_book161",1,2,"Tbox005")
			end
		end
		LuaNotice("恭喜@2"..LuaQueryStr("name").."@0打开@3黄金宝箱@0，得到@3无价之宝：80级极品破军套装一件@0！")
	end
	
LuaOtherSendMenu()
return 1
end
