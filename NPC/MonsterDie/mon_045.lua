T713_nTotalMonsterNum = 21
T715_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 26
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 26
Tpt4_nTotalMonsterNum = 51

function OnDie()
-----------------------  Ѫ��ʬ
----------------------------------------
if(LuaQueryTask("T713")==1)then
		if(LuaQueryTask("task_kill/mon_044/T713")>=21 and LuaQueryTask("task_kill/mon_045/T713")==21)then
		CheckNpcStatusByMonItemID("T713","mon_045")
		LuaSay("���Ѿ�ɱ����20������ʬ��20��Ѫ��ʬ����ȥ�ظ����������Ĺ���˰ɣ�")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("T715")==1)then
		if(LuaQueryTask("task_kill/mon_044/T715")>=21 and LuaQueryTask("task_kill/mon_045/T715")==21)then
		CheckNpcStatusByMonItemID("T715","mon_045")
		LuaSay("���Ѿ�ɱ����20������ʬ��20��Ѫ��ʬ����ȥ�ظ����������Ĺ���˰ɣ�")
		LuaOtherSendMenu()
		end
		end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_045/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2Ѫ��ʬ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻѪ��ʬ@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻѪ��ʬ@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_045/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻѪ��ʬ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon41")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

------------------------------------------
return 1
end