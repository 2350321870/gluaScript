T637_nTotalMonsterNum = 11
T642_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21
function OnDie()
-----------------------  ̫�й�Գ
----------------------------------------------------------------------------
if(LuaQueryTask("T637")==2) then
if(LuaQueryTask("task_kill/mon_038/T637") >= 11) then
CheckNpcStatusByMonItemID("T637","mon_038")
  LuaSay("���Ѿ�ɱ����@210ֻ̫�й�Գ@0��ȥ�ظ�@4̫��ɽ��@0��@3ʯԽ@0��")
  LuaOtherSendMenu()
  end
end
-----------------------------------------------------------------------------
if(LuaQueryTask("T642")==1) then
if(LuaQueryTask("task_kill/mon_038/T642") == 31) then
CheckNpcStatusByMonItemID("T642","mon_038")
  LuaSay("���Ѿ�ɱ����@230ֻ̫�й�Գ@0��ȥ�ظ�@4̫�йž�@0��@3Ľ����@0��")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_038/Txhuanxing")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ@2̫�й�Գ@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_038/Tfjtx")==21)then
		LuaSay("��ʾ�����Ѿ�ɱ��20ֻ̫�й�Գ�����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon32")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

------------------------------------------------------------------------------
return 1
end
