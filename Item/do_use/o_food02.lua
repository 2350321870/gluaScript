function do_use()
if(EquipInfo(10)~="")then

	local pet_lv=LuaPetQuery("lv")
	local pet_maxlv=LuaQuery("level")
	local exp_get=LuaPetQuery("exp_get")
 	local a=floor((pet_lv^2*2+pet_lv*250)*(1+exp_get/100))+LuaRandom(100)--经验调整处
	local addexp=2*a
		if(pet_lv<pet_maxlv)then
		LuaShowNotify("宠物获得"..addexp.."经验")
		LuaPetExpAdd(addexp)
		LuaOtherSendMenu()
		return 1
		else
		LuaShowNotify("宠物级别无法超过角色等级！")
		LuaOtherSendMenu()
		return 0
		end
else
LuaShowNotify("请先把宠物装备在身上再进行喂食")
LuaOtherSendMenu()
return 0
end
end