Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T961_nTotalMonsterNum = 31
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_068/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2��ū����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_068/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻ��ū���������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon62")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T961")==1)then
	if(LuaQueryTask("task_kill/mon_068/T961")==31)then
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻ��ū�������������")
		LuaOtherSendMenu()
	end
end
return 1
end