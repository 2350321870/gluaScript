T831_nTotalMonsterNum = 41
T830_nTotalMonsterNum = 41
Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T861_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_058/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2ɳ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_058/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻɳ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon54")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T861")==1)then
	if(LuaQueryTask("task_kill/mon_058/T861")==31)then
		CheckNpcStatusByMonItemID("T861","mon_058")
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻɳ�����������")
		LuaOtherSendMenu()
	end
end
return 1
end