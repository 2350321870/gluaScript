function do_use()
if(EquipInfo(10)~="")then
	 if(GetCurrentDay()~=LuaQueryStrTask("food04_day"))then
	   LuaDelTask("food04_num")
         end
	
	local num = LuaQueryTask("food04_num")    --������ʹ�ô���
	local pet_lv=LuaPetQuery("lv")
	local pet_maxlv=LuaQuery("level")
	local exp_get=LuaPetQuery("exp_get")
 	local a=floor((pet_lv^2*2+pet_lv*250)*(1+exp_get/100))+LuaRandom(100)--���������
	local addexp=4*a
        local addexp1 = floor(addexp*(1+num/10))
	local addexp2 = floor(addexp*(1+(num+1)/10))
	if(pet_lv>=30)then
		if(num<10)then
			if((pet_lv<pet_maxlv) and (LuaItemCount("o_food04")>=1))  then
				LuaSay("��������"..(num+1).."��ʹ�ó���ʳƷ,����õ�����@3["..addexp1.."]@0,")
				LuaPetExpAdd(addexp1)
			
				LuaSay("��ϲ�������"..(num+1).."�λ�ó��ﾭ�飬��һ��ʹ�ÿɻ�þ���Ϊ"..addexp2.."")
				LuaAddTask("food04_num",1)
				LuaSetTask("food04_day",GetCurrentDay())
				LuaOtherSendMenu()
				return 1
			else
				LuaShowNotify("��ı�����û����ʳƷ����Ｖ���޷�������ɫ�ȼ���")
				LuaOtherSendMenu()
				return 0
			end
		else
			LuaSay("����ʳ�ô����Ѿ�����10���ˣ��߼��������ÿ�����ʳ��10��Ŷ")
			LuaOtherSendMenu()
		end
	else
		LuaShowNotify("�˳���ʳƷֻ��ιʳ30�����ϵĳ��")
		LuaOtherSendMenu()
		return 0
	end
else
LuaShowNotify("���Ȱѳ���װ���������ٽ���ιʳ")
LuaOtherSendMenu()
return 0
end
end

