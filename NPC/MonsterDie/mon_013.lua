T370_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()

-------------����
if(LuaQueryTask("T370")==1)then
	if(LuaQueryTask("task_kill/mon_013/T370")==21)then
	    CheckNpcStatusByMonItemID("T370","mon_013")
	    LuaSay("���Ѿ��������20ֻ���գ����ȥ����@3���@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_013/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_013/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_013/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ���գ���ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_013/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ���գ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon8")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon9")==1) then
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