Txhuanxing_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 36
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_070/Txhuanxing")==41)then
		LuaSay("���Ѿ�ɱ��40ֻ@2��ɽ����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_070/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻ��ɽ���������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon64")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
if(LuaCheckBuff("565")==0)then
    ChangeMap("lu_zongmiao")
    LuaShowNotify("��ʾ:�¿���Ա�����ڸõ�ͼ�һ�")
    LuaOtherSendMenu()
end
return 1
end