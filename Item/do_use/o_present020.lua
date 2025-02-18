function do_use()
local day=GetCurrentDay()
if(day=="2012-5-21" or day=="2012-5-22" or day=="2012-5-23" or day=="2012-5-24")then
	if(LuaFreeBag()<10)then	LuaShowNotify("请至少保有@210@0格背包空间")	return 0 end
	local level=LuaQuery("level")
		if(level>80)then
		level=80
	end
	local r1 = LuaRandom(50)
	local r2 = LuaRandom(20)
	local re = 0
	if(r2==0)then
		re=3
	elseif(r2<=4)then
		re=2
	else
		re=1
	end
	if(r1==0)then
		LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"o_present020") 	--4级材料随其一、
	elseif(r1==1)then
		LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"o_present020")	--5级材料随其一
	elseif(r1==2)then
		LuaGive("o_state016j",5,"o_present020")		--还魂丹
	elseif(r1==3)then
		LuaGive("o_state016j",5,"o_present020")		--还魂丹
	elseif(r1==4)then
		LuaGive("o_state016j",5,"o_present020")		--还魂丹
	elseif(r1==5)then
		LuaGive("o_ybsc002j",1,"o_present020")		--强化石
	elseif(r1==6)then
		LuaGive("o_box002",1,"o_present020")		--幸运宝箱
	elseif(r1==7)then
		LuaGive("o_state012j",1,"o_present020")		--双防符
	elseif(r1==8)then
		LuaGive("o_state001j",1,"o_present020")		--双攻
	elseif(r1==9)then
		LuaGive("o_state008j",1,"o_present020")		--初经
	elseif(r1==10)then
		if(level<=30)then--153善战 151强者 166泛
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_falchion166",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				LuaGive("e_sword166",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_book166",1,re,"o_present020")	
			end
		elseif(level<=45)then
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_falchion151",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				LuaGive("e_sword151",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_book151",1,re,"o_present020")	
			end
		else
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_falchion153",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客
				LuaGive("e_sword153",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_book153",1,re,"o_present020")	
			end
		end
	elseif(r1==11)then
		if(level<=30)then--153善战 151强者 166泛
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_shield166",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客	
				LuaGive("e_knife166",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_pen166",1,re,"o_present020")
			end
		elseif(level<=45)then--153善战 151强者 166泛
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_shield151",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客	
				LuaGive("e_knife151",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_pen151",1,re,"o_present020")
			end
		else
			if(LuaQueryStr("class")=="shen") then      --战士
				LuaGive("e_shield153",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="wu") then       --侠客	
				LuaGive("e_knife153",1,re,"o_present020")
			elseif(LuaQueryStr("class")=="xian") then       --谋士
				LuaGive("e_pen153",1,re,"o_present020")
			end
		end
	elseif(r1==12)then
		if(level<=30)then
			LuaGive("e_head166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_head151",1,re,"o_present020")	
		else
			LuaGive("e_head153",1,re,"o_present020")	
		end
	elseif(r1==13)then
		if(level<=30)then
			LuaGive("e_clothes166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_clothes151",1,re,"o_present020")	
		else
			LuaGive("e_clothes153",1,re,"o_present020")	
		end
	elseif(r1==14)then
		if(level<=30)then
			LuaGive("e_pants166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_pants151",1,re,"o_present020")	
		else
			LuaGive("e_pants153",1,re,"o_present020")	
		end
	elseif(r1==15)then
		if(level<=30)then
			LuaGive("e_shoes166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_shoes151",1,re,"o_present020")	
		else
			LuaGive("e_shoes153",1,re,"o_present020")	
		end	
	elseif(r1==16)then
		if(level<=30)then
			LuaGive("e_earring166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_earring151",1,re,"o_present020")	
		else
			LuaGive("e_earring153",1,re,"o_present020")	
		end
	elseif(r1==17)then
		if(level<=30)then
			LuaGive("e_necklace166",1,re,"o_present020")	
		elseif(level<=45)then
			LuaGive("e_necklace151",1,re,"o_present020")	
		else
			LuaGive("e_necklace153",1,re,"o_present020")	
		end
	elseif(r1==18)then
		LuaGive("o_box001j",1,"o_present020")
	elseif(r1==19)then
		LuaGive("o_lv40taozhuang",1,"o_present020")
	elseif(r1==20)then
		LuaGive("o_lv50taozhuang",1,"o_present020")
	elseif(r1==21)then
		LuaGive("o_lv60taozhuang",1,"o_present020")
	elseif(r1==22)then
		LuaGive("o_mission168",2,"o_present020")	--甲鱼		
	elseif(r1==23)then
		LuaGive("o_mission153",2,"o_present020")	--金枝
	elseif(r1==24)then
		LuaGive("o_mission145",2,"o_present020")	--矿精
	elseif(r1==25)then
		LuaGive("o_mission018",2,"o_present020")	--破旧古董
	elseif(r1==26)then
		LuaGive("o_box001j",1,"o_present020")
	else
		local m_exp=30000+(LuaRandom(20)+20)*level^2
		LuaAddJx("combat_exp",m_exp,"o_present020")
	
		
	end
	LuaOtherSendMenu()
	return 1


else
	LuaSay("此锦囊已经过了试用期，只有5月21日、22日、23日、24日才能使用的哦")
	LuaOtherSendMenu()
	return 0
end

LuaOtherSendMenu()
end