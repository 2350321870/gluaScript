function do_use()
if(EquipInfo(10)~="")then
	 if(GetCurrentDay()~=LuaQueryStrTask("food04_day"))then
	   LuaDelTask("food04_num")
         end
	
	local num = LuaQueryTask("food04_num")    --今日适使用次数
	local pet_lv=LuaPetQuery("lv")
	local pet_maxlv=LuaQuery("level")
	local exp_get=LuaPetQuery("exp_get")
 	local a=floor((pet_lv^2*2+pet_lv*250)*(1+exp_get/100))+LuaRandom(100)--经验调整处
	local addexp=4*a
        local addexp1 = floor(addexp*(1+num/10))
	local addexp2 = floor(addexp*(1+(num+1)/10))
	if(pet_lv>=30)then
		if(num<10)then
			if((pet_lv<pet_maxlv) and (LuaItemCount("o_food04")>=1))  then
				LuaSay("今日您第"..(num+1).."次使用宠物食品,将会得到经验@3["..addexp1.."]@0,")
				LuaPetExpAdd(addexp1)
			
				LuaSay("恭喜您今天第"..(num+1).."次获得宠物经验，下一次使用可获得经验为"..addexp2.."")
				LuaAddTask("food04_num",1)
				LuaSetTask("food04_day",GetCurrentDay())
				LuaOtherSendMenu()
				return 1
			else
				LuaShowNotify("你的背包中没宠物食品或宠物级别无法超过角色等级！")
				LuaOtherSendMenu()
				return 0
			end
		else
			LuaSay("今日食用次数已经超过10次了，高级宠物口粮每天最多食用10次哦")
			LuaOtherSendMenu()
		end
	else
		LuaShowNotify("此宠物食品只能喂食30级以上的宠物！")
		LuaOtherSendMenu()
		return 0
	end
else
LuaShowNotify("请先把宠物装备在身上再进行喂食")
LuaOtherSendMenu()
return 0
end
end

