T10_nTotalMonsterNum = 2	--ID����Ӧ����Ҫɱ������������������������
function OnDie()		
 if(LuaQueryTask("T10")==1) then	
  if(LuaQueryTask("task_kill/mon_001/T10") == 2) then
    CheckNpcStatusByMonItemID("T10","mon_001")		
   LuaSay("���Ѿ���ܲ�׽����@21ֻ���@0����ȥ����@3Ƚ��@0�������Ϣ��")
  LuaOtherSendMenu()
  end
end
return 1
end