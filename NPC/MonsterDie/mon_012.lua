T380_nTotalMonsterNum = 21
T382_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
------------------
function OnDie()
if(LuaQueryTask("T380")==1)then
	if(LuaQueryTask("task_kill/mon_012/T380")==21)then
	CheckNpcStatusByMonItemID("T380","mon_012")
	LuaSay("���ѻ�ɱ��@220����ʦ��ͽ@0�ˣ���ȥ�ظ�@4ɽկ@0��@3л���@9�ɣ�")
	LuaOtherSendMenu()
	end
	end
	if(LuaQueryTask("T382")==1)then
	if(LuaQueryTask("task_kill/mon_012/T382")==21)then
	CheckNpcStatusByMonItemID("T382","mon_012")
	LuaSay("���ѻ�ɱ��@220����ʦ��ͽ@0�ˣ���ȥ�ظ�@4ɽկ@0��@3л���@9�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_012/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2��ʦ��ͽ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_012/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ʦ��ͽ����ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_012/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ��ʦ��ͽ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon7")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
return 1
end