T711_nTotalMonsterNum = 36
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
-----------------------  ���� ----------------------------------------
if(LuaQueryTask("T711")==1)then
	if(LuaQueryTask("task_kill/mon_043/T711")>=36)then
	CheckNpcStatusByMonItemID("T711","mon_043")
	LuaSay("���Ѿ�ɱ����@235ֻ����@0����ȥ�ظ�@3���������Ĺ����@0�ɣ�")
	LuaOtherSendMenu()
	end
	end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_043/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_043/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ���飬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon39")==1) then
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