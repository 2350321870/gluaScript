function do_use()
if(EquipInfo(10)~="")then

	local pet_lv=LuaPetQuery("lv")
	local pet_maxlv=LuaQuery("level")
	local exp_get=LuaPetQuery("exp_get")
 	local a=floor((pet_lv^2*2+pet_lv*250)*(1+exp_get/100))+LuaRandom(100)--���������
	local addexp=2*a
		if(pet_lv<pet_maxlv)then
		LuaShowNotify("������"..addexp.."����")
		LuaPetExpAdd(addexp)
		LuaOtherSendMenu()
		return 1
		else
		LuaShowNotify("���Ｖ���޷�������ɫ�ȼ���")
		LuaOtherSendMenu()
		return 0
		end
else
LuaShowNotify("���Ȱѳ���װ���������ٽ���ιʳ")
LuaOtherSendMenu()
return 0
end
end