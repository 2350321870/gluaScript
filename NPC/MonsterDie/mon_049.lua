T736_nTotalMonsterNum = 21
T734_nTotalMonsterNum = 21
T751_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 29
Tfjtx_nTotalMonsterNum = 29
function OnDie()
-----------------------  ��ԭ��
----------------------------------------
if(LuaQueryTask("T734")==2)then
	if(LuaQueryTask("task_kill/mon_049/T734")>=21)then
	CheckNpcStatusByMonItemID("T734","mon_049")
	LuaSay("���Ѿ�������20ֻ@3��ԭ��@0����ȥ�ظ�@4����@0��@3�޺�@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T751")==1)then
	if(LuaQueryTask("task_kill/mon_049/T751")>=36)then
	CheckNpcStatusByMonItemID("T751","mon_049")
	LuaSay("���Ѿ�������35ֻ@3��ԭ��@0����ȥ�ظ�@4����@0��@3�޺�@0�ɣ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_049/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220����ԭ��@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_049/Txhuanxing")==29)then
		LuaSay("���Ѿ�ɱ��28ֻ@2��ԭ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T736")==3)then
	if(LuaQueryTask("task_kill/mon_049/T736")>=21)then
	LuaSay("���Ѿ�������20ֻ@3��ԭ��@0����ȥ�ظ�@4����@0��@3�޺�@0�ɣ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_049/Tfjtx")==29)then
		LuaSay("��ʾ�����Ѿ�ɱ��28ֻ��ԭ�ܣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon43")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 


if(LuaQueryTask("T1004")==1)then
	local count= LuaItemCount("o_mission375")
   	if(count < 20) then
   		if(LuaRandom(10)<8)then
     		LuaGive("o_mission375",1)
     	end
    	local count= LuaItemCount("o_mission375")
     	if(count==20) then
     		LuaSay("���ѵõ�20��ս��ҩˮ,��ȥ�����ذϹ��,̫��Ų�����")
     		LuaOtherSendMenu()
     	end
  	end
end


-----

------------------------------------------
return 1
end