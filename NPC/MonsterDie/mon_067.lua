Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T960_nTotalMonsterNum = 31
function OnDie()


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_067/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2��ū��ʿ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_067/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻ��ū��ʿ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon61")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
if(LuaQueryTask("T960")==1)then
	if(LuaQueryTask("task_kill/mon_067/T960")==31)then
		CheckNpcStatusByMonItemID("T960","mon_067")
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻ��ū��ʿ���������")
		LuaOtherSendMenu()
	end
end
return 1
end